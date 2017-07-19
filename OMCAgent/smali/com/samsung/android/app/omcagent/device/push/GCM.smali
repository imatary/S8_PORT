.class public Lcom/samsung/android/app/omcagent/device/push/GCM;
.super Ljava/lang/Object;
.source "GCM.java"


# static fields
.field public static final GCM_UNKNOWN_ERROR:Ljava/lang/String; = "GCM_UNKNOWN_ERROR"

.field public static final PLAY_SERVICE_ERROR:Ljava/lang/String; = "PLAY_SERVICE_NOT_AVAILABLE"

.field private static final SENDER_ID:Ljava/lang/String; = "96666210016"

.field public static instance:Lcom/samsung/android/app/omcagent/device/push/GCM;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/app/omcagent/device/push/GCM;

    invoke-direct {v0}, Lcom/samsung/android/app/omcagent/device/push/GCM;-><init>()V

    sput-object v0, Lcom/samsung/android/app/omcagent/device/push/GCM;->instance:Lcom/samsung/android/app/omcagent/device/push/GCM;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private checkPlayServices(Landroid/content/Context;)Z
    .locals 2

    invoke-static {p1}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getRegistrationId(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    sget-object v1, Lcom/samsung/android/app/omcagent/db/DevicePref;->instance:Lcom/samsung/android/app/omcagent/db/DevicePref;

    const-string v2, "GCM"

    invoke-virtual {v1, p1, v2}, Lcom/samsung/android/app/omcagent/db/DevicePref;->getPushID(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v2, "Registration ID is not found."

    invoke-virtual {v1, v2}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method private storeRegistrationId(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/samsung/android/app/omcagent/db/DevicePref;->instance:Lcom/samsung/android/app/omcagent/db/DevicePref;

    const-string v1, "GCM"

    sget-object v2, Lcom/samsung/android/app/omcagent/common/Device;->instance:Lcom/samsung/android/app/omcagent/common/Device;

    invoke-virtual {v2, p1}, Lcom/samsung/android/app/omcagent/common/Device;->readAppVersionCode(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v0, p1, v1, p2, v2}, Lcom/samsung/android/app/omcagent/db/DevicePref;->storePushID(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Z

    return-void
.end method


# virtual methods
.method public getRegistrationIDByBackground(Landroid/content/Context;)Lcom/samsung/android/app/omcagent/device/push/PushIDResult;
    .locals 8

    const/4 v5, 0x1

    const/4 v7, 0x0

    new-instance v3, Lcom/samsung/android/app/omcagent/device/push/PushIDResult;

    invoke-direct {v3}, Lcom/samsung/android/app/omcagent/device/push/PushIDResult;-><init>()V

    invoke-direct {p0, p1}, Lcom/samsung/android/app/omcagent/device/push/GCM;->checkPlayServices(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_0

    sget-object v4, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v5, "Play Services is not supported!"

    invoke-virtual {v4, v5}, Lcom/samsung/android/common/log/Logger$Impl;->W(Ljava/lang/String;)V

    invoke-virtual {v3, v7}, Lcom/samsung/android/app/omcagent/device/push/PushIDResult;->setResult(Z)V

    const-string v4, "PLAY_SERVICE_NOT_AVAILABLE"

    invoke-virtual {v3, v4}, Lcom/samsung/android/app/omcagent/device/push/PushIDResult;->setErrorMsg(Ljava/lang/String;)V

    :goto_0
    return-object v3

    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/app/omcagent/device/push/GCM;->getRegistrationId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v3, v5}, Lcom/samsung/android/app/omcagent/device/push/PushIDResult;->setResult(Z)V

    invoke-virtual {v3, v2}, Lcom/samsung/android/app/omcagent/device/push/PushIDResult;->setPushID(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    sget-object v4, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v5, "Try to get Registration ID from GoogleCloudMessaging"

    invoke-virtual {v4, v5}, Lcom/samsung/android/common/log/Logger$Impl;->W(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/gcm/GoogleCloudMessaging;

    move-result-object v1

    const/4 v4, 0x1

    :try_start_0
    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "96666210016"

    aput-object v6, v4, v5

    invoke-virtual {v1, v4}, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->register([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/samsung/android/app/omcagent/device/push/PushIDResult;->setResult(Z)V

    invoke-virtual {v3, v2}, Lcom/samsung/android/app/omcagent/device/push/PushIDResult;->setPushID(Ljava/lang/String;)V

    invoke-direct {p0, p1, v2}, Lcom/samsung/android/app/omcagent/device/push/GCM;->storeRegistrationId(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v3, v7}, Lcom/samsung/android/app/omcagent/device/push/PushIDResult;->setResult(Z)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/app/omcagent/device/push/PushIDResult;->setErrorMsg(Ljava/lang/String;)V

    sget-object v4, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    invoke-virtual {v4, v0}, Lcom/samsung/android/common/log/Logger$Impl;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {v3, v4}, Lcom/samsung/android/app/omcagent/device/push/PushIDResult;->setResult(Z)V

    const-string v4, "GCM_UNKNOWN_ERROR"

    invoke-virtual {v3, v4}, Lcom/samsung/android/app/omcagent/device/push/PushIDResult;->setErrorMsg(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method protected isAppVersionUpdated(Landroid/content/Context;)Z
    .locals 3

    sget-object v2, Lcom/samsung/android/app/omcagent/db/DevicePref;->instance:Lcom/samsung/android/app/omcagent/db/DevicePref;

    invoke-virtual {v2, p1}, Lcom/samsung/android/app/omcagent/db/DevicePref;->getAppVersion(Landroid/content/Context;)I

    move-result v1

    sget-object v2, Lcom/samsung/android/app/omcagent/common/Device;->instance:Lcom/samsung/android/app/omcagent/common/Device;

    invoke-virtual {v2, p1}, Lcom/samsung/android/app/omcagent/common/Device;->readAppVersionCode(Landroid/content/Context;)I

    move-result v0

    if-eq v1, v0, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method
