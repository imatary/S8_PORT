.class public Lcom/sec/android/gallery3d/eventshare/utils/ESLog;
.super Ljava/lang/Object;
.source "ESLog.java"


# static fields
.field public static final COMMAND:I = 0x2

.field private static final DEBUG:I = 0x4

.field private static ENABLE_DEBUG:Z = false

.field private static ENABLE_ERROR:Z = false

.field private static ENABLE_INFO:Z = false

.field private static ENABLE_VERBOSE:Z = false

.field private static ENABLE_WARN:Z = false

.field private static final ENG:Ljava/lang/String; = "eng"

.field public static final ENG_BINARY:Z

.field private static final ERROR:I = 0x1

.field private static final INFO:I = 0x3

.field public static final INFORM:I = 0x4

.field public static final REQUEST:I = 0x0

.field public static final RESTORE:I = 0x1

.field public static final RESULT:I = 0x3

.field private static SEC_LOG:Z = false

.field private static TAG:Ljava/lang/String; = null

.field private static final TYPE_NAME:[Ljava/lang/String;

.field private static final VERBOSE:I = 0x5

.field private static final WARN:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string/jumbo v1, "[EVENT_SHARE: default]"

    sput-object v1, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->TAG:Ljava/lang/String;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "REQUEST"

    aput-object v2, v1, v4

    const-string/jumbo v2, "RESTORE"

    aput-object v2, v1, v5

    const/4 v2, 0x2

    const-string/jumbo v3, "COMMAND"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string/jumbo v3, "RESULT"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string/jumbo v3, "INFORM"

    aput-object v3, v1, v2

    sput-object v1, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->TYPE_NAME:[Ljava/lang/String;

    sput-boolean v5, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->ENABLE_ERROR:Z

    sput-boolean v5, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->ENABLE_DEBUG:Z

    sput-boolean v4, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->ENABLE_INFO:Z

    sput-boolean v4, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->ENABLE_WARN:Z

    sput-boolean v4, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->ENABLE_VERBOSE:Z

    const-string/jumbo v1, "eng"

    sget-object v2, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->ENG_BINARY:Z

    :try_start_0
    const-string/jumbo v1, "android.util.Log"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    const/4 v1, 0x1

    sput-boolean v1, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->SEC_LOG:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    sput-boolean v4, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->SEC_LOG:Z

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createLog(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->TYPE_NAME:[Ljava/lang/String;

    aget-object v1, v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static createLog(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static d(Ljava/lang/String;ILjava/lang/String;)V
    .locals 2

    sget-boolean v0, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->ENABLE_VERBOSE:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->TAG:Ljava/lang/String;

    invoke-static {p1, p2, p0}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->createLog(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->secD(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    sget-boolean v0, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->ENABLE_WARN:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->TAG:Ljava/lang/String;

    invoke-static {p1, p0}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->createLog(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->secD(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    sget-boolean v0, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->ENABLE_ERROR:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->TAG:Ljava/lang/String;

    invoke-static {p1, p0}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->createLog(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3

    sget-boolean v1, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->ENABLE_ERROR:Z

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->ENG_BINARY:Z

    if-eqz v1, :cond_1

    invoke-static {p1}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->getString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    sget-object v1, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->createLog(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static getString(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Ljava/io/PrintStream;

    invoke-direct {v1, v0}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    sget-boolean v0, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->ENABLE_INFO:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->TAG:Ljava/lang/String;

    invoke-static {p1, p0}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->createLog(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->secI(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static secD(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->SEC_LOG:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static secI(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->SEC_LOG:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static secV(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->SEC_LOG:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static secW(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->SEC_LOG:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static setUp(Landroid/content/Context;)V
    .locals 9

    const/4 v8, 0x1

    :try_start_0
    const-string/jumbo v6, "com.sec.android.gallery3d"

    const/4 v7, 0x0

    invoke-static {p0, v6, v7}, Lcom/sec/android/gallery3d/app/PackagesMonitor;->getPackageInfo(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "[EVENT_SHARE: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v4, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->TAG:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance v5, Ljava/util/Properties;

    invoke-direct {v5}, Ljava/util/Properties;-><init>()V

    sget-object v7, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->TAG:Ljava/lang/String;

    sget-boolean v6, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->ENG_BINARY:Z

    if-eqz v6, :cond_2

    const-string/jumbo v6, "ENG BINARY"

    :goto_1
    invoke-static {v7, v6}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->secD(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v3, -0x1

    :try_start_1
    sget-boolean v6, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->ENG_BINARY:Z

    if-eqz v6, :cond_3

    const/4 v6, 0x1

    sput-boolean v6, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->ENABLE_VERBOSE:Z

    sput-boolean v6, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->ENABLE_WARN:Z

    sput-boolean v6, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->ENABLE_INFO:Z

    sput-boolean v6, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->ENABLE_DEBUG:Z

    sput-boolean v6, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->ENABLE_ERROR:Z

    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    const-string/jumbo v7, "log/eng.properties"

    invoke-virtual {v6, v7}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    :goto_2
    invoke-virtual {v5, v1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    const-string/jumbo v6, "loglevel"

    invoke-virtual {v5, v6}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    :cond_0
    invoke-static {v1}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    :goto_3
    const/4 v6, -0x1

    if-ne v3, v6, :cond_4

    :cond_1
    :goto_4
    return-void

    :catch_0
    move-exception v0

    sget-object v6, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string/jumbo v6, "USER BINARY"

    goto :goto_1

    :cond_3
    const/4 v6, 0x1

    :try_start_2
    sput-boolean v6, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->ENABLE_DEBUG:Z

    sput-boolean v6, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->ENABLE_ERROR:Z

    const/4 v6, 0x0

    sput-boolean v6, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->ENABLE_VERBOSE:Z

    sput-boolean v6, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->ENABLE_WARN:Z

    sput-boolean v6, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->ENABLE_INFO:Z

    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    const-string/jumbo v7, "log/user.properties"

    invoke-virtual {v6, v7}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v1

    goto :goto_2

    :catch_1
    move-exception v0

    :try_start_3
    sget-object v6, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "Error while setup."

    invoke-static {v6, v7}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->secD(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {v1}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_3

    :catchall_0
    move-exception v6

    invoke-static {v1}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    throw v6

    :cond_4
    const/4 v6, 0x5

    if-lt v3, v6, :cond_5

    sput-boolean v8, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->ENABLE_VERBOSE:Z

    :cond_5
    const/4 v6, 0x4

    if-lt v3, v6, :cond_6

    sput-boolean v8, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->ENABLE_DEBUG:Z

    :cond_6
    const/4 v6, 0x3

    if-lt v3, v6, :cond_7

    sput-boolean v8, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->ENABLE_INFO:Z

    :cond_7
    const/4 v6, 0x2

    if-lt v3, v6, :cond_8

    sput-boolean v8, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->ENABLE_WARN:Z

    :cond_8
    if-lt v3, v8, :cond_1

    sput-boolean v8, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->ENABLE_ERROR:Z

    goto :goto_4
.end method

.method public static v(Ljava/lang/String;ILjava/lang/String;)V
    .locals 2

    sget-boolean v0, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->ENABLE_VERBOSE:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->TAG:Ljava/lang/String;

    invoke-static {p1, p2, p0}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->createLog(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->secV(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    sget-boolean v0, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->ENABLE_VERBOSE:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->TAG:Ljava/lang/String;

    invoke-static {p1, p0}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->createLog(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->secV(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    sget-boolean v0, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->ENABLE_DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->TAG:Ljava/lang/String;

    invoke-static {p1, p0}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->createLog(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->secW(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
