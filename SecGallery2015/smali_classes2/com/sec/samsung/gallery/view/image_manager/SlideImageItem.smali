.class public Lcom/sec/samsung/gallery/view/image_manager/SlideImageItem;
.super Lcom/sec/android/gallery3d/ui/AbstractDisplayItem;
.source "SlideImageItem.java"

# interfaces
.implements Lcom/sec/android/gallery3d/util/FutureListener;
.implements Lcom/sec/android/gallery3d/util/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/samsung/gallery/view/image_manager/SlideImageItem$SlideShowFaceInfo;,
        Lcom/sec/samsung/gallery/view/image_manager/SlideImageItem$LargeThumbnailJob;,
        Lcom/sec/samsung/gallery/view/image_manager/SlideImageItem$OnSlideImageItemListener;
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
.field private static final SLIDESHOW_IMAGE_SIZE:I = 0x400

.field private static final TAG:Ljava/lang/String; = "SlideImageItem"


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private final mContext:Landroid/content/Context;

.field private mFacesInfo:[Lcom/sec/samsung/gallery/view/image_manager/SlideImageItem$SlideShowFaceInfo;

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

.field private final mOnSlideImageItemListener:Lcom/sec/samsung/gallery/view/image_manager/SlideImageItem$OnSlideImageItemListener;

.field private final mThreadPool:Lcom/sec/android/gallery3d/util/ThreadPool;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/gallery3d/data/MediaItem;ILcom/sec/samsung/gallery/view/image_manager/SlideImageItem$OnSlideImageItemListener;)V
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0, p2}, Lcom/sec/android/gallery3d/ui/AbstractDisplayItem;-><init>(Lcom/sec/android/gallery3d/data/MediaItem;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/image_manager/SlideImageItem;->mBitmap:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/image_manager/SlideImageItem;->mFacesInfo:[Lcom/sec/samsung/gallery/view/image_manager/SlideImageItem$SlideShowFaceInfo;

    const-string/jumbo v0, "SlideImageItem"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "create SlideImageItem, index="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p4, p0, Lcom/sec/samsung/gallery/view/image_manager/SlideImageItem;->mOnSlideImageItemListener:Lcom/sec/samsung/gallery/view/image_manager/SlideImageItem$OnSlideImageItemListener;

    iput p3, p0, Lcom/sec/samsung/gallery/view/image_manager/SlideImageItem;->mIndex:I

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/image_manager/SlideImageItem;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/image_manager/SlideImageItem;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getThreadPool()Lcom/sec/android/gallery3d/util/ThreadPool;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/image_manager/SlideImageItem;->mThreadPool:Lcom/sec/android/gallery3d/util/ThreadPool;

    return-void
.end method


# virtual methods
.method protected cancelLoadBitmap()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/image_manager/SlideImageItem;->mFuture:Lcom/sec/android/gallery3d/util/Future;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/image_manager/SlideImageItem;->mFuture:Lcom/sec/android/gallery3d/util/Future;

    invoke-interface {v0}, Lcom/sec/android/gallery3d/util/Future;->cancel()V

    :cond_0
    return-void
.end method

.method public createFaceInfo(I)V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/image_manager/SlideImageItem;->mFacesInfo:[Lcom/sec/samsung/gallery/view/image_manager/SlideImageItem$SlideShowFaceInfo;

    new-instance v1, Lcom/sec/samsung/gallery/view/image_manager/SlideImageItem$SlideShowFaceInfo;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/view/image_manager/SlideImageItem$SlideShowFaceInfo;-><init>(Lcom/sec/samsung/gallery/view/image_manager/SlideImageItem;)V

    aput-object v1, v0, p1

    return-void
.end method

.method public createFacesInfo(I)V
    .locals 1

    new-array v0, p1, [Lcom/sec/samsung/gallery/view/image_manager/SlideImageItem$SlideShowFaceInfo;

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/image_manager/SlideImageItem;->mFacesInfo:[Lcom/sec/samsung/gallery/view/image_manager/SlideImageItem$SlideShowFaceInfo;

    return-void
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/image_manager/SlideImageItem;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getFaceInfo()[Lcom/sec/samsung/gallery/view/image_manager/SlideImageItem$SlideShowFaceInfo;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/image_manager/SlideImageItem;->mFacesInfo:[Lcom/sec/samsung/gallery/view/image_manager/SlideImageItem$SlideShowFaceInfo;

    return-object v0
.end method

.method public getIndex()I
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/view/image_manager/SlideImageItem;->mIndex:I

    return v0
.end method

.method protected onBitmapAvailable()V
    .locals 3

    const-string/jumbo v0, "SlideImageItem"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onBitmapAvailable ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/samsung/gallery/view/image_manager/SlideImageItem;->mIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/image_manager/SlideImageItem;->mOnSlideImageItemListener:Lcom/sec/samsung/gallery/view/image_manager/SlideImageItem$OnSlideImageItemListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/image_manager/SlideImageItem;->mOnSlideImageItemListener:Lcom/sec/samsung/gallery/view/image_manager/SlideImageItem$OnSlideImageItemListener;

    invoke-interface {v0, p0}, Lcom/sec/samsung/gallery/view/image_manager/SlideImageItem$OnSlideImageItemListener;->onBitmapAvailable(Lcom/sec/samsung/gallery/view/image_manager/SlideImageItem;)V

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

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/image_manager/SlideImageItem;->mBitmap:Landroid/graphics/Bitmap;

    invoke-interface {p1}, Lcom/sec/android/gallery3d/util/Future;->isCancelled()Z

    move-result v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/image_manager/SlideImageItem;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v1, v0}, Lcom/sec/samsung/gallery/view/image_manager/SlideImageItem;->updateImage(Landroid/graphics/Bitmap;Z)V

    return-void
.end method

.method protected recycleBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    return-void
.end method

.method public run(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;)Landroid/graphics/Bitmap;
    .locals 3

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/image_manager/SlideImageItem;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/data/MediaItem;->requestImage(I)Lcom/sec/android/gallery3d/util/ThreadPool$Job;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/sec/android/gallery3d/util/ThreadPool$Job;->run(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    return-object v1
.end method

.method public bridge synthetic run(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/view/image_manager/SlideImageItem;->run(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/image_manager/SlideImageItem;->mBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setFaceInfo(IFFF)V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/image_manager/SlideImageItem;->mFacesInfo:[Lcom/sec/samsung/gallery/view/image_manager/SlideImageItem$SlideShowFaceInfo;

    aget-object v0, v0, p1

    iput p2, v0, Lcom/sec/samsung/gallery/view/image_manager/SlideImageItem$SlideShowFaceInfo;->mRatioX:F

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/image_manager/SlideImageItem;->mFacesInfo:[Lcom/sec/samsung/gallery/view/image_manager/SlideImageItem$SlideShowFaceInfo;

    aget-object v0, v0, p1

    iput p3, v0, Lcom/sec/samsung/gallery/view/image_manager/SlideImageItem$SlideShowFaceInfo;->mRatioY:F

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/image_manager/SlideImageItem;->mFacesInfo:[Lcom/sec/samsung/gallery/view/image_manager/SlideImageItem$SlideShowFaceInfo;

    aget-object v0, v0, p1

    iput p4, v0, Lcom/sec/samsung/gallery/view/image_manager/SlideImageItem$SlideShowFaceInfo;->mScaleValue:F

    return-void
.end method

.method protected startLoadBitmap()V
    .locals 4

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/image_manager/SlideImageItem;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getDrmUtil()Lcom/sec/android/gallery3d/util/ImageDRMUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/image_manager/SlideImageItem;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/util/ImageDRMUtil;->verifyRightsForSlideShow(Lcom/sec/android/gallery3d/data/MediaItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/android/gallery3d/util/ResourceManager;->getInstance()Lcom/sec/android/gallery3d/util/ResourceManager;

    move-result-object v1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/image_manager/SlideImageItem;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sec/android/gallery3d/util/ResourceManager;->getBrokenThumbBG(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/image_manager/SlideImageItem;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/image_manager/SlideImageItem;->onBitmapAvailable()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/image_manager/SlideImageItem;->mThreadPool:Lcom/sec/android/gallery3d/util/ThreadPool;

    new-instance v1, Lcom/sec/samsung/gallery/view/image_manager/SlideImageItem$LargeThumbnailJob;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/image_manager/SlideImageItem;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    const/16 v3, 0x400

    invoke-direct {v1, v2, v3}, Lcom/sec/samsung/gallery/view/image_manager/SlideImageItem$LargeThumbnailJob;-><init>(Lcom/sec/android/gallery3d/data/MediaItem;I)V

    invoke-virtual {v0, v1, p0}, Lcom/sec/android/gallery3d/util/ThreadPool;->submit(Lcom/sec/android/gallery3d/util/ThreadPool$Job;Lcom/sec/android/gallery3d/util/FutureListener;)Lcom/sec/android/gallery3d/util/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/image_manager/SlideImageItem;->mFuture:Lcom/sec/android/gallery3d/util/Future;

    goto :goto_0
.end method
