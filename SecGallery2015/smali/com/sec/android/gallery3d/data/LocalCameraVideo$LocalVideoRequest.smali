.class Lcom/sec/android/gallery3d/data/LocalCameraVideo$LocalVideoRequest;
.super Lcom/sec/android/gallery3d/data/ImageCacheRequest;
.source "LocalCameraVideo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/gallery3d/data/LocalCameraVideo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LocalVideoRequest"
.end annotation


# instance fields
.field private final mApplication:Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;

.field private final mLocalFilePath:Ljava/lang/String;

.field private final mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

.field private final mType:I


# direct methods
.method public constructor <init>(Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;Lcom/sec/android/gallery3d/data/Path;JILjava/lang/String;Lcom/sec/android/gallery3d/data/MediaItem;)V
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

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/LocalCameraVideo$LocalVideoRequest;->mLocalFilePath:Ljava/lang/String;

    iput-object p1, p0, Lcom/sec/android/gallery3d/data/LocalCameraVideo$LocalVideoRequest;->mApplication:Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;

    move-object/from16 v0, p7

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/LocalCameraVideo$LocalVideoRequest;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    move/from16 v0, p5

    iput v0, p0, Lcom/sec/android/gallery3d/data/LocalCameraVideo$LocalVideoRequest;->mType:I

    return-void
.end method

.method private getVideoThumbnailForTablet(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 12

    const/4 v11, 0x1

    iget v9, p0, Lcom/sec/android/gallery3d/data/LocalCameraVideo$LocalVideoRequest;->mType:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_3

    iget v9, p0, Lcom/sec/android/gallery3d/data/LocalCameraVideo$LocalVideoRequest;->mTargetSize:I

    mul-int/lit8 v9, v9, 0x2

    invoke-static {p1, v9, v11}, Lcom/sec/android/gallery3d/common/BitmapUtils;->resizeDownBySideLength(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object p1

    :goto_0
    const/4 v8, 0x0

    iget-object v9, p0, Lcom/sec/android/gallery3d/data/LocalCameraVideo$LocalVideoRequest;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v9}, Lcom/sec/android/gallery3d/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "Video_View_Mode"

    invoke-static {v9, v10}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getSEFData(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v7

    if-eqz v7, :cond_0

    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v7}, Ljava/lang/String;-><init>([B)V

    :cond_0
    iget-object v9, p0, Lcom/sec/android/gallery3d/data/LocalCameraVideo$LocalVideoRequest;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    check-cast v9, Lcom/sec/android/gallery3d/data/LocalCameraVideo;

    invoke-static {v9}, Lcom/sec/android/gallery3d/data/LocalCameraVideo;->access$000(Lcom/sec/android/gallery3d/data/LocalCameraVideo;)I

    move-result v9

    if-eqz v9, :cond_1

    const-string/jumbo v9, "Full"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    :cond_1
    iget-object v9, p0, Lcom/sec/android/gallery3d/data/LocalCameraVideo$LocalVideoRequest;->mApplication:Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;

    check-cast v9, Landroid/content/Context;

    invoke-static {v9}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getDisplayMetrics(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v9, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v10, v6, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget v9, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v10, v6, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    if-le v9, v10, :cond_4

    int-to-float v9, v3

    int-to-float v10, v4

    div-float v5, v9, v10

    int-to-float v9, v1

    int-to-float v10, v2

    div-float v0, v9, v10

    :goto_1
    invoke-static {v0, v5}, Ljava/lang/Float;->compare(FF)I

    move-result v9

    if-eqz v9, :cond_2

    const/4 v9, 0x0

    invoke-static {p1, v5, v9, v11}, Lcom/sec/android/gallery3d/common/BitmapUtils;->cropCenterByRatio(Landroid/graphics/Bitmap;FIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    :cond_2
    return-object p1

    :cond_3
    iget v9, p0, Lcom/sec/android/gallery3d/data/LocalCameraVideo$LocalVideoRequest;->mTargetSize:I

    invoke-static {p1, v9, v11}, Lcom/sec/android/gallery3d/common/BitmapUtils;->resizeDownBySideLength(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_0

    :cond_4
    int-to-float v9, v4

    int-to-float v10, v3

    div-float v5, v9, v10

    int-to-float v9, v2

    int-to-float v10, v1

    div-float v0, v9, v10

    goto :goto_1
.end method


# virtual methods
.method public onDecodeOriginal(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;I)Landroid/graphics/Bitmap;
    .locals 2

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/LocalCameraVideo$LocalVideoRequest;->mLocalFilePath:Ljava/lang/String;

    invoke-static {v1}, Lcom/sec/android/gallery3d/common/BitmapUtils;->createVideoThumbnail(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :cond_1
    return-object v0
.end method

.method public resizeDownBySideLengthForNormal(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/data/LocalCameraVideo$LocalVideoRequest;->getVideoThumbnailForTablet(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public run(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;)Landroid/graphics/Bitmap;
    .locals 5

    const/4 v4, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/LocalCameraVideo$LocalVideoRequest;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/MediaItem;->isDrm()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/LocalCameraVideo$LocalVideoRequest;->mApplication:Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;

    invoke-interface {v2}, Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;->getDrmUtil()Lcom/sec/android/gallery3d/util/ImageDRMUtil;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/LocalCameraVideo$LocalVideoRequest;->mLocalFilePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/sec/android/gallery3d/util/ImageDRMUtil;->isValidRights(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/LocalCameraVideo$LocalVideoRequest;->mApplication:Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;

    invoke-interface {v2}, Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f02026a

    invoke-static {v2, v3, v1}, Lcom/sec/samsung/gallery/decoder/DecoderInterface;->decodeResource(Landroid/content/Context;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v2, p0, Lcom/sec/android/gallery3d/data/LocalCameraVideo$LocalVideoRequest;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v2, v4}, Lcom/sec/android/gallery3d/data/MediaItem;->setBroken(Z)V

    move-object v0, v1

    goto :goto_0

    :cond_2
    invoke-super {p0, p1}, Lcom/sec/android/gallery3d/data/ImageCacheRequest;->run(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_3

    invoke-interface {p1}, Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    iget-object v1, p0, Lcom/sec/android/gallery3d/data/LocalCameraVideo$LocalVideoRequest;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/data/MediaItem;->isBroken()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/sec/android/gallery3d/data/LocalCameraVideo$LocalVideoRequest;->mType:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/LocalCameraVideo$LocalVideoRequest;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/data/MediaItem;->setBroken(Z)V

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/sec/android/gallery3d/data/LocalCameraVideo$LocalVideoRequest;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v2, v4}, Lcom/sec/android/gallery3d/data/MediaItem;->setBroken(Z)V

    move-object v0, v1

    goto :goto_0
.end method

.method public bridge synthetic run(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/sec/android/gallery3d/data/LocalCameraVideo$LocalVideoRequest;->run(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
