.class public Lcom/sec/android/gallery3d/interfaces/GalleryLibModel;
.super Ljava/lang/Object;
.source "GalleryLibModel.java"

# interfaces
.implements Lcom/sec/android/gallery3d/interfaces/LibraryModel;


# instance fields
.field private final mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;


# direct methods
.method public constructor <init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/gallery3d/interfaces/GalleryLibModel;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-void
.end method


# virtual methods
.method public getBurstShotCount(Lcom/sec/android/gallery3d/data/MediaItem;)I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/interfaces/GalleryLibModel;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v0, p1}, Lcom/sec/android/gallery3d/util/BurstImageUtils;->getBurstShotCount(Landroid/content/Context;Lcom/sec/android/gallery3d/data/MediaItem;)I

    move-result v0

    return v0
.end method

.method public getRectOfAllFaces(Lcom/sec/android/gallery3d/data/MediaItem;)Landroid/graphics/RectF;
    .locals 1

    instance-of v0, p1, Lcom/sec/android/gallery3d/data/LocalImage;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/sec/android/gallery3d/data/LocalImage;

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/LocalImage;->getRectOfAllFaces()Landroid/graphics/RectF;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    instance-of v0, p1, Lcom/sec/android/gallery3d/data/UnionImage;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/sec/android/gallery3d/data/UnionImage;

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/UnionImage;->getRectOfAllFaces()Landroid/graphics/RectF;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isBurstShotImage(Lcom/sec/android/gallery3d/data/MediaItem;Ljava/lang/String;)Z
    .locals 1

    instance-of v0, p1, Lcom/sec/android/gallery3d/remote/scloud/SCloudImage;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/sec/android/gallery3d/remote/scloud/SCloudImage;

    invoke-virtual {p1, p2}, Lcom/sec/android/gallery3d/remote/scloud/SCloudImage;->isBurstShotImage(Ljava/lang/String;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    instance-of v0, p1, Lcom/sec/android/gallery3d/data/UnionSCloudImage;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/sec/android/gallery3d/data/UnionSCloudImage;

    invoke-virtual {p1, p2}, Lcom/sec/android/gallery3d/data/UnionSCloudImage;->isBurstShotImage(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :cond_1
    instance-of v0, p1, Lcom/sec/android/gallery3d/data/UnionLocalImage;

    if-eqz v0, :cond_2

    check-cast p1, Lcom/sec/android/gallery3d/data/UnionLocalImage;

    invoke-virtual {p1, p2}, Lcom/sec/android/gallery3d/data/UnionLocalImage;->isBurstShotImage(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/sec/android/gallery3d/data/LocalImage;

    invoke-virtual {p1, p2}, Lcom/sec/android/gallery3d/data/LocalImage;->isBurstShotImage(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public isFastMotionVideo(Lcom/sec/android/gallery3d/data/MediaItem;)Z
    .locals 2

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->getRecordingMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFlipVideo(Lcom/sec/android/gallery3d/data/MediaItem;)Z
    .locals 2

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->getRecordingMode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isHyperMotionVideo(Lcom/sec/android/gallery3d/data/MediaItem;)Z
    .locals 2

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->getRecordingMode()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLocalImage(Lcom/sec/android/gallery3d/data/MediaItem;)Z
    .locals 1

    instance-of v0, p1, Lcom/sec/android/gallery3d/data/LocalImage;

    if-nez v0, :cond_0

    instance-of v0, p1, Lcom/sec/android/gallery3d/data/UnionLocalImage;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLocalMediaItem(Lcom/sec/android/gallery3d/data/MediaItem;)Z
    .locals 1

    instance-of v0, p1, Lcom/sec/android/gallery3d/data/LocalMediaItem;

    if-nez v0, :cond_0

    instance-of v0, p1, Lcom/sec/android/gallery3d/data/UnionLocalItem;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLocalVideo(Lcom/sec/android/gallery3d/data/MediaItem;)Z
    .locals 1

    instance-of v0, p1, Lcom/sec/android/gallery3d/data/LocalVideo;

    if-nez v0, :cond_0

    instance-of v0, p1, Lcom/sec/android/gallery3d/data/UnionLocalVideo;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMTPImage(Lcom/sec/android/gallery3d/data/MediaItem;)Z
    .locals 1

    instance-of v0, p1, Lcom/sec/android/gallery3d/data/MtpImage;

    return v0
.end method

.method public isRemoteMediaItem(Lcom/sec/android/gallery3d/data/MediaItem;)Z
    .locals 1

    instance-of v0, p1, Lcom/sec/android/gallery3d/remote/RemoteMediaItem;

    return v0
.end method

.method public isSCloudImage(Lcom/sec/android/gallery3d/data/MediaItem;)Z
    .locals 1

    instance-of v0, p1, Lcom/sec/android/gallery3d/remote/scloud/SCloudImage;

    if-nez v0, :cond_0

    instance-of v0, p1, Lcom/sec/android/gallery3d/data/UnionSCloudImage;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSCloudMediaItem(Lcom/sec/android/gallery3d/data/MediaItem;)Z
    .locals 1

    instance-of v0, p1, Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem;

    if-nez v0, :cond_0

    instance-of v0, p1, Lcom/sec/android/gallery3d/data/UnionSCloudItem;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSLinkStorage(Lcom/sec/android/gallery3d/data/MediaSet;)Z
    .locals 1

    instance-of v0, p1, Lcom/sec/android/gallery3d/remote/slink/SLinkStorage;

    return v0
.end method

.method public isSharedEventItem(Lcom/sec/android/gallery3d/data/MediaItem;)Z
    .locals 1

    instance-of v0, p1, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;

    return v0
.end method

.method public isSlowMotionVideo(Lcom/sec/android/gallery3d/data/MediaItem;)Z
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->getRecordingMode()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isURIImage(Lcom/sec/android/gallery3d/data/MediaItem;)Z
    .locals 1

    instance-of v0, p1, Lcom/sec/android/gallery3d/data/UriImage;

    return v0
.end method

.method public isURIVideo(Lcom/sec/android/gallery3d/data/MediaItem;)Z
    .locals 1

    instance-of v0, p1, Lcom/sec/android/gallery3d/data/UriVideo;

    return v0
.end method
