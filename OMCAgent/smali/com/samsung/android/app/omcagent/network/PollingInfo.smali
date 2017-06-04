.class public Lcom/samsung/android/app/omcagent/network/PollingInfo;
.super Ljava/lang/Object;
.source "PollingInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/omcagent/network/PollingInfo$VALUE;
    }
.end annotation


# static fields
.field public static instance:Lcom/samsung/android/app/omcagent/network/PollingInfo;


# instance fields
.field private hostUrl:Ljava/lang/String;

.field private period:I

.field private range:I

.field private target:Ljava/lang/String;

.field private time:I

.field private type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/app/omcagent/network/PollingInfo;

    invoke-direct {v0}, Lcom/samsung/android/app/omcagent/network/PollingInfo;-><init>()V

    sput-object v0, Lcom/samsung/android/app/omcagent/network/PollingInfo;->instance:Lcom/samsung/android/app/omcagent/network/PollingInfo;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "day"

    iput-object v0, p0, Lcom/samsung/android/app/omcagent/network/PollingInfo;->type:Ljava/lang/String;

    const/4 v0, 0x7

    iput v0, p0, Lcom/samsung/android/app/omcagent/network/PollingInfo;->period:I

    const/16 v0, 0xc

    iput v0, p0, Lcom/samsung/android/app/omcagent/network/PollingInfo;->time:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/samsung/android/app/omcagent/network/PollingInfo;->range:I

    return-void
.end method


# virtual methods
.method public getHostUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/network/PollingInfo;->hostUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getPeriod()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/app/omcagent/network/PollingInfo;->period:I

    return v0
.end method

.method public getRange()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/app/omcagent/network/PollingInfo;->range:I

    return v0
.end method

.method public getTarget()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/network/PollingInfo;->target:Ljava/lang/String;

    return-object v0
.end method

.method public getTime()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/app/omcagent/network/PollingInfo;->time:I

    return v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/network/PollingInfo;->type:Ljava/lang/String;

    return-object v0
.end method

.method public setPeriod(Ljava/lang/String;III)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/omcagent/network/PollingInfo;->type:Ljava/lang/String;

    iput p2, p0, Lcom/samsung/android/app/omcagent/network/PollingInfo;->period:I

    iput p3, p0, Lcom/samsung/android/app/omcagent/network/PollingInfo;->time:I

    iput p4, p0, Lcom/samsung/android/app/omcagent/network/PollingInfo;->range:I

    return-void
.end method

.method public setPeriod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iput-object p1, p0, Lcom/samsung/android/app/omcagent/network/PollingInfo;->type:Ljava/lang/String;

    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/app/omcagent/network/PollingInfo;->period:I

    :cond_0
    const-string v1, "day"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/app/omcagent/network/PollingInfo;->time:I

    :cond_1
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {p4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/app/omcagent/network/PollingInfo;->range:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    invoke-virtual {v1, v0}, Lcom/samsung/android/common/log/Logger$Impl;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public setPolling(Lcom/samsung/android/app/omcagent/network/auth/sec/omc/json/DeviceCommonResponse$PollingInfo;)V
    .locals 4

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/json/DeviceCommonResponse$PollingInfo;->getPollingUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/json/DeviceCommonResponse$PollingInfo;->getPollingFileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/omcagent/network/PollingInfo;->setUrl(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/json/DeviceCommonResponse$PollingInfo;->getPeriodUnit()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/json/DeviceCommonResponse$PollingInfo;->getPeriod()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/json/DeviceCommonResponse$PollingInfo;->getTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/json/DeviceCommonResponse$PollingInfo;->getRange()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/samsung/android/app/omcagent/network/PollingInfo;->setPeriod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setUrl(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/omcagent/network/PollingInfo;->hostUrl:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/app/omcagent/network/PollingInfo;->target:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method
