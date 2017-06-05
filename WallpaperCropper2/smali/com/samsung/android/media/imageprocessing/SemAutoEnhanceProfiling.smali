.class public Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceProfiling;
.super Ljava/lang/Object;
.source "Unknown"


# static fields
.field private static final TIME_TAG:Ljava/lang/String; = "AE_TIME"


# instance fields
.field private mEndReal:J

.field private mEndThrd:J

.field private mStartReal:J

.field private mStartThrd:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Start()J
    .locals 2

    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceProfiling;->mStartThrd:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceProfiling;->mStartReal:J

    iget-wide v0, p0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceProfiling;->mStartThrd:J

    iput-wide v0, p0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceProfiling;->mEndThrd:J

    iget-wide v0, p0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceProfiling;->mStartReal:J

    iput-wide v0, p0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceProfiling;->mEndReal:J

    iget-wide v0, p0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceProfiling;->mStartThrd:J

    return-wide v0
.end method

.method public Stop(Ljava/lang/String;)J
    .locals 10

    const-wide/16 v8, 0x0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    const/4 v1, 0x3

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceProfiling;->mEndThrd:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceProfiling;->mEndReal:J

    const-string/jumbo v2, "AE_TIME"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceProfiling;->mEndReal:J

    iget-wide v6, p0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceProfiling;->mStartReal:J

    sub-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-wide v8, p0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceProfiling;->mStartReal:J

    iput-wide v8, p0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceProfiling;->mEndReal:J

    iput-wide v8, p0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceProfiling;->mStartThrd:J

    iput-wide v8, p0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceProfiling;->mEndThrd:J

    return-wide v0
.end method
