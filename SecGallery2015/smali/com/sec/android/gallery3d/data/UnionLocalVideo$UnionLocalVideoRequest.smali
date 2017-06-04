.class public Lcom/sec/android/gallery3d/data/UnionLocalVideo$UnionLocalVideoRequest;
.super Lcom/sec/android/gallery3d/data/ImageCacheRequest;
.source "UnionLocalVideo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/gallery3d/data/UnionLocalVideo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "UnionLocalVideoRequest"
.end annotation


# instance fields
.field private final mApplication:Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;

.field private final mIsGolf:Z

.field private final mLocalFilePath:Ljava/lang/String;

.field private final mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

.field private final mType:I

.field private final mVideoThumbFrame:J


# direct methods
.method public constructor <init>(Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;Lcom/sec/android/gallery3d/data/Path;JILjava/lang/String;ZLcom/sec/android/gallery3d/data/MediaItem;J)V
    .locals 11

    invoke-static/range {p5 .. p5}, Lcom/sec/android/gallery3d/data/MediaItem;->getVideoTargetSize(I)I

    move-result v9

    const/4 v10, 0x1

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-wide v6, p3

    move/from16 v8, p5

    invoke-direct/range {v3 .. v10}, Lcom/sec/android/gallery3d/data/ImageCacheRequest;-><init>(Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;Lcom/sec/android/gallery3d/data/Path;JIIZ)V

    move-object/from16 v0, p6

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/UnionLocalVideo$UnionLocalVideoRequest;->mLocalFilePath:Ljava/lang/String;

    iput-object p1, p0, Lcom/sec/android/gallery3d/data/UnionLocalVideo$UnionLocalVideoRequest;->mApplication:Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;

    move/from16 v0, p7

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/data/UnionLocalVideo$UnionLocalVideoRequest;->mIsGolf:Z

    move-object/from16 v0, p8

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/UnionLocalVideo$UnionLocalVideoRequest;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    move/from16 v0, p5

    iput v0, p0, Lcom/sec/android/gallery3d/data/UnionLocalVideo$UnionLocalVideoRequest;->mType:I

    move-wide/from16 v0, p9

    iput-wide v0, p0, Lcom/sec/android/gallery3d/data/UnionLocalVideo$UnionLocalVideoRequest;->mVideoThumbFrame:J

    return-void
.end method

.method private getVideoThumbnailForTablet(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 14

    const/4 v13, 0x1

    iget v11, p0, Lcom/sec/android/gallery3d/data/UnionLocalVideo$UnionLocalVideoRequest;->mType:I

    const/4 v12, 0x2

    if-ne v11, v12, :cond_3

    iget v11, p0, Lcom/sec/android/gallery3d/data/UnionLocalVideo$UnionLocalVideoRequest;->mTargetSize:I

    mul-int/lit8 v11, v11, 0x2

    invoke-static {p1, v11, v13}, Lcom/sec/android/gallery3d/common/BitmapUtils;->resizeDownBySideLength(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object p1

    :goto_0
    const/4 v9, 0x0

    iget-object v11, p0, Lcom/sec/android/gallery3d/data/UnionLocalVideo$UnionLocalVideoRequest;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v11}, Lcom/sec/android/gallery3d/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "Video_View_Mode"

    invoke-static {v11, v12}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getSEFData(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v8

    if-eqz v8, :cond_0

    :try_start_0
    new-instance v10, Ljava/lang/String;

    const-string/jumbo v11, "UTF-8"

    invoke-direct {v10, v8, v11}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v9, v10

    :cond_0
    :goto_1
    iget-object v11, p0, Lcom/sec/android/gallery3d/data/UnionLocalVideo$UnionLocalVideoRequest;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    check-cast v11, Lcom/sec/android/gallery3d/data/UnionLocalVideo;

    # invokes: Lcom/sec/android/gallery3d/data/UnionLocalVideo;->getVideoViewMode()I
    invoke-static {v11}, Lcom/sec/android/gallery3d/data/UnionLocalVideo;->access$000(Lcom/sec/android/gallery3d/data/UnionLocalVideo;)I

    move-result v11

    if-eqz v11, :cond_1

    const-string/jumbo v11, "Full"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    :cond_1
    iget-object v11, p0, Lcom/sec/android/gallery3d/data/UnionLocalVideo$UnionLocalVideoRequest;->mApplication:Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;

    check-cast v11, Landroid/content/Context;

    invoke-static {v11}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getDisplayMetrics(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v11, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v12, v7, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v4

    iget v11, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v12, v7, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    if-le v11, v12, :cond_4

    int-to-float v11, v4

    int-to-float v12, v5

    div-float v6, v11, v12

    int-to-float v11, v2

    int-to-float v12, v3

    div-float v0, v11, v12

    :goto_2
    invoke-static {v0, v6}, Ljava/lang/Float;->compare(FF)I

    move-result v11

    if-eqz v11, :cond_2

    const/4 v11, 0x0

    invoke-static {p1, v6, v11, v13}, Lcom/sec/android/gallery3d/common/BitmapUtils;->cropCenterByRatio(Landroid/graphics/Bitmap;FIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    :cond_2
    return-object p1

    :cond_3
    iget v11, p0, Lcom/sec/android/gallery3d/data/UnionLocalVideo$UnionLocalVideoRequest;->mTargetSize:I

    invoke-static {p1, v11, v13}, Lcom/sec/android/gallery3d/common/BitmapUtils;->resizeDownBySideLength(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v11, "UnionLocalVideo"

    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    int-to-float v11, v5

    int-to-float v12, v4

    div-float v6, v11, v12

    int-to-float v11, v3

    int-to-float v12, v2

    div-float v0, v11, v12

    goto :goto_2
.end method


# virtual methods
.method public onDecodeOriginal(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;I)Landroid/graphics/Bitmap;
    .locals 6

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/sec/android/gallery3d/data/UnionLocalVideo$UnionLocalVideoRequest;->mIsGolf:Z

    if-eqz v2, :cond_2

    new-instance v2, Lcom/sec/android/gallery3d/golf/GolfMgr;

    invoke-direct {v2}, Lcom/sec/android/gallery3d/golf/GolfMgr;-><init>()V

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/UnionLocalVideo$UnionLocalVideoRequest;->mLocalFilePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/sec/android/gallery3d/golf/GolfMgr;->createThumbnails(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-interface {p1}, Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    move-object v1, v0

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/sec/android/gallery3d/data/UnionLocalVideo$UnionLocalVideoRequest;->mLocalFilePath:Ljava/lang/String;

    iget-wide v4, p0, Lcom/sec/android/gallery3d/data/UnionLocalVideo$UnionLocalVideoRequest;->mVideoThumbFrame:J

    invoke-static {v2, v4, v5}, Lcom/sec/android/gallery3d/common/BitmapUtils;->createVideoThumbnail(Ljava/lang/String;J)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {p1}, Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v2

    if-nez v2, :cond_0

    move-object v1, v0

    goto :goto_0
.end method

.method public resizeDownBySideLengthForNormal(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/data/UnionLocalVideo$UnionLocalVideoRequest;->getVideoThumbnailForTablet(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public run(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;)Landroid/graphics/Bitmap;
    .locals 4

    const/4 v3, 0x1

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/UnionLocalVideo$UnionLocalVideoRequest;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/data/MediaItem;->isDrm()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/UnionLocalVideo$UnionLocalVideoRequest;->mApplication:Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;

    invoke-interface {v1}, Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;->getDrmUtil()Lcom/sec/android/gallery3d/util/ImageDRMUtil;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/UnionLocalVideo$UnionLocalVideoRequest;->mLocalFilePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/util/ImageDRMUtil;->isValidRights(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/UnionLocalVideo$UnionLocalVideoRequest;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v1, v3}, Lcom/sec/android/gallery3d/data/MediaItem;->setBroken(Z)V

    iget v1, p0, Lcom/sec/android/gallery3d/data/UnionLocalVideo$UnionLocalVideoRequest;->mType:I

    if-ne v1, v3, :cond_1

    invoke-static {}, Lcom/sec/android/gallery3d/util/ResourceManager;->getInstance()Lcom/sec/android/gallery3d/util/ResourceManager;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/UnionLocalVideo$UnionLocalVideoRequest;->mApplication:Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;

    invoke-interface {v2}, Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/util/ResourceManager;->getBrokenThumbBG(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-static {}, Lcom/sec/android/gallery3d/util/ResourceManager;->getInstance()Lcom/sec/android/gallery3d/util/ResourceManager;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/UnionLocalVideo$UnionLocalVideoRequest;->mApplication:Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;

    invoke-interface {v2}, Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/util/ResourceManager;->getBrokenMovieThumbnail(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-super {p0, p1}, Lcom/sec/android/gallery3d/data/ImageCacheRequest;->run(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_3

    invoke-interface {p1}, Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_3
    invoke-interface {p1}, Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_4

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v0, 0x0

    :cond_4
    iget-object v1, p0, Lcom/sec/android/gallery3d/data/UnionLocalVideo$UnionLocalVideoRequest;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/data/MediaItem;->isBroken()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/UnionLocalVideo$UnionLocalVideoRequest;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/data/MediaItem;->setBroken(Z)V

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/sec/android/gallery3d/data/UnionLocalVideo$UnionLocalVideoRequest;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v1, v3}, Lcom/sec/android/gallery3d/data/MediaItem;->setBroken(Z)V

    iget v1, p0, Lcom/sec/android/gallery3d/data/UnionLocalVideo$UnionLocalVideoRequest;->mType:I

    if-ne v1, v3, :cond_6

    invoke-static {}, Lcom/sec/android/gallery3d/util/ResourceManager;->getInstance()Lcom/sec/android/gallery3d/util/ResourceManager;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/UnionLocalVideo$UnionLocalVideoRequest;->mApplication:Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;

    invoke-interface {v2}, Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/util/ResourceManager;->getBrokenThumbBG(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :cond_6
    invoke-static {}, Lcom/sec/android/gallery3d/util/ResourceManager;->getInstance()Lcom/sec/android/gallery3d/util/ResourceManager;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/UnionLocalVideo$UnionLocalVideoRequest;->mApplication:Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;

    invoke-interface {v2}, Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/util/ResourceManager;->getBrokenMovieThumbnail(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic run(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/sec/android/gallery3d/data/UnionLocalVideo$UnionLocalVideoRequest;->run(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
