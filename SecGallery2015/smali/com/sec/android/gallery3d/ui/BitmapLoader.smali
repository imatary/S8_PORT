.class public abstract Lcom/sec/android/gallery3d/ui/BitmapLoader;
.super Ljava/lang/Object;
.source "BitmapLoader.java"

# interfaces
.implements Lcom/sec/android/gallery3d/util/FutureListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/sec/android/gallery3d/util/FutureListener",
        "<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# static fields
.field private static final STATE_ERROR:I = 0x3

.field private static final STATE_INIT:I = 0x0

.field private static final STATE_LOADED:I = 0x2

.field private static final STATE_RECYCLED:I = 0x4

.field private static final STATE_REQUESTED:I = 0x1

.field private static final TAG:Ljava/lang/String; = "BitmapLoader"


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mState:I

.field private mTask:Lcom/sec/android/gallery3d/util/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sec/android/gallery3d/util/Future",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/gallery3d/ui/BitmapLoader;->mState:I

    return-void
.end method


# virtual methods
.method public declared-synchronized cancelLoad()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/sec/android/gallery3d/ui/BitmapLoader;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/gallery3d/ui/BitmapLoader;->mState:I

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/BitmapLoader;->mTask:Lcom/sec/android/gallery3d/util/Future;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/BitmapLoader;->mTask:Lcom/sec/android/gallery3d/util/Future;

    invoke-interface {v0}, Lcom/sec/android/gallery3d/util/Future;->cancel()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/BitmapLoader;->mBitmap:Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isRequestInProgress()Z
    .locals 2

    const/4 v0, 0x1

    monitor-enter p0

    :try_start_0
    iget v1, p0, Lcom/sec/android/gallery3d/ui/BitmapLoader;->mState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v1, v0, :cond_0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onFutureDone(Lcom/sec/android/gallery3d/util/Future;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/gallery3d/util/Future",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/sec/android/gallery3d/ui/BitmapLoader;->mTask:Lcom/sec/android/gallery3d/util/Future;

    invoke-interface {p1}, Lcom/sec/android/gallery3d/util/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/sec/android/gallery3d/ui/BitmapLoader;->mBitmap:Landroid/graphics/Bitmap;

    iget v0, p0, Lcom/sec/android/gallery3d/ui/BitmapLoader;->mState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/BitmapLoader;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/android/photos/data/GalleryBitmapPool;->getInstance()Lcom/sec/android/photos/data/GalleryBitmapPool;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/BitmapLoader;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/sec/android/photos/data/GalleryBitmapPool;->put(Landroid/graphics/Bitmap;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/gallery3d/ui/BitmapLoader;->mBitmap:Landroid/graphics/Bitmap;

    :cond_0
    monitor-exit p0

    :goto_0
    return-void

    :cond_1
    invoke-interface {p1}, Lcom/sec/android/gallery3d/util/Future;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/BitmapLoader;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_3

    iget v0, p0, Lcom/sec/android/gallery3d/ui/BitmapLoader;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/ui/BitmapLoader;->submitBitmapTask()Lcom/sec/android/gallery3d/util/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/ui/BitmapLoader;->mTask:Lcom/sec/android/gallery3d/util/Future;

    :cond_2
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/BitmapLoader;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_4

    const/4 v0, 0x3

    :goto_1
    iput v0, p0, Lcom/sec/android/gallery3d/ui/BitmapLoader;->mState:I

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/ui/BitmapLoader;->onLoadComplete()V

    goto :goto_0

    :cond_4
    const/4 v0, 0x2

    goto :goto_1
.end method

.method protected abstract onLoadComplete()V
.end method

.method public declared-synchronized recycle()V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x4

    :try_start_0
    iput v0, p0, Lcom/sec/android/gallery3d/ui/BitmapLoader;->mState:I

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/BitmapLoader;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/android/photos/data/GalleryBitmapPool;->getInstance()Lcom/sec/android/photos/data/GalleryBitmapPool;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/BitmapLoader;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/sec/android/photos/data/GalleryBitmapPool;->put(Landroid/graphics/Bitmap;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/gallery3d/ui/BitmapLoader;->mBitmap:Landroid/graphics/Bitmap;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/BitmapLoader;->mTask:Lcom/sec/android/gallery3d/util/Future;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/BitmapLoader;->mTask:Lcom/sec/android/gallery3d/util/Future;

    invoke-interface {v0}, Lcom/sec/android/gallery3d/util/Future;->cancel()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setBitmap(Landroid/graphics/Bitmap;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/sec/android/gallery3d/ui/BitmapLoader;->mBitmap:Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized startLoad()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/sec/android/gallery3d/ui/BitmapLoader;->mState:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/gallery3d/ui/BitmapLoader;->mState:I

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/BitmapLoader;->mTask:Lcom/sec/android/gallery3d/util/Future;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/ui/BitmapLoader;->submitBitmapTask()Lcom/sec/android/gallery3d/util/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/ui/BitmapLoader;->mTask:Lcom/sec/android/gallery3d/util/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected abstract submitBitmapTask()Lcom/sec/android/gallery3d/util/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sec/android/gallery3d/util/Future",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end method
