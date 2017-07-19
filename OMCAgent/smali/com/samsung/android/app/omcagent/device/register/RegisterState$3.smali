.class final Lcom/samsung/android/app/omcagent/device/register/RegisterState$3;
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

    sget-object v0, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v1, "Register State: Check condition to decide polling registration"

    invoke-virtual {v0, v1}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/app/omcagent/db/SettingPref;->instance:Lcom/samsung/android/app/omcagent/db/SettingPref;

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/device/register/RegisterStateContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/omcagent/db/SettingPref;->getAutoUpdate(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/samsung/android/app/omcagent/device/register/RegisterState$3;->CHECK_REGISTER_PUSH:Lcom/samsung/android/app/omcagent/device/register/RegisterState;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/samsung/android/app/omcagent/db/DevicePref;->instance:Lcom/samsung/android/app/omcagent/db/DevicePref;

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/device/register/RegisterStateContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/omcagent/db/DevicePref;->getPollingTime(Landroid/content/Context;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    sget-object v0, Lcom/samsung/android/app/omcagent/device/register/RegisterState$3;->CHECK_REGISTER_PUSH:Lcom/samsung/android/app/omcagent/device/register/RegisterState;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/samsung/android/app/omcagent/device/register/RegisterState$3;->REGISTER_POLLING:Lcom/samsung/android/app/omcagent/device/register/RegisterState;

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "CHECK_REGISTER_POLLING"

    return-object v0
.end method
