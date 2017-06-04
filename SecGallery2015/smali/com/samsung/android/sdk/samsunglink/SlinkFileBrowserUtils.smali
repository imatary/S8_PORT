.class public Lcom/samsung/android/sdk/samsunglink/SlinkFileBrowserUtils;
.super Ljava/lang/Object;
.source "SlinkFileBrowserUtils.java"


# static fields
.field public static final REMOTE_FOLDER_MKDIR:I = 0x1

.field public static final REMOTE_FOLDER_RENAME:I = 0x3

.field public static final REMOTE_FOLDER_RMDIR:I = 0x2

.field private static final TAG:Ljava/lang/String;

.field private static sInstance:Lcom/samsung/android/sdk/samsunglink/SlinkFileBrowserUtils;


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mfl_ApiLib_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/samsung/android/sdk/samsunglink/SlinkFileBrowserUtils;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/samsunglink/SlinkFileBrowserUtils;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/samsunglink/SlinkFileBrowserUtils;->context:Landroid/content/Context;

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/samsunglink/SlinkFileBrowserUtils;
    .locals 3

    const-class v1, Lcom/samsung/android/sdk/samsunglink/SlinkFileBrowserUtils;

    monitor-enter v1

    if-nez p0, :cond_0

    :try_start_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "context is null"

    invoke-direct {v0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_0
    :try_start_1
    sget-object v0, Lcom/samsung/android/sdk/samsunglink/SlinkFileBrowserUtils;->sInstance:Lcom/samsung/android/sdk/samsunglink/SlinkFileBrowserUtils;

    if-nez v0, :cond_1

    new-instance v0, Lcom/samsung/android/sdk/samsunglink/SlinkFileBrowserUtils;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/samsunglink/SlinkFileBrowserUtils;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/samsung/android/sdk/samsunglink/SlinkFileBrowserUtils;->sInstance:Lcom/samsung/android/sdk/samsunglink/SlinkFileBrowserUtils;

    :cond_1
    sget-object v0, Lcom/samsung/android/sdk/samsunglink/SlinkFileBrowserUtils;->sInstance:Lcom/samsung/android/sdk/samsunglink/SlinkFileBrowserUtils;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-object v0
.end method


# virtual methods
.method public getErrorCode()I
    .locals 5

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/samsung/android/sdk/samsunglink/SlinkFileBrowserUtils;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$CallMethods;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v3, "com.samsung.android.sdk.samsunglink.SlinkMediaStore.CallMethods.GetASP10FileBrowserErrorCode.NAME"

    invoke-virtual {v1, v2, v3, v4, v4}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "method_result"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public mrrControlCommand(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 7

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v3, "INTENT_ARG_DEVICEID"

    int-to-long v4, p1

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string/jumbo v3, "INTENT_ARG_CMD"

    invoke-virtual {v1, v3, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v3, "INTENT_ARG_BASELOCATION"

    invoke-virtual {v1, v3, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "INTENT_ARG_NEWITEMNAME"

    invoke-virtual {v1, v3, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "INTENT_ARG_OLDITEMNAME"

    invoke-virtual {v1, v3, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "INTENT_ARG_ISFOLDER"

    invoke-virtual {v1, v3, p6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/sdk/samsunglink/SlinkFileBrowserUtils;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$CallMethods;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v5, "com.samsung.android.sdk.samsunglink.SlinkMediaStore.CallMethods.MRRControl.NAME"

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6, v1}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :goto_0
    if-nez v2, :cond_0

    sget-object v3, Lcom/samsung/android/sdk/samsunglink/SlinkFileBrowserUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "::mrrControlCommand result is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    :goto_1
    return v3

    :catch_0
    move-exception v0

    sget-object v3, Lcom/samsung/android/sdk/samsunglink/SlinkFileBrowserUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "Exception ::maybe platform disabled "

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_0
    const-string/jumbo v3, "method_result"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    goto :goto_1
.end method
