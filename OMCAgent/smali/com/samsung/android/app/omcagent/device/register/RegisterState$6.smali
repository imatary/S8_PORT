.class final Lcom/samsung/android/app/omcagent/device/register/RegisterState$6;
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
    .locals 9

    sget-object v4, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v5, "Register State: registering push"

    invoke-virtual {v4, v5}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/device/register/RegisterStateContext;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/app/omcagent/common/OmcFeature;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/omcagent/common/OmcFeature;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/app/omcagent/common/OmcFeature;->getPushType()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/samsung/android/app/omcagent/device/push/PushIDResult;

    invoke-direct {v0}, Lcom/samsung/android/app/omcagent/device/push/PushIDResult;-><init>()V

    new-instance v3, Lcom/samsung/android/common/util/ReturnHolder;

    invoke-direct {v3, v0}, Lcom/samsung/android/common/util/ReturnHolder;-><init>(Ljava/lang/Object;)V

    const-string v4, "GCM"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    sget-object v4, Lcom/samsung/android/app/omcagent/device/push/PushID;->instance:Lcom/samsung/android/app/omcagent/device/push/PushID;

    new-instance v5, Lcom/samsung/android/app/omcagent/device/register/RegisterState$6$1;

    invoke-direct {v5, p0, v3}, Lcom/samsung/android/app/omcagent/device/register/RegisterState$6$1;-><init>(Lcom/samsung/android/app/omcagent/device/register/RegisterState$6;Lcom/samsung/android/common/util/ReturnHolder;)V

    invoke-virtual {v4, v5}, Lcom/samsung/android/app/omcagent/device/push/PushID;->setPushReceiver(Lcom/samsung/android/app/omcagent/device/push/PushIDResultReceiver;)V

    sget-object v4, Lcom/samsung/android/app/omcagent/device/push/PushID;->instance:Lcom/samsung/android/app/omcagent/device/push/PushID;

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/device/register/RegisterStateContext;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/app/omcagent/device/push/PushID;->sendGCMResult(Landroid/content/Context;)V

    const/16 v4, 0x1e

    invoke-virtual {v3, v4}, Lcom/samsung/android/common/util/ReturnHolder;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/omcagent/device/push/PushIDResult;

    invoke-virtual {v0}, Lcom/samsung/android/app/omcagent/device/push/PushIDResult;->getErrorMsg()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/app/omcagent/device/push/PushIDResult;->isSuccess()Z

    move-result v4

    if-nez v4, :cond_3

    sget-object v4, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "fail in GCM error, retry : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/device/register/RegisterStateContext;->getRetryPush()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/device/register/RegisterStateContext;->getRetryPush()I

    move-result v4

    const/4 v5, 0x3

    if-ge v4, v5, :cond_2

    sget-object v4, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v5, "retry register push"

    invoke-virtual {v4, v5}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/device/register/RegisterStateContext;->increaseRetryPush()V

    sget-object v4, Lcom/samsung/android/app/omcagent/device/register/RegisterState$6;->REGISTERING_PUSH:Lcom/samsung/android/app/omcagent/device/register/RegisterState;

    :goto_0
    return-object v4

    :cond_1
    const-string v4, "NONE"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    sget-object v4, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v5, "Not support push"

    invoke-virtual {v4, v5}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    sget-object v4, Lcom/samsung/android/app/omcagent/device/register/RegisterState$6;->REGISTER_FINISH:Lcom/samsung/android/app/omcagent/device/register/RegisterState;

    goto :goto_0

    :cond_2
    sget-object v4, Lcom/samsung/android/app/omcagent/device/register/RegisterState$6;->REGISTER_FINISH:Lcom/samsung/android/app/omcagent/device/register/RegisterState;

    goto :goto_0

    :cond_3
    sget-object v4, Lcom/samsung/android/app/omcagent/network/PushInfo;->instance:Lcom/samsung/android/app/omcagent/network/PushInfo;

    invoke-virtual {v0}, Lcom/samsung/android/app/omcagent/device/push/PushIDResult;->getPushID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Lcom/samsung/android/app/omcagent/network/PushInfo;->setPushInfo(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/PushRestClient;

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/device/register/RegisterStateContext;->getContext()Landroid/content/Context;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/app/omcagent/network/PushInfo;->instance:Lcom/samsung/android/app/omcagent/network/PushInfo;

    invoke-direct {v2, v4, v5}, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/PushRestClient;-><init>(Landroid/content/Context;Lcom/samsung/android/app/omcagent/network/PushInfo;)V

    invoke-virtual {v2}, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/PushRestClient;->execute()Z

    invoke-virtual {v2}, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/PushRestClient;->getResponse()Lcom/samsung/android/app/omcagent/network/auth/sec/omc/OMCResponse;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/OMCResponse;->isSuccess()Z

    move-result v4

    if-eqz v4, :cond_5

    sget-object v4, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v5, "Receive result: success in PushRestClient"

    invoke-virtual {v4, v5}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    sget-object v4, Lcom/samsung/android/app/omcagent/db/DevicePref;->instance:Lcom/samsung/android/app/omcagent/db/DevicePref;

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/device/register/RegisterStateContext;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v0}, Lcom/samsung/android/app/omcagent/device/push/PushIDResult;->getPushID()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/app/omcagent/common/Device;->instance:Lcom/samsung/android/app/omcagent/common/Device;

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/device/register/RegisterStateContext;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/samsung/android/app/omcagent/common/Device;->readAppVersionCode(Landroid/content/Context;)I

    move-result v7

    invoke-virtual {v4, v5, v1, v6, v7}, Lcom/samsung/android/app/omcagent/db/DevicePref;->setPushRegistered(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Z

    :cond_4
    :goto_1
    sget-object v4, Lcom/samsung/android/app/omcagent/device/register/RegisterState$6;->REGISTER_FINISH:Lcom/samsung/android/app/omcagent/device/register/RegisterState;

    goto :goto_0

    :cond_5
    sget-object v4, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v5, "Receive result: fail in PushRestClient"

    invoke-virtual {v4, v5}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/PushRestClient;->getResponse()Lcom/samsung/android/app/omcagent/network/auth/sec/omc/OMCResponse;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/OMCResponse;->getErrorCode()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    sget-object v4, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v5, "Send Error Report"

    invoke-virtual {v4, v5}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/PushRestClient;->getResponse()Lcom/samsung/android/app/omcagent/network/auth/sec/omc/OMCResponse;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/OMCResponse;->getErrorCode()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/common/diagmon/DiagMon;->sendReport(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "REGISTERING_PUSH"

    return-object v0
.end method
