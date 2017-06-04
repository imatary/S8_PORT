.class Lcom/sec/android/gallery3d/data/LocalCameraImage$LocalImageRequest;
.super Lcom/sec/android/gallery3d/data/ImageCacheRequest;
.source "LocalCameraImage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/gallery3d/data/LocalCameraImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LocalImageRequest"
.end annotation


# instance fields
.field private final mApplication:Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;

.field private final mLocalFilePath:Ljava/lang/String;

.field private final mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

.field private final mPath:Lcom/sec/android/gallery3d/data/Path;

.field private final mRequestAttributes:Lcom/sec/android/gallery3d/data/MediaItem$RequestAttributes;

.field private final mType:I


# direct methods
.method public constructor <init>(Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;Lcom/sec/android/gallery3d/data/Path;JILjava/lang/String;Lcom/sec/android/gallery3d/data/MediaItem$RequestAttributes;)V
    .locals 11

    invoke-static/range {p5 .. p5}, Lcom/sec/android/gallery3d/data/MediaItem;->getTargetSize(I)I

    move-result v9

    const/4 v10, 0x1

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-wide v6, p3

    move/from16 v8, p5

    invoke-direct/range {v3 .. v10}, Lcom/sec/android/gallery3d/data/ImageCacheRequest;-><init>(Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;Lcom/sec/android/gallery3d/data/Path;JIIZ)V

    move/from16 v0, p5

    iput v0, p0, Lcom/sec/android/gallery3d/data/LocalCameraImage$LocalImageRequest;->mType:I

    move-object/from16 v0, p6

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/LocalCameraImage$LocalImageRequest;->mLocalFilePath:Ljava/lang/String;

    iput-object p1, p0, Lcom/sec/android/gallery3d/data/LocalCameraImage$LocalImageRequest;->mApplication:Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;

    iput-object p2, p0, Lcom/sec/android/gallery3d/data/LocalCameraImage$LocalImageRequest;->mPath:Lcom/sec/android/gallery3d/data/Path;

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/LocalCameraImage$LocalImageRequest;->mPath:Lcom/sec/android/gallery3d/data/Path;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/Path;->getObject()Lcom/sec/android/gallery3d/data/MediaObject;

    move-result-object v2

    check-cast v2, Lcom/sec/android/gallery3d/data/MediaItem;

    iput-object v2, p0, Lcom/sec/android/gallery3d/data/LocalCameraImage$LocalImageRequest;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    move-object/from16 v0, p7

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/LocalCameraImage$LocalImageRequest;->mRequestAttributes:Lcom/sec/android/gallery3d/data/MediaItem$RequestAttributes;

    return-void
.end method

.method private updateBurstShotAttributes()V
    .locals 6

    const-wide/16 v4, 0x200

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/LocalCameraImage$LocalImageRequest;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v1, v4, v5}, Lcom/sec/android/gallery3d/data/MediaItem;->hasPendingAttribute(J)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "group_id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/LocalCameraImage$LocalImageRequest;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/MediaItem;->getGroupId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " and bucket_id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/LocalCameraImage$LocalImageRequest;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/MediaItem;->getBucketId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/LocalCameraImage$LocalImageRequest;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    instance-of v1, v1, Lcom/sec/android/gallery3d/data/LocalCameraImage;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/LocalCameraImage$LocalImageRequest;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/LocalCameraImage$LocalImageRequest;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    check-cast v1, Lcom/sec/android/gallery3d/data/LocalCameraImage;

    # invokes: Lcom/sec/android/gallery3d/data/LocalCameraImage;->isBurstShotImage(Ljava/lang/String;)Z
    invoke-static {v1, v0}, Lcom/sec/android/gallery3d/data/LocalCameraImage;->access$000(Lcom/sec/android/gallery3d/data/LocalCameraImage;Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v2, v4, v5, v1}, Lcom/sec/android/gallery3d/data/MediaItem;->setAttribute(JZ)V

    :cond_0
    iget-object v1, p0, Lcom/sec/android/gallery3d/data/LocalCameraImage$LocalImageRequest;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    const/4 v2, 0x0

    invoke-virtual {v1, v4, v5, v2}, Lcom/sec/android/gallery3d/data/MediaItem;->setPendingAttribute(JZ)V

    :cond_1
    return-void
.end method

.method private updatePanoramaAttribute()Z
    .locals 4

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/LocalCameraImage$LocalImageRequest;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-static {v1}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isPanorama(Lcom/sec/android/gallery3d/data/MediaItem;)Z

    move-result v0

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/LocalCameraImage$LocalImageRequest;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    const-wide/16 v2, 0x4

    invoke-virtual {v1, v2, v3, v0}, Lcom/sec/android/gallery3d/data/MediaItem;->setAttribute(JZ)V

    return v0
.end method

.method private updatePendingAttribute()V
    .locals 8

    const-wide/16 v6, 0x20

    const-wide/16 v4, 0x10

    const-wide/16 v2, 0x8

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/LocalCameraImage$LocalImageRequest;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v0, v2, v3}, Lcom/sec/android/gallery3d/data/MediaItem;->hasPendingAttribute(J)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/LocalCameraImage$LocalImageRequest;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v0, v6, v7}, Lcom/sec/android/gallery3d/data/MediaItem;->hasPendingAttribute(J)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/data/LocalCameraImage$LocalImageRequest;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    instance-of v0, v0, Lcom/sec/android/gallery3d/data/LocalCameraImage;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/LocalCameraImage$LocalImageRequest;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    check-cast v0, Lcom/sec/android/gallery3d/data/LocalCameraImage;

    # invokes: Lcom/sec/android/gallery3d/data/LocalCameraImage;->getLocalCameraImageAttributes()Lcom/sec/android/gallery3d/data/LocalCameraImageAttributes;
    invoke-static {v0}, Lcom/sec/android/gallery3d/data/LocalCameraImage;->access$100(Lcom/sec/android/gallery3d/data/LocalCameraImage;)Lcom/sec/android/gallery3d/data/LocalCameraImageAttributes;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/LocalCameraImageAttributes;->updateFileAccessAttribute()V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/gallery3d/data/LocalCameraImage$LocalImageRequest;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v0, v2, v3, v1}, Lcom/sec/android/gallery3d/data/MediaItem;->setPendingAttribute(JZ)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/LocalCameraImage$LocalImageRequest;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v0, v6, v7, v1}, Lcom/sec/android/gallery3d/data/MediaItem;->setPendingAttribute(JZ)V

    :cond_2
    # getter for: Lcom/sec/android/gallery3d/data/LocalCameraImage;->FeatureSoundSceneEnabled:Z
    invoke-static {}, Lcom/sec/android/gallery3d/data/LocalCameraImage;->access$200()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/LocalCameraImage$LocalImageRequest;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v0, v4, v5}, Lcom/sec/android/gallery3d/data/MediaItem;->hasPendingAttribute(J)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/LocalCameraImage$LocalImageRequest;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v0, v4, v5, v1}, Lcom/sec/android/gallery3d/data/MediaItem;->setPendingAttribute(JZ)V

    :cond_3
    return-void
.end method


# virtual methods
.method public onDecodeOriginal(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;I)Landroid/graphics/Bitmap;
    .locals 10

    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v7, v3, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    invoke-static {p2}, Lcom/sec/android/gallery3d/data/MediaItem;->getTargetSize(I)I

    move-result v5

    iget-object v7, p0, Lcom/sec/android/gallery3d/data/LocalCameraImage$LocalImageRequest;->mLocalFilePath:Ljava/lang/String;

    if-nez v7, :cond_1

    const-string/jumbo v7, "LocalCameraImage"

    const-string/jumbo v8, "mLocalFilePath is null"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v7, p0, Lcom/sec/android/gallery3d/data/LocalCameraImage$LocalImageRequest;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/sec/android/gallery3d/data/LocalCameraImage$LocalImageRequest;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/data/MediaItem;->isDrm()Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/sec/android/gallery3d/data/LocalCameraImage$LocalImageRequest;->mLocalFilePath:Ljava/lang/String;

    invoke-static {p1, v7, v3}, Lcom/sec/android/gallery3d/data/DecodeUtils;->requestDecode(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v7, 0x2

    if-eq p2, v7, :cond_3

    const/4 v7, 0x3

    if-ne p2, v7, :cond_5

    :cond_3
    new-instance v2, Lcom/sec/android/gallery3d/exif/ExifInterface;

    invoke-direct {v2}, Lcom/sec/android/gallery3d/exif/ExifInterface;-><init>()V

    const/4 v6, 0x0

    :try_start_0
    iget-object v7, p0, Lcom/sec/android/gallery3d/data/LocalCameraImage$LocalImageRequest;->mLocalFilePath:Ljava/lang/String;

    invoke-virtual {v2, v7}, Lcom/sec/android/gallery3d/exif/ExifInterface;->readExif(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/exif/ExifInterface;->getThumbnail()[B
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v6

    :goto_1
    if-eqz v6, :cond_4

    invoke-static {p1, v6, v3, v5}, Lcom/sec/android/gallery3d/data/DecodeUtils;->decodeIfBigEnough(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;[BLandroid/graphics/BitmapFactory$Options;I)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    :cond_4
    :goto_2
    iget-object v7, p0, Lcom/sec/android/gallery3d/data/LocalCameraImage$LocalImageRequest;->mLocalFilePath:Ljava/lang/String;

    invoke-static {p1, v7, v3, v5, p2}, Lcom/sec/android/gallery3d/data/DecodeUtils;->decodeThumbnail(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;II)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v7, "LocalCameraImage"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "failed to find file to read thumbnail: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/sec/android/gallery3d/data/LocalCameraImage$LocalImageRequest;->mLocalFilePath:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_1
    move-exception v1

    const-string/jumbo v7, "LocalCameraImage"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "failed to get thumbnail from: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/sec/android/gallery3d/data/LocalCameraImage$LocalImageRequest;->mLocalFilePath:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_2
    move-exception v4

    const-string/jumbo v7, "LocalCameraImage"

    const-string/jumbo v8, "fail to get exif thumb"

    invoke-static {v7, v8, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_5
    const/4 v7, 0x6

    if-ne p2, v7, :cond_4

    :try_start_1
    iget-object v7, p0, Lcom/sec/android/gallery3d/data/LocalCameraImage$LocalImageRequest;->mLocalFilePath:Ljava/lang/String;

    invoke-static {p1, v7, v3}, Lcom/sec/android/gallery3d/data/DecodeUtils;->decodePanoramaThumbnail(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v0

    goto/16 :goto_0

    :catch_3
    move-exception v1

    const-string/jumbo v7, "LocalCameraImage"

    invoke-virtual {v1}, Ljava/lang/OutOfMemoryError;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public resizeDownAndCropCenterForNormal(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 4

    const/4 v3, 0x1

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/LocalCameraImage$LocalImageRequest;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    instance-of v2, v2, Lcom/sec/android/gallery3d/data/LocalCameraImage;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/LocalCameraImage$LocalImageRequest;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    check-cast v2, Lcom/sec/android/gallery3d/data/LocalCameraImage;

    # invokes: Lcom/sec/android/gallery3d/data/LocalCameraImage;->getFaceCount()I
    invoke-static {v2}, Lcom/sec/android/gallery3d/data/LocalCameraImage;->access$300(Lcom/sec/android/gallery3d/data/LocalCameraImage;)I

    move-result v0

    if-nez v0, :cond_1

    iget v2, p0, Lcom/sec/android/gallery3d/data/LocalCameraImage$LocalImageRequest;->mTargetSize:I

    invoke-static {p1, v2, v3}, Lcom/sec/android/gallery3d/common/BitmapUtils;->resizeDownAndCropCenter(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object p1

    :cond_0
    :goto_0
    return-object p1

    :cond_1
    if-lez v0, :cond_3

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/LocalCameraImage$LocalImageRequest;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    check-cast v2, Lcom/sec/android/gallery3d/data/LocalCameraImage;

    # invokes: Lcom/sec/android/gallery3d/data/LocalCameraImage;->getRectOfAllFaces()Landroid/graphics/RectF;
    invoke-static {v2}, Lcom/sec/android/gallery3d/data/LocalCameraImage;->access$400(Lcom/sec/android/gallery3d/data/LocalCameraImage;)Landroid/graphics/RectF;

    move-result-object v1

    if-eqz v1, :cond_2

    iget v2, p0, Lcom/sec/android/gallery3d/data/LocalCameraImage$LocalImageRequest;->mTargetSize:I

    invoke-static {p1, v2, v1, v3}, Lcom/sec/android/gallery3d/common/BitmapUtils;->resizeDownAndCropFace(Landroid/graphics/Bitmap;ILandroid/graphics/RectF;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_0

    :cond_2
    iget v2, p0, Lcom/sec/android/gallery3d/data/LocalCameraImage$LocalImageRequest;->mTargetSize:I

    invoke-static {p1, v2, v3}, Lcom/sec/android/gallery3d/common/BitmapUtils;->resizeDownAndCropCenter(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_0

    :cond_3
    iget v2, p0, Lcom/sec/android/gallery3d/data/LocalCameraImage$LocalImageRequest;->mTargetSize:I

    invoke-static {p1, v2, v3}, Lcom/sec/android/gallery3d/common/BitmapUtils;->resizeDownAndCropCenter(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_0
.end method

.method public resizeDownBySideLengthForNormal(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 2

    sget-boolean v0, Lcom/sec/android/gallery3d/data/LocalCameraImage$LocalImageRequest;->FeatureUseCropCenterPanoramaThumbnail:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/LocalCameraImage$LocalImageRequest;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-static {v0}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isPanorama(Lcom/sec/android/gallery3d/data/MediaItem;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/sec/android/gallery3d/data/LocalCameraImage$LocalImageRequest;->mType:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/sec/android/gallery3d/data/LocalCameraImage$LocalImageRequest;->mType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/sec/android/gallery3d/data/LocalCameraImage$LocalImageRequest;->mType:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/sec/android/gallery3d/data/LocalCameraImage$LocalImageRequest;->mType:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    :cond_0
    iget v0, p0, Lcom/sec/android/gallery3d/data/LocalCameraImage$LocalImageRequest;->mTargetSize:I

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/sec/android/gallery3d/common/BitmapUtils;->resizeDownAndCropCenter(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object p1

    :goto_0
    return-object p1

    :cond_1
    invoke-super {p0, p1}, Lcom/sec/android/gallery3d/data/ImageCacheRequest;->resizeDownBySideLengthForNormal(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_0
.end method

.method public run(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;)Landroid/graphics/Bitmap;
    .locals 4

    const/4 v3, 0x1

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/LocalCameraImage$LocalImageRequest;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/LocalCameraImage$LocalImageRequest;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/data/MediaItem;->isDrm()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/LocalCameraImage$LocalImageRequest;->mApplication:Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;

    invoke-interface {v1}, Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;->getDrmUtil()Lcom/sec/android/gallery3d/util/ImageDRMUtil;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/LocalCameraImage$LocalImageRequest;->mLocalFilePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/util/ImageDRMUtil;->isValidRights(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/LocalCameraImage$LocalImageRequest;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v1, v3}, Lcom/sec/android/gallery3d/data/MediaItem;->setBroken(Z)V

    :cond_0
    invoke-super {p0, p1}, Lcom/sec/android/gallery3d/data/ImageCacheRequest;->run(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-interface {p1}, Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_1
    iget-object v1, p0, Lcom/sec/android/gallery3d/data/LocalCameraImage$LocalImageRequest;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/LocalCameraImage$LocalImageRequest;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/data/MediaItem;->isBroken()Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/sec/android/gallery3d/data/LocalCameraImage$LocalImageRequest;->mType:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/LocalCameraImage$LocalImageRequest;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/data/MediaItem;->setBroken(Z)V

    :cond_2
    invoke-direct {p0}, Lcom/sec/android/gallery3d/data/LocalCameraImage$LocalImageRequest;->updatePanoramaAttribute()Z

    invoke-direct {p0}, Lcom/sec/android/gallery3d/data/LocalCameraImage$LocalImageRequest;->updateBurstShotAttributes()V

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/LocalCameraImage$LocalImageRequest;->mRequestAttributes:Lcom/sec/android/gallery3d/data/MediaItem$RequestAttributes;

    sget-object v2, Lcom/sec/android/gallery3d/data/MediaItem$RequestAttributes;->WITH_ATTRIBUTES:Lcom/sec/android/gallery3d/data/MediaItem$RequestAttributes;

    if-ne v1, v2, :cond_3

    invoke-direct {p0}, Lcom/sec/android/gallery3d/data/LocalCameraImage$LocalImageRequest;->updatePendingAttribute()V

    :cond_3
    :goto_0
    return-object v0

    :cond_4
    iget-object v1, p0, Lcom/sec/android/gallery3d/data/LocalCameraImage$LocalImageRequest;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/LocalCameraImage$LocalImageRequest;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v1, v3}, Lcom/sec/android/gallery3d/data/MediaItem;->setBroken(Z)V

    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic run(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/sec/android/gallery3d/data/LocalCameraImage$LocalImageRequest;->run(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
