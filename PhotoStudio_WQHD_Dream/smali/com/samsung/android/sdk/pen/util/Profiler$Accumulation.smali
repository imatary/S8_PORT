.class Lcom/samsung/android/sdk/pen/util/Profiler$Accumulation;
.super Ljava/lang/Object;
.source "Profiler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/pen/util/Profiler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Accumulation"
.end annotation


# instance fields
.field private accumaltedRunningTime:J

.field private callNumber:J


# direct methods
.method public constructor <init>()V
    .locals 2

    const-wide/16 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v0, p0, Lcom/samsung/android/sdk/pen/util/Profiler$Accumulation;->callNumber:J

    iput-wide v0, p0, Lcom/samsung/android/sdk/pen/util/Profiler$Accumulation;->accumaltedRunningTime:J

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/sdk/pen/util/Profiler$Accumulation;)J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/util/Profiler$Accumulation;->accumaltedRunningTime:J

    return-wide v0
.end method

.method static synthetic access$100(Lcom/samsung/android/sdk/pen/util/Profiler$Accumulation;)J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/util/Profiler$Accumulation;->callNumber:J

    return-wide v0
.end method


# virtual methods
.method public add(J)V
    .locals 5

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/util/Profiler$Accumulation;->callNumber:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/samsung/android/sdk/pen/util/Profiler$Accumulation;->callNumber:J

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/util/Profiler$Accumulation;->accumaltedRunningTime:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/samsung/android/sdk/pen/util/Profiler$Accumulation;->accumaltedRunningTime:J

    return-void
.end method

.method public getAccumulatedRunningTime()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/util/Profiler$Accumulation;->accumaltedRunningTime:J

    return-wide v0
.end method

.method public getCallNumber()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/pen/util/Profiler$Accumulation;->callNumber:J

    return-wide v0
.end method
