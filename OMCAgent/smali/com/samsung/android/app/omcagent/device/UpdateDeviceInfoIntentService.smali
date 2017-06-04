.class public Lcom/samsung/android/app/omcagent/device/UpdateDeviceInfoIntentService;
.super Landroid/app/IntentService;
.source "UpdateDeviceInfoIntentService.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "Service[OMC_UpdateDeviceIntentService]"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 10

    sget-object v6, Lcom/samsung/android/app/omcagent/db/TaskPref;->instance:Lcom/samsung/android/app/omcagent/db/TaskPref;

    invoke-virtual {v6, p0}, Lcom/samsung/android/app/omcagent/db/TaskPref;->getOMCState(Landroid/content/Context;)I

    move-result v5

    if-nez v5, :cond_0

    sget-object v6, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Nothing to do in state: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v5}, Lcom/samsung/android/app/omcagent/db/TaskPref$OMC_STATE;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/samsung/android/common/log/Logger$Impl;->V(Ljava/lang/String;)V

    sget-object v6, Lcom/samsung/android/app/omcagent/db/DevicePref;->instance:Lcom/samsung/android/app/omcagent/db/DevicePref;

    const-wide/16 v8, 0x0

    invoke-virtual {v6, p0, v8, v9}, Lcom/samsung/android/app/omcagent/db/DevicePref;->setUpdateTime(Landroid/content/Context;J)V

    sget-object v6, Lcom/samsung/android/app/omcagent/device/register/Register;->instance:Lcom/samsung/android/app/omcagent/device/register/Register;

    invoke-virtual {v6, p0}, Lcom/samsung/android/app/omcagent/device/register/Register;->stopUpdateTimer(Landroid/content/Context;)V

    :goto_0
    return-void

    :cond_0
    const/16 v6, 0xc8

    if-ne v5, v6, :cond_1

    sget-object v6, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Waitng to do in state: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v5}, Lcom/samsung/android/app/omcagent/db/TaskPref$OMC_STATE;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/samsung/android/common/log/Logger$Impl;->V(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    sget-object v6, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v7, "Update Device: Start device update"

    invoke-virtual {v6, v7}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    sget-object v6, Lcom/samsung/android/app/omcagent/network/DeviceInfo;->instance:Lcom/samsung/android/app/omcagent/network/DeviceInfo;

    invoke-virtual {v6, p0}, Lcom/samsung/android/app/omcagent/network/DeviceInfo;->readDeviceInfo(Landroid/content/Context;)V

    sget-object v6, Lcom/samsung/android/app/omcagent/omc/DeviceOmcInfo;->instance:Lcom/samsung/android/app/omcagent/omc/DeviceOmcInfo;

    invoke-virtual {v6, p0}, Lcom/samsung/android/app/omcagent/omc/DeviceOmcInfo;->read(Landroid/content/Context;)Z

    new-instance v1, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/UpdateRestClient;

    sget-object v6, Lcom/samsung/android/app/omcagent/network/DeviceInfo;->instance:Lcom/samsung/android/app/omcagent/network/DeviceInfo;

    sget-object v7, Lcom/samsung/android/app/omcagent/omc/DeviceOmcInfo;->instance:Lcom/samsung/android/app/omcagent/omc/DeviceOmcInfo;

    invoke-direct {v1, p0, v6, v7}, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/UpdateRestClient;-><init>(Landroid/content/Context;Lcom/samsung/android/app/omcagent/network/DeviceInfo;Lcom/samsung/android/app/omcagent/omc/OmcInfo;)V

    invoke-virtual {v1}, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/UpdateRestClient;->execute()Z

    invoke-virtual {v1}, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/UpdateRestClient;->getResponse()Lcom/samsung/android/app/omcagent/network/auth/sec/omc/OMCResponse;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/OMCResponse;->isSuccess()Z

    move-result v6

    if-eqz v6, :cond_3

    sget-object v6, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v7, "Receive result: success in UpdateRestClient"

    invoke-virtual {v6, v7}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/UpdateRestClient;->getResultObject()Lcom/samsung/android/app/omcagent/network/auth/sec/omc/json/DeviceCommonResponse;

    move-result-object v4

    sget-object v6, Lcom/samsung/android/app/omcagent/network/UpdateInfo;->instance:Lcom/samsung/android/app/omcagent/network/UpdateInfo;

    invoke-virtual {v4}, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/json/DeviceCommonResponse;->getStatusReportInfo()Lcom/samsung/android/app/omcagent/network/auth/sec/omc/json/DeviceCommonResponse$StatusReportInfo;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/samsung/android/app/omcagent/network/UpdateInfo;->setPeriod(Lcom/samsung/android/app/omcagent/network/auth/sec/omc/json/DeviceCommonResponse$StatusReportInfo;)V

    sget-object v6, Lcom/samsung/android/app/omcagent/device/register/Register;->instance:Lcom/samsung/android/app/omcagent/device/register/Register;

    sget-object v7, Lcom/samsung/android/app/omcagent/network/UpdateInfo;->instance:Lcom/samsung/android/app/omcagent/network/UpdateInfo;

    invoke-virtual {v6, v7}, Lcom/samsung/android/app/omcagent/device/register/Register;->calculateNextUpdateTime(Lcom/samsung/android/app/omcagent/network/UpdateInfo;)J

    move-result-wide v2

    invoke-virtual {v4}, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/json/DeviceCommonResponse;->getStatusReportInfo()Lcom/samsung/android/app/omcagent/network/auth/sec/omc/json/DeviceCommonResponse$StatusReportInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/json/DeviceCommonResponse$StatusReportInfo;->getCategory()Ljava/lang/String;

    move-result-object v0

    sget-object v6, Lcom/samsung/android/app/omcagent/network/DeviceInfo;->instance:Lcom/samsung/android/app/omcagent/network/DeviceInfo;

    invoke-virtual {v6, v0}, Lcom/samsung/android/app/omcagent/network/DeviceInfo;->setDeviceCategory(Ljava/lang/String;)V

    sget-object v6, Lcom/samsung/android/app/omcagent/db/OmcPref;->instance:Lcom/samsung/android/app/omcagent/db/OmcPref;

    invoke-virtual {v6, p0, v0}, Lcom/samsung/android/app/omcagent/db/OmcPref;->setDeviceCategory(Landroid/content/Context;Ljava/lang/String;)V

    sget-object v6, Lcom/samsung/android/app/omcagent/network/PollingInfo;->instance:Lcom/samsung/android/app/omcagent/network/PollingInfo;

    invoke-virtual {v4}, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/json/DeviceCommonResponse;->getPollingInfo()Lcom/samsung/android/app/omcagent/network/auth/sec/omc/json/DeviceCommonResponse$PollingInfo;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/samsung/android/app/omcagent/network/PollingInfo;->setPolling(Lcom/samsung/android/app/omcagent/network/auth/sec/omc/json/DeviceCommonResponse$PollingInfo;)V

    sget-object v6, Lcom/samsung/android/app/omcagent/network/DeviceInfo;->instance:Lcom/samsung/android/app/omcagent/network/DeviceInfo;

    invoke-virtual {v4}, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/json/DeviceCommonResponse;->getOmcEnable()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/samsung/android/app/omcagent/network/DeviceInfo;->setOmcEmabler(Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/app/omcagent/common/Device;->checkOmcEnabler()V

    sget-object v6, Lcom/samsung/android/app/omcagent/db/DevicePref;->instance:Lcom/samsung/android/app/omcagent/db/DevicePref;

    sget-object v7, Lcom/samsung/android/app/omcagent/network/UpdateInfo;->instance:Lcom/samsung/android/app/omcagent/network/UpdateInfo;

    sget-object v8, Lcom/samsung/android/app/omcagent/network/PollingInfo;->instance:Lcom/samsung/android/app/omcagent/network/PollingInfo;

    invoke-virtual {v6, p0, v7, v8}, Lcom/samsung/android/app/omcagent/db/DevicePref;->setDeviceUpdated(Landroid/content/Context;Lcom/samsung/android/app/omcagent/network/UpdateInfo;Lcom/samsung/android/app/omcagent/network/PollingInfo;)Z

    sget-object v6, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Next update Time:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/samsung/android/common/log/Logger$Impl;->D(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    cmp-long v6, v2, v6

    if-lez v6, :cond_2

    sget-object v6, Lcom/samsung/android/app/omcagent/db/DevicePref;->instance:Lcom/samsung/android/app/omcagent/db/DevicePref;

    invoke-virtual {v6, p0, v2, v3}, Lcom/samsung/android/app/omcagent/db/DevicePref;->setUpdateTime(Landroid/content/Context;J)V

    sget-object v6, Lcom/samsung/android/app/omcagent/device/register/Register;->instance:Lcom/samsung/android/app/omcagent/device/register/Register;

    invoke-virtual {v6, p0, v2, v3}, Lcom/samsung/android/app/omcagent/device/register/Register;->startUpdateTimer(Landroid/content/Context;J)V

    :cond_2
    :goto_1
    sget-object v6, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v7, "Update Device State: Finish device update"

    invoke-virtual {v6, v7}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    sget-object v6, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v7, "Receive result: fail in UpdateRestClient"

    invoke-virtual {v6, v7}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/UpdateRestClient;->getResponse()Lcom/samsung/android/app/omcagent/network/auth/sec/omc/OMCResponse;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/OMCResponse;->getResult()I

    move-result v6

    invoke-static {v6}, Lcom/samsung/android/app/omcagent/network/ResultType;->isNetworkFail(I)Z

    move-result v6

    if-nez v6, :cond_2

    sget-object v6, Lcom/samsung/android/app/omcagent/network/UpdateInfo;->instance:Lcom/samsung/android/app/omcagent/network/UpdateInfo;

    sget-object v7, Lcom/samsung/android/app/omcagent/db/DevicePref;->instance:Lcom/samsung/android/app/omcagent/db/DevicePref;

    invoke-virtual {v7, p0}, Lcom/samsung/android/app/omcagent/db/DevicePref;->getUpdatePeriodDay(Landroid/content/Context;)I

    move-result v7

    sget-object v8, Lcom/samsung/android/app/omcagent/db/DevicePref;->instance:Lcom/samsung/android/app/omcagent/db/DevicePref;

    invoke-virtual {v8, p0}, Lcom/samsung/android/app/omcagent/db/DevicePref;->getUpdatePeriodTime(Landroid/content/Context;)I

    move-result v8

    sget-object v9, Lcom/samsung/android/app/omcagent/db/DevicePref;->instance:Lcom/samsung/android/app/omcagent/db/DevicePref;

    invoke-virtual {v9, p0}, Lcom/samsung/android/app/omcagent/db/DevicePref;->getUpdatePeriodRange(Landroid/content/Context;)I

    move-result v9

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/app/omcagent/network/UpdateInfo;->setPeriod(III)V

    sget-object v6, Lcom/samsung/android/app/omcagent/device/register/Register;->instance:Lcom/samsung/android/app/omcagent/device/register/Register;

    sget-object v7, Lcom/samsung/android/app/omcagent/network/UpdateInfo;->instance:Lcom/samsung/android/app/omcagent/network/UpdateInfo;

    invoke-virtual {v6, v7}, Lcom/samsung/android/app/omcagent/device/register/Register;->calculateNextUpdateTime(Lcom/samsung/android/app/omcagent/network/UpdateInfo;)J

    move-result-wide v2

    sget-object v6, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Next update Time:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/samsung/android/common/log/Logger$Impl;->D(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    cmp-long v6, v2, v6

    if-lez v6, :cond_2

    sget-object v6, Lcom/samsung/android/app/omcagent/db/DevicePref;->instance:Lcom/samsung/android/app/omcagent/db/DevicePref;

    invoke-virtual {v6, p0, v2, v3}, Lcom/samsung/android/app/omcagent/db/DevicePref;->setUpdateTime(Landroid/content/Context;J)V

    sget-object v6, Lcom/samsung/android/app/omcagent/device/register/Register;->instance:Lcom/samsung/android/app/omcagent/device/register/Register;

    invoke-virtual {v6, p0, v2, v3}, Lcom/samsung/android/app/omcagent/device/register/Register;->startUpdateTimer(Landroid/content/Context;J)V

    goto :goto_1
.end method
