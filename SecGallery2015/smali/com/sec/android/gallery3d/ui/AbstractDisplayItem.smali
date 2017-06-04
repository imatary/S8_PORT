.class public abstract Lcom/sec/android/gallery3d/ui/AbstractDisplayItem;
.super Lcom/sec/android/gallery3d/ui/DisplayItem;
.source "AbstractDisplayItem.java"


# static fields
.field private static final STATE_CANCELING:I = 0x8

.field private static final STATE_ERROR:I = 0x10

.field private static final STATE_INVALID:I = 0x1

.field private static final STATE_REFRESHING:I = 0x20

.field private static final STATE_UPDATING:I = 0x4

.field private static final STATE_VALID:I = 0x2


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mImageRequested:Z

.field public final mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

.field private mRecycling:Z

.field private mState:I


# direct methods
.method protected constructor <init>(Lcom/sec/android/gallery3d/data/MediaItem;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/sec/android/gallery3d/ui/DisplayItem;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/gallery3d/ui/AbstractDisplayItem;->mState:I

    iput-boolean v1, p0, Lcom/sec/android/gallery3d/ui/AbstractDisplayItem;->mImageRequested:Z

    iput-boolean v1, p0, Lcom/sec/android/gallery3d/ui/AbstractDisplayItem;->mRecycling:Z

    iput-object p1, p0, Lcom/sec/android/gallery3d/ui/AbstractDisplayItem;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    if-nez p1, :cond_0

    const/16 v0, 0x10

    iput v0, p0, Lcom/sec/android/gallery3d/ui/AbstractDisplayItem;->mState:I

    :cond_0
    return-void
.end method

.method private inState(I)Z
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/ui/AbstractDisplayItem;->mState:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public cancelImageRequest()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/ui/AbstractDisplayItem;->mImageRequested:Z

    iget v0, p0, Lcom/sec/android/gallery3d/ui/AbstractDisplayItem;->mState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/sec/android/gallery3d/ui/AbstractDisplayItem;->mState:I

    const/16 v1, 0x20

    if-ne v0, v1, :cond_1

    :cond_0
    const/16 v0, 0x8

    iput v0, p0, Lcom/sec/android/gallery3d/ui/AbstractDisplayItem;->mState:I

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/ui/AbstractDisplayItem;->cancelLoadBitmap()V

    :cond_1
    return-void
.end method

.method protected abstract cancelLoadBitmap()V
.end method

.method public getRotation()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/AbstractDisplayItem;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/AbstractDisplayItem;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/MediaItem;->getRotation()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRequestInProgress()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/ui/AbstractDisplayItem;->mImageRequested:Z

    if-eqz v0, :cond_0

    const/16 v0, 0xc

    invoke-direct {p0, v0}, Lcom/sec/android/gallery3d/ui/AbstractDisplayItem;->inState(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isValid()Z
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/ui/AbstractDisplayItem;->mState:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract onBitmapAvailable()V
.end method

.method public recycle()V
    .locals 1

    const/16 v0, 0x2c

    invoke-direct {p0, v0}, Lcom/sec/android/gallery3d/ui/AbstractDisplayItem;->inState(I)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/AbstractDisplayItem;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/AbstractDisplayItem;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    instance-of v0, v0, Lcom/sec/android/gallery3d/data/LocalMediaItem;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/AbstractDisplayItem;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    instance-of v0, v0, Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/AbstractDisplayItem;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    instance-of v0, v0, Lcom/sec/android/gallery3d/data/UnionMediaItem;

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/AbstractDisplayItem;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0}, Lcom/sec/android/gallery3d/ui/AbstractDisplayItem;->recycleBitmap(Landroid/graphics/Bitmap;)V

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/gallery3d/ui/AbstractDisplayItem;->mBitmap:Landroid/graphics/Bitmap;

    :cond_2
    :goto_0
    return-void

    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/ui/AbstractDisplayItem;->mRecycling:Z

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/ui/AbstractDisplayItem;->cancelImageRequest()V

    goto :goto_0
.end method

.method protected abstract recycleBitmap(Landroid/graphics/Bitmap;)V
.end method

.method public requestImage()V
    .locals 2

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/gallery3d/ui/AbstractDisplayItem;->mImageRequested:Z

    iget v0, p0, Lcom/sec/android/gallery3d/ui/AbstractDisplayItem;->mState:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x4

    iput v0, p0, Lcom/sec/android/gallery3d/ui/AbstractDisplayItem;->mState:I

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/ui/AbstractDisplayItem;->startLoadBitmap()V

    :cond_0
    return-void
.end method

.method public requestImageLatency()V
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x4

    iput-boolean v1, p0, Lcom/sec/android/gallery3d/ui/AbstractDisplayItem;->mImageRequested:Z

    iget v0, p0, Lcom/sec/android/gallery3d/ui/AbstractDisplayItem;->mState:I

    if-ne v0, v1, :cond_1

    iput v2, p0, Lcom/sec/android/gallery3d/ui/AbstractDisplayItem;->mState:I

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/ui/AbstractDisplayItem;->startLoadBitmap()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/sec/android/gallery3d/ui/AbstractDisplayItem;->mState:I

    if-eq v0, v2, :cond_2

    iget v0, p0, Lcom/sec/android/gallery3d/ui/AbstractDisplayItem;->mState:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    :cond_2
    iput v2, p0, Lcom/sec/android/gallery3d/ui/AbstractDisplayItem;->mState:I

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/ui/AbstractDisplayItem;->startLoadBitmapLatency()V

    goto :goto_0
.end method

.method protected abstract startLoadBitmap()V
.end method

.method protected startLoadBitmapLatency()V
    .locals 0

    return-void
.end method

.method protected updateImage(Landroid/graphics/Bitmap;Z)V
    .locals 2

    const/4 v0, 0x2

    iget-boolean v1, p0, Lcom/sec/android/gallery3d/ui/AbstractDisplayItem;->mRecycling:Z

    if-nez v1, :cond_0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p2, :cond_2

    if-nez p1, :cond_2

    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/gallery3d/ui/AbstractDisplayItem;->mState:I

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/ui/AbstractDisplayItem;->mImageRequested:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/ui/AbstractDisplayItem;->requestImage()V

    goto :goto_0

    :cond_2
    iget v1, p0, Lcom/sec/android/gallery3d/ui/AbstractDisplayItem;->mState:I

    if-ne v1, v0, :cond_5

    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/AbstractDisplayItem;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/AbstractDisplayItem;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/gallery3d/ui/AbstractDisplayItem;->mBitmap:Landroid/graphics/Bitmap;

    :cond_3
    iput-object p1, p0, Lcom/sec/android/gallery3d/ui/AbstractDisplayItem;->mBitmap:Landroid/graphics/Bitmap;

    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/gallery3d/ui/AbstractDisplayItem;->onBitmapAvailable()V

    goto :goto_0

    :cond_5
    iput-object p1, p0, Lcom/sec/android/gallery3d/ui/AbstractDisplayItem;->mBitmap:Landroid/graphics/Bitmap;

    if-nez p1, :cond_6

    const/16 v0, 0x10

    :cond_6
    iput v0, p0, Lcom/sec/android/gallery3d/ui/AbstractDisplayItem;->mState:I

    goto :goto_1
.end method
