.class public Lcom/samsung/android/sdk/pen/util/StopWatch;
.super Ljava/lang/Object;
.source "StopWatch.java"


# instance fields
.field private endTime:J

.field private functionName:Ljava/lang/String;

.field private startTime:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/util/StopWatch;->functionName:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sdk/pen/util/StopWatch;->startTime:J

    return-void
.end method


# virtual methods
.method public getEllapsedTime()J
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/util/StopWatch;->endTime:J

    iget-wide v2, p0, Lcom/samsung/android/sdk/pen/util/StopWatch;->startTime:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public getFunctionName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/util/StopWatch;->functionName:Ljava/lang/String;

    return-object v0
.end method

.method public stop()Lcom/samsung/android/sdk/pen/util/StopWatch;
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sdk/pen/util/StopWatch;->endTime:J

    return-object p0
.end method
