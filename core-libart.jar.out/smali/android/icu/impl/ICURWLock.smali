.class public Landroid/icu/impl/ICURWLock;
.super Ljava/lang/Object;
.source "ICURWLock.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/impl/ICURWLock$Stats;
    }
.end annotation


# instance fields
.field private rwl:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field private stats:Landroid/icu/impl/ICURWLock$Stats;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Landroid/icu/impl/ICURWLock;->rwl:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/icu/impl/ICURWLock;->stats:Landroid/icu/impl/ICURWLock$Stats;

    return-void
.end method


# virtual methods
.method public acquireRead()V
    .locals 2

    iget-object v0, p0, Landroid/icu/impl/ICURWLock;->stats:Landroid/icu/impl/ICURWLock$Stats;

    if-eqz v0, :cond_2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/icu/impl/ICURWLock;->stats:Landroid/icu/impl/ICURWLock$Stats;

    iget v1, v0, Landroid/icu/impl/ICURWLock$Stats;->_rc:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroid/icu/impl/ICURWLock$Stats;->_rc:I

    iget-object v0, p0, Landroid/icu/impl/ICURWLock;->rwl:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->getReadLockCount()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Landroid/icu/impl/ICURWLock;->stats:Landroid/icu/impl/ICURWLock$Stats;

    iget v1, v0, Landroid/icu/impl/ICURWLock$Stats;->_mrc:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroid/icu/impl/ICURWLock$Stats;->_mrc:I

    :cond_0
    iget-object v0, p0, Landroid/icu/impl/ICURWLock;->rwl:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->isWriteLocked()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/icu/impl/ICURWLock;->stats:Landroid/icu/impl/ICURWLock$Stats;

    iget v1, v0, Landroid/icu/impl/ICURWLock$Stats;->_wrc:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroid/icu/impl/ICURWLock$Stats;->_wrc:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    :cond_2
    iget-object v0, p0, Landroid/icu/impl/ICURWLock;->rwl:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public acquireWrite()V
    .locals 2

    iget-object v0, p0, Landroid/icu/impl/ICURWLock;->stats:Landroid/icu/impl/ICURWLock$Stats;

    if-eqz v0, :cond_2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/icu/impl/ICURWLock;->stats:Landroid/icu/impl/ICURWLock$Stats;

    iget v1, v0, Landroid/icu/impl/ICURWLock$Stats;->_wc:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroid/icu/impl/ICURWLock$Stats;->_wc:I

    iget-object v0, p0, Landroid/icu/impl/ICURWLock;->rwl:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->getReadLockCount()I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Landroid/icu/impl/ICURWLock;->rwl:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->isWriteLocked()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Landroid/icu/impl/ICURWLock;->stats:Landroid/icu/impl/ICURWLock$Stats;

    iget v1, v0, Landroid/icu/impl/ICURWLock$Stats;->_wwc:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroid/icu/impl/ICURWLock$Stats;->_wwc:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    :cond_2
    iget-object v0, p0, Landroid/icu/impl/ICURWLock;->rwl:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized clearStats()Landroid/icu/impl/ICURWLock$Stats;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/icu/impl/ICURWLock;->stats:Landroid/icu/impl/ICURWLock$Stats;

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/icu/impl/ICURWLock;->stats:Landroid/icu/impl/ICURWLock$Stats;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getStats()Landroid/icu/impl/ICURWLock$Stats;
    .locals 3

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Landroid/icu/impl/ICURWLock;->stats:Landroid/icu/impl/ICURWLock$Stats;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    new-instance v0, Landroid/icu/impl/ICURWLock$Stats;

    iget-object v1, p0, Landroid/icu/impl/ICURWLock;->stats:Landroid/icu/impl/ICURWLock$Stats;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/icu/impl/ICURWLock$Stats;-><init>(Landroid/icu/impl/ICURWLock$Stats;Landroid/icu/impl/ICURWLock$Stats;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public releaseRead()V
    .locals 1

    iget-object v0, p0, Landroid/icu/impl/ICURWLock;->rwl:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return-void
.end method

.method public releaseWrite()V
    .locals 1

    iget-object v0, p0, Landroid/icu/impl/ICURWLock;->rwl:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    return-void
.end method

.method public declared-synchronized resetStats()Landroid/icu/impl/ICURWLock$Stats;
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/icu/impl/ICURWLock;->stats:Landroid/icu/impl/ICURWLock$Stats;

    new-instance v1, Landroid/icu/impl/ICURWLock$Stats;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Landroid/icu/impl/ICURWLock$Stats;-><init>(Landroid/icu/impl/ICURWLock$Stats;Landroid/icu/impl/ICURWLock$Stats;Landroid/icu/impl/ICURWLock$Stats;)V

    iput-object v1, p0, Landroid/icu/impl/ICURWLock;->stats:Landroid/icu/impl/ICURWLock$Stats;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
