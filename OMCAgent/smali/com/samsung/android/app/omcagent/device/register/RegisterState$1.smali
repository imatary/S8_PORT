.class final Lcom/samsung/android/app/omcagent/device/register/RegisterState$1;
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
    .locals 4

    sget-object v1, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v2, "Register State: Check condition to decide device registration"

    invoke-virtual {v1, v2}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    sget-object v1, Lcom/samsung/android/app/omcagent/device/register/Register;->instance:Lcom/samsung/android/app/omcagent/device/register/Register;

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/device/register/RegisterStateContext;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/omcagent/device/register/Register;->isRegisterCompleted(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v2, "Device registration is already completed. Nothing to do."

    invoke-virtual {v1, v2}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    sget-object v1, Lcom/samsung/android/app/omcagent/device/register/RegisterState$1;->REGISTER_FINISH:Lcom/samsung/android/app/omcagent/device/register/RegisterState;

    :goto_0
    return-object v1

    :cond_0
    sget-object v1, Lcom/samsung/android/app/omcagent/db/TaskPref;->instance:Lcom/samsung/android/app/omcagent/db/TaskPref;

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/device/register/RegisterStateContext;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/omcagent/db/TaskPref;->getOMCState(Landroid/content/Context;)I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_1

    sget-object v1, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Waitng to do in state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lcom/samsung/android/app/omcagent/db/TaskPref$OMC_STATE;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/common/log/Logger$Impl;->V(Ljava/lang/String;)V

    sget-object v1, Lcom/samsung/android/app/omcagent/device/register/RegisterState$1;->REGISTER_FINISH:Lcom/samsung/android/app/omcagent/device/register/RegisterState;

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/samsung/android/app/omcagent/db/DevicePref;->instance:Lcom/samsung/android/app/omcagent/db/DevicePref;

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/device/register/RegisterStateContext;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/omcagent/db/DevicePref;->isDeviceRegister(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v2, "Already registered device. do not need to register device"

    invoke-virtual {v1, v2}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    sget-object v1, Lcom/samsung/android/app/omcagent/device/register/RegisterState$1;->CHECK_REGISTER_POLLING:Lcom/samsung/android/app/omcagent/device/register/RegisterState;

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/samsung/android/app/omcagent/device/register/RegisterState$1;->REGISTERING_DEVICE:Lcom/samsung/android/app/omcagent/device/register/RegisterState;

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "CHECK_REGISTER_DEVICE"

    return-object v0
.end method
