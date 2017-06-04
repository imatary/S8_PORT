.class public Lcom/samsung/android/sdk/samsunglink/SlinkFrameworkUserPortal;
.super Ljava/lang/Object;
.source "SlinkFrameworkUserPortal.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static sInstance:Lcom/samsung/android/sdk/samsunglink/SlinkFrameworkUserPortal;


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mfl_ApiLib_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/samsung/android/sdk/samsunglink/SlinkFrameworkUserPortal;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/samsunglink/SlinkFrameworkUserPortal;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/samsunglink/SlinkFrameworkUserPortal;->context:Landroid/content/Context;

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/samsunglink/SlinkFrameworkUserPortal;
    .locals 3

    const-class v1, Lcom/samsung/android/sdk/samsunglink/SlinkFrameworkUserPortal;

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
    sget-object v0, Lcom/samsung/android/sdk/samsunglink/SlinkFrameworkUserPortal;->sInstance:Lcom/samsung/android/sdk/samsunglink/SlinkFrameworkUserPortal;

    if-nez v0, :cond_1

    new-instance v0, Lcom/samsung/android/sdk/samsunglink/SlinkFrameworkUserPortal;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/samsunglink/SlinkFrameworkUserPortal;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/samsung/android/sdk/samsunglink/SlinkFrameworkUserPortal;->sInstance:Lcom/samsung/android/sdk/samsunglink/SlinkFrameworkUserPortal;

    :cond_1
    sget-object v0, Lcom/samsung/android/sdk/samsunglink/SlinkFrameworkUserPortal;->sInstance:Lcom/samsung/android/sdk/samsunglink/SlinkFrameworkUserPortal;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-object v0
.end method


# virtual methods
.method public deregisterDevice(J)Z
    .locals 7

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/sdk/samsunglink/SlinkFrameworkUserPortal;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$CallMethods;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v4, "com.samsung.android.sdk.samsunglink.SlinkMediaStore.CallMethods.DeregisterDevice.NAME"

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    if-nez v1, :cond_0

    sget-object v2, Lcom/samsung/android/sdk/samsunglink/SlinkFrameworkUserPortal;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "::deregisterDevice result is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    :goto_1
    return v2

    :catch_0
    move-exception v0

    sget-object v2, Lcom/samsung/android/sdk/samsunglink/SlinkFrameworkUserPortal;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "::deregisterDevice maybe platform is disabled"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string/jumbo v2, "method_result"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    goto :goto_1
.end method

.method public reportUsageStat(I)V
    .locals 6

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/sdk/samsunglink/SlinkFrameworkUserPortal;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$CallMethods;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v3, "com.samsung.android.sdk.samsunglink.SlinkMediaStore.CallMethods.SendUsageStat.NAME"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/sdk/samsunglink/SlinkFrameworkUserPortal;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "::reportUsageStat maybe platform is disabled"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public sendWakeupPushInBackground()V
    .locals 6

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/sdk/samsunglink/SlinkFrameworkUserPortal;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$CallMethods;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v3, "com.samsung.android.sdk.samsunglink.SlinkMediaStore.CallMethods.SendWakeupPushInBackground.NAME"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/sdk/samsunglink/SlinkFrameworkUserPortal;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "::sendWakeupPushInBackground maybe platform is disabled"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setDeviceInfo()V
    .locals 6

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/sdk/samsunglink/SlinkFrameworkUserPortal;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$CallMethods;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v3, "com.samsung.android.sdk.samsunglink.SlinkMediaStore.CallMethods.SetDeviceInfo.NAME"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/sdk/samsunglink/SlinkFrameworkUserPortal;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "::setDeviceInfo maybe platform is disabled"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public turnOnDevice(Ljava/lang/String;)Z
    .locals 6

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/sdk/samsunglink/SlinkFrameworkUserPortal;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$CallMethods;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v4, "com.samsung.android.sdk.samsunglink.SlinkMediaStore.CallMethods.TurnOnDevice.NAME"

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, p1, v5}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    if-nez v1, :cond_0

    sget-object v2, Lcom/samsung/android/sdk/samsunglink/SlinkFrameworkUserPortal;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "::turnOnDevice result is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    :goto_1
    return v2

    :catch_0
    move-exception v0

    sget-object v2, Lcom/samsung/android/sdk/samsunglink/SlinkFrameworkUserPortal;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "::turnOnDevice maybe platform is disabled"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string/jumbo v2, "method_result"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    goto :goto_1
.end method

.method public updateuserDeviceName(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v4, "com.samsung.android.sdk.samsunglink.SamsungLinkMediaStore.CallMethods.UpdateUserDeviceName.EXTRA_DEVICE_NAME"

    invoke-virtual {v2, v4, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "com.samsung.android.sdk.samsunglink.SamsungLinkMediaStore.CallMethods.UpdateUserDeviceName.EXTRA_DEVICE_IMEI"

    invoke-virtual {v2, v4, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    :try_start_0
    iget-object v4, p0, Lcom/samsung/android/sdk/samsunglink/SlinkFrameworkUserPortal;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$CallMethods;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v6, "com.samsung.android.sdk.samsunglink.SlinkMediaStore.CallMethods.UpdateUserDeviceName.NAME"

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7, v2}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    :goto_0
    if-nez v3, :cond_0

    sget-object v4, Lcom/samsung/android/sdk/samsunglink/SlinkFrameworkUserPortal;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "::updateuserDeviceName result is null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    :goto_1
    return v4

    :catch_0
    move-exception v0

    sget-object v4, Lcom/samsung/android/sdk/samsunglink/SlinkFrameworkUserPortal;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "::updateuserDeviceName this.context.getContentResolver().call null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v1

    sget-object v4, Lcom/samsung/android/sdk/samsunglink/SlinkFrameworkUserPortal;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "::updateuserDeviceName maybe platform is disabled"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string/jumbo v4, "method_result"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    goto :goto_1
.end method
