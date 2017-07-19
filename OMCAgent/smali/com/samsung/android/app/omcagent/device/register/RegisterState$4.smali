.class final Lcom/samsung/android/app/omcagent/device/register/RegisterState$4;
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
    .locals 8

    sget-object v2, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v3, "Register State: register polling"

    invoke-virtual {v2, v3}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    sget-object v2, Lcom/samsung/android/app/omcagent/network/PollingInfo;->instance:Lcom/samsung/android/app/omcagent/network/PollingInfo;

    sget-object v3, Lcom/samsung/android/app/omcagent/db/DevicePref;->instance:Lcom/samsung/android/app/omcagent/db/DevicePref;

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/device/register/RegisterStateContext;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/app/omcagent/db/DevicePref;->getPollingPeriodType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/app/omcagent/db/DevicePref;->instance:Lcom/samsung/android/app/omcagent/db/DevicePref;

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/device/register/RegisterStateContext;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/app/omcagent/db/DevicePref;->getPollingPeriodKey(Landroid/content/Context;)I

    move-result v4

    sget-object v5, Lcom/samsung/android/app/omcagent/db/DevicePref;->instance:Lcom/samsung/android/app/omcagent/db/DevicePref;

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/device/register/RegisterStateContext;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/samsung/android/app/omcagent/db/DevicePref;->getPollingPeriodTime(Landroid/content/Context;)I

    move-result v5

    sget-object v6, Lcom/samsung/android/app/omcagent/db/DevicePref;->instance:Lcom/samsung/android/app/omcagent/db/DevicePref;

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/device/register/RegisterStateContext;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/samsung/android/app/omcagent/db/DevicePref;->getPollingPeriodRange(Landroid/content/Context;)I

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/samsung/android/app/omcagent/network/PollingInfo;->setPeriod(Ljava/lang/String;III)V

    sget-object v2, Lcom/samsung/android/app/omcagent/device/polling/Polling;->instance:Lcom/samsung/android/app/omcagent/device/polling/Polling;

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/device/register/RegisterStateContext;->getContext()Landroid/content/Context;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/app/omcagent/network/PollingInfo;->instance:Lcom/samsung/android/app/omcagent/network/PollingInfo;

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/app/omcagent/device/polling/Polling;->calculateNextPollingTime(Landroid/content/Context;Lcom/samsung/android/app/omcagent/network/PollingInfo;)J

    move-result-wide v0

    sget-object v2, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Next polling Time:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/common/log/Logger$Impl;->D(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    sget-object v2, Lcom/samsung/android/app/omcagent/db/DevicePref;->instance:Lcom/samsung/android/app/omcagent/db/DevicePref;

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/device/register/RegisterStateContext;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3, v0, v1}, Lcom/samsung/android/app/omcagent/db/DevicePref;->setPollingTime(Landroid/content/Context;J)V

    sget-object v2, Lcom/samsung/android/app/omcagent/device/polling/Polling;->instance:Lcom/samsung/android/app/omcagent/device/polling/Polling;

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/device/register/RegisterStateContext;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3, v0, v1}, Lcom/samsung/android/app/omcagent/device/polling/Polling;->startPollingTimer(Landroid/content/Context;J)V

    :cond_0
    sget-object v2, Lcom/samsung/android/app/omcagent/device/register/RegisterState$4;->CHECK_REGISTER_PUSH:Lcom/samsung/android/app/omcagent/device/register/RegisterState;

    return-object v2
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "REGISTER_POLLING"

    return-object v0
.end method
