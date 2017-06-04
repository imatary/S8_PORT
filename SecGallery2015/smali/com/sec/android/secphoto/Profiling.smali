.class Lcom/sec/android/secphoto/Profiling;
.super Ljava/lang/Object;
.source "Profiling.java"


# instance fields
.field private mEndReal:J

.field private mEndThrd:J

.field private mStartReal:J

.field private mStartThrd:J


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Start()J
    .locals 2

    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/secphoto/Profiling;->mStartThrd:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/secphoto/Profiling;->mStartReal:J

    iget-wide v0, p0, Lcom/sec/android/secphoto/Profiling;->mStartThrd:J

    iput-wide v0, p0, Lcom/sec/android/secphoto/Profiling;->mEndThrd:J

    iget-wide v0, p0, Lcom/sec/android/secphoto/Profiling;->mStartReal:J

    iput-wide v0, p0, Lcom/sec/android/secphoto/Profiling;->mEndReal:J

    iget-wide v0, p0, Lcom/sec/android/secphoto/Profiling;->mStartThrd:J

    return-wide v0
.end method

.method public Stop(Ljava/lang/String;)J
    .locals 10

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    const/4 v4, 0x3

    aget-object v1, v1, v4

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/sec/android/secphoto/Profiling;->mEndThrd:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/sec/android/secphoto/Profiling;->mEndReal:J

    const-string/jumbo v1, "AE_TIME"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " @@ Elapsed Time(Thrd): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, p0, Lcom/sec/android/secphoto/Profiling;->mEndThrd:J

    iget-wide v8, p0, Lcom/sec/android/secphoto/Profiling;->mStartThrd:J

    sub-long/2addr v6, v8

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " Real: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, p0, Lcom/sec/android/secphoto/Profiling;->mEndReal:J

    iget-wide v8, p0, Lcom/sec/android/secphoto/Profiling;->mStartReal:J

    sub-long/2addr v6, v8

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/sec/android/secphoto/Profiling;->mStartReal:J

    iput-wide v4, p0, Lcom/sec/android/secphoto/Profiling;->mEndReal:J

    iput-wide v4, p0, Lcom/sec/android/secphoto/Profiling;->mStartThrd:J

    iput-wide v4, p0, Lcom/sec/android/secphoto/Profiling;->mEndThrd:J

    return-wide v2
.end method
