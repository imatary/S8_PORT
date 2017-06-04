.class public Lcom/samsung/android/sdk/samsunglink/SlinkUserSettings;
.super Ljava/lang/Object;
.source "SlinkUserSettings.java"


# static fields
.field public static final ACTION_REGISTERED_DEVICES_LIST:Ljava/lang/String; = "com.samsung.android.sdk.samsunglink.register.RegisteredDevicesList"

.field private static final TAG:Ljava/lang/String;

.field private static sInstance:Lcom/samsung/android/sdk/samsunglink/SlinkUserSettings;


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mfl_ApiLib_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/samsung/android/sdk/samsunglink/SlinkUserSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/samsunglink/SlinkUserSettings;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/samsunglink/SlinkUserSettings;->context:Landroid/content/Context;

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/samsunglink/SlinkUserSettings;
    .locals 3

    const-class v1, Lcom/samsung/android/sdk/samsunglink/SlinkUserSettings;

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
    sget-object v0, Lcom/samsung/android/sdk/samsunglink/SlinkUserSettings;->sInstance:Lcom/samsung/android/sdk/samsunglink/SlinkUserSettings;

    if-nez v0, :cond_1

    new-instance v0, Lcom/samsung/android/sdk/samsunglink/SlinkUserSettings;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/samsunglink/SlinkUserSettings;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/samsung/android/sdk/samsunglink/SlinkUserSettings;->sInstance:Lcom/samsung/android/sdk/samsunglink/SlinkUserSettings;

    :cond_1
    sget-object v0, Lcom/samsung/android/sdk/samsunglink/SlinkUserSettings;->sInstance:Lcom/samsung/android/sdk/samsunglink/SlinkUserSettings;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-object v0
.end method


# virtual methods
.method public createRegisteredDevicesListActivityIntent()Landroid/content/Intent;
    .locals 4

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.android.sdk.samsunglink.register.RegisteredDevicesList"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/content/ComponentName;

    sget-object v2, Lcom/samsung/android/sdk/samsunglink/SlinkConstants;->TARGET_APK_PACKAGE:Ljava/lang/String;

    const-string/jumbo v3, "com.mfluent.asp.ui.RegisteredDevicesActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/android/sdk/samsunglink/SlinkUserSettings;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/sdk/samsunglink/SlinkCommonUtils;->getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/samsunglink/SlinkCommonUtils;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/samsunglink/SlinkCommonUtils;->addAppIdToIntent(Landroid/content/Intent;)V

    return-object v0
.end method

.method public getMarketingPushEnabled()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/samsunglink/SlinkUserSettings;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "com.samsung.android.sdk.samsunglink.SlinkMediaStore.Settings.MARKETING_PUSH"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$Settings;->getBooleanSetting(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getVideoOptimizationEnabled()Z
    .locals 4

    iget-object v1, p0, Lcom/samsung/android/sdk/samsunglink/SlinkUserSettings;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "com.samsung.android.sdk.samsunglink.SlinkMediaStore.Settings.VIDEO_OPTIMIZATION"

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$Settings;->getBooleanSetting(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    sget-object v1, Lcom/samsung/android/sdk/samsunglink/SlinkUserSettings;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "::getVideoOptimizationEnabled() retRes:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public setMargetingPushEnabled(Z)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/samsunglink/SlinkUserSettings;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "com.samsung.android.sdk.samsunglink.SlinkMediaStore.Settings.MARKETING_PUSH"

    invoke-static {v0, v1, p1}, Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$Settings;->setSetting(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    return-void
.end method

.method public setVideoOptimizationEnabled(Z)V
    .locals 3

    sget-object v0, Lcom/samsung/android/sdk/samsunglink/SlinkUserSettings;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "::getVideoOptimizationEnabled() enabled:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/samsunglink/SlinkUserSettings;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "com.samsung.android.sdk.samsunglink.SlinkMediaStore.Settings.VIDEO_OPTIMIZATION"

    invoke-static {v0, v1, p1}, Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$Settings;->setSetting(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    return-void
.end method
