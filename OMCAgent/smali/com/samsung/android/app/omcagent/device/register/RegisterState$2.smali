.class final Lcom/samsung/android/app/omcagent/device/register/RegisterState$2;
.super Ljava/lang/Object;
.source "RegisterState.java"

# interfaces
.implements Lcom/samsung/android/app/omcagent/device/register/RegisterState;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/omcagent/device/register/RegisterState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lcom/samsung/android/app/omcagent/device/register/RegisterStateContext;)Lcom/samsung/android/app/omcagent/device/register/RegisterState;
    .locals 11

    sget-object v0, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v1, "Register State: registering device"

    invoke-virtual {v0, v1}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/app/omcagent/network/DeviceInfo;->instance:Lcom/samsung/android/app/omcagent/network/DeviceInfo;

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/device/register/RegisterStateContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/omcagent/network/DeviceInfo;->readDeviceInfo(Landroid/content/Context;)V

    sget-object v0, Lcom/samsung/android/app/omcagent/omc/DeviceOmcInfo;->instance:Lcom/samsung/android/app/omcagent/omc/DeviceOmcInfo;

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/device/register/RegisterStateContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/omcagent/omc/DeviceOmcInfo;->read(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/app/omcagent/omc/DeviceOmcInfo;->instance:Lcom/samsung/android/app/omcagent/omc/DeviceOmcInfo;

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/device/register/RegisterStateContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Lcom/samsung/android/app/omcagent/omc/DeviceOmcInfo;->read(Landroid/content/Context;Lcom/samsung/android/app/omcagent/omc/SimOmcInfo;)Z

    :cond_0
    new-instance v9, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/DeviceRestClient;

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/device/register/RegisterStateContext;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/omcagent/network/DeviceInfo;->instance:Lcom/samsung/android/app/omcagent/network/DeviceInfo;

    sget-object v3, Lcom/samsung/android/app/omcagent/omc/DeviceOmcInfo;->instance:Lcom/samsung/android/app/omcagent/omc/DeviceOmcInfo;

    invoke-direct {v9, v0, v1, v3}, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/DeviceRestClient;-><init>(Landroid/content/Context;Lcom/samsung/android/app/omcagent/network/DeviceInfo;Lcom/samsung/android/app/omcagent/omc/OmcInfo;)V

    invoke-virtual {v9}, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/DeviceRestClient;->execute()Z

    invoke-virtual {v9}, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/DeviceRestClient;->getResponse()Lcom/samsung/android/app/omcagent/network/auth/sec/omc/OMCResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/OMCResponse;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v1, "Receive result: success in DeviceRestClient"

    invoke-virtual {v0, v1}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    invoke-virtual {v9}, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/DeviceRestClient;->getResultObject()Lcom/samsung/android/app/omcagent/network/auth/sec/omc/json/DeviceCommonResponse;

    move-result-object v10

    if-nez v10, :cond_1

    sget-object v0, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v1, "Receive result: fail to get resultObject"

    invoke-virtual {v0, v1}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/app/omcagent/device/register/RegisterState$2;->CHECK_REGISTER_DEVICE:Lcom/samsung/android/app/omcagent/device/register/RegisterState;

    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lcom/samsung/android/app/omcagent/network/DeviceInfo;->instance:Lcom/samsung/android/app/omcagent/network/DeviceInfo;

    invoke-virtual {v0}, Lcom/samsung/android/app/omcagent/network/DeviceInfo;->getUniqueID()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/omcagent/common/Device;->generateSHA1Hash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10}, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/json/DeviceCommonResponse;->getStatusReportInfo()Lcom/samsung/android/app/omcagent/network/auth/sec/omc/json/DeviceCommonResponse$StatusReportInfo;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v10}, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/json/DeviceCommonResponse;->getStatusReportInfo()Lcom/samsung/android/app/omcagent/network/auth/sec/omc/json/DeviceCommonResponse$StatusReportInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/json/DeviceCommonResponse$StatusReportInfo;->getCategory()Ljava/lang/String;

    move-result-object v8

    sget-object v0, Lcom/samsung/android/app/omcagent/network/DeviceInfo;->instance:Lcom/samsung/android/app/omcagent/network/DeviceInfo;

    invoke-virtual {v0, v8}, Lcom/samsung/android/app/omcagent/network/DeviceInfo;->setDeviceCategory(Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/app/omcagent/db/OmcPref;->instance:Lcom/samsung/android/app/omcagent/db/OmcPref;

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/device/register/RegisterStateContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, v8}, Lcom/samsung/android/app/omcagent/db/OmcPref;->setDeviceCategory(Landroid/content/Context;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/app/omcagent/network/DeviceInfo;->instance:Lcom/samsung/android/app/omcagent/network/DeviceInfo;

    invoke-virtual {v10}, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/json/DeviceCommonResponse;->getOmcEnable()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/omcagent/network/DeviceInfo;->setOmcEmabler(Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/app/omcagent/common/Device;->checkOmcEnabler()V

    sget-object v0, Lcom/samsung/android/app/omcagent/network/UpdateInfo;->instance:Lcom/samsung/android/app/omcagent/network/UpdateInfo;

    invoke-virtual {v10}, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/json/DeviceCommonResponse;->getStatusReportInfo()Lcom/samsung/android/app/omcagent/network/auth/sec/omc/json/DeviceCommonResponse$StatusReportInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/omcagent/network/UpdateInfo;->setPeriod(Lcom/samsung/android/app/omcagent/network/auth/sec/omc/json/DeviceCommonResponse$StatusReportInfo;)V

    sget-object v0, Lcom/samsung/android/app/omcagent/device/register/Register;->instance:Lcom/samsung/android/app/omcagent/device/register/Register;

    sget-object v1, Lcom/samsung/android/app/omcagent/network/UpdateInfo;->instance:Lcom/samsung/android/app/omcagent/network/UpdateInfo;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/omcagent/device/register/Register;->calculateNextUpdateTime(Lcom/samsung/android/app/omcagent/network/UpdateInfo;)J

    move-result-wide v4

    sget-object v0, Lcom/samsung/android/app/omcagent/network/PollingInfo;->instance:Lcom/samsung/android/app/omcagent/network/PollingInfo;

    invoke-virtual {v10}, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/json/DeviceCommonResponse;->getPollingInfo()Lcom/samsung/android/app/omcagent/network/auth/sec/omc/json/DeviceCommonResponse$PollingInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/omcagent/network/PollingInfo;->setPolling(Lcom/samsung/android/app/omcagent/network/auth/sec/omc/json/DeviceCommonResponse$PollingInfo;)V

    sget-object v0, Lcom/samsung/android/app/omcagent/db/DevicePref;->instance:Lcom/samsung/android/app/omcagent/db/DevicePref;

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/device/register/RegisterStateContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/samsung/android/app/omcagent/common/Device;->readOperator()Ljava/lang/String;

    move-result-object v3

    sget-object v6, Lcom/samsung/android/app/omcagent/network/UpdateInfo;->instance:Lcom/samsung/android/app/omcagent/network/UpdateInfo;

    sget-object v7, Lcom/samsung/android/app/omcagent/network/PollingInfo;->instance:Lcom/samsung/android/app/omcagent/network/PollingInfo;

    invoke-virtual/range {v0 .. v7}, Lcom/samsung/android/app/omcagent/db/DevicePref;->setDeviceRegistered(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLcom/samsung/android/app/omcagent/network/UpdateInfo;Lcom/samsung/android/app/omcagent/network/PollingInfo;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v1, "Update DB to Registered"

    invoke-virtual {v0, v1}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/app/omcagent/device/register/Register;->instance:Lcom/samsung/android/app/omcagent/device/register/Register;

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/device/register/RegisterStateContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/omcagent/device/register/Register;->stopRegisterTimer(Landroid/content/Context;)V

    const-wide/16 v0, 0x0

    cmp-long v0, v4, v0

    if-lez v0, :cond_2

    sget-object v0, Lcom/samsung/android/app/omcagent/device/register/Register;->instance:Lcom/samsung/android/app/omcagent/device/register/Register;

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/device/register/RegisterStateContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, v4, v5}, Lcom/samsung/android/app/omcagent/device/register/Register;->startUpdateTimer(Landroid/content/Context;J)V

    :cond_2
    sget-object v0, Lcom/samsung/android/app/omcagent/db/TaskPref;->instance:Lcom/samsung/android/app/omcagent/db/TaskPref;

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/device/register/RegisterStateContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/omcagent/db/TaskPref;->init(Landroid/content/Context;)V

    new-instance v0, Lcom/samsung/android/app/omcagent/ProcessOMC;

    invoke-direct {v0}, Lcom/samsung/android/app/omcagent/ProcessOMC;-><init>()V

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/device/register/RegisterStateContext;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v3, Landroid/content/Intent;

    const-string v6, "com.samsung.omcagent.intent.DEVICE_REGISTER"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v3}, Lcom/samsung/android/app/omcagent/ProcessOMC;->execute(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_3
    sget-object v0, Lcom/samsung/android/app/omcagent/device/register/RegisterState$2;->CHECK_REGISTER_POLLING:Lcom/samsung/android/app/omcagent/device/register/RegisterState;

    goto/16 :goto_0

    :cond_4
    sget-object v0, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v1, "Receive result: fail in DeviceRestClient"

    invoke-virtual {v0, v1}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    invoke-virtual {v9}, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/DeviceRestClient;->getResponse()Lcom/samsung/android/app/omcagent/network/auth/sec/omc/OMCResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/OMCResponse;->getErrorCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v1, "Send Error Report"

    invoke-virtual {v0, v1}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    invoke-virtual {v9}, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/DeviceRestClient;->getResponse()Lcom/samsung/android/app/omcagent/network/auth/sec/omc/OMCResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/OMCResponse;->getErrorCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/common/diagmon/DiagMon;->sendReport(Ljava/lang/String;)V

    :cond_5
    sget-object v0, Lcom/samsung/android/app/omcagent/common/Device;->instance:Lcom/samsung/android/app/omcagent/common/Device;

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/device/register/RegisterStateContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/omcagent/common/Device;->isAvailableNetwork(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lcom/samsung/android/app/omcagent/device/register/Register;->instance:Lcom/samsung/android/app/omcagent/device/register/Register;

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/device/register/RegisterStateContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/device/register/RegisterStateContext;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/app/omcagent/common/OmcFeature;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/omcagent/common/OmcFeature;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/app/omcagent/common/OmcFeature;->getRegistrationDelay()J

    move-result-wide v6

    invoke-virtual {v0, v1, v6, v7}, Lcom/samsung/android/app/omcagent/device/register/Register;->startRegisterTimer(Landroid/content/Context;J)V

    :goto_1
    sget-object v0, Lcom/samsung/android/app/omcagent/device/register/RegisterState$2;->REGISTER_FINISH:Lcom/samsung/android/app/omcagent/device/register/RegisterState;

    goto/16 :goto_0

    :cond_6
    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/device/register/RegisterStateContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/omcagent/DataConnectedService;->scheduleJob(Landroid/content/Context;)V

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "REGISTERING_DEVICE"

    return-object v0
.end method
