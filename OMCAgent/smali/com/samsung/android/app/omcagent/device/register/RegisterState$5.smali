.class final Lcom/samsung/android/app/omcagent/device/register/RegisterState$5;
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
    .locals 3

    sget-object v0, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v1, "Register State: Check condition to decide push registration"

    invoke-virtual {v0, v1}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/app/omcagent/db/DevicePref;->instance:Lcom/samsung/android/app/omcagent/db/DevicePref;

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/device/register/RegisterStateContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/device/register/RegisterStateContext;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/app/omcagent/common/OmcFeature;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/omcagent/common/OmcFeature;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/app/omcagent/common/OmcFeature;->getPushType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/omcagent/db/DevicePref;->isPushRegistration(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v1, "Already registred push. do not need to register push."

    invoke-virtual {v0, v1}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/app/omcagent/device/register/RegisterState$5;->REGISTER_FINISH:Lcom/samsung/android/app/omcagent/device/register/RegisterState;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/samsung/android/app/omcagent/device/register/RegisterState$5;->REGISTERING_PUSH:Lcom/samsung/android/app/omcagent/device/register/RegisterState;

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "CHECK_REGISTER_PUSH"

    return-object v0
.end method
