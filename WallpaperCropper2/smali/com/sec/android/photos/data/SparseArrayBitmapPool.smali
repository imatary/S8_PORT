.class public Lcom/sec/android/photos/data/SparseArrayBitmapPool;
.super Ljava/lang/Object;
.source "SparseArrayBitmapPool.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;
    }
.end annotation


# instance fields
.field private mCapacityBytes:I

.field private mNodePool:Landroid/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pools$Pool",
            "<",
            "Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;",
            ">;"
        }
    .end annotation
.end field

.field private mPoolNodesHead:Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;

.field private mPoolNodesTail:Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;

.field private mSizeBytes:I

.field private mStore:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILandroid/util/Pools$Pool;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/util/Pools$Pool",
            "<",
            "Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;",
            ">;)V"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/sec/android/photos/data/SparseArrayBitmapPool;->mStore:Landroid/util/SparseArray;

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/photos/data/SparseArrayBitmapPool;->mSizeBytes:I

    iput-object v1, p0, Lcom/sec/android/photos/data/SparseArrayBitmapPool;->mPoolNodesHead:Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;

    iput-object v1, p0, Lcom/sec/android/photos/data/SparseArrayBitmapPool;->mPoolNodesTail:Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;

    iput p1, p0, Lcom/sec/android/photos/data/SparseArrayBitmapPool;->mCapacityBytes:I

    if-nez p2, :cond_0

    new-instance v0, Landroid/util/Pools$SimplePool;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Landroid/util/Pools$SimplePool;-><init>(I)V

    iput-object v0, p0, Lcom/sec/android/photos/data/SparseArrayBitmapPool;->mNodePool:Landroid/util/Pools$Pool;

    :goto_0
    return-void

    :cond_0
    iput-object p2, p0, Lcom/sec/android/photos/data/SparseArrayBitmapPool;->mNodePool:Landroid/util/Pools$Pool;

    goto :goto_0
.end method

.method private freeUpCapacity(I)V
    .locals 3

    iget v0, p0, Lcom/sec/android/photos/data/SparseArrayBitmapPool;->mCapacityBytes:I

    sub-int/2addr v0, p1

    :goto_0
    iget-object v1, p0, Lcom/sec/android/photos/data/SparseArrayBitmapPool;->mPoolNodesTail:Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/sec/android/photos/data/SparseArrayBitmapPool;->mSizeBytes:I

    if-le v1, v0, :cond_0

    iget-object v1, p0, Lcom/sec/android/photos/data/SparseArrayBitmapPool;->mPoolNodesTail:Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/sec/android/photos/data/SparseArrayBitmapPool;->unlinkAndRecycleNode(Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private unlinkAndRecycleNode(Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;Z)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p1, Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;->prevInBucket:Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;->prevInBucket:Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;

    iget-object v1, p1, Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;->nextInBucket:Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;

    iput-object v1, v0, Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;->nextInBucket:Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;

    :goto_0
    iget-object v0, p1, Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;->nextInBucket:Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;->nextInBucket:Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;

    iget-object v1, p1, Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;->prevInBucket:Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;

    iput-object v1, v0, Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;->prevInBucket:Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;

    :cond_0
    iget-object v0, p1, Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;->prevInPool:Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;->prevInPool:Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;

    iget-object v1, p1, Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;->nextInPool:Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;

    iput-object v1, v0, Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;->nextInPool:Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;

    :goto_1
    iget-object v0, p1, Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;->nextInPool:Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;

    if-eqz v0, :cond_4

    iget-object v0, p1, Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;->nextInPool:Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;

    iget-object v1, p1, Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;->prevInPool:Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;

    iput-object v1, v0, Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;->prevInPool:Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;

    :goto_2
    iput-object v3, p1, Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;->nextInBucket:Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;

    iput-object v3, p1, Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;->nextInPool:Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;

    iput-object v3, p1, Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;->prevInBucket:Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;

    iput-object v3, p1, Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;->prevInPool:Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;

    iget v0, p0, Lcom/sec/android/photos/data/SparseArrayBitmapPool;->mSizeBytes:I

    iget-object v1, p1, Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/photos/data/SparseArrayBitmapPool;->mSizeBytes:I

    if-eqz p2, :cond_1

    iget-object v0, p1, Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    iput-object v3, p1, Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;->bitmap:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/sec/android/photos/data/SparseArrayBitmapPool;->mNodePool:Landroid/util/Pools$Pool;

    invoke-interface {v0, p1}, Landroid/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    return-void

    :cond_2
    iget-object v0, p0, Lcom/sec/android/photos/data/SparseArrayBitmapPool;->mStore:Landroid/util/SparseArray;

    iget-object v1, p1, Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget-object v2, p1, Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;->nextInBucket:Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    :cond_3
    iget-object v0, p1, Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;->nextInPool:Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;

    iput-object v0, p0, Lcom/sec/android/photos/data/SparseArrayBitmapPool;->mPoolNodesHead:Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;

    goto :goto_1

    :cond_4
    iget-object v0, p1, Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;->prevInPool:Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;

    iput-object v0, p0, Lcom/sec/android/photos/data/SparseArrayBitmapPool;->mPoolNodesTail:Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;

    goto :goto_2
.end method


# virtual methods
.method public declared-synchronized clear()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/sec/android/photos/data/SparseArrayBitmapPool;->mCapacityBytes:I

    invoke-direct {p0, v0}, Lcom/sec/android/photos/data/SparseArrayBitmapPool;->freeUpCapacity(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized get(II)Landroid/graphics/Bitmap;
    .locals 3

    const/4 v2, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/photos/data/SparseArrayBitmapPool;->mStore:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;

    :goto_0
    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-ne v1, p2, :cond_0

    iget-object v1, v0, Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;->bitmap:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lcom/sec/android/photos/data/SparseArrayBitmapPool;->unlinkAndRecycleNode(Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    :cond_0
    :try_start_1
    iget-object v0, v0, Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;->nextInBucket:Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_1
    monitor-exit p0

    return-object v2

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getCapacity()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/sec/android/photos/data/SparseArrayBitmapPool;->mCapacityBytes:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getSize()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/sec/android/photos/data/SparseArrayBitmapPool;->mSizeBytes:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized put(Landroid/graphics/Bitmap;)Z
    .locals 4

    monitor-enter p0

    if-nez p1, :cond_0

    const/4 v0, 0x0

    monitor-exit p0

    return v0

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/sec/android/photos/data/SparseArrayBitmapPool;->freeUpCapacity(I)V

    iget-object v0, p0, Lcom/sec/android/photos/data/SparseArrayBitmapPool;->mNodePool:Landroid/util/Pools$Pool;

    invoke-interface {v0}, Landroid/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;

    if-nez v0, :cond_3

    new-instance v0, Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;

    invoke-direct {v0}, Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;-><init>()V

    move-object v1, v0

    :goto_0
    iput-object p1, v1, Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;->bitmap:Landroid/graphics/Bitmap;

    const/4 v0, 0x0

    iput-object v0, v1, Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;->prevInBucket:Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;

    const/4 v0, 0x0

    iput-object v0, v1, Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;->prevInPool:Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;

    iget-object v0, p0, Lcom/sec/android/photos/data/SparseArrayBitmapPool;->mPoolNodesHead:Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;

    iput-object v0, v1, Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;->nextInPool:Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;

    iput-object v1, p0, Lcom/sec/android/photos/data/SparseArrayBitmapPool;->mPoolNodesHead:Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget-object v0, p0, Lcom/sec/android/photos/data/SparseArrayBitmapPool;->mStore:Landroid/util/SparseArray;

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;

    iput-object v0, v1, Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;->nextInBucket:Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;

    iget-object v0, v1, Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;->nextInBucket:Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;

    if-eqz v0, :cond_1

    iget-object v0, v1, Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;->nextInBucket:Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;

    iput-object v1, v0, Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;->prevInBucket:Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;

    :cond_1
    iget-object v0, p0, Lcom/sec/android/photos/data/SparseArrayBitmapPool;->mStore:Landroid/util/SparseArray;

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, v1, Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;->nextInPool:Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;

    if-nez v0, :cond_2

    iput-object v1, p0, Lcom/sec/android/photos/data/SparseArrayBitmapPool;->mPoolNodesTail:Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;

    :goto_1
    iget v0, p0, Lcom/sec/android/photos/data/SparseArrayBitmapPool;->mSizeBytes:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/sec/android/photos/data/SparseArrayBitmapPool;->mSizeBytes:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    monitor-exit p0

    return v0

    :cond_2
    :try_start_1
    iget-object v0, v1, Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;->nextInPool:Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;

    iput-object v1, v0, Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;->prevInPool:Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_3
    move-object v1, v0

    goto :goto_0
.end method

.method public declared-synchronized setCapacity(I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/sec/android/photos/data/SparseArrayBitmapPool;->mCapacityBytes:I

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/photos/data/SparseArrayBitmapPool;->freeUpCapacity(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
