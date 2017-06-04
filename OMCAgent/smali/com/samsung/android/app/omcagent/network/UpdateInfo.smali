.class public Lcom/samsung/android/app/omcagent/network/UpdateInfo;
.super Ljava/lang/Object;
.source "UpdateInfo.java"


# static fields
.field public static final DEFAULT_PERIOD:I = 0x1e

.field public static final DEFAULT_RANGE:I = 0x5

.field public static final DEFAULT_TIME:I

.field public static instance:Lcom/samsung/android/app/omcagent/network/UpdateInfo;


# instance fields
.field private period:I

.field private range:I

.field private time:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/app/omcagent/network/UpdateInfo;

    invoke-direct {v0}, Lcom/samsung/android/app/omcagent/network/UpdateInfo;-><init>()V

    sput-object v0, Lcom/samsung/android/app/omcagent/network/UpdateInfo;->instance:Lcom/samsung/android/app/omcagent/network/UpdateInfo;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1e

    iput v0, p0, Lcom/samsung/android/app/omcagent/network/UpdateInfo;->period:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/app/omcagent/network/UpdateInfo;->time:I

    const/4 v0, 0x5

    iput v0, p0, Lcom/samsung/android/app/omcagent/network/UpdateInfo;->range:I

    return-void
.end method


# virtual methods
.method public getDay()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/app/omcagent/network/UpdateInfo;->period:I

    return v0
.end method

.method public getRange()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/app/omcagent/network/UpdateInfo;->range:I

    return v0
.end method

.method public getTime()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/app/omcagent/network/UpdateInfo;->time:I

    return v0
.end method

.method public setPeriod(III)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/app/omcagent/network/UpdateInfo;->period:I

    iput p2, p0, Lcom/samsung/android/app/omcagent/network/UpdateInfo;->time:I

    iput p3, p0, Lcom/samsung/android/app/omcagent/network/UpdateInfo;->range:I

    return-void
.end method

.method public setPeriod(Lcom/samsung/android/app/omcagent/network/auth/sec/omc/json/DeviceCommonResponse$StatusReportInfo;)V
    .locals 3

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/json/DeviceCommonResponse$StatusReportInfo;->getPeriod()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/json/DeviceCommonResponse$StatusReportInfo;->getTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/json/DeviceCommonResponse$StatusReportInfo;->getRange()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/app/omcagent/network/UpdateInfo;->setPeriod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setPeriod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/app/omcagent/network/UpdateInfo;->period:I

    :cond_0
    if-eqz p2, :cond_1

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/app/omcagent/network/UpdateInfo;->time:I

    :cond_1
    if-eqz p3, :cond_2

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/app/omcagent/network/UpdateInfo;->range:I
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

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method
