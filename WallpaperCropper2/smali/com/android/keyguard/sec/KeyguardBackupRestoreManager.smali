.class public Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;
.super Ljava/lang/Object;
.source "Unknown"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$ERR_CODE;,
        Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$REQ_SIZE;,
        Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$RESULT;
    }
.end annotation


# static fields
.field public static ERROR_KEY:Ljava/lang/String; = null

.field private static final LOCKSCREEN_WALLPAPER_IMAGE_BACKUP_PATH:Ljava/lang/String; = "wallpaper/"

.field private static final LOCKSCREEN_WALLPAPER_IMAGE_FILE_NAME:Ljava/lang/String; = "lockscreen_wallpaper.jpg"

.field private static final LOCKSCREEN_WALLPAPER_IMAGE_RESTORE_PATH:Ljava/lang/String; = "/data/data/com.android.systemui/"

.field private static final PERMISSION_COM_WSSNPS:Ljava/lang/String; = "com.wssnps.permission.COM_WSSNPS"

.field public static final REQUEST_BACKUP_LOCKSCREEN:Ljava/lang/String; = "com.sec.android.intent.action.REQUEST_BACKUP_LOCKSCREEN"

.field public static final REQUEST_RESTORE_LOCKSCREEN:Ljava/lang/String; = "com.sec.android.intent.action.REQUEST_RESTORE_LOCKSCREEN"

.field private static REQUIRED_SIZE:J = 0x0L

.field public static REQUIRED_SIZE_KEY:Ljava/lang/String; = null

.field public static final RESPONSE_BACKUP_LOCKSCREEN:Ljava/lang/String; = "android.intent.action.RESPONSE_BACKUP_LOCKSCREEN"

.field public static final RESPONSE_RESTORE_LOCKSCREEN:Ljava/lang/String; = "android.intent.action.RESPONSE_RESTORE_LOCKSCREEN"

.field public static RESULT_KEY:Ljava/lang/String; = null

.field public static SOURCE_KEY:Ljava/lang/String; = null

.field public static final TAG:Ljava/lang/String; = "KeyguardBackupRestoreManager"

.field private static basePath:Ljava/lang/String;

.field private static sKeyguardBackupRestoreManager:Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;

.field private static source:Ljava/lang/String;


# instance fields
.field private mBasePath:Ljava/lang/String;

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mErrorCode:Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$ERR_CODE;

.field private mRequiredSize:Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$REQ_SIZE;

.field private mResult:Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$RESULT;

.field private wallpaperImagePath:Ljava/lang/String;

.field private wallpaperUserFileName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string/jumbo v0, "RESULT"

    sput-object v0, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->RESULT_KEY:Ljava/lang/String;

    const-string/jumbo v0, "ERR_CODE"

    sput-object v0, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->ERROR_KEY:Ljava/lang/String;

    const-string/jumbo v0, "REQ_SIZE"

    sput-object v0, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->REQUIRED_SIZE_KEY:Ljava/lang/String;

    const-string/jumbo v0, "SOURCE"

    sput-object v0, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->SOURCE_KEY:Ljava/lang/String;

    const-wide/32 v0, 0xa00000

    sput-wide v0, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->REQUIRED_SIZE:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$RESULT;->FAIL:Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$RESULT;

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->mResult:Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$RESULT;

    sget-object v0, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$ERR_CODE;->UNKNOWN_ERROR:Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$ERR_CODE;

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->mErrorCode:Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$ERR_CODE;

    sget-object v0, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$REQ_SIZE;->MINIMUM_SIZE:Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$REQ_SIZE;

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->mRequiredSize:Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$REQ_SIZE;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->wallpaperUserFileName:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->wallpaperImagePath:Ljava/lang/String;

    new-instance v0, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$1;-><init>(Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    const-string/jumbo v0, "KeyguardBackupRestoreManager"

    const-string/jumbo v1, "KeyguardBackupRestoreManager()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->basePath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    sput-object p0, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->basePath:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->source:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    sput-object p0, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->source:Ljava/lang/String;

    return-object p0
.end method

.method private createBackupFiles(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string/jumbo v0, "KeyguardBackupRestoreManager"

    const-string/jumbo v1, "createBackupFiles()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->mBasePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "lockscreen.xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->wallpaperUserFileName:Ljava/lang/String;

    const-string/jumbo v0, "wallpaper/lockscreen_wallpaper.jpg"

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->wallpaperImagePath:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->mBasePath:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->makeDir(Ljava/lang/String;)Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->mBasePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "wallpaper/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->makeDir(Ljava/lang/String;)Ljava/io/File;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->wallpaperImagePath:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->mBasePath:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->createBackupWallpaperXmlFiles(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->mBasePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "wallpaper/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "lockscreen_wallpaper.jpg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p3, v0}, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->copyBackupFile(Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method private createBackupWallpaperXmlFiles(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/android/keyguard/sec/KeyguardWallpaperUser;

    const/16 v2, 0x65

    invoke-direct {v1, v2, p1}, Lcom/android/keyguard/sec/KeyguardWallpaperUser;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/keyguard/sec/KeyguardGenerateXML;

    invoke-direct {v1, v0, p2}, Lcom/android/keyguard/sec/KeyguardGenerateXML;-><init>(Ljava/util/ArrayList;Ljava/lang/String;)V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;
    .locals 2

    const-string/jumbo v0, "KeyguardBackupRestoreManager"

    const-string/jumbo v1, "getInstance()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->sKeyguardBackupRestoreManager:Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;

    if-eqz v0, :cond_0

    :goto_0
    sget-object v0, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->sKeyguardBackupRestoreManager:Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;

    return-object v0

    :cond_0
    new-instance v0, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->sKeyguardBackupRestoreManager:Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;

    goto :goto_0
.end method

.method private hasFile(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-nez v1, :cond_1

    :cond_0
    const-string/jumbo v1, "KeyguardBackupRestoreManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Not exist File("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0

    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v0, "KeyguardBackupRestoreManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "exist File("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private makeDir(Ljava/lang/String;)Ljava/io/File;
    .locals 4

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "KeyguardBackupRestoreManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "exist Dir("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    const-string/jumbo v1, "KeyguardBackupRestoreManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Not exist Dir("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public chageFileAttr(Ljava/lang/String;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "KeyguardBackupRestoreManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "exist File("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, v5, v4}, Ljava/io/File;->setReadable(ZZ)Z

    invoke-virtual {v0, v5, v4}, Ljava/io/File;->setWritable(ZZ)Z

    goto :goto_0
.end method

.method closeSilently(Ljava/io/Closeable;)V
    .locals 3

    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :cond_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "KeyguardBackupRestoreManager"

    const-string/jumbo v2, "close fail "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public copyBackupFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9

    const/4 v6, 0x0

    :try_start_0
    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v8}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v1

    :try_start_3
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v6

    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v4

    const-string/jumbo v0, "KeyguardBackupRestoreManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "copyFile( fsize = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v2, 0x0

    invoke-virtual/range {v1 .. v6}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    invoke-virtual {p0, v1}, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->closeSilently(Ljava/io/Closeable;)V

    invoke-virtual {p0, v6}, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->closeSilently(Ljava/io/Closeable;)V

    invoke-virtual {p0, v8}, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->closeSilently(Ljava/io/Closeable;)V

    invoke-virtual {p0, v7}, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->closeSilently(Ljava/io/Closeable;)V

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    move-object v1, v6

    move-object v2, v6

    move-object v3, v6

    :goto_0
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    invoke-virtual {p0, v1}, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->closeSilently(Ljava/io/Closeable;)V

    invoke-virtual {p0, v6}, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->closeSilently(Ljava/io/Closeable;)V

    invoke-virtual {p0, v3}, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->closeSilently(Ljava/io/Closeable;)V

    invoke-virtual {p0, v2}, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->closeSilently(Ljava/io/Closeable;)V

    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v0

    move-object v1, v6

    move-object v7, v6

    move-object v8, v6

    :goto_1
    invoke-virtual {p0, v1}, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->closeSilently(Ljava/io/Closeable;)V

    invoke-virtual {p0, v6}, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->closeSilently(Ljava/io/Closeable;)V

    invoke-virtual {p0, v8}, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->closeSilently(Ljava/io/Closeable;)V

    invoke-virtual {p0, v7}, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->closeSilently(Ljava/io/Closeable;)V

    throw v0

    :catchall_1
    move-exception v0

    move-object v1, v6

    move-object v7, v6

    goto :goto_1

    :catchall_2
    move-exception v0

    move-object v1, v6

    goto :goto_1

    :catchall_3
    move-exception v0

    goto :goto_1

    :catchall_4
    move-exception v0

    move-object v7, v2

    move-object v8, v3

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v1, v6

    move-object v2, v6

    move-object v3, v8

    goto :goto_0

    :catch_2
    move-exception v0

    move-object v1, v6

    move-object v2, v7

    move-object v3, v8

    goto :goto_0

    :catch_3
    move-exception v0

    move-object v2, v7

    move-object v3, v8

    goto :goto_0
.end method

.method public disableLiveWallpaper(Landroid/content/Context;)V
    .locals 4

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "lockscreen_wallpaper"

    const/4 v2, 0x1

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void
.end method

.method public getLockscreenWallpaperpath(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "lockscreen_wallpaper_path"

    const/4 v2, -0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRestoreWallpaperImageFilesPath(Ljava/lang/String;Lcom/android/keyguard/sec/KeyguardWallpaperUser;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/keyguard/sec/KeyguardWallpaperUser;->getImagePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->wallpaperImagePath:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->wallpaperImagePath:Ljava/lang/String;

    return-object v0
.end method

.method public isLiveWallpaper(Landroid/content/Context;)Z
    .locals 4

    const/4 v0, 0x1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "lockscreen_wallpaper"

    const/4 v3, -0x2

    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eq v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public launchKeyguardBackuporRestore(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string/jumbo v0, "KeyguardBackupRestoreManager"

    const-string/jumbo v1, "launchKeyguardBackuporRestore()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0, p2, p3}, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->startRestore(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0, p2, p3}, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->startBackup(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public pushRestoreFiles(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string/jumbo v0, "KeyguardBackupRestoreManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "pushRestoreFiles( basePath = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/keyguard/sec/KeyguardXmlParser;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->wallpaperUserFileName:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Lcom/android/keyguard/sec/KeyguardXmlParser;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/keyguard/sec/KeyguardXmlParser;->getObject()Lcom/android/keyguard/sec/KeyguardWallpaperUser;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/keyguard/sec/KeyguardWallpaperUser;->getImagePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/keyguard/sec/KeyguardWallpaperUser;->getImagePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->splitFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "/data/data/com.android.systemui/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "/data/data/com.android.systemui/"

    invoke-direct {p0, v2}, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->makeDir(Ljava/lang/String;)Ljava/io/File;

    invoke-virtual {p0, v1, v0}, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->copyBackupFile(Ljava/lang/String;Ljava/lang/String;)Z

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->chageFileAttr(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->setLockscreenWallpaperpath(Landroid/content/Context;Ljava/lang/String;)V

    const-string/jumbo v0, "KeyguardBackupRestoreManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "pushRestoreFiles( Saved path = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->getLockscreenWallpaperpath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public registerKeyguardBackupRestoreReceiver(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "com.sec.android.intent.action.REQUEST_BACKUP_LOCKSCREEN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "com.sec.android.intent.action.REQUEST_RESTORE_LOCKSCREEN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public setLockscreenWallpaperpath(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "lockscreen_wallpaper_path"

    const/4 v2, -0x2

    invoke-static {v0, v1, p2, v2}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    return-void
.end method

.method public splitFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string/jumbo v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public startBackup(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    const/4 v1, 0x0

    const-string/jumbo v0, "KeyguardBackupRestoreManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startBackup( basePath = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", source = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p2, p0, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->mBasePath:Ljava/lang/String;

    const-wide/32 v2, 0x40000000

    invoke-virtual {p0, p1}, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->getLockscreenWallpaperpath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->mBasePath:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v5, "/"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->mBasePath:Ljava/lang/String;

    :try_start_0
    new-instance v0, Landroid/os/StatFs;

    iget-object v5, p0, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->mBasePath:Ljava/lang/String;

    invoke-direct {v0, v5}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v6

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v8

    mul-long v2, v6, v8

    const-string/jumbo v0, "KeyguardBackupRestoreManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "startBackup( StatFs : availableBlocks = "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", blockSizeInBytes = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", freeSpaceInBytes = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    sget-wide v6, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->REQUIRED_SIZE:J

    cmp-long v0, v2, v6

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_1

    sget-object v0, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$RESULT;->FAIL:Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$RESULT;

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->mResult:Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$RESULT;

    sget-object v0, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$ERR_CODE;->STORAGE_FULL:Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$ERR_CODE;

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->mErrorCode:Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$ERR_CODE;

    sget-object v0, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$REQ_SIZE;->MINIMUM_SIZE:Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$REQ_SIZE;

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->mRequiredSize:Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$REQ_SIZE;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    const-string/jumbo v0, "KeyguardBackupRestoreManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startBackup( mResult = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->mResult:Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$RESULT;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", mErrorCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->mErrorCode:Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$ERR_CODE;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "android.intent.action.RESPONSE_BACKUP_LOCKSCREEN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    sget-object v1, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->RESULT_KEY:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->mResult:Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$RESULT;

    invoke-virtual {v2}, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$RESULT;->getValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    sget-object v1, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->ERROR_KEY:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->mErrorCode:Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$ERR_CODE;

    invoke-virtual {v2}, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$ERR_CODE;->getValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    sget-object v1, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->REQUIRED_SIZE_KEY:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->mRequiredSize:Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$REQ_SIZE;

    invoke-virtual {v2}, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$REQ_SIZE;->getValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    sget-object v1, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->SOURCE_KEY:Ljava/lang/String;

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "com.wssnps.permission.COM_WSSNPS"

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :try_start_2
    invoke-virtual {p0, p1}, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->isLiveWallpaper(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    if-nez v4, :cond_4

    :cond_2
    sget-object v0, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$RESULT;->FAIL:Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$RESULT;

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->mResult:Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$RESULT;

    sget-object v0, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$ERR_CODE;->INVALID_DATA:Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$ERR_CODE;

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->mErrorCode:Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$ERR_CODE;

    sget-object v0, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$REQ_SIZE;->SUCCESS:Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$REQ_SIZE;

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->mRequiredSize:Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$REQ_SIZE;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_2

    :catch_1
    move-exception v0

    sget-object v0, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$RESULT;->FAIL:Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$RESULT;

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->mResult:Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$RESULT;

    sget-object v0, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$ERR_CODE;->UNKNOWN_ERROR:Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$ERR_CODE;

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->mErrorCode:Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$ERR_CODE;

    sget-object v0, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$REQ_SIZE;->SUCCESS:Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$REQ_SIZE;

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->mRequiredSize:Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$REQ_SIZE;

    goto/16 :goto_2

    :cond_3
    :try_start_3
    sget-object v0, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$RESULT;->FAIL:Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$RESULT;

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->mResult:Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$RESULT;

    sget-object v0, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$ERR_CODE;->INVALID_DATA:Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$ERR_CODE;

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->mErrorCode:Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$ERR_CODE;

    sget-object v0, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$REQ_SIZE;->SUCCESS:Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$REQ_SIZE;

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->mRequiredSize:Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$REQ_SIZE;

    goto/16 :goto_2

    :cond_4
    invoke-direct {p0, v4}, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->hasFile(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, p1, p2, v4}, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->createBackupFiles(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$RESULT;->OK:Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$RESULT;

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->mResult:Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$RESULT;

    sget-object v0, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$ERR_CODE;->SUCCESS:Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$ERR_CODE;

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->mErrorCode:Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$ERR_CODE;

    sget-object v0, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$REQ_SIZE;->SUCCESS:Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$REQ_SIZE;

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->mRequiredSize:Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$REQ_SIZE;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_2
.end method

.method public startRestore(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    const-string/jumbo v0, "KeyguardBackupRestoreManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startRestore( basePath = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", source = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "lockscreen.xml"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->wallpaperUserFileName:Ljava/lang/String;

    const-wide/32 v2, 0x40000000

    :try_start_0
    new-instance v0, Landroid/os/StatFs;

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v4

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v6

    mul-long v2, v4, v6

    const-string/jumbo v0, "KeyguardBackupRestoreManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "startRestore( StatFs : availableBlocks = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", blockSizeInBytes = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", freeSpaceInBytes = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    sget-wide v4, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->REQUIRED_SIZE:J

    cmp-long v0, v2, v4

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_1

    sget-object v0, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$RESULT;->FAIL:Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$RESULT;

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->mResult:Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$RESULT;

    sget-object v0, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$ERR_CODE;->STORAGE_FULL:Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$ERR_CODE;

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->mErrorCode:Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$ERR_CODE;

    sget-object v0, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$REQ_SIZE;->MINIMUM_SIZE:Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$REQ_SIZE;

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->mRequiredSize:Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$REQ_SIZE;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    const-string/jumbo v0, "KeyguardBackupRestoreManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startRestore( mResult = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->mResult:Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$RESULT;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", mErrorCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->mErrorCode:Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$ERR_CODE;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "android.intent.action.RESPONSE_RESTORE_LOCKSCREEN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    sget-object v1, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->RESULT_KEY:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->mResult:Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$RESULT;

    invoke-virtual {v2}, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$RESULT;->getValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    sget-object v1, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->ERROR_KEY:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->mErrorCode:Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$ERR_CODE;

    invoke-virtual {v2}, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$ERR_CODE;->getValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    sget-object v1, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->REQUIRED_SIZE_KEY:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->mRequiredSize:Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$REQ_SIZE;

    invoke-virtual {v2}, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$REQ_SIZE;->getValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    sget-object v1, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->SOURCE_KEY:Ljava/lang/String;

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "com.wssnps.permission.COM_WSSNPS"

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :try_start_2
    invoke-virtual {p0, p1, v1}, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->pushRestoreFiles(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->disableLiveWallpaper(Landroid/content/Context;)V

    sget-object v0, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$RESULT;->OK:Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$RESULT;

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->mResult:Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$RESULT;

    sget-object v0, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$ERR_CODE;->SUCCESS:Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$ERR_CODE;

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->mErrorCode:Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$ERR_CODE;

    sget-object v0, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$REQ_SIZE;->SUCCESS:Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$REQ_SIZE;

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->mRequiredSize:Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$REQ_SIZE;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_2

    :catch_1
    move-exception v0

    sget-object v0, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$RESULT;->FAIL:Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$RESULT;

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->mResult:Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$RESULT;

    sget-object v0, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$ERR_CODE;->UNKNOWN_ERROR:Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$ERR_CODE;

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->mErrorCode:Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$ERR_CODE;

    sget-object v0, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$REQ_SIZE;->SUCCESS:Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$REQ_SIZE;

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardBackupRestoreManager;->mRequiredSize:Lcom/android/keyguard/sec/KeyguardBackupRestoreManager$REQ_SIZE;

    goto/16 :goto_2
.end method
