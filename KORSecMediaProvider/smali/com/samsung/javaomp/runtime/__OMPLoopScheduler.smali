.class Lcom/samsung/javaomp/runtime/__OMPLoopScheduler;
.super Ljava/lang/Object;
.source "Unknown"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/javaomp/runtime/__OMPLoopScheduler$1;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private declared-synchronized prepareDynamicChunks(Lcom/samsung/javaomp/runtime/__OMPWorkshare;)V
    .locals 14

    const-wide/16 v12, 0x0

    const/4 v5, 0x1

    const/4 v3, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v0, p1, Lcom/samsung/javaomp/runtime/__OMPWorkshare;->preparedChunks:Ljava/util/concurrent/LinkedBlockingQueue;

    if-nez v0, :cond_0

    iget-wide v0, p1, Lcom/samsung/javaomp/runtime/__OMPWorkshare;->chunkSize:J

    cmp-long v0, v0, v12

    if-lez v0, :cond_1

    move v0, v5

    :goto_0
    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Oops. Non-positive sized chunk encountered."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    monitor-exit p0

    return-void

    :cond_1
    move v0, v3

    goto :goto_0

    :cond_2
    :try_start_1
    new-instance v8, Ljava/util/LinkedList;

    invoke-direct {v8}, Ljava/util/LinkedList;-><init>()V

    iget-wide v0, p1, Lcom/samsung/javaomp/runtime/__OMPWorkshare;->start:J

    move v2, v5

    move-wide v6, v0

    :goto_1
    if-nez v2, :cond_3

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0, v8}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(Ljava/util/Collection;)V

    iput-object v0, p1, Lcom/samsung/javaomp/runtime/__OMPWorkshare;->preparedChunks:Ljava/util/concurrent/LinkedBlockingQueue;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_3
    :try_start_2
    iget-wide v0, p1, Lcom/samsung/javaomp/runtime/__OMPWorkshare;->incr:J

    iget-wide v10, p1, Lcom/samsung/javaomp/runtime/__OMPWorkshare;->chunkSize:J

    mul-long/2addr v0, v10

    add-long/2addr v0, v6

    iget-wide v10, p1, Lcom/samsung/javaomp/runtime/__OMPWorkshare;->incr:J

    cmp-long v4, v10, v12

    if-gtz v4, :cond_7

    move v4, v5

    :goto_2
    if-nez v4, :cond_4

    iget-wide v10, p1, Lcom/samsung/javaomp/runtime/__OMPWorkshare;->end:J

    cmp-long v4, v0, v10

    if-ltz v4, :cond_8

    move v4, v5

    :goto_3
    if-nez v4, :cond_5

    :cond_4
    iget-wide v10, p1, Lcom/samsung/javaomp/runtime/__OMPWorkshare;->incr:J

    cmp-long v4, v10, v12

    if-ltz v4, :cond_9

    move v4, v5

    :goto_4
    if-nez v4, :cond_6

    iget-wide v10, p1, Lcom/samsung/javaomp/runtime/__OMPWorkshare;->end:J

    cmp-long v4, v0, v10

    if-lez v4, :cond_a

    move v4, v5

    :goto_5
    if-nez v4, :cond_6

    :cond_5
    iget-wide v0, p1, Lcom/samsung/javaomp/runtime/__OMPWorkshare;->end:J

    move v2, v3

    :cond_6
    new-instance v4, Lcom/samsung/javaomp/runtime/__OMPChunk;

    invoke-direct {v4, v6, v7, v0, v1}, Lcom/samsung/javaomp/runtime/__OMPChunk;-><init>(JJ)V

    invoke-virtual {v8, v4}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-wide v6, v0

    goto :goto_1

    :cond_7
    move v4, v3

    goto :goto_2

    :cond_8
    move v4, v3

    goto :goto_3

    :cond_9
    move v4, v3

    goto :goto_4

    :cond_a
    move v4, v3

    goto :goto_5
.end method

.method private declared-synchronized prepareGuidedChunks(Lcom/samsung/javaomp/runtime/__OMPLoop;Lcom/samsung/javaomp/runtime/__OMPWorkshare;)V
    .locals 16

    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/samsung/javaomp/runtime/__OMPWorkshare;->preparedChunks:Ljava/util/concurrent/LinkedBlockingQueue;

    if-nez v2, :cond_0

    move-object/from16 v0, p1

    iget-wide v2, v0, Lcom/samsung/javaomp/runtime/__OMPLoop;->chunkSize:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    const/4 v2, 0x1

    :goto_0
    if-nez v2, :cond_2

    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "Oops. Non-positive sized chunk encountered."

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    :cond_0
    monitor-exit p0

    return-void

    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    :try_start_1
    new-instance v8, Ljava/util/LinkedList;

    invoke-direct {v8}, Ljava/util/LinkedList;-><init>()V

    invoke-static {}, Lcom/samsung/javaomp/runtime/OMP;->getNumThreads()I

    move-result v9

    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/samsung/javaomp/runtime/__OMPLoop;->incr:J

    move-object/from16 v0, p1

    iget-wide v2, v0, Lcom/samsung/javaomp/runtime/__OMPLoop;->incr:J

    const-wide/16 v6, 0x0

    cmp-long v2, v2, v6

    if-gtz v2, :cond_3

    const/4 v2, 0x1

    :goto_1
    if-nez v2, :cond_4

    const/4 v2, -0x1

    :goto_2
    int-to-long v2, v2

    add-long v10, v4, v2

    move-object/from16 v0, p1

    iget-wide v2, v0, Lcom/samsung/javaomp/runtime/__OMPLoop;->start:J

    const/4 v4, 0x1

    move-wide v6, v2

    :goto_3
    if-nez v4, :cond_5

    new-instance v2, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v2, v8}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(Ljava/util/Collection;)V

    move-object/from16 v0, p2

    iput-object v2, v0, Lcom/samsung/javaomp/runtime/__OMPWorkshare;->preparedChunks:Ljava/util/concurrent/LinkedBlockingQueue;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_3
    const/4 v2, 0x0

    goto :goto_1

    :cond_4
    const/4 v2, 0x1

    goto :goto_2

    :cond_5
    :try_start_2
    move-object/from16 v0, p1

    iget-wide v2, v0, Lcom/samsung/javaomp/runtime/__OMPLoop;->end:J

    sub-long/2addr v2, v6

    add-long/2addr v2, v10

    move-object/from16 v0, p1

    iget-wide v12, v0, Lcom/samsung/javaomp/runtime/__OMPLoop;->incr:J

    div-long/2addr v2, v12

    long-to-double v2, v2

    int-to-double v12, v9

    div-double/2addr v2, v12

    const-wide/high16 v12, 0x3fe0000000000000L    # 0.5

    add-double/2addr v2, v12

    double-to-long v2, v2

    move-object/from16 v0, p1

    iget-wide v12, v0, Lcom/samsung/javaomp/runtime/__OMPLoop;->chunkSize:J

    invoke-static {v2, v3, v12, v13}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    move-object/from16 v0, p1

    iget-wide v12, v0, Lcom/samsung/javaomp/runtime/__OMPLoop;->incr:J

    mul-long/2addr v2, v12

    add-long/2addr v2, v6

    move-object/from16 v0, p1

    iget-wide v12, v0, Lcom/samsung/javaomp/runtime/__OMPLoop;->incr:J

    const-wide/16 v14, 0x0

    cmp-long v5, v12, v14

    if-gtz v5, :cond_9

    const/4 v5, 0x1

    :goto_4
    if-nez v5, :cond_6

    move-object/from16 v0, p1

    iget-wide v12, v0, Lcom/samsung/javaomp/runtime/__OMPLoop;->end:J

    cmp-long v5, v2, v12

    if-ltz v5, :cond_a

    const/4 v5, 0x1

    :goto_5
    if-nez v5, :cond_7

    :cond_6
    move-object/from16 v0, p1

    iget-wide v12, v0, Lcom/samsung/javaomp/runtime/__OMPLoop;->incr:J

    const-wide/16 v14, 0x0

    cmp-long v5, v12, v14

    if-ltz v5, :cond_b

    const/4 v5, 0x1

    :goto_6
    if-nez v5, :cond_8

    move-object/from16 v0, p1

    iget-wide v12, v0, Lcom/samsung/javaomp/runtime/__OMPLoop;->end:J

    cmp-long v5, v2, v12

    if-lez v5, :cond_c

    const/4 v5, 0x1

    :goto_7
    if-nez v5, :cond_8

    :cond_7
    const/4 v4, 0x0

    move-object/from16 v0, p1

    iget-wide v2, v0, Lcom/samsung/javaomp/runtime/__OMPLoop;->end:J

    :cond_8
    new-instance v5, Lcom/samsung/javaomp/runtime/__OMPChunk;

    invoke-direct {v5, v6, v7, v2, v3}, Lcom/samsung/javaomp/runtime/__OMPChunk;-><init>(JJ)V

    invoke-virtual {v8, v5}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-wide v6, v2

    goto :goto_3

    :cond_9
    const/4 v5, 0x0

    goto :goto_4

    :cond_a
    const/4 v5, 0x0

    goto :goto_5

    :cond_b
    const/4 v5, 0x0

    goto :goto_6

    :cond_c
    const/4 v5, 0x0

    goto :goto_7
.end method

.method private scheduleDynamic(Lcom/samsung/javaomp/runtime/__OMPLoop;Lcom/samsung/javaomp/runtime/__OMPWorkshare;)Z
    .locals 1

    invoke-direct {p0, p2}, Lcom/samsung/javaomp/runtime/__OMPLoopScheduler;->prepareDynamicChunks(Lcom/samsung/javaomp/runtime/__OMPWorkshare;)V

    invoke-direct {p0, p1, p2}, Lcom/samsung/javaomp/runtime/__OMPLoopScheduler;->updateLoopData(Lcom/samsung/javaomp/runtime/__OMPLoop;Lcom/samsung/javaomp/runtime/__OMPWorkshare;)Z

    move-result v0

    return v0
.end method

.method private scheduleGuided(Lcom/samsung/javaomp/runtime/__OMPLoop;Lcom/samsung/javaomp/runtime/__OMPWorkshare;)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/samsung/javaomp/runtime/__OMPLoopScheduler;->prepareGuidedChunks(Lcom/samsung/javaomp/runtime/__OMPLoop;Lcom/samsung/javaomp/runtime/__OMPWorkshare;)V

    invoke-direct {p0, p1, p2}, Lcom/samsung/javaomp/runtime/__OMPLoopScheduler;->updateLoopData(Lcom/samsung/javaomp/runtime/__OMPLoop;Lcom/samsung/javaomp/runtime/__OMPWorkshare;)Z

    move-result v0

    return v0
.end method

.method private scheduleStatic(Lcom/samsung/javaomp/runtime/__OMPLoop;Lcom/samsung/javaomp/runtime/__OMPWorkshare;)Z
    .locals 10

    invoke-static {}, Lcom/samsung/javaomp/runtime/OMP;->getThreadNum()I

    move-result v1

    invoke-static {}, Lcom/samsung/javaomp/runtime/OMP;->getNumThreads()I

    move-result v0

    iget-boolean v2, p2, Lcom/samsung/javaomp/runtime/__OMPWorkshare;->isOrdered:Z

    if-nez v2, :cond_0

    :goto_0
    iget-wide v2, p1, Lcom/samsung/javaomp/runtime/__OMPLoop;->staticTrip:J

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-nez v0, :cond_4

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v2, p2, Lcom/samsung/javaomp/runtime/__OMPWorkshare;->orderedSemaphore:Ljava/util/ArrayList;

    monitor-enter v2

    :try_start_0
    iget-wide v4, p1, Lcom/samsung/javaomp/runtime/__OMPLoop;->staticTrip:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-nez v3, :cond_2

    add-int/lit8 v3, v0, -0x1

    if-eq v1, v3, :cond_2

    :cond_1
    :goto_1
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    iget v3, p2, Lcom/samsung/javaomp/runtime/__OMPWorkshare;->orderedOwner:I

    if-ne v1, v3, :cond_1

    iget v3, p2, Lcom/samsung/javaomp/runtime/__OMPWorkshare;->orderedOwner:I

    add-int/lit8 v3, v3, 0x1

    rem-int v0, v3, v0

    iput v0, p2, Lcom/samsung/javaomp/runtime/__OMPWorkshare;->orderedOwner:I

    iget v3, p2, Lcom/samsung/javaomp/runtime/__OMPWorkshare;->orderedOwner:I

    iget-object v0, p2, Lcom/samsung/javaomp/runtime/__OMPWorkshare;->orderedSemaphore:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->availablePermits()I

    move-result v0

    if-eqz v0, :cond_3

    :goto_2
    iget v0, p2, Lcom/samsung/javaomp/runtime/__OMPWorkshare;->orderedOwner:I

    if-eq v1, v0, :cond_1

    iget-object v0, p2, Lcom/samsung/javaomp/runtime/__OMPWorkshare;->orderedSemaphore:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->availablePermits()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    :try_start_2
    iget-object v0, p2, Lcom/samsung/javaomp/runtime/__OMPWorkshare;->orderedSemaphore:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_3
    new-instance v0, Lcom/samsung/javaomp/runtime/OMPRuntimeException;

    const-string/jumbo v1, "Unhandled exception"

    invoke-direct {v0, v1}, Lcom/samsung/javaomp/runtime/OMPRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iget-object v0, p2, Lcom/samsung/javaomp/runtime/__OMPWorkshare;->orderedSemaphore:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :cond_4
    invoke-static {}, Lcom/samsung/javaomp/runtime/OMP;->getNumThreads()I

    move-result v0

    int-to-long v4, v0

    int-to-long v6, v1

    iget-wide v0, p2, Lcom/samsung/javaomp/runtime/__OMPWorkshare;->chunkSize:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_e

    iget-wide v0, p1, Lcom/samsung/javaomp/runtime/__OMPLoop;->staticTrip:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_5

    const/4 v0, 0x1

    :goto_3
    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    :cond_5
    const/4 v0, 0x0

    goto :goto_3

    :cond_6
    iget-wide v2, p2, Lcom/samsung/javaomp/runtime/__OMPWorkshare;->incr:J

    iget-wide v0, p2, Lcom/samsung/javaomp/runtime/__OMPWorkshare;->incr:J

    const-wide/16 v8, 0x0

    cmp-long v0, v0, v8

    if-gtz v0, :cond_8

    const/4 v0, 0x1

    :goto_4
    if-nez v0, :cond_9

    const/4 v0, -0x1

    :goto_5
    int-to-long v0, v0

    add-long/2addr v0, v2

    iget-wide v2, p2, Lcom/samsung/javaomp/runtime/__OMPWorkshare;->end:J

    iget-wide v8, p2, Lcom/samsung/javaomp/runtime/__OMPWorkshare;->start:J

    sub-long/2addr v2, v8

    add-long/2addr v0, v2

    iget-wide v2, p2, Lcom/samsung/javaomp/runtime/__OMPWorkshare;->incr:J

    div-long v8, v0, v2

    div-long v2, v8, v4

    rem-long v0, v8, v4

    cmp-long v4, v6, v0

    if-ltz v4, :cond_a

    const/4 v4, 0x1

    :goto_6
    if-nez v4, :cond_7

    const-wide/16 v0, 0x0

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    :cond_7
    mul-long v4, v2, v6

    add-long/2addr v4, v0

    add-long/2addr v2, v4

    cmp-long v0, v4, v2

    if-gez v0, :cond_b

    const/4 v0, 0x1

    :goto_7
    if-nez v0, :cond_c

    const/4 v0, 0x0

    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_4

    :cond_9
    const/4 v0, 0x1

    goto :goto_5

    :cond_a
    const/4 v4, 0x0

    goto :goto_6

    :cond_b
    const/4 v0, 0x0

    goto :goto_7

    :cond_c
    iget-wide v0, p2, Lcom/samsung/javaomp/runtime/__OMPWorkshare;->incr:J

    mul-long/2addr v0, v4

    iget-wide v4, p2, Lcom/samsung/javaomp/runtime/__OMPWorkshare;->start:J

    add-long/2addr v0, v4

    iput-wide v0, p1, Lcom/samsung/javaomp/runtime/__OMPLoop;->myStart:J

    iget-wide v0, p2, Lcom/samsung/javaomp/runtime/__OMPWorkshare;->incr:J

    mul-long/2addr v0, v2

    iget-wide v4, p2, Lcom/samsung/javaomp/runtime/__OMPWorkshare;->start:J

    add-long/2addr v0, v4

    iput-wide v0, p1, Lcom/samsung/javaomp/runtime/__OMPLoop;->myEnd:J

    cmp-long v0, v2, v8

    if-nez v0, :cond_d

    const/4 v0, -0x1

    :goto_8
    int-to-long v0, v0

    iput-wide v0, p1, Lcom/samsung/javaomp/runtime/__OMPLoop;->staticTrip:J

    const/4 v0, 0x1

    return v0

    :cond_d
    const/4 v0, 0x1

    goto :goto_8

    :cond_e
    iget-wide v2, p2, Lcom/samsung/javaomp/runtime/__OMPWorkshare;->incr:J

    iget-wide v0, p2, Lcom/samsung/javaomp/runtime/__OMPWorkshare;->incr:J

    const-wide/16 v8, 0x0

    cmp-long v0, v0, v8

    if-gtz v0, :cond_f

    const/4 v0, 0x1

    :goto_9
    if-nez v0, :cond_10

    const/4 v0, -0x1

    :goto_a
    int-to-long v0, v0

    add-long/2addr v0, v2

    iget-wide v2, p2, Lcom/samsung/javaomp/runtime/__OMPWorkshare;->end:J

    iget-wide v8, p2, Lcom/samsung/javaomp/runtime/__OMPWorkshare;->start:J

    sub-long/2addr v2, v8

    add-long/2addr v0, v2

    iget-wide v2, p2, Lcom/samsung/javaomp/runtime/__OMPWorkshare;->incr:J

    div-long v2, v0, v2

    iget-wide v0, p2, Lcom/samsung/javaomp/runtime/__OMPWorkshare;->chunkSize:J

    iget-wide v8, p1, Lcom/samsung/javaomp/runtime/__OMPLoop;->staticTrip:J

    mul-long/2addr v4, v8

    add-long/2addr v4, v6

    mul-long v6, v4, v0

    add-long/2addr v0, v6

    cmp-long v4, v6, v2

    if-gez v4, :cond_11

    const/4 v4, 0x1

    :goto_b
    if-nez v4, :cond_12

    const/4 v0, 0x0

    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_9

    :cond_10
    const/4 v0, 0x1

    goto :goto_a

    :cond_11
    const/4 v4, 0x0

    goto :goto_b

    :cond_12
    cmp-long v4, v0, v2

    if-gtz v4, :cond_14

    const/4 v4, 0x1

    :goto_c
    if-nez v4, :cond_13

    move-wide v0, v2

    :cond_13
    iget-wide v4, p2, Lcom/samsung/javaomp/runtime/__OMPWorkshare;->incr:J

    mul-long/2addr v4, v6

    iget-wide v6, p2, Lcom/samsung/javaomp/runtime/__OMPWorkshare;->start:J

    add-long/2addr v4, v6

    iput-wide v4, p1, Lcom/samsung/javaomp/runtime/__OMPLoop;->myStart:J

    iget-wide v4, p2, Lcom/samsung/javaomp/runtime/__OMPWorkshare;->incr:J

    mul-long/2addr v4, v0

    iget-wide v6, p2, Lcom/samsung/javaomp/runtime/__OMPWorkshare;->start:J

    add-long/2addr v4, v6

    iput-wide v4, p1, Lcom/samsung/javaomp/runtime/__OMPLoop;->myEnd:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_15

    const-wide/16 v0, -0x1

    iput-wide v0, p1, Lcom/samsung/javaomp/runtime/__OMPLoop;->staticTrip:J

    :goto_d
    const/4 v0, 0x1

    return v0

    :cond_14
    const/4 v4, 0x0

    goto :goto_c

    :cond_15
    iget-wide v0, p1, Lcom/samsung/javaomp/runtime/__OMPLoop;->staticTrip:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p1, Lcom/samsung/javaomp/runtime/__OMPLoop;->staticTrip:J

    goto :goto_d
.end method

.method private updateLoopData(Lcom/samsung/javaomp/runtime/__OMPLoop;Lcom/samsung/javaomp/runtime/__OMPWorkshare;)Z
    .locals 16

    move-object/from16 v0, p2

    iget-boolean v2, v0, Lcom/samsung/javaomp/runtime/__OMPWorkshare;->isOrdered:Z

    if-nez v2, :cond_1

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/samsung/javaomp/runtime/__OMPWorkshare;->preparedChunks:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/javaomp/runtime/__OMPChunk;

    :cond_0
    :goto_0
    if-eqz v2, :cond_11

    iget-wide v4, v2, Lcom/samsung/javaomp/runtime/__OMPChunk;->end:J

    move-object/from16 v0, p2

    iget-wide v6, v0, Lcom/samsung/javaomp/runtime/__OMPWorkshare;->end:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_12

    const-wide/16 v4, -0x1

    move-object/from16 v0, p1

    iput-wide v4, v0, Lcom/samsung/javaomp/runtime/__OMPLoop;->staticTrip:J

    :goto_1
    iget-wide v4, v2, Lcom/samsung/javaomp/runtime/__OMPChunk;->start:J

    move-object/from16 v0, p1

    iput-wide v4, v0, Lcom/samsung/javaomp/runtime/__OMPLoop;->myStart:J

    iget-wide v2, v2, Lcom/samsung/javaomp/runtime/__OMPChunk;->end:J

    move-object/from16 v0, p1

    iput-wide v2, v0, Lcom/samsung/javaomp/runtime/__OMPLoop;->myEnd:J

    const/4 v2, 0x1

    return v2

    :cond_1
    invoke-static {}, Lcom/samsung/javaomp/runtime/OMP;->getNumThreads()I

    move-result v8

    const/4 v2, 0x1

    if-gt v8, v2, :cond_2

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/samsung/javaomp/runtime/__OMPWorkshare;->preparedChunks:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/javaomp/runtime/__OMPChunk;

    const/4 v3, 0x0

    move-object/from16 v0, p2

    iput v3, v0, Lcom/samsung/javaomp/runtime/__OMPWorkshare;->orderedOwner:I

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/samsung/javaomp/runtime/__OMPWorkshare;->orderedSemaphore:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/Semaphore;

    invoke-virtual {v3}, Ljava/util/concurrent/Semaphore;->availablePermits()I

    move-result v3

    if-nez v3, :cond_0

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/samsung/javaomp/runtime/__OMPWorkshare;->orderedSemaphore:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/Semaphore;

    invoke-virtual {v3}, Ljava/util/concurrent/Semaphore;->release()V

    goto :goto_0

    :cond_2
    move-object/from16 v0, p2

    iget-object v9, v0, Lcom/samsung/javaomp/runtime/__OMPWorkshare;->orderedSemaphore:Ljava/util/ArrayList;

    monitor-enter v9

    :try_start_0
    invoke-static {}, Lcom/samsung/javaomp/runtime/OMP;->getThreadNum()I

    move-result v10

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/samsung/javaomp/runtime/__OMPWorkshare;->preparedChunks:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/javaomp/runtime/__OMPChunk;

    if-nez v2, :cond_4

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/samsung/javaomp/runtime/__OMPWorkshare;->lastChunk:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v10, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :goto_2
    move-object/from16 v0, p2

    iget v3, v0, Lcom/samsung/javaomp/runtime/__OMPWorkshare;->orderedOwner:I

    if-eq v10, v3, :cond_5

    :cond_3
    :goto_3
    monitor-exit v9

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_4
    :try_start_1
    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/samsung/javaomp/runtime/__OMPWorkshare;->lastChunk:Ljava/util/ArrayList;

    iget-wide v4, v2, Lcom/samsung/javaomp/runtime/__OMPChunk;->start:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v10, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_5
    const/4 v6, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x0

    :goto_4
    if-lt v5, v8, :cond_6

    move-object/from16 v0, p2

    iput v4, v0, Lcom/samsung/javaomp/runtime/__OMPWorkshare;->orderedOwner:I

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/samsung/javaomp/runtime/__OMPWorkshare;->orderedSemaphore:Ljava/util/ArrayList;

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/Semaphore;

    invoke-virtual {v3}, Ljava/util/concurrent/Semaphore;->availablePermits()I

    move-result v3

    if-nez v3, :cond_10

    :goto_5
    const/4 v3, -0x1

    if-eq v4, v3, :cond_3

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/samsung/javaomp/runtime/__OMPWorkshare;->orderedSemaphore:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/Semaphore;

    invoke-virtual {v3}, Ljava/util/concurrent/Semaphore;->availablePermits()I

    move-result v3

    if-nez v3, :cond_3

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/samsung/javaomp/runtime/__OMPWorkshare;->orderedSemaphore:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/Semaphore;

    invoke-virtual {v3}, Ljava/util/concurrent/Semaphore;->release()V

    goto :goto_3

    :cond_6
    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/samsung/javaomp/runtime/__OMPWorkshare;->lastChunk:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    if-nez v3, :cond_8

    :cond_7
    move v3, v4

    move-object v4, v6

    :goto_6
    add-int/lit8 v5, v5, 0x1

    move-object v6, v4

    move v4, v3

    goto :goto_4

    :cond_8
    if-nez v6, :cond_a

    :cond_9
    :goto_7
    move-object v4, v3

    move v3, v5

    goto :goto_6

    :cond_a
    move-object/from16 v0, p2

    iget-wide v12, v0, Lcom/samsung/javaomp/runtime/__OMPWorkshare;->incr:J

    const-wide/16 v14, 0x0

    cmp-long v7, v12, v14

    if-gtz v7, :cond_c

    const/4 v7, 0x1

    :goto_8
    if-nez v7, :cond_b

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    cmp-long v7, v12, v14

    if-lez v7, :cond_d

    const/4 v7, 0x1

    :goto_9
    if-nez v7, :cond_9

    :cond_b
    move-object/from16 v0, p2

    iget-wide v12, v0, Lcom/samsung/javaomp/runtime/__OMPWorkshare;->incr:J

    const-wide/16 v14, 0x0

    cmp-long v7, v12, v14

    if-ltz v7, :cond_e

    const/4 v7, 0x1

    :goto_a
    if-nez v7, :cond_7

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v14

    cmp-long v7, v12, v14

    if-ltz v7, :cond_f

    const/4 v7, 0x1

    :goto_b
    if-nez v7, :cond_7

    goto :goto_7

    :cond_c
    const/4 v7, 0x0

    goto :goto_8

    :cond_d
    const/4 v7, 0x0

    goto :goto_9

    :cond_e
    const/4 v7, 0x0

    goto :goto_a

    :cond_f
    const/4 v7, 0x0

    goto :goto_b

    :cond_10
    :try_start_2
    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/samsung/javaomp/runtime/__OMPWorkshare;->orderedSemaphore:Ljava/util/ArrayList;

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/Semaphore;

    invoke-virtual {v3}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_5

    :catch_0
    move-exception v2

    :try_start_3
    new-instance v2, Lcom/samsung/javaomp/runtime/OMPRuntimeException;

    const-string/jumbo v3, "Unhandled interruption"

    invoke-direct {v2, v3}, Lcom/samsung/javaomp/runtime/OMPRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_11
    const/4 v2, 0x0

    return v2

    :cond_12
    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/samsung/javaomp/runtime/__OMPLoop;->staticTrip:J

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    move-object/from16 v0, p1

    iput-wide v4, v0, Lcom/samsung/javaomp/runtime/__OMPLoop;->staticTrip:J

    goto/16 :goto_1
.end method


# virtual methods
.method scheduleNext(Lcom/samsung/javaomp/runtime/__OMPLoop;Lcom/samsung/javaomp/runtime/__OMPWorkshare;)Z
    .locals 3

    sget-object v0, Lcom/samsung/javaomp/runtime/__OMPLoopScheduler$1;->$SwitchMap$com$samsung$javaomp$runtime$OMPSched:[I

    iget-object v1, p2, Lcom/samsung/javaomp/runtime/__OMPWorkshare;->sched:Lcom/samsung/javaomp/runtime/OMPSched;

    invoke-virtual {v1}, Lcom/samsung/javaomp/runtime/OMPSched;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lcom/samsung/javaomp/runtime/OMPRuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown scheduling type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/samsung/javaomp/runtime/__OMPLoop;->schedule:Lcom/samsung/javaomp/runtime/OMPSched;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/javaomp/runtime/OMPRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    invoke-direct {p0, p1, p2}, Lcom/samsung/javaomp/runtime/__OMPLoopScheduler;->scheduleStatic(Lcom/samsung/javaomp/runtime/__OMPLoop;Lcom/samsung/javaomp/runtime/__OMPWorkshare;)Z

    move-result v0

    return v0

    :pswitch_1
    invoke-direct {p0, p1, p2}, Lcom/samsung/javaomp/runtime/__OMPLoopScheduler;->scheduleDynamic(Lcom/samsung/javaomp/runtime/__OMPLoop;Lcom/samsung/javaomp/runtime/__OMPWorkshare;)Z

    move-result v0

    return v0

    :pswitch_2
    invoke-direct {p0, p1, p2}, Lcom/samsung/javaomp/runtime/__OMPLoopScheduler;->scheduleGuided(Lcom/samsung/javaomp/runtime/__OMPLoop;Lcom/samsung/javaomp/runtime/__OMPWorkshare;)Z

    move-result v0

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
