.class public Lcom/sec/samsung/gallery/view/image_manager/SingleImageItem;
.super Lcom/sec/android/gallery3d/ui/AbstractDisplayItem;
.source "SingleImageItem.java"

# interfaces
.implements Lcom/sec/android/gallery3d/util/FutureListener;
.implements Lcom/sec/android/gallery3d/util/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/samsung/gallery/view/image_manager/SingleImageItem$OnBitmapAvailableListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sec/android/gallery3d/ui/AbstractDisplayItem;",
        "Lcom/sec/android/gallery3d/util/FutureListener",
        "<",
        "Landroid/graphics/Bitmap;",
        ">;",
        "Lcom/sec/android/gallery3d/util/ThreadPool$Job",
        "<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SingleImageItem"


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mFuture:Lcom/sec/android/gallery3d/util/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sec/android/gallery3d/util/Future",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final mIndex:I

.field private mOnBitmapAvailableListener:Lcom/sec/samsung/gallery/view/image_manager/SingleImageItem$OnBitmapAvailableListener;

.field private final mThreadPool:Lcom/sec/android/gallery3d/util/ThreadPool;

.field private final mType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/gallery3d/data/MediaItem;IILcom/sec/samsung/gallery/view/image_manager/SingleImageItem$OnBitmapAvailableListener;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p2}, Lcom/sec/android/gallery3d/ui/AbstractDisplayItem;-><init>(Lcom/sec/android/gallery3d/data/MediaItem;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/image_manager/SingleImageItem;->mOnBitmapAvailableListener:Lcom/sec/samsung/gallery/view/image_manager/SingleImageItem$OnBitmapAvailableListener;

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/image_manager/SingleImageItem;->mBitmap:Landroid/graphics/Bitmap;

    iput p3, p0, Lcom/sec/samsung/gallery/view/image_manager/SingleImageItem;->mIndex:I

    check-cast p1, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getThreadPool()Lcom/sec/android/gallery3d/util/ThreadPool;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/image_manager/SingleImageItem;->mThreadPool:Lcom/sec/android/gallery3d/util/ThreadPool;

    iput-object p5, p0, Lcom/sec/samsung/gallery/view/image_manager/SingleImageItem;->mOnBitmapAvailableListener:Lcom/sec/samsung/gallery/view/image_manager/SingleImageItem$OnBitmapAvailableListener;

    iput p4, p0, Lcom/sec/samsung/gallery/view/image_manager/SingleImageItem;->mType:I

    return-void
.end method


# virtual methods
.method protected cancelLoadBitmap()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/image_manager/SingleImageItem;->mFuture:Lcom/sec/android/gallery3d/util/Future;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/image_manager/SingleImageItem;->mFuture:Lcom/sec/android/gallery3d/util/Future;

    invoke-interface {v0}, Lcom/sec/android/gallery3d/util/Future;->cancel()V

    :cond_0
    return-void
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/image_manager/SingleImageItem;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getItem()Lcom/sec/android/gallery3d/data/MediaItem;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/image_manager/SingleImageItem;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    return-object v0
.end method

.method protected onBitmapAvailable()V
    .locals 3

    const-string/jumbo v0, "SingleImageItem"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onBitmapAvailable ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/samsung/gallery/view/image_manager/SingleImageItem;->mIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/image_manager/SingleImageItem;->mOnBitmapAvailableListener:Lcom/sec/samsung/gallery/view/image_manager/SingleImageItem$OnBitmapAvailableListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/image_manager/SingleImageItem;->mOnBitmapAvailableListener:Lcom/sec/samsung/gallery/view/image_manager/SingleImageItem$OnBitmapAvailableListener;

    invoke-interface {v0}, Lcom/sec/samsung/gallery/view/image_manager/SingleImageItem$OnBitmapAvailableListener;->onBitmapAvailable()V

    :cond_0
    return-void
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

    invoke-interface {p1}, Lcom/sec/android/gallery3d/util/Future;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/image_manager/SingleImageItem;->mBitmap:Landroid/graphics/Bitmap;

    invoke-interface {p1}, Lcom/sec/android/gallery3d/util/Future;->isCancelled()Z

    move-result v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/image_manager/SingleImageItem;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v1, v0}, Lcom/sec/samsung/gallery/view/image_manager/SingleImageItem;->updateImage(Landroid/graphics/Bitmap;Z)V

    return-void
.end method

.method protected recycleBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    return-void
.end method

.method public run(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;)Landroid/graphics/Bitmap;
    .locals 4

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/image_manager/SingleImageItem;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/gallery3d/data/MediaItem;->requestImage(I)Lcom/sec/android/gallery3d/util/ThreadPool$Job;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/sec/android/gallery3d/util/ThreadPool$Job;->run(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public bridge synthetic run(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/view/image_manager/SingleImageItem;->run(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected startLoadBitmap()V
    .locals 3

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/image_manager/SingleImageItem;->mThreadPool:Lcom/sec/android/gallery3d/util/ThreadPool;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/image_manager/SingleImageItem;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    iget v2, p0, Lcom/sec/samsung/gallery/view/image_manager/SingleImageItem;->mType:I

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/data/MediaItem;->requestImage(I)Lcom/sec/android/gallery3d/util/ThreadPool$Job;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/sec/android/gallery3d/util/ThreadPool;->submit(Lcom/sec/android/gallery3d/util/ThreadPool$Job;Lcom/sec/android/gallery3d/util/FutureListener;)Lcom/sec/android/gallery3d/util/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/image_manager/SingleImageItem;->mFuture:Lcom/sec/android/gallery3d/util/Future;

    return-void
.end method
