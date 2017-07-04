.class Lcom/sec/android/photos/data/SparseArrayBitmapPool;
.super Ljava/lang/Object;
.source "SparseArrayBitmapPool.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;
    }
.end annotation


# instance fields
.field private final mCapacityBytes:I

.field private final mNodePool:Landroid/support/v4/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/Pools$Pool",
            "<",
            "Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;",
            ">;"
        }
    .end annotation
.end field

.field private mPoolNodesHead:Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;

.field private mPoolNodesTail:Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;

.field private mSizeBytes:I

.field private final mStore:Landroid/util/SparseArray;
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
.method public constructor <init>(ILandroid/support/v4/util/Pools$Pool;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/support/v4/util/Pools$Pool",
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

    new-instance v0, Landroid/support/v4/util/Pools$SimplePool;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Landroid/support/v4/util/Pools$SimplePool;-><init>(I)V

    iput-object v0, p0, Lcom/sec/android/photos/data/SparseArrayBitmapPool;->mNodePool:Landroid/support/v4/util/Pools$Pool;

    :goto_0
    return-void

    :cond_0
    iput-object p2, p0, Lcom/sec/android/photos/data/SparseArrayBitmapPool;->mNodePool:Landroid/support/v4/util/Pools$Pool;

    goto :goto_0
.end method

.method private freeUpCapacity(I)V
    .locals 3

    iget v1, p0, Lcom/sec/android/photos/data/SparseArrayBitmapPool;->mCapacityBytes:I

    sub-int v0, v1, p1

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

    invoke-static {p1}, Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;->access$000(Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;)Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {p1}, Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;->access$000(Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;)Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;

    move-result-object v0

    invoke-static {p1}, Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;->access$100(Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;)Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;->access$102(Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;)Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;

    :goto_0
    invoke-static {p1}, Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;->access$100(Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;)Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;->access$100(Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;)Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;

    move-result-object v0

    invoke-static {p1}, Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;->access$000(Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;)Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;->access$002(Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;)Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;

    :cond_0
    invoke-static {p1}, Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;->access$300(Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;)Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {p1}, Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;->access$300(Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;)Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;

    move-result-object v0

    invoke-static {p1}, Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;->access$400(Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;)Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;->access$402(Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;)Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;

    :goto_1
    invoke-static {p1}, Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;->access$400(Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;)Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-static {p1}, Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;->access$400(Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;)Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;

    move-result-object v0

    invoke-static {p1}, Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;->access$300(Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;)Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;->access$302(Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;)Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;

    :goto_2
    invoke-static {p1, v3}, Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;->access$102(Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;)Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;

    invoke-static {p1, v3}, Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;->access$402(Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;)Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;

    invoke-static {p1, v3}, Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;->access$002(Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;)Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;

    invoke-static {p1, v3}, Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;->access$302(Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;)Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;

    iget v0, p0, Lcom/sec/android/photos/data/SparseArrayBitmapPool;->mSizeBytes:I

    invoke-static {p1}, Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;->access$200(Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getAllocationByteCount()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/photos/data/SparseArrayBitmapPool;->mSizeBytes:I

    if-eqz p2, :cond_1

    invoke-static {p1}, Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;->access$200(Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    invoke-static {p1, v3}, Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;->access$202(Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/sec/android/photos/data/SparseArrayBitmapPool;->mNodePool:Landroid/support/v4/util/Pools$Pool;

    invoke-interface {v0, p1}, Landroid/support/v4/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    return-void

    :cond_2
    iget-object v0, p0, Lcom/sec/android/photos/data/SparseArrayBitmapPool;->mStore:Landroid/util/SparseArray;

    invoke-static {p1}, Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;->access$200(Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-static {p1}, Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;->access$100(Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;)Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    :cond_3
    invoke-static {p1}, Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;->access$400(Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;)Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/photos/data/SparseArrayBitmapPool;->mPoolNodesHead:Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;

    goto :goto_1

    :cond_4
    invoke-static {p1}, Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;->access$300(Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;)Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;

    move-result-object v0

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

.method public declared-synchronized get(IIZ)Landroid/graphics/Bitmap;
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/sec/android/photos/data/SparseArrayBitmapPool;->mStore:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;

    if-eqz p3, :cond_2

    :goto_0
    if-eqz v1, :cond_3

    invoke-static {v1}, Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;->access$200(Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-ne v2, p2, :cond_0

    invoke-static {v1}, Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;->access$200(Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/samsung/gallery/lib/factory/BitmapWrapper;->isGLCompressed(Landroid/graphics/Bitmap;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v1}, Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;->access$200(Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;)Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/sec/android/photos/data/SparseArrayBitmapPool;->unlinkAndRecycleNode(Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    invoke-static {v1}, Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;->access$100(Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;)Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;

    move-result-object v1

    goto :goto_0

    :cond_1
    invoke-static {v1}, Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;->access$100(Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;)Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;

    move-result-object v1

    :cond_2
    if-eqz v1, :cond_3

    invoke-static {v1}, Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;->access$200(Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-ne v2, p2, :cond_1

    invoke-static {v1}, Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;->access$200(Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/samsung/gallery/lib/factory/BitmapWrapper;->isGLCompressed(Landroid/graphics/Bitmap;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v1}, Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;->access$200(Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;)Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/sec/android/photos/data/SparseArrayBitmapPool;->unlinkAndRecycleNode(Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public declared-synchronized put(Landroid/graphics/Bitmap;)Z
    .locals 4

    monitor-enter p0

    if-nez p1, :cond_0

    const/4 v3, 0x0

    :goto_0
    monitor-exit p0

    return v3

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getAllocationByteCount()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/photos/data/SparseArrayBitmapPool;->freeUpCapacity(I)V

    iget-object v3, p0, Lcom/sec/android/photos/data/SparseArrayBitmapPool;->mNodePool:Landroid/support/v4/util/Pools$Pool;

    invoke-interface {v3}, Landroid/support/v4/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;

    if-nez v2, :cond_1

    new-instance v2, Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;

    invoke-direct {v2}, Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;-><init>()V

    :cond_1
    invoke-static {v2, p1}, Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;->access$202(Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;->access$002(Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;)Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;->access$302(Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;)Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;

    iget-object v3, p0, Lcom/sec/android/photos/data/SparseArrayBitmapPool;->mPoolNodesHead:Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;

    invoke-static {v2, v3}, Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;->access$402(Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;)Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;

    iput-object v2, p0, Lcom/sec/android/photos/data/SparseArrayBitmapPool;->mPoolNodesHead:Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget-object v3, p0, Lcom/sec/android/photos/data/SparseArrayBitmapPool;->mStore:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;

    invoke-static {v2, v3}, Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;->access$102(Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;)Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;

    invoke-static {v2}, Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;->access$100(Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;)Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-static {v2}, Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;->access$100(Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;)Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;->access$002(Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;)Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;

    :cond_2
    iget-object v3, p0, Lcom/sec/android/photos/data/SparseArrayBitmapPool;->mStore:Landroid/util/SparseArray;

    invoke-virtual {v3, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-static {v2}, Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;->access$400(Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;)Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;

    move-result-object v3

    if-nez v3, :cond_3

    iput-object v2, p0, Lcom/sec/android/photos/data/SparseArrayBitmapPool;->mPoolNodesTail:Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;

    :goto_1
    iget v3, p0, Lcom/sec/android/photos/data/SparseArrayBitmapPool;->mSizeBytes:I

    add-int/2addr v3, v0

    iput v3, p0, Lcom/sec/android/photos/data/SparseArrayBitmapPool;->mSizeBytes:I

    const/4 v3, 0x1

    goto :goto_0

    :cond_3
    invoke-static {v2}, Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;->access$400(Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;)Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;->access$302(Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;)Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method
