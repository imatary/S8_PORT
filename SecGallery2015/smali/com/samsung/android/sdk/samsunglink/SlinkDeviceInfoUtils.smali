.class public Lcom/samsung/android/sdk/samsunglink/SlinkDeviceInfoUtils;
.super Ljava/lang/Object;
.source "SlinkDeviceInfoUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static sInstance:Lcom/samsung/android/sdk/samsunglink/SlinkDeviceInfoUtils;


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mfl_ApiLib_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/samsung/android/sdk/samsunglink/SlinkDeviceInfoUtils;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/samsunglink/SlinkDeviceInfoUtils;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/samsunglink/SlinkDeviceInfoUtils;->context:Landroid/content/Context;

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/samsunglink/SlinkDeviceInfoUtils;
    .locals 3

    const-class v1, Lcom/samsung/android/sdk/samsunglink/SlinkDeviceInfoUtils;

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
    sget-object v0, Lcom/samsung/android/sdk/samsunglink/SlinkDeviceInfoUtils;->sInstance:Lcom/samsung/android/sdk/samsunglink/SlinkDeviceInfoUtils;

    if-nez v0, :cond_1

    new-instance v0, Lcom/samsung/android/sdk/samsunglink/SlinkDeviceInfoUtils;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/samsunglink/SlinkDeviceInfoUtils;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/samsung/android/sdk/samsunglink/SlinkDeviceInfoUtils;->sInstance:Lcom/samsung/android/sdk/samsunglink/SlinkDeviceInfoUtils;

    :cond_1
    sget-object v0, Lcom/samsung/android/sdk/samsunglink/SlinkDeviceInfoUtils;->sInstance:Lcom/samsung/android/sdk/samsunglink/SlinkDeviceInfoUtils;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-object v0
.end method


# virtual methods
.method public doesLocalMultimediaFrameworkSupportSCS()Z
    .locals 2

    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "/system/lib/libSLinkNTSMngr_jni.so"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method public getDeviceInfo(I)Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "info"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/sdk/samsunglink/SlinkDeviceInfoUtils;->getDeviceInfo(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceInfo(ILjava/lang/String;)Ljava/lang/String;
    .locals 8

    const/4 v3, 0x0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v4, "INTENT_ARG_DEVICE_ID"

    int-to-long v6, p1

    invoke-virtual {v1, v4, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string/jumbo v4, "INTENT_ARG_DEVICE_CMD"

    invoke-virtual {v1, v4, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    :try_start_0
    iget-object v4, p0, Lcom/samsung/android/sdk/samsunglink/SlinkDeviceInfoUtils;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$CallMethods;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v6, "com.samsung.android.sdk.samsunglink.SlinkMediaStore.CallMethods.GetDeviceInfo.NAME"

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7, v1}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :goto_0
    if-nez v2, :cond_0

    sget-object v4, Lcom/samsung/android/sdk/samsunglink/SlinkDeviceInfoUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "::getDeviceInfo result is null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-object v3

    :catch_0
    move-exception v0

    sget-object v4, Lcom/samsung/android/sdk/samsunglink/SlinkDeviceInfoUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "IllegalArgumentException ::maybe platform disabled "

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string/jumbo v3, "method_result_str"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1
.end method

.method public getVersatileInformation(Ljava/lang/String;I)Landroid/os/Bundle;
    .locals 8

    const/4 v3, 0x0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v4, "INTENT_ARG_INFO_TYPE"

    invoke-virtual {v1, v4, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "INTENT_ARG_DEVICEID"

    int-to-long v6, p2

    invoke-virtual {v1, v4, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const/4 v2, 0x0

    :try_start_0
    iget-object v4, p0, Lcom/samsung/android/sdk/samsunglink/SlinkDeviceInfoUtils;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$CallMethods;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v6, "com.samsung.android.sdk.samsunglink.SlinkMediaStore.CallMethods.GetVersatileInformation.NAME"

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7, v1}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :goto_0
    if-nez v2, :cond_0

    sget-object v4, Lcom/samsung/android/sdk/samsunglink/SlinkDeviceInfoUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "::getDeviceInfo result is null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v3

    :cond_0
    return-object v2

    :catch_0
    move-exception v0

    sget-object v4, Lcom/samsung/android/sdk/samsunglink/SlinkDeviceInfoUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "Exception ::maybe platform disabled "

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
