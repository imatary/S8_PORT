.class public Lcom/sec/android/gallery3d/common/BitmapUtils;
.super Ljava/lang/Object;
.source "BitmapUtils.java"


# static fields
.field public static final BACKUP_PIXEL_COUNT:I = 0x75300

.field private static final CAMERA_BUCKET_NAME:Ljava/lang/String;

.field private static final COVER_CAMERA_BUCKET_NAME:Ljava/lang/String;

.field private static final DEFAULT_JPEG_QUALITY:I = 0x64

.field public static final DEFAULT_THUMBNAIL_HEIGHT:I = 0x96

.field public static final DEFAULT_THUMBNAIL_WIDTH:I = 0xc8

.field private static final HIGHLIGHT_BUCKET_NAME:Ljava/lang/String;

.field private static SDCARD_CAMERA_BUCKET_NAME:Ljava/lang/String; = null

.field private static SDCARD_COVER_CAMERA_BUCKET_NAME:Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "BitmapUtils"

.field public static final UNCONSTRAINED:I = -0x1

.field private static final mRsMessage:Landroid/renderscript/RenderScript$RSMessageHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Lcom/sec/android/gallery3d/util/MediaSetUtils;->CAMERA_DIR:Ljava/lang/String;

    sput-object v0, Lcom/sec/android/gallery3d/common/BitmapUtils;->CAMERA_BUCKET_NAME:Ljava/lang/String;

    sget-object v0, Lcom/sec/android/gallery3d/util/MediaSetUtils;->COVER_CAMERA_ALBUM_DIR:Ljava/lang/String;

    sput-object v0, Lcom/sec/android/gallery3d/common/BitmapUtils;->COVER_CAMERA_BUCKET_NAME:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/sec/android/gallery3d/util/MediaSetUtils;->REMOVABLE_SD_DIR_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "DCIM/CoverCamera"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/gallery3d/common/BitmapUtils;->SDCARD_COVER_CAMERA_BUCKET_NAME:Ljava/lang/String;

    sget-object v0, Lcom/sec/android/gallery3d/util/MediaSetUtils;->HIGHLIGHT_ALBUM_DIR:Ljava/lang/String;

    sput-object v0, Lcom/sec/android/gallery3d/common/BitmapUtils;->HIGHLIGHT_BUCKET_NAME:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/sec/android/gallery3d/util/MediaSetUtils;->REMOVABLE_SD_DIR_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "DCIM/Camera"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/gallery3d/common/BitmapUtils;->SDCARD_CAMERA_BUCKET_NAME:Ljava/lang/String;

    new-instance v0, Lcom/sec/android/gallery3d/common/BitmapUtils$1;

    invoke-direct {v0}, Lcom/sec/android/gallery3d/common/BitmapUtils$1;-><init>()V

    sput-object v0, Lcom/sec/android/gallery3d/common/BitmapUtils;->mRsMessage:Landroid/renderscript/RenderScript$RSMessageHandler;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calcCenterCropRect(FFFFI)Landroid/graphics/Rect;
    .locals 9

    div-float v4, p0, p1

    const/16 v6, 0x5a

    if-eq p4, v6, :cond_0

    const/16 v6, 0x10e

    if-ne p4, v6, :cond_1

    :cond_0
    div-float v5, p3, p2

    :goto_0
    cmpg-float v6, v4, v5

    if-gtz v6, :cond_2

    float-to-int v1, p0

    div-float v6, p0, v5

    float-to-int v0, v6

    const/4 v2, 0x0

    int-to-float v6, v0

    sub-float v6, p1, v6

    float-to-int v6, v6

    div-int/lit8 v3, v6, 0x2

    :goto_1
    new-instance v6, Landroid/graphics/Rect;

    add-int v7, v2, v1

    add-int v8, v3, v0

    invoke-direct {v6, v2, v3, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v6

    :cond_1
    div-float v5, p2, p3

    goto :goto_0

    :cond_2
    float-to-int v0, p1

    mul-float v6, p1, v5

    float-to-int v1, v6

    const/4 v3, 0x0

    int-to-float v6, v1

    sub-float v6, p0, v6

    float-to-int v6, v6

    div-int/lit8 v2, v6, 0x2

    goto :goto_1
.end method

.method public static calcCropRect(Landroid/graphics/Bitmap;IILandroid/graphics/RectF;)Landroid/graphics/Rect;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/sec/android/gallery3d/common/BitmapUtils;->calcCropRect(Landroid/graphics/Bitmap;IILandroid/graphics/RectF;I)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method private static calcCropRect(Landroid/graphics/Bitmap;IILandroid/graphics/RectF;I)Landroid/graphics/Rect;
    .locals 17

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    if-eqz p3, :cond_3

    if-eqz p4, :cond_3

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/RectF;->width()F

    move-result v12

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/RectF;->height()F

    move-result v7

    move-object/from16 v0, p3

    iget v9, v0, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p3

    iget v11, v0, Landroid/graphics/RectF;->top:F

    const/16 v14, 0x5a

    move/from16 v0, p4

    if-eq v0, v14, :cond_0

    const/16 v14, 0xb4

    move/from16 v0, p4

    if-ne v0, v14, :cond_1

    :cond_0
    const/high16 v14, 0x3f800000    # 1.0f

    sub-float/2addr v14, v12

    sub-float v9, v14, v9

    const/high16 v14, 0x3f800000    # 1.0f

    sub-float/2addr v14, v7

    sub-float v11, v14, v11

    :cond_1
    move/from16 v0, p4

    rem-int/lit16 v14, v0, 0xb4

    if-eqz v14, :cond_2

    move v10, v11

    move v11, v9

    const/high16 v14, 0x3f800000    # 1.0f

    sub-float/2addr v14, v10

    sub-float v9, v14, v7

    move v10, v12

    move v12, v7

    move v7, v10

    :cond_2
    new-instance p3, Landroid/graphics/RectF;

    add-float v14, v9, v12

    add-float v15, v11, v7

    move-object/from16 v0, p3

    invoke-direct {v0, v9, v11, v14, v15}, Landroid/graphics/RectF;-><init>(FFFF)V

    :cond_3
    move/from16 v0, p4

    rem-int/lit16 v14, v0, 0xb4

    if-eqz v14, :cond_4

    move/from16 v0, p1

    int-to-float v10, v0

    move/from16 p1, p2

    float-to-int v0, v10

    move/from16 p2, v0

    :cond_4
    mul-int v14, p1, v8

    mul-int v15, p2, v13

    if-le v14, v15, :cond_7

    move v2, v13

    mul-int v14, v13, p2

    div-int v1, v14, p1

    const/4 v3, 0x0

    sub-int v14, v8, v1

    div-int/lit8 v4, v14, 0x2

    :goto_0
    if-eqz p3, :cond_6

    move-object/from16 v0, p3

    iget v14, v0, Landroid/graphics/RectF;->left:F

    const/4 v15, 0x0

    cmpl-float v14, v14, v15

    if-ltz v14, :cond_5

    move-object/from16 v0, p3

    iget v14, v0, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, p3

    iget v15, v0, Landroid/graphics/RectF;->left:F

    add-float/2addr v14, v15

    const/high16 v15, 0x40000000    # 2.0f

    div-float/2addr v14, v15

    int-to-float v15, v13

    mul-float/2addr v14, v15

    float-to-int v5, v14

    div-int/lit8 v14, v2, 0x2

    sub-int v3, v5, v14

    if-gez v3, :cond_8

    const/4 v3, 0x0

    :cond_5
    :goto_1
    move-object/from16 v0, p3

    iget v14, v0, Landroid/graphics/RectF;->top:F

    const/4 v15, 0x0

    cmpl-float v14, v14, v15

    if-ltz v14, :cond_6

    move-object/from16 v0, p3

    iget v14, v0, Landroid/graphics/RectF;->bottom:F

    move-object/from16 v0, p3

    iget v15, v0, Landroid/graphics/RectF;->top:F

    add-float/2addr v14, v15

    const/high16 v15, 0x40000000    # 2.0f

    div-float/2addr v14, v15

    int-to-float v15, v8

    mul-float/2addr v14, v15

    float-to-int v6, v14

    div-int/lit8 v14, v1, 0x2

    sub-int v4, v6, v14

    if-gez v4, :cond_9

    const/4 v4, 0x0

    :cond_6
    :goto_2
    new-instance v14, Landroid/graphics/Rect;

    add-int v15, v3, v2

    add-int v16, v4, v1

    move/from16 v0, v16

    invoke-direct {v14, v3, v4, v15, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v14

    :cond_7
    move v1, v8

    mul-int v14, v8, p1

    div-int v2, v14, p2

    const/4 v4, 0x0

    sub-int v14, v13, v2

    div-int/lit8 v3, v14, 0x2

    goto :goto_0

    :cond_8
    sub-int v14, v13, v2

    if-le v3, v14, :cond_5

    sub-int v3, v13, v2

    goto :goto_1

    :cond_9
    sub-int v14, v8, v1

    if-le v4, v14, :cond_6

    sub-int v4, v8, v1

    goto :goto_2
.end method

.method public static combineBitmap(Landroid/graphics/Bitmap;ILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 12

    if-nez p0, :cond_1

    const/4 v11, 0x0

    :cond_0
    :goto_0
    return-object v11

    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    int-to-float v0, p1

    invoke-virtual {v5, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v11

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v1, 0x1

    invoke-virtual {v11, v0, v1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v10

    new-instance v7, Landroid/graphics/Canvas;

    invoke-direct {v7, v10}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    sub-int v0, v3, v9

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    sub-int v1, v4, v8

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    const/4 v2, 0x0

    invoke-virtual {v7, p2, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public static compressBitmap(Landroid/graphics/Bitmap;)[B
    .locals 3

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {p0, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1
.end method

.method public static compressToBytes(Landroid/graphics/Bitmap;)[B
    .locals 1

    const/16 v0, 0x64

    invoke-static {p0, v0}, Lcom/sec/android/gallery3d/common/BitmapUtils;->compressToBytes(Landroid/graphics/Bitmap;I)[B

    move-result-object v0

    return-object v0
.end method

.method private static compressToBytes(Landroid/graphics/Bitmap;I)[B
    .locals 2

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/high16 v1, 0x10000

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p0, v1, p1, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1
.end method

.method private static computeInitialSampleSize(IIII)I
    .locals 5

    const/4 v0, 0x1

    const/4 v4, -0x1

    if-ne p3, v4, :cond_1

    if-ne p2, v4, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-ne p3, v4, :cond_2

    :goto_1
    if-eq p2, v4, :cond_0

    div-int v2, p0, p2

    div-int v3, p1, p2

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0

    :cond_2
    mul-int v2, p0, p1

    int-to-float v2, v2

    int-to-float v3, p3

    div-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v0, v2

    goto :goto_1
.end method

.method public static computeSampleSize(F)I
    .locals 6

    const/4 v2, 0x1

    const/4 v1, 0x0

    cmpl-float v1, p0, v1

    if-lez v1, :cond_0

    move v1, v2

    :goto_0
    invoke-static {v1}, Lcom/sec/android/gallery3d/common/Utils;->assertTrue(Z)V

    const/high16 v1, 0x3f800000    # 1.0f

    div-float/2addr v1, p0

    float-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v1, v4

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/16 v1, 0x8

    if-gt v0, v1, :cond_1

    invoke-static {v0}, Lcom/sec/android/gallery3d/common/Utils;->nextPowerOf2(I)I

    move-result v1

    :goto_1
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    add-int/lit8 v1, v0, 0x7

    div-int/lit8 v1, v1, 0x8

    mul-int/lit8 v1, v1, 0x8

    goto :goto_1
.end method

.method public static computeSampleSize(IIII)I
    .locals 2

    invoke-static {p0, p1, p2, p3}, Lcom/sec/android/gallery3d/common/BitmapUtils;->computeInitialSampleSize(IIII)I

    move-result v0

    const/16 v1, 0x8

    if-gt v0, v1, :cond_0

    invoke-static {v0}, Lcom/sec/android/gallery3d/common/Utils;->nextPowerOf2(I)I

    move-result v1

    :goto_0
    return v1

    :cond_0
    add-int/lit8 v1, v0, 0x7

    div-int/lit8 v1, v1, 0x8

    mul-int/lit8 v1, v1, 0x8

    goto :goto_0
.end method

.method public static computeSampleSizeLarger(F)I
    .locals 4

    const/4 v1, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    div-float/2addr v2, p0

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v0, v2

    if-gt v0, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    const/16 v1, 0x8

    if-gt v0, v1, :cond_1

    invoke-static {v0}, Lcom/sec/android/gallery3d/common/Utils;->prevPowerOf2(I)I

    move-result v1

    goto :goto_0

    :cond_1
    div-int/lit8 v1, v0, 0x8

    mul-int/lit8 v1, v1, 0x8

    goto :goto_0
.end method

.method public static computeSampleSizeLarger(III)I
    .locals 4

    const/4 v1, 0x1

    div-int v2, p0, p2

    div-int v3, p1, p2

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    if-gt v0, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    const/16 v1, 0x8

    if-gt v0, v1, :cond_1

    invoke-static {v0}, Lcom/sec/android/gallery3d/common/Utils;->prevPowerOf2(I)I

    move-result v1

    goto :goto_0

    :cond_1
    div-int/lit8 v1, v0, 0x8

    mul-int/lit8 v1, v1, 0x8

    goto :goto_0
.end method

.method public static computeSampleSizeLargerSideLength(III)I
    .locals 4

    const/4 v1, 0x1

    div-int v2, p0, p2

    div-int v3, p1, p2

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    if-gt v0, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    const/16 v1, 0x8

    if-gt v0, v1, :cond_1

    invoke-static {v0}, Lcom/sec/android/gallery3d/common/Utils;->prevPowerOf2(I)I

    move-result v1

    goto :goto_0

    :cond_1
    div-int/lit8 v1, v0, 0x8

    mul-int/lit8 v1, v1, 0x8

    goto :goto_0
.end method

.method public static createVideoThumbnail(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2

    const-wide/16 v0, -0x1

    invoke-static {p0, v0, v1}, Lcom/sec/android/gallery3d/common/BitmapUtils;->createVideoThumbnail(Ljava/lang/String;J)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static createVideoThumbnail(Ljava/lang/String;J)Landroid/graphics/Bitmap;
    .locals 9

    new-instance v4, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v4}, Landroid/media/MediaMetadataRetriever;-><init>()V

    :try_start_0
    invoke-virtual {v4, p0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/media/MediaMetadataRetriever;->getEmbeddedPicture()[B

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v5, 0x0

    array-length v6, v1

    invoke-static {v1, v5, v6}, Lcom/sec/samsung/gallery/decoder/DecoderInterface;->decodeByteArray([BII)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_1
    invoke-virtual {v4}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v2

    const-string/jumbo v5, "BitmapUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "createVideoThumbnail : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    :try_start_2
    invoke-static {p0, v4, p1, p2}, Lcom/sec/android/gallery3d/common/BitmapUtils;->getVideoThumbnail(Ljava/lang/String;Landroid/media/MediaMetadataRetriever;J)Landroid/graphics/Bitmap;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    :try_start_3
    invoke-virtual {v4}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :catch_1
    move-exception v2

    const-string/jumbo v5, "BitmapUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "createVideoThumbnail : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_2
    move-exception v3

    :try_start_4
    const-string/jumbo v5, "BitmapUtils"

    const-string/jumbo v6, "createVideoThumbnail"

    invoke-static {v5, v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-virtual {v4}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_3
    move-exception v2

    const-string/jumbo v5, "BitmapUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "createVideoThumbnail : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catchall_0
    move-exception v5

    :try_start_6
    invoke-virtual {v4}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    :goto_2
    throw v5

    :catch_4
    move-exception v2

    const-string/jumbo v6, "BitmapUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "createVideoThumbnail : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public static cropCenterByRatio(Landroid/graphics/Bitmap;FIZ)Landroid/graphics/Bitmap;
    .locals 12

    const/high16 v11, 0x40000000    # 2.0f

    const/4 v10, 0x0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v7, v6

    int-to-float v8, v3

    const/high16 v9, 0x3f800000    # 1.0f

    mul-float/2addr v8, v9

    div-float/2addr v7, v8

    cmpl-float v7, v7, p1

    if-ltz v7, :cond_3

    int-to-float v7, v3

    mul-float/2addr v7, p1

    float-to-int v2, v7

    move v1, v3

    :goto_0
    if-lez v2, :cond_0

    if-gtz v1, :cond_4

    :cond_0
    const-string/jumbo v7, "BitmapUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "cropCenterByRatio() error : dW="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", dH="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", w="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", h="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", ratio="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", rotate="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p3, :cond_1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    const/4 v5, 0x0

    :cond_2
    :goto_1
    return-object v5

    :cond_3
    move v2, v6

    int-to-float v7, v6

    div-float/2addr v7, p1

    float-to-int v1, v7

    goto :goto_0

    :cond_4
    invoke-static {p0}, Lcom/sec/android/gallery3d/common/BitmapUtils;->getConfig(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap$Config;

    move-result-object v7

    invoke-static {v2, v1, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    sub-int v7, v2, v6

    int-to-float v7, v7

    div-float/2addr v7, v11

    sub-int v8, v1, v3

    int-to-float v8, v8

    div-float/2addr v8, v11

    invoke-virtual {v0, v7, v8}, Landroid/graphics/Canvas;->translate(FF)V

    new-instance v4, Landroid/graphics/Paint;

    const/4 v7, 0x6

    invoke-direct {v4, v7}, Landroid/graphics/Paint;-><init>(I)V

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v7

    if-nez v7, :cond_5

    invoke-virtual {v0, p0, v10, v10, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_5
    if-eqz p3, :cond_2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_1
.end method

.method public static cropFaceByRatio(Landroid/graphics/Bitmap;Landroid/graphics/RectF;FIZ)Landroid/graphics/Bitmap;
    .locals 11

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v8, v7

    int-to-float v9, v4

    const/high16 v10, 0x3f800000    # 1.0f

    mul-float/2addr v9, v10

    div-float/2addr v8, v9

    cmpl-float v8, v8, p2

    if-ltz v8, :cond_3

    int-to-float v8, v4

    mul-float/2addr v8, p2

    float-to-int v3, v8

    move v2, v4

    :goto_0
    if-lez v3, :cond_0

    if-gtz v2, :cond_4

    :cond_0
    const-string/jumbo v8, "BitmapUtils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "cropCenterByRatio() error : dW="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", dH="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", w="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", h="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", ratio="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", rotate="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p4, :cond_1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    const/4 v6, 0x0

    :cond_2
    :goto_1
    return-object v6

    :cond_3
    move v3, v7

    int-to-float v8, v7

    div-float/2addr v8, p2

    float-to-int v2, v8

    goto :goto_0

    :cond_4
    invoke-static {p0}, Lcom/sec/android/gallery3d/common/BitmapUtils;->getConfig(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap$Config;

    move-result-object v8

    invoke-static {v3, v2, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-static {p0, v3, v2, p1}, Lcom/sec/android/gallery3d/common/BitmapUtils;->calcCropRect(Landroid/graphics/Bitmap;IILandroid/graphics/RectF;)Landroid/graphics/Rect;

    move-result-object v1

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iget v8, v1, Landroid/graphics/Rect;->left:I

    neg-int v8, v8

    int-to-float v8, v8

    iget v9, v1, Landroid/graphics/Rect;->top:I

    neg-int v9, v9

    int-to-float v9, v9

    invoke-virtual {v0, v8, v9}, Landroid/graphics/Canvas;->translate(FF)V

    new-instance v5, Landroid/graphics/Paint;

    const/4 v8, 0x6

    invoke-direct {v5, v8}, Landroid/graphics/Paint;-><init>(I)V

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v0, p0, v8, v9, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    if-eqz p4, :cond_2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_1
.end method

.method public static cropFaceByRect(Landroid/graphics/Bitmap;IIIIZ)Landroid/graphics/Bitmap;
    .locals 5

    const/4 v3, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_0
    const/4 p0, 0x0

    :cond_1
    :goto_0
    return-object p0

    :cond_2
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-gez p1, :cond_3

    move p1, v3

    :cond_3
    if-gez p2, :cond_4

    move p2, v3

    :cond_4
    add-int v3, p1, p3

    if-le v3, v1, :cond_5

    sub-int p3, v1, p1

    :cond_5
    add-int v3, p2, p4

    if-le v3, v0, :cond_6

    sub-int p4, v0, p2

    :cond_6
    if-ne v1, p3, :cond_7

    if-eq v0, p4, :cond_1

    :cond_7
    invoke-static {p0, p1, p2, p3, p4}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz p5, :cond_8

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_8
    move-object p0, v2

    goto :goto_0
.end method

.method public static cropProcess(Landroid/graphics/Bitmap;Lcom/sec/android/gallery3d/data/MediaItem;IIZ)Landroid/graphics/Rect;
    .locals 11

    const/4 v6, 0x0

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->getRotation()I

    move-result v5

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    move v8, p2

    move v7, p3

    if-eqz p4, :cond_1

    instance-of v3, p1, Lcom/sec/android/gallery3d/data/LocalImage;

    if-nez v3, :cond_0

    instance-of v3, p1, Lcom/sec/android/gallery3d/data/UnionImage;

    if-eqz v3, :cond_1

    :cond_0
    invoke-static {p1}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isPanorama(Lcom/sec/android/gallery3d/data/MediaItem;)Z

    move-result v3

    if-nez v3, :cond_1

    instance-of v3, p1, Lcom/sec/android/gallery3d/data/LocalImage;

    if-eqz v3, :cond_3

    check-cast p1, Lcom/sec/android/gallery3d/data/LocalImage;

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/LocalImage;->getRectOfAllFaces()Landroid/graphics/RectF;

    move-result-object v2

    :goto_0
    if-eqz v2, :cond_1

    int-to-float v3, v8

    int-to-float v4, v7

    invoke-static/range {v0 .. v5}, Lcom/sec/samsung/gallery/util/FaceUtil;->calcFaceCropRect(IILandroid/graphics/RectF;FFI)Landroid/graphics/Rect;

    move-result-object v6

    :cond_1
    if-nez v6, :cond_2

    int-to-float v3, v0

    int-to-float v4, v1

    int-to-float v9, v8

    int-to-float v10, v7

    invoke-static {v3, v4, v9, v10, v5}, Lcom/sec/android/gallery3d/common/BitmapUtils;->calcCenterCropRect(FFFFI)Landroid/graphics/Rect;

    move-result-object v6

    :cond_2
    return-object v6

    :cond_3
    check-cast p1, Lcom/sec/android/gallery3d/data/UnionImage;

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/UnionImage;->getRectOfAllFaces()Landroid/graphics/RectF;

    move-result-object v2

    goto :goto_0
.end method

.method public static cropThumnailBitmap(Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;
    .locals 6

    const/16 v2, 0xc8

    const/16 v3, 0x96

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move v1, p1

    invoke-static/range {v0 .. v5}, Lcom/sec/android/gallery3d/common/BitmapUtils;->cropThumnailBitmap(Landroid/graphics/Bitmap;ZIIZZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private static cropThumnailBitmap(Landroid/graphics/Bitmap;ZIIZZ)Landroid/graphics/Bitmap;
    .locals 23

    const/4 v9, 0x0

    if-nez p0, :cond_1

    const/16 p0, 0x0

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    if-eqz p1, :cond_4

    move/from16 v17, p3

    move/from16 v16, p2

    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v18

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14

    move/from16 v0, v18

    move/from16 v1, v17

    if-ne v0, v1, :cond_2

    move/from16 v0, v16

    if-eq v14, v0, :cond_0

    :cond_2
    div-int/lit8 v12, v18, 0x2

    div-int/lit8 v13, v14, 0x2

    mul-int v19, v17, v14

    mul-int v20, v16, v18

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_5

    mul-int v19, v17, v14

    :try_start_0
    div-int v5, v19, v16

    const/16 v19, 0x0

    div-int/lit8 v20, v5, 0x2

    sub-int v20, v12, v20

    sub-int v21, v18, v5

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->min(II)I

    move-result v20

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->max(II)I

    move-result v6

    const/4 v7, 0x0

    move v4, v14

    :goto_2
    if-eqz p4, :cond_6

    move/from16 v11, p2

    :goto_3
    if-eqz p4, :cond_7

    move/from16 v10, p3

    :goto_4
    sget-object v19, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move-object/from16 v0, v19

    invoke-static {v11, v10, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v9

    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v9}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v15, Landroid/graphics/Paint;

    invoke-direct {v15}, Landroid/graphics/Paint;-><init>()V

    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    new-instance v19, Landroid/graphics/Rect;

    add-int v20, v6, v5

    add-int v21, v7, v4

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v0, v6, v7, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v20, Landroid/graphics/Rect;

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-direct {v0, v1, v2, v11, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v3, v0, v1, v2, v15}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_5
    if-eqz p5, :cond_3

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_3
    move-object/from16 p0, v9

    goto/16 :goto_0

    :cond_4
    move/from16 v17, p2

    move/from16 v16, p3

    goto/16 :goto_1

    :cond_5
    mul-int v19, v16, v18

    :try_start_1
    div-int v4, v19, v17

    const/16 v19, 0x0

    div-int/lit8 v20, v4, 0x2

    sub-int v20, v13, v20

    sub-int v21, v14, v4

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->min(II)I

    move-result v20

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->max(II)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v7

    const/4 v6, 0x0

    move/from16 v5, v18

    goto :goto_2

    :cond_6
    move/from16 v11, v17

    goto :goto_3

    :cond_7
    move/from16 v10, v16

    goto :goto_4

    :catch_0
    move-exception v8

    const-string/jumbo v19, "BitmapUtils"

    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5
.end method

.method public static getBitmapFromDrawable(IILandroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 5

    const/4 v4, 0x0

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p0, p1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    invoke-virtual {p2, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p2, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-object v0
.end method

.method public static getBitmapFromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 6

    const/4 v5, 0x0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    invoke-virtual {p0, v5, v5, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-object v0
.end method

.method public static getBitmapFromDrawable(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/Bitmap;
    .locals 4

    const/4 v3, 0x0

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v3, v3, p1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-object v0
.end method

.method public static getBlurBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;
    .locals 8

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v6

    sget-object v7, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    if-ne v6, v7, :cond_1

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v7, 0x1

    invoke-virtual {p1, v6, v7}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_0
    invoke-static {p0}, Landroid/renderscript/RenderScript;->create(Landroid/content/Context;)Landroid/renderscript/RenderScript;

    move-result-object v4

    sget-object v6, Lcom/sec/android/gallery3d/common/BitmapUtils;->mRsMessage:Landroid/renderscript/RenderScript$RSMessageHandler;

    invoke-virtual {v4, v6}, Landroid/renderscript/RenderScript;->setMessageHandler(Landroid/renderscript/RenderScript$RSMessageHandler;)V

    sget-object v6, Landroid/renderscript/Allocation$MipmapControl;->MIPMAP_NONE:Landroid/renderscript/Allocation$MipmapControl;

    const/4 v7, 0x1

    invoke-static {v4, v0, v6, v7}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/renderscript/Allocation$MipmapControl;I)Landroid/renderscript/Allocation;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;)Landroid/renderscript/Allocation;

    move-result-object v3

    invoke-static {v4}, Landroid/renderscript/Element;->U8_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/renderscript/ScriptIntrinsicBlur;->create(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)Landroid/renderscript/ScriptIntrinsicBlur;

    move-result-object v5

    int-to-float v6, p2

    invoke-virtual {v5, v6}, Landroid/renderscript/ScriptIntrinsicBlur;->setRadius(F)V

    invoke-virtual {v5, v2}, Landroid/renderscript/ScriptIntrinsicBlur;->setInput(Landroid/renderscript/Allocation;)V

    invoke-virtual {v5, v3}, Landroid/renderscript/ScriptIntrinsicBlur;->forEach(Landroid/renderscript/Allocation;)V

    invoke-virtual {v3, v0}, Landroid/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V

    invoke-virtual {v4}, Landroid/renderscript/RenderScript;->destroy()V

    if-eqz p3, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    :goto_1
    return-object v0

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {p1, v6, v7}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v6, "BitmapUtils"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static getCircleBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;
    .locals 13

    const/4 v8, 0x0

    const/4 v11, 0x0

    const/high16 v12, 0x40000000    # 2.0f

    const/4 v10, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v9

    if-eqz v9, :cond_2

    :cond_0
    move-object v1, v8

    :cond_1
    :goto_0
    return-object v1

    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v3, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-direct {v2, v9, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6, v10, v10, v7, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v2, v10, v10, v7, v3}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(IIII)V

    invoke-virtual {v0, v11, v11}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {v4}, Landroid/graphics/Paint;->reset()V

    const/4 v9, 0x1

    invoke-virtual {v4, v9}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    int-to-float v9, v7

    div-float/2addr v9, v12

    int-to-float v10, v3

    div-float/2addr v10, v12

    int-to-float v11, v7

    div-float/2addr v11, v12

    invoke-virtual {v0, v9, v10, v11, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    new-instance v9, Landroid/graphics/PorterDuffXfermode;

    sget-object v10, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v9, v10}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v5, v9}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    invoke-virtual {v0, p1, v8, v6, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0
.end method

.method private static getConfig(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap$Config;
    .locals 1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    :cond_0
    return-object v0
.end method

.method public static getFaceRect(Lcom/sec/android/gallery3d/data/MediaItem;)Landroid/graphics/RectF;
    .locals 2

    const/4 v0, 0x0

    instance-of v1, p0, Lcom/sec/android/gallery3d/data/UnionLocalSearchImage;

    if-eqz v1, :cond_1

    check-cast p0, Lcom/sec/android/gallery3d/data/UnionLocalSearchImage;

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/data/UnionLocalSearchImage;->getFaceRect()Landroid/graphics/RectF;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    instance-of v1, p0, Lcom/sec/android/gallery3d/data/UnionSCloudSearchImage;

    if-eqz v1, :cond_2

    check-cast p0, Lcom/sec/android/gallery3d/data/UnionSCloudSearchImage;

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/data/UnionSCloudSearchImage;->getFaceRect()Landroid/graphics/RectF;

    move-result-object v0

    goto :goto_0

    :cond_2
    instance-of v1, p0, Lcom/sec/android/gallery3d/data/LocalSearchImage;

    if-eqz v1, :cond_0

    check-cast p0, Lcom/sec/android/gallery3d/data/LocalSearchImage;

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/data/LocalSearchImage;->getFaceRect()Landroid/graphics/RectF;

    move-result-object v0

    goto :goto_0
.end method

.method public static getNinePatch(IIILandroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 10

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, p0, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :goto_0
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v3

    new-instance v0, Landroid/graphics/drawable/NinePatchDrawable;

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/NinePatchDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;[BLandroid/graphics/Rect;Ljava/lang/String;)V

    const/4 v4, 0x1

    invoke-static {p1, v4}, Ljava/lang/Math;->max(II)I

    move-result p1

    const/4 v4, 0x1

    invoke-static {p2, v4}, Ljava/lang/Math;->max(II)I

    move-result p2

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5, p1, p2}, Landroid/graphics/drawable/NinePatchDrawable;->setBounds(IIII)V

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v8}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v6}, Landroid/graphics/drawable/NinePatchDrawable;->draw(Landroid/graphics/Canvas;)V

    return-object v8

    :catch_0
    move-exception v7

    const-string/jumbo v4, "BitmapUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Bitmap decodeResource failed : NullPointerException \n"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v7}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getShapeBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;
    .locals 12

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v10

    if-eqz v10, :cond_2

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return-object v1

    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v9, v4, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-direct {v3, v10, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    new-instance v7, Landroid/graphics/Rect;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct {v7, v10, v11, v9, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v3, v10, v11, v9, v4}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(IIII)V

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v0, v10, v11}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {v5}, Landroid/graphics/Paint;->reset()V

    const/4 v10, 0x1

    invoke-virtual {v5, v10}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-static {v10, v4}, Lcom/sec/samsung/gallery/util/ContactPhotoUtil;->getCornerRadius(Landroid/content/res/Resources;I)F

    move-result v2

    new-instance v8, Landroid/graphics/RectF;

    invoke-direct {v8, v7}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v0, v8, v2, v2, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    new-instance v10, Landroid/graphics/PorterDuffXfermode;

    sget-object v11, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v10, v11}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v6, v10}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    const/4 v10, 0x0

    invoke-virtual {v0, p1, v10, v7, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0
.end method

.method public static getVideoThumbnail(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 8

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/4 v3, 0x0

    :goto_0
    return-object v3

    :cond_0
    new-instance v2, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v2}, Landroid/media/MediaMetadataRetriever;-><init>()V

    const-wide/16 v4, 0x0

    :try_start_0
    invoke-virtual {v2, p0, p1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    invoke-virtual {v2, v4, v5}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(J)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    :try_start_1
    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    move-object v3, v0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v3, "BitmapUtils"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_1
    move-exception v1

    :try_start_2
    const-string/jumbo v3, "BitmapUtils"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    :catch_2
    move-exception v1

    const-string/jumbo v3, "BitmapUtils"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catchall_0
    move-exception v3

    :try_start_4
    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    :goto_2
    throw v3

    :catch_3
    move-exception v1

    const-string/jumbo v6, "BitmapUtils"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private static getVideoThumbnail(Ljava/lang/String;Landroid/media/MediaMetadataRetriever;J)Landroid/graphics/Bitmap;
    .locals 10

    const-wide/16 v8, -0x1

    if-nez p0, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/sec/android/gallery3d/util/MediaSetUtils;->REMOVABLE_SD_DIR_PATH:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, "DCIM/Camera"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, "/"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/sec/android/gallery3d/common/BitmapUtils;->SDCARD_CAMERA_BUCKET_NAME:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/sec/android/gallery3d/util/MediaSetUtils;->REMOVABLE_SD_DIR_PATH:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, "DCIM/CoverCamera"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/sec/android/gallery3d/common/BitmapUtils;->SDCARD_COVER_CAMERA_BUCKET_NAME:Ljava/lang/String;

    sget-object v3, Lcom/sec/android/gallery3d/common/BitmapUtils;->CAMERA_BUCKET_NAME:Ljava/lang/String;

    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    sget-object v3, Lcom/sec/android/gallery3d/common/BitmapUtils;->SDCARD_CAMERA_BUCKET_NAME:Ljava/lang/String;

    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    sget-object v3, Lcom/sec/android/gallery3d/common/BitmapUtils;->HIGHLIGHT_BUCKET_NAME:Ljava/lang/String;

    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    sget-object v3, Lcom/sec/android/gallery3d/common/BitmapUtils;->COVER_CAMERA_BUCKET_NAME:Ljava/lang/String;

    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    sget-object v3, Lcom/sec/android/gallery3d/common/BitmapUtils;->SDCARD_COVER_CAMERA_BUCKET_NAME:Ljava/lang/String;

    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    cmp-long v3, p2, v8

    if-nez v3, :cond_2

    const-wide/32 v4, 0xe4e1c0

    :goto_1
    const/4 v3, 0x2

    invoke-virtual {p1, v4, v5, v3}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(JI)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_2
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v3

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-eq v3, v6, :cond_1

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v6, 0x0

    invoke-virtual {v0, v3, v6}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v3, "BitmapUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getVideoThumbnail():"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move-object v2, v0

    goto/16 :goto_0

    :cond_2
    move-wide v4, p2

    goto :goto_1

    :cond_3
    cmp-long v3, p2, v8

    if-nez v3, :cond_4

    const-wide/16 v4, 0x0

    :goto_3
    const/4 v3, 0x2

    :try_start_1
    invoke-static {p1, v4, v5, v3}, Lcom/sec/samsung/gallery/lib/factory/MediaMetadataRetrieverWrapper;->getFrameAtTime(Landroid/media/MediaMetadataRetriever;JI)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_2

    :cond_4
    move-wide v4, p2

    goto :goto_3
.end method

.method public static isMpoSupported(Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_0

    const-string/jumbo v0, "image/mpo"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isRotationSupported(Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_1

    const-string/jumbo v0, "image/jpeg"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "image/jpg"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSupportedByRegionDecoder(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v1, "image/"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "image/gif"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "bmp"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "golf"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static modifyBitmapForCropRect(Landroid/graphics/Bitmap;ILandroid/graphics/Rect;)Landroid/graphics/Bitmap;
    .locals 10

    const/4 v6, 0x0

    move-object v9, p2

    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v5}, Landroid/graphics/Matrix;->reset()V

    int-to-float v0, p1

    invoke-virtual {v5, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    iget v0, v9, Landroid/graphics/Rect;->left:I

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v1

    add-int v8, v0, v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-le v8, v0, :cond_0

    iput v6, v9, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, v9, Landroid/graphics/Rect;->right:I

    :cond_0
    iget v0, v9, Landroid/graphics/Rect;->top:I

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v1

    add-int v7, v0, v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-le v7, v0, :cond_1

    iput v6, v9, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, v9, Landroid/graphics/Rect;->bottom:I

    :cond_1
    iget v1, v9, Landroid/graphics/Rect;->left:I

    iget v2, v9, Landroid/graphics/Rect;->top:I

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v4

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static resizeAndCropCenter(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;
    .locals 12

    const/high16 v11, 0x40000000    # 2.0f

    const/4 v10, 0x0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-ne v6, p1, :cond_0

    if-ne v1, p1, :cond_0

    :goto_0
    return-object p0

    :cond_0
    int-to-float v8, p1

    invoke-static {v6, v1}, Ljava/lang/Math;->min(II)I

    move-result v9

    int-to-float v9, v9

    div-float v4, v8, v9

    invoke-static {p0}, Lcom/sec/android/gallery3d/common/BitmapUtils;->getConfig(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap$Config;

    move-result-object v8

    invoke-static {p1, p1, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, v4

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v7

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, v4

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v2

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    sub-int v8, p1, v7

    int-to-float v8, v8

    div-float/2addr v8, v11

    sub-int v9, p1, v2

    int-to-float v9, v9

    div-float/2addr v9, v11

    invoke-virtual {v0, v8, v9}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {v0, v4, v4}, Landroid/graphics/Canvas;->scale(FF)V

    new-instance v3, Landroid/graphics/Paint;

    const/4 v8, 0x6

    invoke-direct {v3, v8}, Landroid/graphics/Paint;-><init>(I)V

    invoke-virtual {v0, p0, v10, v10, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    move-object p0, v5

    goto :goto_0
.end method

.method public static resizeAndRotateBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    .locals 11

    const/4 v10, 0x1

    const/4 v9, 0x0

    if-nez p0, :cond_1

    const/4 v8, 0x0

    :cond_0
    :goto_0
    return-object v8

    :cond_1
    invoke-static {p0, p1, v9}, Lcom/sec/android/gallery3d/common/BitmapUtils;->resizeDownBySideLength(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    if-ne v0, p0, :cond_2

    const/4 p3, 0x0

    :cond_2
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    int-to-float v1, p2

    invoke-virtual {v5, v1}, Landroid/graphics/Matrix;->postRotate(F)Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x1

    :try_start_0
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    :goto_1
    if-eqz p3, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    :catch_0
    move-exception v7

    invoke-static {}, Ljava/lang/System;->gc()V

    move v1, v9

    move v2, v9

    move v6, v10

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v8

    goto :goto_1
.end method

.method public static resizeBitmapByRatio(Landroid/graphics/Bitmap;FF)Landroid/graphics/Bitmap;
    .locals 6

    const/4 v5, 0x0

    if-eqz p0, :cond_0

    cmpl-float v4, p1, v5

    if-lez v4, :cond_0

    cmpl-float v4, p2, v5

    if-lez v4, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    div-float v3, p2, p1

    int-to-float v4, v1

    mul-float/2addr v4, v3

    float-to-int v2, v4

    if-eq v0, v2, :cond_0

    const/4 v4, 0x1

    invoke-static {p0, v1, v2, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static resizeBitmapByScale(Landroid/graphics/Bitmap;FZ)Landroid/graphics/Bitmap;
    .locals 8

    const/4 v6, 0x0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, p1

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, p1

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v1

    if-lez v4, :cond_0

    if-gtz v1, :cond_2

    :cond_0
    const-string/jumbo v5, "BitmapUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "invalid image size..width = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "  height = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    :cond_1
    :goto_0
    return-object p0

    :cond_2
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    if-ne v4, v5, :cond_3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    if-eq v1, v5, :cond_1

    :cond_3
    invoke-static {p0}, Lcom/sec/android/gallery3d/common/BitmapUtils;->getConfig(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap$Config;

    move-result-object v5

    invoke-static {v4, v1, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, p1, p1}, Landroid/graphics/Canvas;->scale(FF)V

    new-instance v2, Landroid/graphics/Paint;

    const/4 v5, 0x6

    invoke-direct {v2, v5}, Landroid/graphics/Paint;-><init>(I)V

    invoke-virtual {v0, p0, v6, v6, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    if-eqz p2, :cond_4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_4
    move-object p0, v3

    goto :goto_0
.end method

.method public static resizeBySideLength(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;
    .locals 6

    const/16 v3, 0x78

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-ne v2, v3, :cond_0

    if-ne v1, v3, :cond_0

    :goto_0
    return-object p0

    :cond_0
    int-to-float v3, p1

    int-to-float v4, v2

    div-float/2addr v3, v4

    int-to-float v4, p1

    int-to-float v5, v1

    div-float/2addr v4, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {p0, v0, p2}, Lcom/sec/android/gallery3d/common/BitmapUtils;->resizeBitmapByScale(Landroid/graphics/Bitmap;FZ)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_0
.end method

.method public static resizeDownAndCropCenter(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;
    .locals 12

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-static {v7, v1}, Ljava/lang/Math;->min(II)I

    move-result v3

    if-ne v7, v1, :cond_0

    if-gt v3, p1, :cond_0

    :goto_0
    return-object p0

    :cond_0
    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    move-result p1

    int-to-float v9, p1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v9, v10

    int-to-float v10, p1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    int-to-float v11, v11

    div-float/2addr v10, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->max(FF)F

    move-result v5

    invoke-static {p0}, Lcom/sec/android/gallery3d/common/BitmapUtils;->getConfig(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap$Config;

    move-result-object v9

    invoke-static {p1, p1, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v9, v5

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v8

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v9, v5

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v2

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    sub-int v9, p1, v8

    int-to-float v9, v9

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    sub-int v10, p1, v2

    int-to-float v10, v10

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v10, v11

    invoke-virtual {v0, v9, v10}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {v0, v5, v5}, Landroid/graphics/Canvas;->scale(FF)V

    new-instance v4, Landroid/graphics/Paint;

    const/4 v9, 0x6

    invoke-direct {v4, v9}, Landroid/graphics/Paint;-><init>(I)V

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v0, p0, v9, v10, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    move-object p0, v6

    goto :goto_0
.end method

.method public static resizeDownAndCropFace(Landroid/graphics/Bitmap;ILandroid/graphics/RectF;Z)Landroid/graphics/Bitmap;
    .locals 13

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-static {v7, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    if-ne v7, v2, :cond_0

    if-gt v3, p1, :cond_0

    :goto_0
    return-object p0

    :cond_0
    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    move-result p1

    int-to-float v10, p1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    int-to-float v11, v11

    div-float/2addr v10, v11

    int-to-float v11, p1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    int-to-float v12, v12

    div-float/2addr v11, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->max(FF)F

    move-result v5

    invoke-static {p0}, Lcom/sec/android/gallery3d/common/BitmapUtils;->getConfig(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap$Config;

    move-result-object v10

    invoke-static {p1, p1, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-static {p0, p1, p1, p2}, Lcom/sec/android/gallery3d/common/BitmapUtils;->calcCropRect(Landroid/graphics/Bitmap;IILandroid/graphics/RectF;)Landroid/graphics/Rect;

    move-result-object v1

    iget v10, v1, Landroid/graphics/Rect;->left:I

    int-to-float v10, v10

    mul-float/2addr v10, v5

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v8

    iget v10, v1, Landroid/graphics/Rect;->top:I

    int-to-float v10, v10

    mul-float/2addr v10, v5

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v9

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    neg-int v10, v8

    int-to-float v10, v10

    neg-int v11, v9

    int-to-float v11, v11

    invoke-virtual {v0, v10, v11}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {v0, v5, v5}, Landroid/graphics/Canvas;->scale(FF)V

    new-instance v4, Landroid/graphics/Paint;

    const/4 v10, 0x6

    invoke-direct {v4, v10}, Landroid/graphics/Paint;-><init>(I)V

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v0, p0, v10, v11, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    if-eqz p3, :cond_1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    move-object p0, v6

    goto :goto_0
.end method

.method public static resizeDownBySideLength(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;
    .locals 6

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v3, p1

    int-to-float v4, v2

    div-float/2addr v3, v4

    int-to-float v4, p1

    int-to-float v5, v1

    div-float/2addr v4, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v3, v0, v3

    if-gez v3, :cond_0

    invoke-static {p0, v0, p2}, Lcom/sec/android/gallery3d/common/BitmapUtils;->resizeBitmapByScale(Landroid/graphics/Bitmap;FZ)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_0
.end method

.method public static resizeDownForVideoCall(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 6

    if-nez p0, :cond_0

    const/4 v3, 0x0

    :goto_0
    return-object v3

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v3, p1

    int-to-float v4, v2

    div-float/2addr v3, v4

    int-to-float v4, p2

    int-to-float v5, v0

    div-float/2addr v4, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v1

    int-to-float v3, v2

    mul-float/2addr v3, v1

    float-to-int p1, v3

    int-to-float v3, v0

    mul-float/2addr v3, v1

    float-to-int p2, v3

    rem-int/lit8 v3, p1, 0x2

    if-eqz v3, :cond_1

    add-int/lit8 p1, p1, 0x1

    :cond_1
    rem-int/lit8 v3, p2, 0x2

    if-eqz v3, :cond_2

    add-int/lit8 p2, p2, 0x1

    :cond_2
    const/4 v3, 0x1

    invoke-static {p0, p1, p2, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v3

    goto :goto_0
.end method

.method public static resizeDownIfTooBig(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;
    .locals 6

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v3, p1

    int-to-float v4, v2

    div-float/2addr v3, v4

    int-to-float v4, p1

    int-to-float v5, v1

    div-float/2addr v4, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v0

    const/high16 v3, 0x3f000000    # 0.5f

    cmpl-float v3, v0, v3

    if-lez v3, :cond_0

    :goto_0
    return-object p0

    :cond_0
    invoke-static {p0, v0, p2}, Lcom/sec/android/gallery3d/common/BitmapUtils;->resizeBitmapByScale(Landroid/graphics/Bitmap;FZ)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_0
.end method

.method public static resizeDownToPixels(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;
    .locals 8

    if-nez p0, :cond_1

    const/4 p0, 0x0

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-double v4, p1

    mul-int v3, v2, v0

    int-to-double v6, v3

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v1, v4

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v3, v1, v3

    if-gez v3, :cond_0

    invoke-static {p0, v1, p2}, Lcom/sec/android/gallery3d/common/BitmapUtils;->resizeBitmapByScale(Landroid/graphics/Bitmap;FZ)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_0
.end method

.method public static rotateBitmap(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;
    .locals 11

    const/4 v10, 0x1

    const/4 v9, 0x0

    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    :cond_0
    move-object v7, p0

    :cond_1
    :goto_0
    return-object v7

    :cond_2
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    int-to-float v0, p1

    invoke-virtual {v5, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    :try_start_0
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    :goto_1
    if-eqz p2, :cond_1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    :catch_0
    move-exception v8

    invoke-static {}, Ljava/lang/System;->gc()V

    move-object v0, p0

    move v1, v9

    move v2, v9

    move v6, v10

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    goto :goto_1
.end method

.method public static setBGColor(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;
    .locals 7

    const/4 v6, 0x0

    if-nez p0, :cond_1

    const-string/jumbo v3, "BitmapUtils"

    const-string/jumbo v4, "srcBitmap is null at setBGColor"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v5

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v1, Landroid/graphics/Paint;

    const/4 v3, 0x2

    invoke-direct {v1, v3}, Landroid/graphics/Paint;-><init>(I)V

    invoke-virtual {v0, p1}, Landroid/graphics/Canvas;->drawColor(I)V

    invoke-virtual {v0, p0, v6, v6, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0
.end method
