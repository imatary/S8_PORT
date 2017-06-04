.class Lcom/sec/android/gallery3d/util/Profile$Watchdog;
.super Ljava/lang/Object;
.source "Profile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/gallery3d/util/Profile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Watchdog"
.end annotation


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private final mHandlerThread:Landroid/os/HandlerThread;

.field private final mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/util/Profile$WatchEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final mProcessRunnable:Ljava/lang/Runnable;

.field private final mProfileData:Lcom/sec/android/gallery3d/util/ProfileData;

.field private final mRandom:Ljava/util/Random;


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sec/android/gallery3d/util/Profile$Watchdog;->mList:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/android/gallery3d/util/Profile$Watchdog$1;

    invoke-direct {v1, p0}, Lcom/sec/android/gallery3d/util/Profile$Watchdog$1;-><init>(Lcom/sec/android/gallery3d/util/Profile$Watchdog;)V

    iput-object v1, p0, Lcom/sec/android/gallery3d/util/Profile$Watchdog;->mProcessRunnable:Ljava/lang/Runnable;

    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    iput-object v1, p0, Lcom/sec/android/gallery3d/util/Profile$Watchdog;->mRandom:Ljava/util/Random;

    new-instance v1, Lcom/sec/android/gallery3d/util/ProfileData;

    invoke-direct {v1}, Lcom/sec/android/gallery3d/util/ProfileData;-><init>()V

    iput-object v1, p0, Lcom/sec/android/gallery3d/util/Profile$Watchdog;->mProfileData:Lcom/sec/android/gallery3d/util/ProfileData;

    new-instance v1, Landroid/os/HandlerThread;

    const-string/jumbo v2, "Watchdog Handler"

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/sec/android/gallery3d/util/Profile$Watchdog;->mHandlerThread:Landroid/os/HandlerThread;

    iget-object v1, p0, Lcom/sec/android/gallery3d/util/Profile$Watchdog;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    iget-object v1, p0, Lcom/sec/android/gallery3d/util/Profile$Watchdog;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "looper is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/sec/android/gallery3d/util/Profile$Watchdog;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/gallery3d/util/Profile$Watchdog;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/gallery3d/util/Profile$Watchdog;->processList()V

    return-void
.end method

.method private findEntry(Ljava/lang/Thread;)Lcom/sec/android/gallery3d/util/Profile$WatchEntry;
    .locals 3

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/sec/android/gallery3d/util/Profile$Watchdog;->mList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/gallery3d/util/Profile$Watchdog;->mList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/util/Profile$WatchEntry;

    iget-object v2, v0, Lcom/sec/android/gallery3d/util/Profile$WatchEntry;->thread:Ljava/lang/Thread;

    if-ne v2, p1, :cond_0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private processList()V
    .locals 10

    iget-object v5, p0, Lcom/sec/android/gallery3d/util/Profile$Watchdog;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/sec/android/gallery3d/util/Profile$Watchdog;->mProcessRunnable:Ljava/lang/Runnable;

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v5, p0, Lcom/sec/android/gallery3d/util/Profile$Watchdog;->mList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    const-wide/32 v8, 0xf4240

    div-long/2addr v6, v8

    long-to-int v0, v6

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/sec/android/gallery3d/util/Profile$Watchdog;->mList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/gallery3d/util/Profile$WatchEntry;

    iget v6, v1, Lcom/sec/android/gallery3d/util/Profile$WatchEntry;->wakeTime:I

    if-le v0, v6, :cond_2

    iget v6, v1, Lcom/sec/android/gallery3d/util/Profile$WatchEntry;->wakeTime:I

    iget v7, v1, Lcom/sec/android/gallery3d/util/Profile$WatchEntry;->cycleTime:I

    add-int/2addr v6, v7

    iput v6, v1, Lcom/sec/android/gallery3d/util/Profile$WatchEntry;->wakeTime:I

    invoke-direct {p0, v1}, Lcom/sec/android/gallery3d/util/Profile$Watchdog;->sampleStack(Lcom/sec/android/gallery3d/util/Profile$WatchEntry;)V

    :cond_2
    iget v6, v1, Lcom/sec/android/gallery3d/util/Profile$WatchEntry;->wakeTime:I

    if-le v6, v4, :cond_1

    iget v4, v1, Lcom/sec/android/gallery3d/util/Profile$WatchEntry;->wakeTime:I

    goto :goto_1

    :cond_3
    sub-int v5, v4, v0

    int-to-long v2, v5

    iget-object v5, p0, Lcom/sec/android/gallery3d/util/Profile$Watchdog;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/sec/android/gallery3d/util/Profile$Watchdog;->mProcessRunnable:Ljava/lang/Runnable;

    invoke-virtual {v5, v6, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private sampleStack(Lcom/sec/android/gallery3d/util/Profile$WatchEntry;)V
    .locals 5

    iget-object v3, p1, Lcom/sec/android/gallery3d/util/Profile$WatchEntry;->thread:Ljava/lang/Thread;

    invoke-virtual {v3}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    array-length v4, v2

    new-array v1, v4, [Ljava/lang/String;

    const/4 v0, 0x0

    :goto_0
    array-length v4, v2

    if-ge v0, v4, :cond_0

    aget-object v4, v2, v0

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-boolean v4, p1, Lcom/sec/android/gallery3d/util/Profile$WatchEntry;->isHolding:Z

    if-eqz v4, :cond_1

    iget-object v4, p1, Lcom/sec/android/gallery3d/util/Profile$WatchEntry;->holdingStacks:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    return-void

    :cond_1
    iget-object v4, p0, Lcom/sec/android/gallery3d/util/Profile$Watchdog;->mProfileData:Lcom/sec/android/gallery3d/util/ProfileData;

    invoke-virtual {v4, v1}, Lcom/sec/android/gallery3d/util/ProfileData;->addSample([Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public declared-synchronized addWatchEntry(Ljava/lang/Thread;I)V
    .locals 6

    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/sec/android/gallery3d/util/Profile$WatchEntry;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/sec/android/gallery3d/util/Profile$WatchEntry;-><init>(Lcom/sec/android/gallery3d/util/Profile$1;)V

    iput-object p1, v0, Lcom/sec/android/gallery3d/util/Profile$WatchEntry;->thread:Ljava/lang/Thread;

    iput p2, v0, Lcom/sec/android/gallery3d/util/Profile$WatchEntry;->cycleTime:I

    iget-object v2, p0, Lcom/sec/android/gallery3d/util/Profile$Watchdog;->mRandom:Ljava/util/Random;

    invoke-virtual {v2, p2}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    add-int/lit8 v1, v2, 0x1

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    const-wide/32 v4, 0xf4240

    div-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v2, v1

    iput v2, v0, Lcom/sec/android/gallery3d/util/Profile$WatchEntry;->wakeTime:I

    iget-object v2, p0, Lcom/sec/android/gallery3d/util/Profile$Watchdog;->mList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/sec/android/gallery3d/util/Profile$Watchdog;->processList()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized commit(Ljava/lang/Thread;)V
    .locals 5

    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/util/Profile$Watchdog;->findEntry(Ljava/lang/Thread;)Lcom/sec/android/gallery3d/util/Profile$WatchEntry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v2, v0, Lcom/sec/android/gallery3d/util/Profile$WatchEntry;->holdingStacks:Ljava/util/ArrayList;

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    iget-object v4, p0, Lcom/sec/android/gallery3d/util/Profile$Watchdog;->mProfileData:Lcom/sec/android/gallery3d/util/ProfileData;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    invoke-virtual {v4, v3}, Lcom/sec/android/gallery3d/util/ProfileData;->addSample([Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    iput-boolean v3, v0, Lcom/sec/android/gallery3d/util/Profile$WatchEntry;->isHolding:Z

    iget-object v3, v0, Lcom/sec/android/gallery3d/util/Profile$WatchEntry;->holdingStacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized drop(Ljava/lang/Thread;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/util/Profile$Watchdog;->findEntry(Ljava/lang/Thread;)Lcom/sec/android/gallery3d/util/Profile$WatchEntry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    const/4 v1, 0x0

    :try_start_1
    iput-boolean v1, v0, Lcom/sec/android/gallery3d/util/Profile$WatchEntry;->isHolding:Z

    iget-object v1, v0, Lcom/sec/android/gallery3d/util/Profile$WatchEntry;->holdingStacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized dumpToFile(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/util/Profile$Watchdog;->mProfileData:Lcom/sec/android/gallery3d/util/ProfileData;

    invoke-virtual {v0, p1}, Lcom/sec/android/gallery3d/util/ProfileData;->dumpToFile(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized hold(Ljava/lang/Thread;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/util/Profile$Watchdog;->findEntry(Ljava/lang/Thread;)Lcom/sec/android/gallery3d/util/Profile$WatchEntry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    const/4 v1, 0x1

    :try_start_1
    iput-boolean v1, v0, Lcom/sec/android/gallery3d/util/Profile$WatchEntry;->isHolding:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized removeAllWatchEntries()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/util/Profile$Watchdog;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-direct {p0}, Lcom/sec/android/gallery3d/util/Profile$Watchdog;->processList()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized reset()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/util/Profile$Watchdog;->mProfileData:Lcom/sec/android/gallery3d/util/ProfileData;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/util/ProfileData;->reset()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
