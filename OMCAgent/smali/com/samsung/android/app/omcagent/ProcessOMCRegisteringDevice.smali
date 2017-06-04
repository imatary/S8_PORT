.class public Lcom/samsung/android/app/omcagent/ProcessOMCRegisteringDevice;
.super Ljava/lang/Object;
.source "ProcessOMCRegisteringDevice.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHandle(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/samsung/android/app/omcagent/common/Device;->instance:Lcom/samsung/android/app/omcagent/common/Device;

    invoke-static {p1}, Lcom/samsung/android/app/omcagent/common/Device;->isAvailableNetwork(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v2, "scheduleJob_data"

    invoke-virtual {v1, v2}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/samsung/android/app/omcagent/DataConnectedService;->scheduleJob(Landroid/content/Context;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v1, Lcom/samsung/android/app/omcagent/device/register/Register;->instance:Lcom/samsung/android/app/omcagent/device/register/Register;

    invoke-static {p1}, Lcom/samsung/android/app/omcagent/common/OmcFeature;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/omcagent/common/OmcFeature;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/app/omcagent/common/OmcFeature;->getRegistrationDelay()J

    move-result-wide v2

    invoke-virtual {v1, p1, v2, v3}, Lcom/samsung/android/app/omcagent/device/register/Register;->startRegisterTimer(Landroid/content/Context;J)V

    :cond_2
    sget-object v1, Lcom/samsung/android/app/omcagent/db/SystemSetting;->instance:Lcom/samsung/android/app/omcagent/db/SystemSetting;

    invoke-virtual {v1, p1}, Lcom/samsung/android/app/omcagent/db/SystemSetting;->isEulaAgreeed(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_3

    sget-object v1, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v2, "EULA is not agreed now."

    invoke-virtual {v1, v2}, Lcom/samsung/android/common/log/Logger$Impl;->W(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v1, "com.samsung.omcagent.intent.PRE_SETUPWIZARD_READY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "com.samsung.omcagent.intent.SIM_LOADED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "com.samsung.omcagent.intent.USER_UPDATE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "com.samsung.omcagent.intent.REGISTER_DEVICEINFO"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "com.samsung.omcagent.intent.SALESCODE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_4
    sget-object v1, Lcom/samsung/android/app/omcagent/device/register/Register;->instance:Lcom/samsung/android/app/omcagent/device/register/Register;

    invoke-virtual {v1, p1}, Lcom/samsung/android/app/omcagent/device/register/Register;->startRegisterAuto(Landroid/content/Context;)V

    goto :goto_0

    :cond_5
    const-string v1, "com.samsung.android.omcagent.intent.NETWORK_CONNECTED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "com.samsung.omcagent.intent.SIM_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    sget-object v1, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Waiting action("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") to register device"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    sget-object v1, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not implemented yet on ProcessOMCRegisteringDevice "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/common/log/Logger$Impl;->W(Ljava/lang/String;)V

    goto/16 :goto_0
.end method
