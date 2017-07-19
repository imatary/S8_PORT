.class public Lcom/samsung/android/app/omcagent/device/PollingIntentService;
.super Landroid/app/IntentService;
.source "PollingIntentService.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "Service[OMC_PolllingIntentService]"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 14

    sget-object v9, Lcom/samsung/android/app/omcagent/db/TaskPref;->instance:Lcom/samsung/android/app/omcagent/db/TaskPref;

    invoke-virtual {v9, p0}, Lcom/samsung/android/app/omcagent/db/TaskPref;->getOMCState(Landroid/content/Context;)I

    move-result v6

    if-nez v6, :cond_0

    sget-object v9, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Nothing to do in state: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v6}, Lcom/samsung/android/app/omcagent/db/TaskPref$OMC_STATE;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/samsung/android/common/log/Logger$Impl;->V(Ljava/lang/String;)V

    sget-object v9, Lcom/samsung/android/app/omcagent/device/polling/Polling;->instance:Lcom/samsung/android/app/omcagent/device/polling/Polling;

    invoke-virtual {v9, p0}, Lcom/samsung/android/app/omcagent/device/polling/Polling;->stopPollingTimer(Landroid/content/Context;)V

    :goto_0
    return-void

    :cond_0
    sget-object v9, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v10, "Check Polling State: Start polling"

    invoke-virtual {v9, v10}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    sget-object v9, Lcom/samsung/android/app/omcagent/omc/DeviceOmcInfo;->instance:Lcom/samsung/android/app/omcagent/omc/DeviceOmcInfo;

    invoke-virtual {v9, p0}, Lcom/samsung/android/app/omcagent/omc/DeviceOmcInfo;->read(Landroid/content/Context;)Z

    sget-object v9, Lcom/samsung/android/app/omcagent/network/DeviceInfo;->instance:Lcom/samsung/android/app/omcagent/network/DeviceInfo;

    invoke-virtual {v9, p0}, Lcom/samsung/android/app/omcagent/network/DeviceInfo;->readDeviceInfo(Landroid/content/Context;)V

    sget-object v9, Lcom/samsung/android/app/omcagent/network/PollingInfo;->instance:Lcom/samsung/android/app/omcagent/network/PollingInfo;

    sget-object v10, Lcom/samsung/android/app/omcagent/db/DevicePref;->instance:Lcom/samsung/android/app/omcagent/db/DevicePref;

    invoke-virtual {v10, p0}, Lcom/samsung/android/app/omcagent/db/DevicePref;->getPollingHostUrl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    sget-object v11, Lcom/samsung/android/app/omcagent/db/DevicePref;->instance:Lcom/samsung/android/app/omcagent/db/DevicePref;

    invoke-virtual {v11, p0}, Lcom/samsung/android/app/omcagent/db/DevicePref;->getPollingTargetUrl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lcom/samsung/android/app/omcagent/network/PollingInfo;->setUrl(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v9, Lcom/samsung/android/app/omcagent/device/polling/Polling;->instance:Lcom/samsung/android/app/omcagent/device/polling/Polling;

    sget-object v10, Lcom/samsung/android/app/omcagent/omc/DeviceOmcInfo;->instance:Lcom/samsung/android/app/omcagent/omc/DeviceOmcInfo;

    sget-object v11, Lcom/samsung/android/app/omcagent/network/PollingInfo;->instance:Lcom/samsung/android/app/omcagent/network/PollingInfo;

    invoke-virtual {v9, p0, v10, v11}, Lcom/samsung/android/app/omcagent/device/polling/Polling;->getUrlString(Landroid/content/Context;Lcom/samsung/android/app/omcagent/omc/DeviceOmcInfo;Lcom/samsung/android/app/omcagent/network/PollingInfo;)Ljava/lang/String;

    move-result-object v8

    sget-object v9, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Polling url: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/samsung/android/common/log/Logger$Impl;->D(Ljava/lang/String;)V

    new-instance v3, Lcom/samsung/android/app/omcagent/network/cloud/omc/PollingRestClient;

    invoke-direct {v3, p0, v8}, Lcom/samsung/android/app/omcagent/network/cloud/omc/PollingRestClient;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/samsung/android/app/omcagent/network/cloud/omc/PollingRestClient;->execute()Z

    invoke-virtual {v3}, Lcom/samsung/android/app/omcagent/network/cloud/omc/PollingRestClient;->getResponse()Lcom/samsung/android/app/omcagent/network/cloud/CloudResponse;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/app/omcagent/network/cloud/CloudResponse;->isSuccess()Z

    move-result v9

    if-eqz v9, :cond_4

    sget-object v9, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v10, "Receive result: success in PollingRestClient"

    invoke-virtual {v9, v10}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/samsung/android/app/omcagent/network/cloud/omc/PollingRestClient;->getResponse()Lcom/samsung/android/app/omcagent/network/cloud/CloudResponse;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/app/omcagent/network/cloud/CloudResponse;->getBody()Ljava/lang/String;

    move-result-object v0

    sget-object v9, Lcom/samsung/android/app/omcagent/device/polling/Polling;->instance:Lcom/samsung/android/app/omcagent/device/polling/Polling;

    sget-object v10, Lcom/samsung/android/app/omcagent/omc/DeviceOmcInfo;->instance:Lcom/samsung/android/app/omcagent/omc/DeviceOmcInfo;

    invoke-virtual {v9, v0, v10}, Lcom/samsung/android/app/omcagent/device/polling/Polling;->getMessages(Ljava/lang/String;Lcom/samsung/android/app/omcagent/omc/DeviceOmcInfo;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    sget-object v11, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v12, "="

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v11, v9}, Lcom/samsung/android/common/log/Logger$Impl;->D(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    sget-object v12, Lcom/samsung/android/app/omcagent/network/UpdateInfo;->instance:Lcom/samsung/android/app/omcagent/network/UpdateInfo;

    const-string v9, "versionInfo/statusReport/period"

    invoke-interface {v2, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    const-string v10, "versionInfo/statusReport/time"

    invoke-interface {v2, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    const-string v11, "versionInfo/statusReport/range"

    invoke-interface {v2, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v12, v9, v10, v11}, Lcom/samsung/android/app/omcagent/network/UpdateInfo;->setPeriod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v11, Lcom/samsung/android/app/omcagent/network/PollingInfo;->instance:Lcom/samsung/android/app/omcagent/network/PollingInfo;

    const-string v9, "versionInfo/url"

    invoke-interface {v2, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    const-string v10, "versionInfo/fileName"

    invoke-interface {v2, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v11, v9, v10}, Lcom/samsung/android/app/omcagent/network/PollingInfo;->setUrl(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v13, Lcom/samsung/android/app/omcagent/network/PollingInfo;->instance:Lcom/samsung/android/app/omcagent/network/PollingInfo;

    const-string v9, "versionInfo/polling/periodUnit"

    invoke-interface {v2, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    const-string v10, "versionInfo/polling/period"

    invoke-interface {v2, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    const-string v11, "versionInfo/polling/time"

    invoke-interface {v2, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    const-string v12, "versionInfo/polling/range"

    invoke-interface {v2, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v13, v9, v10, v11, v12}, Lcom/samsung/android/app/omcagent/network/PollingInfo;->setPeriod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v9, Lcom/samsung/android/app/omcagent/device/polling/Polling;->instance:Lcom/samsung/android/app/omcagent/device/polling/Polling;

    sget-object v10, Lcom/samsung/android/app/omcagent/network/PollingInfo;->instance:Lcom/samsung/android/app/omcagent/network/PollingInfo;

    invoke-virtual {v9, p0, v10}, Lcom/samsung/android/app/omcagent/device/polling/Polling;->calculateNextPollingTime(Landroid/content/Context;Lcom/samsung/android/app/omcagent/network/PollingInfo;)J

    move-result-wide v4

    sget-object v9, Lcom/samsung/android/app/omcagent/db/DevicePref;->instance:Lcom/samsung/android/app/omcagent/db/DevicePref;

    sget-object v10, Lcom/samsung/android/app/omcagent/network/UpdateInfo;->instance:Lcom/samsung/android/app/omcagent/network/UpdateInfo;

    sget-object v11, Lcom/samsung/android/app/omcagent/network/PollingInfo;->instance:Lcom/samsung/android/app/omcagent/network/PollingInfo;

    invoke-virtual {v9, p0, v10, v11}, Lcom/samsung/android/app/omcagent/db/DevicePref;->setDeviceUpdated(Landroid/content/Context;Lcom/samsung/android/app/omcagent/network/UpdateInfo;Lcom/samsung/android/app/omcagent/network/PollingInfo;)Z

    sget-object v9, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Next polling Time:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/samsung/android/common/log/Logger$Impl;->D(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    cmp-long v9, v4, v10

    if-lez v9, :cond_2

    sget-object v9, Lcom/samsung/android/app/omcagent/db/DevicePref;->instance:Lcom/samsung/android/app/omcagent/db/DevicePref;

    invoke-virtual {v9, p0, v4, v5}, Lcom/samsung/android/app/omcagent/db/DevicePref;->setPollingTime(Landroid/content/Context;J)V

    sget-object v9, Lcom/samsung/android/app/omcagent/device/polling/Polling;->instance:Lcom/samsung/android/app/omcagent/device/polling/Polling;

    invoke-virtual {v9, p0, v4, v5}, Lcom/samsung/android/app/omcagent/device/polling/Polling;->startPollingTimer(Landroid/content/Context;J)V

    :cond_2
    const-string v9, "versionInfo/config/version"

    invoke-interface {v2, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    sget-object v9, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Target Version from polling: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    sget-object v9, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Current Version from device: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Lcom/samsung/android/app/omcagent/omc/DeviceOmcInfo;->instance:Lcom/samsung/android/app/omcagent/omc/DeviceOmcInfo;

    invoke-virtual {v11}, Lcom/samsung/android/app/omcagent/omc/DeviceOmcInfo;->getVersion()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_3

    sget-object v9, Lcom/samsung/android/app/omcagent/omc/DeviceOmcInfo;->instance:Lcom/samsung/android/app/omcagent/omc/DeviceOmcInfo;

    invoke-virtual {v9}, Lcom/samsung/android/app/omcagent/omc/DeviceOmcInfo;->getVersion()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    sget-object v9, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v10, "Update Available. Process Polling Update..."

    invoke-virtual {v9, v10}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    new-instance v9, Lcom/samsung/android/app/omcagent/ProcessOMC;

    invoke-direct {v9}, Lcom/samsung/android/app/omcagent/ProcessOMC;-><init>()V

    new-instance v10, Landroid/content/Intent;

    const-string v11, "com.samsung.omcagent.intent.POLLING_UPDATE"

    invoke-direct {v10, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p0, v10}, Lcom/samsung/android/app/omcagent/ProcessOMC;->execute(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_3
    :goto_2
    sget-object v9, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v10, "Check Polling State: Finish polling"

    invoke-virtual {v9, v10}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    sget-object v9, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v10, "Receive result: fail in PollingRestClient"

    invoke-virtual {v9, v10}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/samsung/android/app/omcagent/network/cloud/omc/PollingRestClient;->getResponse()Lcom/samsung/android/app/omcagent/network/cloud/CloudResponse;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/app/omcagent/network/cloud/CloudResponse;->getResult()I

    move-result v9

    invoke-static {v9}, Lcom/samsung/android/app/omcagent/network/ResultType;->isNetworkFail(I)Z

    move-result v9

    if-nez v9, :cond_3

    sget-object v9, Lcom/samsung/android/app/omcagent/network/PollingInfo;->instance:Lcom/samsung/android/app/omcagent/network/PollingInfo;

    sget-object v10, Lcom/samsung/android/app/omcagent/db/DevicePref;->instance:Lcom/samsung/android/app/omcagent/db/DevicePref;

    invoke-virtual {v10, p0}, Lcom/samsung/android/app/omcagent/db/DevicePref;->getPollingPeriodType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    sget-object v11, Lcom/samsung/android/app/omcagent/db/DevicePref;->instance:Lcom/samsung/android/app/omcagent/db/DevicePref;

    invoke-virtual {v11, p0}, Lcom/samsung/android/app/omcagent/db/DevicePref;->getPollingPeriodKey(Landroid/content/Context;)I

    move-result v11

    sget-object v12, Lcom/samsung/android/app/omcagent/db/DevicePref;->instance:Lcom/samsung/android/app/omcagent/db/DevicePref;

    invoke-virtual {v12, p0}, Lcom/samsung/android/app/omcagent/db/DevicePref;->getPollingPeriodTime(Landroid/content/Context;)I

    move-result v12

    sget-object v13, Lcom/samsung/android/app/omcagent/db/DevicePref;->instance:Lcom/samsung/android/app/omcagent/db/DevicePref;

    invoke-virtual {v13, p0}, Lcom/samsung/android/app/omcagent/db/DevicePref;->getPollingPeriodRange(Landroid/content/Context;)I

    move-result v13

    invoke-virtual {v9, v10, v11, v12, v13}, Lcom/samsung/android/app/omcagent/network/PollingInfo;->setPeriod(Ljava/lang/String;III)V

    sget-object v9, Lcom/samsung/android/app/omcagent/device/polling/Polling;->instance:Lcom/samsung/android/app/omcagent/device/polling/Polling;

    sget-object v10, Lcom/samsung/android/app/omcagent/network/PollingInfo;->instance:Lcom/samsung/android/app/omcagent/network/PollingInfo;

    invoke-virtual {v9, p0, v10}, Lcom/samsung/android/app/omcagent/device/polling/Polling;->calculateNextPollingTime(Landroid/content/Context;Lcom/samsung/android/app/omcagent/network/PollingInfo;)J

    move-result-wide v4

    sget-object v9, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Next polling Time:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/samsung/android/common/log/Logger$Impl;->D(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    cmp-long v9, v4, v10

    if-lez v9, :cond_3

    sget-object v9, Lcom/samsung/android/app/omcagent/db/DevicePref;->instance:Lcom/samsung/android/app/omcagent/db/DevicePref;

    invoke-virtual {v9, p0, v4, v5}, Lcom/samsung/android/app/omcagent/db/DevicePref;->setPollingTime(Landroid/content/Context;J)V

    sget-object v9, Lcom/samsung/android/app/omcagent/device/polling/Polling;->instance:Lcom/samsung/android/app/omcagent/device/polling/Polling;

    invoke-virtual {v9, p0, v4, v5}, Lcom/samsung/android/app/omcagent/device/polling/Polling;->startPollingTimer(Landroid/content/Context;J)V

    goto :goto_2
.end method
