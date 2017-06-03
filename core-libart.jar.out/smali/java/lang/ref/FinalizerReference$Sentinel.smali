.class Ljava/lang/ref/FinalizerReference$Sentinel;
.super Ljava/lang/Object;
.source "FinalizerReference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/ref/FinalizerReference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Sentinel"
.end annotation


# instance fields
.field finalized:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/lang/ref/FinalizerReference$Sentinel;->finalized:Z

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/ref/FinalizerReference$Sentinel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/ref/FinalizerReference$Sentinel;-><init>()V

    return-void
.end method


# virtual methods
.method declared-synchronized awaitFinalization(J)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    add-long v4, v6, p1

    :goto_0
    iget-boolean v8, p0, Ljava/lang/ref/FinalizerReference$Sentinel;->finalized:Z

    if-nez v8, :cond_0

    const-wide/16 v8, 0x0

    cmp-long v8, p1, v8

    if-eqz v8, :cond_2

    invoke-static {}, Ljava/lang/System;->nanoTime()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    cmp-long v8, v0, v4

    if-ltz v8, :cond_1

    :cond_0
    monitor-exit p0

    return-void

    :cond_1
    sub-long v2, v4, v0

    const-wide/32 v8, 0xf4240

    :try_start_1
    div-long v8, v2, v8

    const-wide/32 v10, 0xf4240

    rem-long v10, v2, v10

    long-to-int v10, v10

    invoke-virtual {p0, v8, v9, v10}, Ljava/lang/ref/FinalizerReference$Sentinel;->wait(JI)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8

    :cond_2
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/ref/FinalizerReference$Sentinel;->wait()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method protected declared-synchronized finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Ljava/lang/ref/FinalizerReference$Sentinel;->finalized:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Ljava/lang/ref/FinalizerReference$Sentinel;->finalized:Z

    invoke-virtual {p0}, Ljava/lang/ref/FinalizerReference$Sentinel;->notifyAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void
.end method
