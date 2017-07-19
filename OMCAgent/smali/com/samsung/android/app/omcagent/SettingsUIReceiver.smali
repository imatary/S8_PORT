.class public Lcom/samsung/android/app/omcagent/SettingsUIReceiver;
.super Lcom/samsung/android/app/omcagent/BaseBroadcastReceiver;
.source "SettingsUIReceiver.java"


# static fields
.field public static final ACTION_AUTO_UPDATE:Ljava/lang/String; = "com.samsung.omcagent.intent.AUTO_UPDATE"

.field public static final ACTION_WIFI_ONLY:Ljava/lang/String; = "com.samsung.omcagent.intent.WIFI_ONLY"

.field public static final EXTRA_KEY:Ljava/lang/String; = "key"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/omcagent/BaseBroadcastReceiver;-><init>()V

    return-void
.end method

.method private updatePolling(Landroid/content/Context;Z)V
    .locals 7

    sget-object v2, Lcom/samsung/android/app/omcagent/db/TaskPref;->instance:Lcom/samsung/android/app/omcagent/db/TaskPref;

    invoke-virtual {v2, p1}, Lcom/samsung/android/app/omcagent/db/TaskPref;->getOMCState(Landroid/content/Context;)I

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Waiting to do in state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v4}, Lcom/samsung/android/app/omcagent/db/TaskPref$OMC_STATE;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/common/log/Logger$Impl;->V(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p2, :cond_2

    sget-object v2, Lcom/samsung/android/app/omcagent/network/PollingInfo;->instance:Lcom/samsung/android/app/omcagent/network/PollingInfo;

    sget-object v3, Lcom/samsung/android/app/omcagent/db/DevicePref;->instance:Lcom/samsung/android/app/omcagent/db/DevicePref;

    invoke-virtual {v3, p1}, Lcom/samsung/android/app/omcagent/db/DevicePref;->getPollingPeriodType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/app/omcagent/db/DevicePref;->instance:Lcom/samsung/android/app/omcagent/db/DevicePref;

    invoke-virtual {v4, p1}, Lcom/samsung/android/app/omcagent/db/DevicePref;->getPollingPeriodKey(Landroid/content/Context;)I

    move-result v4

    sget-object v5, Lcom/samsung/android/app/omcagent/db/DevicePref;->instance:Lcom/samsung/android/app/omcagent/db/DevicePref;

    invoke-virtual {v5, p1}, Lcom/samsung/android/app/omcagent/db/DevicePref;->getPollingPeriodTime(Landroid/content/Context;)I

    move-result v5

    sget-object v6, Lcom/samsung/android/app/omcagent/db/DevicePref;->instance:Lcom/samsung/android/app/omcagent/db/DevicePref;

    invoke-virtual {v6, p1}, Lcom/samsung/android/app/omcagent/db/DevicePref;->getPollingPeriodRange(Landroid/content/Context;)I

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/samsung/android/app/omcagent/network/PollingInfo;->setPeriod(Ljava/lang/String;III)V

    sget-object v2, Lcom/samsung/android/app/omcagent/device/polling/Polling;->instance:Lcom/samsung/android/app/omcagent/device/polling/Polling;

    sget-object v3, Lcom/samsung/android/app/omcagent/network/PollingInfo;->instance:Lcom/samsung/android/app/omcagent/network/PollingInfo;

    invoke-virtual {v2, p1, v3}, Lcom/samsung/android/app/omcagent/device/polling/Polling;->calculateNextPollingTime(Landroid/content/Context;Lcom/samsung/android/app/omcagent/network/PollingInfo;)J

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

    invoke-virtual {v2, p1, v0, v1}, Lcom/samsung/android/app/omcagent/db/DevicePref;->setPollingTime(Landroid/content/Context;J)V

    sget-object v2, Lcom/samsung/android/app/omcagent/device/polling/Polling;->instance:Lcom/samsung/android/app/omcagent/device/polling/Polling;

    invoke-virtual {v2, p1, v0, v1}, Lcom/samsung/android/app/omcagent/device/polling/Polling;->startPollingTimer(Landroid/content/Context;J)V

    goto :goto_0

    :cond_2
    sget-object v2, Lcom/samsung/android/app/omcagent/db/DevicePref;->instance:Lcom/samsung/android/app/omcagent/db/DevicePref;

    const-wide/16 v4, 0x0

    invoke-virtual {v2, p1, v4, v5}, Lcom/samsung/android/app/omcagent/db/DevicePref;->setPollingTime(Landroid/content/Context;J)V

    sget-object v2, Lcom/samsung/android/app/omcagent/device/polling/Polling;->instance:Lcom/samsung/android/app/omcagent/device/polling/Polling;

    invoke-virtual {v2, p1}, Lcom/samsung/android/app/omcagent/device/polling/Polling;->stopPollingTimer(Landroid/content/Context;)V

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Receive broadcast meassage:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/common/log/Logger$Impl;->D(Ljava/lang/String;)V

    const-string v0, "com.samsung.omcagent.intent.USER_UPDATE"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/samsung/android/app/omcagent/ProcessOMC;

    invoke-direct {v0}, Lcom/samsung/android/app/omcagent/ProcessOMC;-><init>()V

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/omcagent/ProcessOMC;->execute(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
