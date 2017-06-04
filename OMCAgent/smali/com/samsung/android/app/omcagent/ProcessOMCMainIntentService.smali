.class public Lcom/samsung/android/app/omcagent/ProcessOMCMainIntentService;
.super Landroid/app/IntentService;
.source "ProcessOMCMainIntentService.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "Service[OMC_ProcessOMCIntentService]"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method initSimChangeRestClient()V
    .locals 0

    return-void
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 7

    const-string v4, "state"

    const/4 v5, -0x1

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    sget-object v4, Lcom/samsung/android/app/omcagent/db/TaskPref;->instance:Lcom/samsung/android/app/omcagent/db/TaskPref;

    invoke-virtual {p0}, Lcom/samsung/android/app/omcagent/ProcessOMCMainIntentService;->getBaseContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/app/omcagent/db/TaskPref;->getOMCState(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {p0}, Lcom/samsung/android/app/omcagent/ProcessOMCMainIntentService;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    sget-object v4, Lcom/samsung/android/app/omcagent/db/OmcPref;->instance:Lcom/samsung/android/app/omcagent/db/OmcPref;

    invoke-virtual {v4, v1}, Lcom/samsung/android/app/omcagent/db/OmcPref;->isSimSNChanged(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "com.samsung.omcagent.intent.SIM_LOADED"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "com.samsung.omcagent.intent.SIM_CHANGED"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    invoke-virtual {p0, v1}, Lcom/samsung/android/app/omcagent/ProcessOMCMainIntentService;->sendReport(Landroid/content/Context;)V

    sget-object v4, Lcom/samsung/android/app/omcagent/db/OmcPref;->instance:Lcom/samsung/android/app/omcagent/db/OmcPref;

    const/4 v5, 0x0

    invoke-virtual {v4, v1, v5}, Lcom/samsung/android/app/omcagent/db/OmcPref;->setSimSNChanged(Landroid/content/Context;Z)V

    :cond_1
    if-eq v2, v3, :cond_2

    sget-object v4, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Request state:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v3}, Lcom/samsung/android/app/omcagent/db/TaskPref$OMC_STATE;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is not matched Current state: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v2}, Lcom/samsung/android/app/omcagent/db/TaskPref$OMC_STATE;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/common/log/Logger$Impl;->V(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_2
    sget-object v4, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "State: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v2}, Lcom/samsung/android/app/omcagent/db/TaskPref$OMC_STATE;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " Action: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/common/log/Logger$Impl;->D(Ljava/lang/String;)V

    const-string v4, "com.samsung.omcagent.intent.DEVICEID_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    sget-object v4, Lcom/samsung/android/app/omcagent/db/TaskPref;->instance:Lcom/samsung/android/app/omcagent/db/TaskPref;

    invoke-virtual {v4, v1}, Lcom/samsung/android/app/omcagent/db/TaskPref;->clear(Landroid/content/Context;)V

    const/4 v2, 0x0

    :cond_3
    :goto_1
    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    new-instance v4, Lcom/samsung/android/app/omcagent/ProcessOMCRegisteringDevice;

    invoke-direct {v4}, Lcom/samsung/android/app/omcagent/ProcessOMCRegisteringDevice;-><init>()V

    invoke-virtual {v4, v1, p1}, Lcom/samsung/android/app/omcagent/ProcessOMCRegisteringDevice;->onHandle(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    :cond_4
    const-string v4, "com.samsung.omcagent.intent.SALESCODE_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    new-instance v4, Lcom/samsung/android/app/omcagent/db/DBManager;

    invoke-direct {v4}, Lcom/samsung/android/app/omcagent/db/DBManager;-><init>()V

    invoke-virtual {v4, v1}, Lcom/samsung/android/app/omcagent/db/DBManager;->resetAll(Landroid/content/Context;)V

    const/4 v2, 0x0

    goto :goto_1

    :sswitch_1
    new-instance v4, Lcom/samsung/android/app/omcagent/ProcessOMCRegisteredDevice;

    invoke-direct {v4}, Lcom/samsung/android/app/omcagent/ProcessOMCRegisteredDevice;-><init>()V

    invoke-virtual {v4, v1, p1}, Lcom/samsung/android/app/omcagent/ProcessOMCRegisteredDevice;->onHandle(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    :sswitch_2
    new-instance v4, Lcom/samsung/android/app/omcagent/ProcessOMCComposingPackage;

    invoke-direct {v4}, Lcom/samsung/android/app/omcagent/ProcessOMCComposingPackage;-><init>()V

    invoke-virtual {v4, v1, p1}, Lcom/samsung/android/app/omcagent/ProcessOMCComposingPackage;->onHandle(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    :sswitch_3
    new-instance v4, Lcom/samsung/android/app/omcagent/ProcessOMCReadyToInstall;

    invoke-direct {v4}, Lcom/samsung/android/app/omcagent/ProcessOMCReadyToInstall;-><init>()V

    invoke-virtual {v4, v1, p1}, Lcom/samsung/android/app/omcagent/ProcessOMCReadyToInstall;->onHandle(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    :sswitch_4
    new-instance v4, Lcom/samsung/android/app/omcagent/ProcessOMCInstalling;

    invoke-direct {v4}, Lcom/samsung/android/app/omcagent/ProcessOMCInstalling;-><init>()V

    invoke-virtual {v4, v1, p1}, Lcom/samsung/android/app/omcagent/ProcessOMCInstalling;->onHandle(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    :sswitch_5
    new-instance v4, Lcom/samsung/android/app/omcagent/ProcessOMCReportingResult;

    invoke-direct {v4}, Lcom/samsung/android/app/omcagent/ProcessOMCReportingResult;-><init>()V

    invoke-virtual {v4, v1, p1}, Lcom/samsung/android/app/omcagent/ProcessOMCReportingResult;->onHandle(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x50 -> :sswitch_2
        0x64 -> :sswitch_3
        0x96 -> :sswitch_4
        0xc8 -> :sswitch_5
    .end sparse-switch
.end method

.method sendReport(Landroid/content/Context;)V
    .locals 4

    sget-object v2, Lcom/samsung/android/app/omcagent/network/DeviceInfo;->instance:Lcom/samsung/android/app/omcagent/network/DeviceInfo;

    invoke-virtual {v2, p1}, Lcom/samsung/android/app/omcagent/network/DeviceInfo;->readDeviceInfo(Landroid/content/Context;)V

    sget-object v2, Lcom/samsung/android/app/omcagent/omc/DeviceOmcInfo;->instance:Lcom/samsung/android/app/omcagent/omc/DeviceOmcInfo;

    invoke-virtual {v2, p1}, Lcom/samsung/android/app/omcagent/omc/DeviceOmcInfo;->read(Landroid/content/Context;)Z

    new-instance v0, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/SimChangeRestClient;

    sget-object v2, Lcom/samsung/android/app/omcagent/network/DeviceInfo;->instance:Lcom/samsung/android/app/omcagent/network/DeviceInfo;

    sget-object v3, Lcom/samsung/android/app/omcagent/omc/DeviceOmcInfo;->instance:Lcom/samsung/android/app/omcagent/omc/DeviceOmcInfo;

    invoke-direct {v0, p1, v2, v3}, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/SimChangeRestClient;-><init>(Landroid/content/Context;Lcom/samsung/android/app/omcagent/network/DeviceInfo;Lcom/samsung/android/app/omcagent/omc/OmcInfo;)V

    invoke-virtual {v0}, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/SimChangeRestClient;->execute()Z

    invoke-virtual {v0}, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/SimChangeRestClient;->getResponse()Lcom/samsung/android/app/omcagent/network/auth/sec/omc/OMCResponse;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/OMCResponse;->isSuccess()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v3, "Receive result: success in SimChangeRestClient"

    invoke-virtual {v2, v3}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/SimChangeRestClient;->getResultObject()Lcom/samsung/android/app/omcagent/network/auth/sec/omc/json/DeviceCommonResponse;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/app/omcagent/network/DeviceInfo;->instance:Lcom/samsung/android/app/omcagent/network/DeviceInfo;

    invoke-virtual {v1}, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/json/DeviceCommonResponse;->getOmcEnable()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/omcagent/network/DeviceInfo;->setOmcEmabler(Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/app/omcagent/common/Device;->checkOmcEnabler()V

    :goto_0
    return-void

    :cond_0
    sget-object v2, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v3, "Receive result: fail in SimChangeRestClient"

    invoke-virtual {v2, v3}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/SimChangeRestClient;->getResponse()Lcom/samsung/android/app/omcagent/network/auth/sec/omc/OMCResponse;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/OMCResponse;->getErrorCode()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v3, "Send Error Report"

    invoke-virtual {v2, v3}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/SimChangeRestClient;->getResponse()Lcom/samsung/android/app/omcagent/network/auth/sec/omc/OMCResponse;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/OMCResponse;->getErrorCode()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/common/diagmon/DiagMon;->sendReport(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/app/omcagent/ProcessOMCMainIntentService;->initSimChangeRestClient()V

    :cond_1
    invoke-virtual {v0}, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/SimChangeRestClient;->getResponse()Lcom/samsung/android/app/omcagent/network/auth/sec/omc/OMCResponse;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/OMCResponse;->getResult()I

    move-result v2

    invoke-static {v2}, Lcom/samsung/android/app/omcagent/network/ResultType;->isNetworkFail(I)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v3, "Network is not available"

    invoke-virtual {v2, v3}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/app/omcagent/ProcessOMCMainIntentService;->initSimChangeRestClient()V

    goto :goto_0
.end method
