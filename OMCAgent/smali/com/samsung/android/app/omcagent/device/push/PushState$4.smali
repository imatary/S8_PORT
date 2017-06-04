.class final Lcom/samsung/android/app/omcagent/device/push/PushState$4;
.super Ljava/lang/Object;
.source "PushState.java"

# interfaces
.implements Lcom/samsung/android/app/omcagent/device/push/PushState;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/omcagent/device/push/PushState;
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
.method public run(Lcom/samsung/android/app/omcagent/device/push/PushStateContext;)Lcom/samsung/android/app/omcagent/device/push/PushState;
    .locals 7

    sget-object v3, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v4, "Push State: [Config Update] Start to update Polling Info by ConfigRestClient"

    invoke-virtual {v3, v4}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    sget-object v3, Lcom/samsung/android/app/omcagent/network/DeviceInfo;->instance:Lcom/samsung/android/app/omcagent/network/DeviceInfo;

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/device/push/PushStateContext;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/app/omcagent/network/DeviceInfo;->readDeviceInfo(Landroid/content/Context;)V

    new-instance v1, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/PollingInfoRestClient;

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/device/push/PushStateContext;->getContext()Landroid/content/Context;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/app/omcagent/network/DeviceInfo;->instance:Lcom/samsung/android/app/omcagent/network/DeviceInfo;

    sget-object v5, Lcom/samsung/android/app/omcagent/omc/DeviceOmcInfo;->instance:Lcom/samsung/android/app/omcagent/omc/DeviceOmcInfo;

    invoke-direct {v1, v3, v4, v5}, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/PollingInfoRestClient;-><init>(Landroid/content/Context;Lcom/samsung/android/app/omcagent/network/DeviceInfo;Lcom/samsung/android/app/omcagent/omc/OmcInfo;)V

    invoke-virtual {v1}, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/PollingInfoRestClient;->execute()Z

    invoke-virtual {v1}, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/PollingInfoRestClient;->getResponse()Lcom/samsung/android/app/omcagent/network/auth/sec/omc/OMCResponse;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/OMCResponse;->isSuccess()Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object v3, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v4, "Receive result: success in ConfigRestClient"

    invoke-virtual {v3, v4}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/PollingInfoRestClient;->getResultObject()Lcom/samsung/android/app/omcagent/network/auth/sec/omc/json/DeviceCommonResponse;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "### getOmcEnable: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/json/DeviceCommonResponse;->getOmcEnable()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    sget-object v3, Lcom/samsung/android/app/omcagent/network/DeviceInfo;->instance:Lcom/samsung/android/app/omcagent/network/DeviceInfo;

    invoke-virtual {v2}, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/json/DeviceCommonResponse;->getOmcEnable()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/app/omcagent/network/DeviceInfo;->setOmcEmabler(Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/app/omcagent/common/Device;->checkOmcEnabler()V

    invoke-virtual {v2}, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/json/DeviceCommonResponse;->getPollingInfo()Lcom/samsung/android/app/omcagent/network/auth/sec/omc/json/DeviceCommonResponse$PollingInfo;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/json/DeviceCommonResponse;->getPollingInfo()Lcom/samsung/android/app/omcagent/network/auth/sec/omc/json/DeviceCommonResponse$PollingInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/json/DeviceCommonResponse$PollingInfo;->getCategory()Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/samsung/android/app/omcagent/network/DeviceInfo;->instance:Lcom/samsung/android/app/omcagent/network/DeviceInfo;

    invoke-virtual {v3, v0}, Lcom/samsung/android/app/omcagent/network/DeviceInfo;->setDeviceCategory(Ljava/lang/String;)V

    sget-object v3, Lcom/samsung/android/app/omcagent/db/OmcPref;->instance:Lcom/samsung/android/app/omcagent/db/OmcPref;

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/device/push/PushStateContext;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Lcom/samsung/android/app/omcagent/db/OmcPref;->setDeviceCategory(Landroid/content/Context;Ljava/lang/String;)V

    sget-object v3, Lcom/samsung/android/app/omcagent/db/DevicePref;->instance:Lcom/samsung/android/app/omcagent/db/DevicePref;

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/device/push/PushStateContext;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v2}, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/json/DeviceCommonResponse;->getPollingInfo()Lcom/samsung/android/app/omcagent/network/auth/sec/omc/json/DeviceCommonResponse$PollingInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/json/DeviceCommonResponse$PollingInfo;->getPollingUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/json/DeviceCommonResponse;->getPollingInfo()Lcom/samsung/android/app/omcagent/network/auth/sec/omc/json/DeviceCommonResponse$PollingInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/json/DeviceCommonResponse$PollingInfo;->getPollingFileName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/app/omcagent/db/DevicePref;->setPollingUpdate(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    :goto_0
    sget-object v3, Lcom/samsung/android/app/omcagent/device/push/PushState$4;->PUSH_FINISH:Lcom/samsung/android/app/omcagent/device/push/PushState;

    return-object v3

    :cond_0
    sget-object v3, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v4, "resultObject.getPollingInfo() is null"

    invoke-virtual {v3, v4}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    sget-object v3, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v4, "Receive result: fail in ConfigRestClient"

    invoke-virtual {v3, v4}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "PROCESS_CONFIG_UPDATE"

    return-object v0
.end method
