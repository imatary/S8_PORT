.class public Lcom/samsung/android/app/omcagent/device/RegisterDeviceInfoIntentService;
.super Landroid/app/IntentService;
.source "RegisterDeviceInfoIntentService.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "Service[OMC_RegisterDeviceInfoIntentService]"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 3

    sget-object v1, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v2, "Register State: Start registration"

    invoke-virtual {v1, v2}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/app/omcagent/device/register/RegisterStateContext;

    invoke-virtual {p0}, Lcom/samsung/android/app/omcagent/device/RegisterDeviceInfoIntentService;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/app/omcagent/device/register/RegisterStateContext;-><init>(Landroid/content/Context;)V

    :goto_0
    invoke-virtual {v0}, Lcom/samsung/android/app/omcagent/device/register/RegisterStateContext;->getState()Lcom/samsung/android/app/omcagent/device/register/RegisterState;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/app/omcagent/device/register/RegisterState;->REGISTER_FINISH:Lcom/samsung/android/app/omcagent/device/register/RegisterState;

    if-eq v1, v2, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/app/omcagent/device/register/RegisterStateContext;->run()V

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v2, "Register State: Finish registration"

    invoke-virtual {v1, v2}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    return-void
.end method
