.class public abstract Lcom/sec/android/gallery3d/data/ImageCacheRequest;
.super Ljava/lang/Object;
.source "ImageCacheRequest.java"

# interfaces
.implements Lcom/sec/android/gallery3d/util/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/sec/android/gallery3d/util/ThreadPool$Job",
        "<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# static fields
.field private static final FeatureFaceTagEnabled:Z

.field protected static final FeatureUseCropCenterPanoramaThumbnail:Z

.field private static final TAG:Ljava/lang/String; = "ImageCacheRequest"


# instance fields
.field protected final mApplication:Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;

.field protected mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

.field private mNeedBitmap:Z

.field private final mPath:Lcom/sec/android/gallery3d/data/Path;

.field protected mTargetSize:I

.field private mTimeModified:J

.field protected mType:I

.field private mUseCache:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseFaceTag:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/android/gallery3d/data/ImageCacheRequest;->FeatureFaceTagEnabled:Z

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->Use3DPanorama:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/android/gallery3d/data/ImageCacheRequest;->FeatureUseCropCenterPanoramaThumbnail:Z

    return-void
.end method

.method private constructor <init>(Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;Lcom/sec/android/gallery3d/data/Path;JII)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/data/ImageCacheRequest;->mUseCache:Z

    iput-object p1, p0, Lcom/sec/android/gallery3d/data/ImageCacheRequest;->mApplication:Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;

    iput-object p2, p0, Lcom/sec/android/gallery3d/data/ImageCacheRequest;->mPath:Lcom/sec/android/gallery3d/data/Path;

    iput p5, p0, Lcom/sec/android/gallery3d/data/ImageCacheRequest;->mType:I

    iput p6, p0, Lcom/sec/android/gallery3d/data/ImageCacheRequest;->mTargetSize:I

    iput-wide p3, p0, Lcom/sec/android/gallery3d/data/ImageCacheRequest;->mTimeModified:J

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;Lcom/sec/android/gallery3d/data/Path;JIIZ)V
    .locals 3

    invoke-direct/range {p0 .. p6}, Lcom/sec/android/gallery3d/data/ImageCacheRequest;-><init>(Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;Lcom/sec/android/gallery3d/data/Path;JII)V

    iput-wide p3, p0, Lcom/sec/android/gallery3d/data/ImageCacheRequest;->mTimeModified:J

    iput-boolean p7, p0, Lcom/sec/android/gallery3d/data/ImageCacheRequest;->mNeedBitmap:Z

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/ImageCacheRequest;->mPath:Lcom/sec/android/gallery3d/data/Path;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/ImageCacheRequest;->mPath:Lcom/sec/android/gallery3d/data/Path;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/data/Path;->getObject()Lcom/sec/android/gallery3d/data/MediaObject;

    move-result-object v0

    instance-of v1, v0, Lcom/sec/android/gallery3d/data/MediaItem;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/sec/android/gallery3d/data/MediaItem;

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/ImageCacheRequest;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    :cond_0
    return-void
.end method

.method private debugTag()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/ImageCacheRequest;->mPath:Lcom/sec/android/gallery3d/data/Path;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/sec/android/gallery3d/data/ImageCacheRequest;->mTimeModified:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v0, p0, Lcom/sec/android/gallery3d/data/ImageCacheRequest;->mType:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const-string/jumbo v0, "THUMB"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget v0, p0, Lcom/sec/android/gallery3d/data/ImageCacheRequest;->mType:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    const-string/jumbo v0, "MICROTHUMB"

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "?"

    goto :goto_0
.end method

.method private onDecodeExif()Landroid/graphics/Bitmap;
    .locals 9

    const/4 v6, 0x0

    iget v7, p0, Lcom/sec/android/gallery3d/data/ImageCacheRequest;->mType:I

    const/4 v8, 0x2

    if-lt v7, v8, :cond_0

    iget v7, p0, Lcom/sec/android/gallery3d/data/ImageCacheRequest;->mType:I

    const/4 v8, 0x4

    if-le v7, v8, :cond_2

    :cond_0
    move-object v0, v6

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    iget-object v7, p0, Lcom/sec/android/gallery3d/data/ImageCacheRequest;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/sec/android/gallery3d/data/ImageCacheRequest;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/data/MediaItem;->getMimeType()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isJpeg(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/sec/android/gallery3d/data/ImageCacheRequest;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_4

    :cond_3
    move-object v0, v6

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    :try_start_0
    new-instance v3, Landroid/media/ExifInterface;

    iget-object v7, p0, Lcom/sec/android/gallery3d/data/ImageCacheRequest;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v7}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/media/ExifInterface;->hasThumbnail()Z

    move-result v7

    if-nez v7, :cond_5

    move-object v0, v6

    goto :goto_0

    :cond_5
    invoke-virtual {v3}, Landroid/media/ExifInterface;->getThumbnail()[B

    move-result-object v1

    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v6, 0x1

    iput-boolean v6, v4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    const/4 v6, 0x0

    array-length v7, v1

    const/4 v8, 0x0

    invoke-static {v1, v6, v7, v4, v8}, Lcom/sec/samsung/gallery/decoder/DecoderInterface;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;Z)Landroid/graphics/Bitmap;

    iget v6, p0, Lcom/sec/android/gallery3d/data/ImageCacheRequest;->mType:I

    invoke-static {v6}, Lcom/sec/android/gallery3d/data/MediaItem;->getTargetSize(I)I

    move-result v6

    int-to-float v6, v6

    const v7, 0x3f666666    # 0.9f

    mul-float/2addr v6, v7

    float-to-int v5, v6

    iget v6, v4, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-ge v6, v5, :cond_6

    iget v6, v4, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-lt v6, v5, :cond_1

    :cond_6
    const/4 v6, 0x0

    iput-boolean v6, v4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    const/4 v6, 0x0

    array-length v7, v1

    const/4 v8, 0x1

    invoke-static {v1, v6, v7, v4, v8}, Lcom/sec/samsung/gallery/decoder/DecoderInterface;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;Z)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string/jumbo v6, "ImageCacheRequest"

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public abstract onDecodeOriginal(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;I)Landroid/graphics/Bitmap;
.end method

.method public resizeBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 3

    const/4 v2, 0x4

    invoke-static {p1}, Lcom/sec/android/gallery3d/data/DecodeUtils;->isPanoramicRatio(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ImageCacheRequest;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-static {v0}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isPanorama(Lcom/sec/android/gallery3d/data/MediaItem;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget v0, p0, Lcom/sec/android/gallery3d/data/ImageCacheRequest;->mType:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/sec/android/gallery3d/data/ImageCacheRequest;->mType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/sec/android/gallery3d/data/ImageCacheRequest;->mType:I

    if-eq v0, v2, :cond_1

    iget v0, p0, Lcom/sec/android/gallery3d/data/ImageCacheRequest;->mType:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_2

    :cond_1
    iget v0, p0, Lcom/sec/android/gallery3d/data/ImageCacheRequest;->mTargetSize:I

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/sec/android/gallery3d/common/BitmapUtils;->resizeDownAndCropCenter(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object p1

    :goto_0
    return-object p1

    :cond_2
    iget v0, p0, Lcom/sec/android/gallery3d/data/ImageCacheRequest;->mType:I

    if-ne v0, v2, :cond_3

    invoke-virtual {p0, p1}, Lcom/sec/android/gallery3d/data/ImageCacheRequest;->resizeDownAndCropCenterForNormal(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_0

    :cond_3
    invoke-virtual {p0, p1}, Lcom/sec/android/gallery3d/data/ImageCacheRequest;->resizeDownBySideLengthForNormal(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_0
.end method

.method public resizeDownAndCropCenterForNormal(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 2

    iget v0, p0, Lcom/sec/android/gallery3d/data/ImageCacheRequest;->mTargetSize:I

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/sec/android/gallery3d/common/BitmapUtils;->resizeDownAndCropCenter(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public resizeDownBySideLengthForNormal(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 2

    iget v0, p0, Lcom/sec/android/gallery3d/data/ImageCacheRequest;->mTargetSize:I

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/sec/android/gallery3d/common/BitmapUtils;->resizeDownBySideLength(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public run(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;)Landroid/graphics/Bitmap;
    .locals 19

    sget-boolean v3, Lcom/sec/android/gallery3d/data/ImageCacheRequest;->FeatureFaceTagEnabled:Z

    if-eqz v3, :cond_3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/gallery3d/data/ImageCacheRequest;->mType:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_3

    const/4 v3, 0x2

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/gallery3d/data/ImageCacheRequest;->mType:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/gallery3d/data/ImageCacheRequest;->mType:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v3}, Lcom/sec/android/gallery3d/data/ImageCacheRequest;->onDecodeOriginal(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;I)Landroid/graphics/Bitmap;

    move-result-object v14

    invoke-interface/range {p1 .. p1}, Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v14, 0x0

    :cond_0
    :goto_0
    return-object v14

    :cond_1
    if-nez v14, :cond_2

    const/4 v14, 0x0

    goto :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/gallery3d/data/ImageCacheRequest;->mTargetSize:I

    const/4 v4, 0x1

    invoke-static {v14, v3, v4}, Lcom/sec/android/gallery3d/common/BitmapUtils;->resizeDownAndCropCenter(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v14

    invoke-interface/range {p1 .. p1}, Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v14, 0x0

    goto :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/gallery3d/data/ImageCacheRequest;->mApplication:Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;

    invoke-interface {v3}, Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;->getImageCacheService()Lcom/sec/android/gallery3d/data/ImageCacheServiceInterface;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/gallery3d/data/ImageCacheRequest;->mType:I

    invoke-static {v3}, Lcom/sec/android/gallery3d/data/MediaItem;->getBytesBufferPool(I)Lcom/sec/android/gallery3d/data/BytesBufferPool;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/data/BytesBufferPool;->get()Lcom/sec/android/gallery3d/data/BytesBufferPool$BytesBuffer;

    move-result-object v7

    const/16 v16, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/gallery3d/data/ImageCacheRequest;->mUseCache:Z

    if-eqz v3, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/gallery3d/data/ImageCacheRequest;->mPath:Lcom/sec/android/gallery3d/data/Path;

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/sec/android/gallery3d/data/ImageCacheRequest;->mTimeModified:J

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/gallery3d/data/ImageCacheRequest;->mType:I

    invoke-interface/range {v2 .. v7}, Lcom/sec/android/gallery3d/data/ImageCacheServiceInterface;->getImageData(Lcom/sec/android/gallery3d/data/Path;JILcom/sec/android/gallery3d/data/BytesBufferPool$BytesBuffer;)Z

    move-result v16

    :cond_4
    invoke-interface/range {p1 .. p1}, Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_5

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/gallery3d/data/ImageCacheRequest;->mType:I

    invoke-static {v3}, Lcom/sec/android/gallery3d/data/MediaItem;->getBytesBufferPool(I)Lcom/sec/android/gallery3d/data/BytesBufferPool;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/sec/android/gallery3d/data/BytesBufferPool;->recycle(Lcom/sec/android/gallery3d/data/BytesBufferPool$BytesBuffer;)V

    goto :goto_0

    :cond_5
    if-eqz v16, :cond_8

    :try_start_1
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/gallery3d/data/ImageCacheRequest;->mNeedBitmap:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v3, :cond_6

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/gallery3d/data/ImageCacheRequest;->mType:I

    invoke-static {v3}, Lcom/sec/android/gallery3d/data/MediaItem;->getBytesBufferPool(I)Lcom/sec/android/gallery3d/data/BytesBufferPool;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/sec/android/gallery3d/data/BytesBufferPool;->recycle(Lcom/sec/android/gallery3d/data/BytesBufferPool$BytesBuffer;)V

    goto :goto_0

    :cond_6
    :try_start_2
    new-instance v17, Landroid/graphics/BitmapFactory$Options;

    invoke-direct/range {v17 .. v17}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move-object/from16 v0, v17

    iput-object v3, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    iget-object v3, v7, Lcom/sec/android/gallery3d/data/BytesBufferPool$BytesBuffer;->data:[B

    iget v4, v7, Lcom/sec/android/gallery3d/data/BytesBufferPool$BytesBuffer;->offset:I

    iget v5, v7, Lcom/sec/android/gallery3d/data/BytesBufferPool$BytesBuffer;->length:I

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-static {v0, v3, v4, v5, v1}, Lcom/sec/android/gallery3d/data/DecodeUtils;->decodeUsingPool(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;[BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v14

    const/4 v15, 0x0

    if-nez v14, :cond_7

    invoke-interface/range {p1 .. p1}, Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v3

    if-nez v3, :cond_7

    const-string/jumbo v3, "ImageCacheRequest"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "decode cached failed "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/gallery3d/data/ImageCacheRequest;->debugTag()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v15, 0x1

    :cond_7
    if-nez v15, :cond_8

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/gallery3d/data/ImageCacheRequest;->mType:I

    invoke-static {v3}, Lcom/sec/android/gallery3d/data/MediaItem;->getBytesBufferPool(I)Lcom/sec/android/gallery3d/data/BytesBufferPool;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/sec/android/gallery3d/data/BytesBufferPool;->recycle(Lcom/sec/android/gallery3d/data/BytesBufferPool$BytesBuffer;)V

    goto/16 :goto_0

    :cond_8
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/gallery3d/data/ImageCacheRequest;->mType:I

    invoke-static {v3}, Lcom/sec/android/gallery3d/data/MediaItem;->getBytesBufferPool(I)Lcom/sec/android/gallery3d/data/BytesBufferPool;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/sec/android/gallery3d/data/BytesBufferPool;->recycle(Lcom/sec/android/gallery3d/data/BytesBufferPool$BytesBuffer;)V

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/gallery3d/data/ImageCacheRequest;->onDecodeExif()Landroid/graphics/Bitmap;

    move-result-object v14

    invoke-interface/range {p1 .. p1}, Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v3

    if-eqz v3, :cond_9

    const/4 v14, 0x0

    goto/16 :goto_0

    :catchall_0
    move-exception v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/gallery3d/data/ImageCacheRequest;->mType:I

    invoke-static {v4}, Lcom/sec/android/gallery3d/data/MediaItem;->getBytesBufferPool(I)Lcom/sec/android/gallery3d/data/BytesBufferPool;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/sec/android/gallery3d/data/BytesBufferPool;->recycle(Lcom/sec/android/gallery3d/data/BytesBufferPool$BytesBuffer;)V

    throw v3

    :cond_9
    if-eqz v14, :cond_a

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-eqz v3, :cond_b

    :cond_a
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/gallery3d/data/ImageCacheRequest;->mType:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v3}, Lcom/sec/android/gallery3d/data/ImageCacheRequest;->onDecodeOriginal(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;I)Landroid/graphics/Bitmap;

    move-result-object v14

    invoke-interface/range {p1 .. p1}, Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v3

    if-eqz v3, :cond_b

    const/4 v14, 0x0

    goto/16 :goto_0

    :cond_b
    if-eqz v14, :cond_c

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-eqz v3, :cond_d

    :cond_c
    const-string/jumbo v3, "ImageCacheRequest"

    const-string/jumbo v4, "decode orig failed "

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v14, 0x0

    goto/16 :goto_0

    :cond_d
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/sec/android/gallery3d/data/ImageCacheRequest;->resizeBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v14

    if-eqz v14, :cond_e

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-eqz v3, :cond_f

    :cond_e
    const-string/jumbo v3, "ImageCacheRequest"

    const-string/jumbo v4, "bitmap is null or recycled after resized"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v14, 0x0

    goto/16 :goto_0

    :cond_f
    invoke-interface/range {p1 .. p1}, Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v3

    if-eqz v3, :cond_10

    const-string/jumbo v3, "ImageCacheRequest"

    const-string/jumbo v4, "jc isCancelled!"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v14, 0x0

    goto/16 :goto_0

    :cond_10
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/gallery3d/data/ImageCacheRequest;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    if-eqz v3, :cond_13

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/gallery3d/data/ImageCacheRequest;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/data/MediaItem;->getMimeType()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_13

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/gallery3d/data/ImageCacheRequest;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/data/MediaItem;->getMimeType()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "png"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_11

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/gallery3d/data/ImageCacheRequest;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/data/MediaItem;->getMimeType()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "gif"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_13

    :cond_11
    const/high16 v3, -0x1000000

    const/4 v4, 0x1

    invoke-static {v14, v3, v4}, Lcom/sec/android/gallery3d/common/BitmapUtils;->setBGColor(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v14

    if-eqz v14, :cond_12

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-eqz v3, :cond_13

    :cond_12
    const-string/jumbo v3, "ImageCacheRequest"

    const-string/jumbo v4, "bitmap is null or recycled after set color"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v14, 0x0

    goto/16 :goto_0

    :cond_13
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/sec/android/gallery3d/data/ImageCacheRequest;->writeBitmapToByteBuffer(Landroid/graphics/Bitmap;)Ljava/nio/ByteBuffer;

    move-result-object v18

    invoke-interface/range {p1 .. p1}, Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v3

    if-eqz v3, :cond_14

    const/4 v14, 0x0

    goto/16 :goto_0

    :cond_14
    if-eqz v18, :cond_0

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/gallery3d/data/ImageCacheRequest;->mUseCache:Z

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/gallery3d/data/ImageCacheRequest;->mPath:Lcom/sec/android/gallery3d/data/Path;

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/sec/android/gallery3d/data/ImageCacheRequest;->mTimeModified:J

    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/gallery3d/data/ImageCacheRequest;->mType:I

    invoke-virtual/range {v18 .. v18}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v13

    move-object v8, v2

    invoke-interface/range {v8 .. v13}, Lcom/sec/android/gallery3d/data/ImageCacheServiceInterface;->putImageData(Lcom/sec/android/gallery3d/data/Path;JI[B)V

    goto/16 :goto_0
.end method

.method public bridge synthetic run(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/sec/android/gallery3d/data/ImageCacheRequest;->run(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected setUseCache(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/gallery3d/data/ImageCacheRequest;->mUseCache:Z

    return-void
.end method

.method protected writeBitmapToByteBuffer(Landroid/graphics/Bitmap;)Ljava/nio/ByteBuffer;
    .locals 15

    iget-object v10, p0, Lcom/sec/android/gallery3d/data/ImageCacheRequest;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    if-nez v10, :cond_1

    const/4 v9, 0x0

    :cond_0
    :goto_0
    return-object v9

    :cond_1
    iget-object v10, p0, Lcom/sec/android/gallery3d/data/ImageCacheRequest;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    const-wide/16 v12, 0x10

    invoke-virtual {v10, v12, v13}, Lcom/sec/android/gallery3d/data/MediaItem;->hasAttribute(J)Z

    move-result v4

    iget-object v10, p0, Lcom/sec/android/gallery3d/data/ImageCacheRequest;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v10}, Lcom/sec/android/gallery3d/data/MediaItem;->getMimeType()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "gif"

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    invoke-static/range {p1 .. p1}, Lcom/sec/android/gallery3d/common/BitmapUtils;->compressToBytes(Landroid/graphics/Bitmap;)[B

    move-result-object v0

    const/4 v5, 0x0

    :try_start_0
    new-instance v8, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v8}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v12, 0x0

    :try_start_1
    new-instance v7, Ljava/io/DataOutputStream;

    invoke-direct {v7, v8}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v11, 0x0

    :try_start_2
    invoke-virtual {v7, v4}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    invoke-virtual {v7, v3}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    move-result-object v5

    if-eqz v7, :cond_2

    if-eqz v11, :cond_6

    :try_start_3
    invoke-virtual {v7}, Ljava/io/DataOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_2
    :goto_1
    if-eqz v8, :cond_3

    if-eqz v12, :cond_9

    :try_start_4
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    :cond_3
    :goto_2
    array-length v1, v0

    const/4 v6, 0x0

    if-eqz v5, :cond_4

    array-length v6, v5

    :cond_4
    add-int v10, v1, v6

    invoke-static {v10}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    if-eqz v5, :cond_0

    invoke-virtual {v9, v5}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    goto :goto_0

    :catch_0
    move-exception v10

    :try_start_5
    invoke-virtual {v11, v10}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    :catch_1
    move-exception v10

    :try_start_6
    throw v10
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :catchall_0
    move-exception v11

    move-object v14, v11

    move-object v11, v10

    move-object v10, v14

    :goto_3
    if-eqz v8, :cond_5

    if-eqz v11, :cond_a

    :try_start_7
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_6
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    :cond_5
    :goto_4
    :try_start_8
    throw v10
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    :catch_2
    move-exception v2

    const-string/jumbo v10, "ImageCacheRequest"

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_6
    :try_start_9
    invoke-virtual {v7}, Ljava/io/DataOutputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v10

    move-object v11, v12

    goto :goto_3

    :catch_3
    move-exception v10

    :try_start_a
    throw v10
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :catchall_2
    move-exception v11

    move-object v14, v11

    move-object v11, v10

    move-object v10, v14

    :goto_5
    if-eqz v7, :cond_7

    if-eqz v11, :cond_8

    :try_start_b
    invoke-virtual {v7}, Ljava/io/DataOutputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_4
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    :cond_7
    :goto_6
    :try_start_c
    throw v10

    :catch_4
    move-exception v13

    invoke-virtual {v11, v13}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_6

    :cond_8
    invoke-virtual {v7}, Ljava/io/DataOutputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    goto :goto_6

    :catch_5
    move-exception v10

    :try_start_d
    invoke-virtual {v12, v10}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_9
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->close()V

    goto :goto_2

    :catch_6
    move-exception v12

    invoke-virtual {v11, v12}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_a
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_2

    goto :goto_4

    :catchall_3
    move-exception v10

    goto :goto_5
.end method
