.class public Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;
.super Lcom/sec/android/gallery3d/ui/AbstractDisplayItem;
.source "ComposeImageItem.java"

# interfaces
.implements Lcom/sec/android/gallery3d/util/FutureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem$OnBitmapAvailableListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sec/android/gallery3d/ui/AbstractDisplayItem;",
        "Lcom/sec/android/gallery3d/util/FutureListener",
        "<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEFAULT_AVERAGE_COLOR:I = -0xcdd2d3


# instance fields
.field public final mAverageColor:[I

.field public mBitmap:Landroid/graphics/Bitmap;

.field private mCanceled:Z

.field public final mCommentCountView:Lcom/sec/android/gallery3d/glcore/GlView;

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

.field public mGlView:Lcom/sec/android/gallery3d/glcore/GlView;

.field public final mIndex:I

.field public final mLastCommentView:Lcom/sec/android/gallery3d/glcore/GlView;

.field public mLikeByMe:I

.field public final mLikeCountView:Lcom/sec/android/gallery3d/glcore/GlView;

.field public mMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

.field private mOnBitmapAvailableListener:Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem$OnBitmapAvailableListener;

.field public final mOwnerInfoView:Lcom/sec/android/gallery3d/glcore/GlView;

.field private mThmType:I

.field private final mThreadPool:Lcom/sec/android/gallery3d/util/ThreadPool;

.field public final mType:I

.field private mUrgent:Z

.field private mZoomLevel:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/gallery3d/data/MediaItem;IIILandroid/graphics/Bitmap;)V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p2}, Lcom/sec/android/gallery3d/ui/AbstractDisplayItem;-><init>(Lcom/sec/android/gallery3d/data/MediaItem;)V

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;->mOnBitmapAvailableListener:Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem$OnBitmapAvailableListener;

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;->mMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;->mGlView:Lcom/sec/android/gallery3d/glcore/GlView;

    new-instance v0, Lcom/sec/android/gallery3d/glcore/GlView;

    invoke-direct {v0}, Lcom/sec/android/gallery3d/glcore/GlView;-><init>()V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;->mOwnerInfoView:Lcom/sec/android/gallery3d/glcore/GlView;

    new-instance v0, Lcom/sec/android/gallery3d/glcore/GlView;

    invoke-direct {v0}, Lcom/sec/android/gallery3d/glcore/GlView;-><init>()V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;->mLikeCountView:Lcom/sec/android/gallery3d/glcore/GlView;

    new-instance v0, Lcom/sec/android/gallery3d/glcore/GlView;

    invoke-direct {v0}, Lcom/sec/android/gallery3d/glcore/GlView;-><init>()V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;->mCommentCountView:Lcom/sec/android/gallery3d/glcore/GlView;

    new-instance v0, Lcom/sec/android/gallery3d/glcore/GlView;

    invoke-direct {v0}, Lcom/sec/android/gallery3d/glcore/GlView;-><init>()V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;->mLastCommentView:Lcom/sec/android/gallery3d/glcore/GlView;

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;->mBitmap:Landroid/graphics/Bitmap;

    iput-boolean v2, p0, Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;->mCanceled:Z

    iput-boolean v2, p0, Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;->mUrgent:Z

    new-array v0, v3, [I

    const v1, -0xcdd2d3

    aput v1, v0, v2

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;->mAverageColor:[I

    if-ne p4, v3, :cond_1

    iput v5, p0, Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;->mThmType:I

    :cond_0
    :goto_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;->mZoomLevel:I

    iput p5, p0, Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;->mType:I

    iput p3, p0, Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;->mIndex:I

    iput-object p6, p0, Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;->mBitmap:Landroid/graphics/Bitmap;

    check-cast p1, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getThreadPool()Lcom/sec/android/gallery3d/util/ThreadPool;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;->mThreadPool:Lcom/sec/android/gallery3d/util/ThreadPool;

    return-void

    :cond_1
    if-ne p4, v4, :cond_2

    iput v4, p0, Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;->mThmType:I

    goto :goto_0

    :cond_2
    if-ne p4, v5, :cond_0

    iput v3, p0, Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;->mThmType:I

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/gallery3d/data/MediaItem;IIIZLcom/sec/samsung/gallery/view/image_manager/ComposeImageItem$OnBitmapAvailableListener;)V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p2}, Lcom/sec/android/gallery3d/ui/AbstractDisplayItem;-><init>(Lcom/sec/android/gallery3d/data/MediaItem;)V

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;->mOnBitmapAvailableListener:Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem$OnBitmapAvailableListener;

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;->mMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;->mGlView:Lcom/sec/android/gallery3d/glcore/GlView;

    new-instance v0, Lcom/sec/android/gallery3d/glcore/GlView;

    invoke-direct {v0}, Lcom/sec/android/gallery3d/glcore/GlView;-><init>()V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;->mOwnerInfoView:Lcom/sec/android/gallery3d/glcore/GlView;

    new-instance v0, Lcom/sec/android/gallery3d/glcore/GlView;

    invoke-direct {v0}, Lcom/sec/android/gallery3d/glcore/GlView;-><init>()V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;->mLikeCountView:Lcom/sec/android/gallery3d/glcore/GlView;

    new-instance v0, Lcom/sec/android/gallery3d/glcore/GlView;

    invoke-direct {v0}, Lcom/sec/android/gallery3d/glcore/GlView;-><init>()V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;->mCommentCountView:Lcom/sec/android/gallery3d/glcore/GlView;

    new-instance v0, Lcom/sec/android/gallery3d/glcore/GlView;

    invoke-direct {v0}, Lcom/sec/android/gallery3d/glcore/GlView;-><init>()V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;->mLastCommentView:Lcom/sec/android/gallery3d/glcore/GlView;

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;->mBitmap:Landroid/graphics/Bitmap;

    iput-boolean v2, p0, Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;->mCanceled:Z

    iput-boolean v2, p0, Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;->mUrgent:Z

    new-array v0, v3, [I

    const v1, -0xcdd2d3

    aput v1, v0, v2

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;->mAverageColor:[I

    if-ne p4, v3, :cond_1

    iput v5, p0, Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;->mThmType:I

    :cond_0
    :goto_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;->mZoomLevel:I

    iput p5, p0, Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;->mType:I

    iput p3, p0, Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;->mIndex:I

    check-cast p1, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getThreadPool()Lcom/sec/android/gallery3d/util/ThreadPool;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;->mThreadPool:Lcom/sec/android/gallery3d/util/ThreadPool;

    iput-object p7, p0, Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;->mOnBitmapAvailableListener:Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem$OnBitmapAvailableListener;

    iput-boolean p6, p0, Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;->mUrgent:Z

    return-void

    :cond_1
    if-ne p4, v4, :cond_2

    iput v4, p0, Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;->mThmType:I

    goto :goto_0

    :cond_2
    if-ne p4, v5, :cond_0

    iput v3, p0, Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;->mThmType:I

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/gallery3d/data/MediaSet;Lcom/sec/android/gallery3d/data/MediaItem;IIIILcom/sec/samsung/gallery/view/image_manager/ComposeImageItem$OnBitmapAvailableListener;)V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p3}, Lcom/sec/android/gallery3d/ui/AbstractDisplayItem;-><init>(Lcom/sec/android/gallery3d/data/MediaItem;)V

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;->mOnBitmapAvailableListener:Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem$OnBitmapAvailableListener;

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;->mMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;->mGlView:Lcom/sec/android/gallery3d/glcore/GlView;

    new-instance v0, Lcom/sec/android/gallery3d/glcore/GlView;

    invoke-direct {v0}, Lcom/sec/android/gallery3d/glcore/GlView;-><init>()V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;->mOwnerInfoView:Lcom/sec/android/gallery3d/glcore/GlView;

    new-instance v0, Lcom/sec/android/gallery3d/glcore/GlView;

    invoke-direct {v0}, Lcom/sec/android/gallery3d/glcore/GlView;-><init>()V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;->mLikeCountView:Lcom/sec/android/gallery3d/glcore/GlView;

    new-instance v0, Lcom/sec/android/gallery3d/glcore/GlView;

    invoke-direct {v0}, Lcom/sec/android/gallery3d/glcore/GlView;-><init>()V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;->mCommentCountView:Lcom/sec/android/gallery3d/glcore/GlView;

    new-instance v0, Lcom/sec/android/gallery3d/glcore/GlView;

    invoke-direct {v0}, Lcom/sec/android/gallery3d/glcore/GlView;-><init>()V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;->mLastCommentView:Lcom/sec/android/gallery3d/glcore/GlView;

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;->mBitmap:Landroid/graphics/Bitmap;

    iput-boolean v2, p0, Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;->mCanceled:Z

    iput-boolean v2, p0, Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;->mUrgent:Z

    new-array v0, v3, [I

    const v1, -0xcdd2d3

    aput v1, v0, v2

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;->mAverageColor:[I

    iput-object p2, p0, Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;->mMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    if-ne p5, v3, :cond_1

    iput v5, p0, Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;->mThmType:I

    :cond_0
    :goto_0
    iput p7, p0, Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;->mZoomLevel:I

    iput p6, p0, Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;->mType:I

    iput p4, p0, Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;->mIndex:I

    check-cast p1, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getThreadPool()Lcom/sec/android/gallery3d/util/ThreadPool;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;->mThreadPool:Lcom/sec/android/gallery3d/util/ThreadPool;

    iput-object p8, p0, Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;->mOnBitmapAvailableListener:Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem$OnBitmapAvailableListener;

    return-void

    :cond_1
    if-ne p5, v4, :cond_2

    iput v4, p0, Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;->mThmType:I

    goto :goto_0

    :cond_2
    if-ne p5, v5, :cond_0

    iput v3, p0, Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;->mThmType:I

    goto :goto_0
.end method


# virtual methods
.method protected cancelLoadBitmap()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;->mCanceled:Z

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;->mFuture:Lcom/sec/android/gallery3d/util/Future;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;->mFuture:Lcom/sec/android/gallery3d/util/Future;

    invoke-interface {v0}, Lcom/sec/android/gallery3d/util/Future;->cancel()V

    :cond_0
    return-void
.end method

.method public getItem()Lcom/sec/android/gallery3d/data/MediaItem;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    return-object v0
.end method

.method public getZoomLevel()I
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;->mZoomLevel:I

    return v0
.end method

.method public isUrgent()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;->mUrgent:Z

    return v0
.end method

.method protected onBitmapAvailable()V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;->mCanceled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;->mOnBitmapAvailableListener:Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem$OnBitmapAvailableListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;->mOnBitmapAvailableListener:Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem$OnBitmapAvailableListener;

    invoke-interface {v0, p0}, Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem$OnBitmapAvailableListener;->onBitmapAvailable(Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;)V

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

    if-eqz v1, :cond_0

    invoke-interface {p1}, Lcom/sec/android/gallery3d/util/Future;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;->mBitmap:Landroid/graphics/Bitmap;

    :cond_0
    invoke-interface {p1}, Lcom/sec/android/gallery3d/util/Future;->isCancelled()Z

    move-result v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v1, v0}, Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;->updateImage(Landroid/graphics/Bitmap;Z)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;->mThreadPool:Lcom/sec/android/gallery3d/util/ThreadPool;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/util/ThreadPool;->getQueuedCount()I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;->mOnBitmapAvailableListener:Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem$OnBitmapAvailableListener;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;->mOnBitmapAvailableListener:Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem$OnBitmapAvailableListener;

    invoke-interface {v1}, Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem$OnBitmapAvailableListener;->onAllContentReady()V

    :cond_1
    return-void
.end method

.method protected recycleBitmap(Landroid/graphics/Bitmap;)V
    .locals 1

    invoke-static {}, Lcom/sec/android/photos/data/GalleryBitmapPool;->getInstance()Lcom/sec/android/photos/data/GalleryBitmapPool;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/photos/data/GalleryBitmapPool;->put(Landroid/graphics/Bitmap;)Z

    return-void
.end method

.method protected startLoadBitmap()V
    .locals 4

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;->mUrgent:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;->mThreadPool:Lcom/sec/android/gallery3d/util/ThreadPool;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    iget v2, p0, Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;->mThmType:I

    sget-object v3, Lcom/sec/android/gallery3d/data/MediaItem$RequestAttributes;->WITHOUT_ATTRIBUTES:Lcom/sec/android/gallery3d/data/MediaItem$RequestAttributes;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/gallery3d/data/MediaItem;->requestImage(ILcom/sec/android/gallery3d/data/MediaItem$RequestAttributes;)Lcom/sec/android/gallery3d/util/ThreadPool$Job;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/sec/android/gallery3d/util/ThreadPool;->submitUrgent(Lcom/sec/android/gallery3d/util/ThreadPool$Job;Lcom/sec/android/gallery3d/util/FutureListener;)Lcom/sec/android/gallery3d/util/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;->mFuture:Lcom/sec/android/gallery3d/util/Future;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;->mThreadPool:Lcom/sec/android/gallery3d/util/ThreadPool;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    iget v2, p0, Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;->mThmType:I

    sget-object v3, Lcom/sec/android/gallery3d/data/MediaItem$RequestAttributes;->WITHOUT_ATTRIBUTES:Lcom/sec/android/gallery3d/data/MediaItem$RequestAttributes;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/gallery3d/data/MediaItem;->requestImage(ILcom/sec/android/gallery3d/data/MediaItem$RequestAttributes;)Lcom/sec/android/gallery3d/util/ThreadPool$Job;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/sec/android/gallery3d/util/ThreadPool;->submit(Lcom/sec/android/gallery3d/util/ThreadPool$Job;Lcom/sec/android/gallery3d/util/FutureListener;)Lcom/sec/android/gallery3d/util/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;->mFuture:Lcom/sec/android/gallery3d/util/Future;

    goto :goto_0
.end method

.method protected startLoadBitmapLatency()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;->mThreadPool:Lcom/sec/android/gallery3d/util/ThreadPool;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;->mFuture:Lcom/sec/android/gallery3d/util/Future;

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/util/ThreadPool;->submitToLast(Lcom/sec/android/gallery3d/util/Future;)Lcom/sec/android/gallery3d/util/Future;

    return-void
.end method
