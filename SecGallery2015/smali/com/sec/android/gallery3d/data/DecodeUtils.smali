.class public Lcom/sec/android/gallery3d/data/DecodeUtils;
.super Ljava/lang/Object;
.source "DecodeUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/gallery3d/data/DecodeUtils$DecodeCanceller;
    }
.end annotation


# static fields
.field private static final MAX_PIXEL_COUNT:I = 0x138800

.field private static final PANORAMIC_RATIO:F = 2.7f

.field private static final TAG:Ljava/lang/String; = "DecodeUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createBitmapRegionDecoder(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/io/FileDescriptor;Z)Lcom/sec/samsung/gallery/decoder/regiondecoder/RegionDecoder;
    .locals 7

    :try_start_0
    invoke-static {p2, p3}, Lcom/sec/samsung/gallery/decoder/regiondecoder/RegionDecoder;->newInstance(Ljava/io/FileDescriptor;Z)Lcom/sec/samsung/gallery/decoder/regiondecoder/RegionDecoder;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    const/4 v4, 0x0

    invoke-static {v2, v4}, Lcom/sec/android/gallery3d/data/DecodeUtils;->createBitmapRegionDecoder(Ljava/io/InputStream;Z)Lcom/sec/samsung/gallery/decoder/regiondecoder/RegionDecoder;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    :try_start_2
    invoke-static {v2}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    :try_start_3
    const-string/jumbo v4, "DecodeUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "FileNotFoundException : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-static {v2}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    :catch_1
    move-exception v3

    const-string/jumbo v4, "DecodeUtils"

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v4

    :try_start_5
    invoke-static {v2}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    throw v4
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1
.end method

.method public static createBitmapRegionDecoder(Ljava/io/InputStream;Z)Lcom/sec/samsung/gallery/decoder/regiondecoder/RegionDecoder;
    .locals 4

    :try_start_0
    invoke-static {p0, p1}, Lcom/sec/samsung/gallery/decoder/regiondecoder/RegionDecoder;->newInstance(Ljava/io/InputStream;Z)Lcom/sec/samsung/gallery/decoder/regiondecoder/RegionDecoder;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "DecodeUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "requestCreateBitmapRegionDecoder: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static createBitmapRegionDecoder(Ljava/lang/String;Z)Lcom/sec/samsung/gallery/decoder/regiondecoder/RegionDecoder;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/sec/android/gallery3d/data/DecodeUtils;->createBitmapRegionDecoder(Ljava/lang/String;ZZ)Lcom/sec/samsung/gallery/decoder/regiondecoder/RegionDecoder;

    move-result-object v0

    return-object v0
.end method

.method public static createBitmapRegionDecoder(Ljava/lang/String;ZZ)Lcom/sec/samsung/gallery/decoder/regiondecoder/RegionDecoder;
    .locals 2

    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/sec/samsung/gallery/decoder/regiondecoder/RegionDecoder;->newInstance(Ljava/lang/String;ZZ)Lcom/sec/samsung/gallery/decoder/regiondecoder/RegionDecoder;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "DecodeUtils"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static decode(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;[BIILandroid/graphics/BitmapFactory$Options;Z)Landroid/graphics/Bitmap;
    .locals 1

    if-nez p4, :cond_0

    new-instance p4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    :cond_0
    new-instance v0, Lcom/sec/android/gallery3d/data/DecodeUtils$DecodeCanceller;

    invoke-direct {v0, p4}, Lcom/sec/android/gallery3d/data/DecodeUtils$DecodeCanceller;-><init>(Landroid/graphics/BitmapFactory$Options;)V

    invoke-interface {p0, v0}, Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;->setCancelListener(Lcom/sec/android/gallery3d/util/ThreadPool$CancelListener;)V

    invoke-static {p4}, Lcom/sec/android/gallery3d/data/DecodeUtils;->setOptionsMutable(Landroid/graphics/BitmapFactory$Options;)V

    invoke-static {p1, p2, p3, p4, p5}, Lcom/sec/samsung/gallery/decoder/DecoderInterface;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/gallery3d/data/DecodeUtils;->ensureGLCompatibleBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static decode(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;[BLandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 6

    const/4 v2, 0x0

    array-length v3, p1

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move v5, v2

    invoke-static/range {v0 .. v5}, Lcom/sec/android/gallery3d/data/DecodeUtils;->decode(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;[BIILandroid/graphics/BitmapFactory$Options;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private static decodeBounds(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;[BIILandroid/graphics/BitmapFactory$Options;)V
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p4, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/sec/android/gallery3d/common/Utils;->assertTrue(Z)V

    iput-boolean v1, p4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    new-instance v0, Lcom/sec/android/gallery3d/data/DecodeUtils$DecodeCanceller;

    invoke-direct {v0, p4}, Lcom/sec/android/gallery3d/data/DecodeUtils$DecodeCanceller;-><init>(Landroid/graphics/BitmapFactory$Options;)V

    invoke-interface {p0, v0}, Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;->setCancelListener(Lcom/sec/android/gallery3d/util/ThreadPool$CancelListener;)V

    invoke-static {p1, p2, p3, p4, v2}, Lcom/sec/samsung/gallery/decoder/DecoderInterface;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;Z)Landroid/graphics/Bitmap;

    iput-boolean v2, p4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    return-void

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method public static decodeIfBigEnough(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;[BLandroid/graphics/BitmapFactory$Options;I)Landroid/graphics/Bitmap;
    .locals 4

    const/4 v0, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    if-nez p2, :cond_0

    new-instance p2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    :cond_0
    new-instance v1, Lcom/sec/android/gallery3d/data/DecodeUtils$DecodeCanceller;

    invoke-direct {v1, p2}, Lcom/sec/android/gallery3d/data/DecodeUtils$DecodeCanceller;-><init>(Landroid/graphics/BitmapFactory$Options;)V

    invoke-interface {p0, v1}, Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;->setCancelListener(Lcom/sec/android/gallery3d/util/ThreadPool$CancelListener;)V

    iput-boolean v3, p2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    array-length v1, p1

    invoke-static {p1, v2, v1, p2, v2}, Lcom/sec/samsung/gallery/decoder/DecoderInterface;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;Z)Landroid/graphics/Bitmap;

    invoke-interface {p0}, Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    iget v1, p2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-lt v1, p3, :cond_1

    iget v1, p2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-lt v1, p3, :cond_1

    iget v0, p2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v1, p2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {v0, v1, p3}, Lcom/sec/android/gallery3d/common/BitmapUtils;->computeSampleSizeLargerSideLength(III)I

    move-result v0

    iput v0, p2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    iput-boolean v2, p2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {p2}, Lcom/sec/android/gallery3d/data/DecodeUtils;->setOptionsMutable(Landroid/graphics/BitmapFactory$Options;)V

    array-length v0, p1

    invoke-static {p1, v2, v0, p2, v3}, Lcom/sec/samsung/gallery/decoder/DecoderInterface;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/gallery3d/data/DecodeUtils;->ensureGLCompatibleBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public static decodePanoramaThumbnail(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 3

    const/4 v1, 0x0

    if-nez p2, :cond_0

    new-instance p2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    :cond_0
    new-instance v2, Lcom/sec/android/gallery3d/data/DecodeUtils$DecodeCanceller;

    invoke-direct {v2, p2}, Lcom/sec/android/gallery3d/data/DecodeUtils$DecodeCanceller;-><init>(Landroid/graphics/BitmapFactory$Options;)V

    invoke-interface {p0, v2}, Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;->setCancelListener(Lcom/sec/android/gallery3d/util/ThreadPool$CancelListener;)V

    const/4 v2, 0x1

    iput-boolean v2, p2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {p1, p2}, Lcom/sec/samsung/gallery/decoder/DecoderInterface;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    invoke-interface {p0}, Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    :goto_0
    return-object v1

    :cond_2
    const/4 v2, 0x0

    iput-boolean v2, p2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {p2}, Lcom/sec/android/gallery3d/data/DecodeUtils;->setOptionsMutable(Landroid/graphics/BitmapFactory$Options;)V

    invoke-static {p1, p2}, Lcom/sec/samsung/gallery/decoder/DecoderInterface;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/sec/android/gallery3d/data/DecodeUtils;->ensureGLCompatibleBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0
.end method

.method public static decodeSampledBitmap(Ljava/lang/String;I)Landroid/graphics/BitmapFactory$Options;
    .locals 6

    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v4, 0x1

    iput-boolean v4, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {p0, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget v3, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v0, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-lez v3, :cond_1

    if-lez v0, :cond_1

    if-le v3, v0, :cond_2

    div-int v4, v3, v0

    int-to-float v4, v4

    :goto_0
    const v5, 0x402ccccd    # 2.7f

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_3

    int-to-float v4, p1

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v5

    int-to-float v5, v5

    div-float v2, v4, v5

    invoke-static {v2}, Lcom/sec/android/gallery3d/common/BitmapUtils;->computeSampleSizeLarger(F)I

    move-result v4

    iput v4, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    iget v4, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    div-int v4, v3, v4

    iget v5, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    div-int v5, v0, v5

    mul-int/2addr v4, v5

    const v5, 0x138800

    if-le v4, v5, :cond_0

    const v4, 0x499c4000    # 1280000.0f

    mul-int v5, v3, v0

    int-to-float v5, v5

    div-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v4, v4

    invoke-static {v4}, Lcom/sec/android/gallery3d/common/BitmapUtils;->computeSampleSize(F)I

    move-result v4

    iput v4, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    :cond_0
    :goto_1
    const/4 v4, 0x0

    iput-boolean v4, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    :cond_1
    return-object v1

    :cond_2
    div-int v4, v0, v3

    int-to-float v4, v4

    goto :goto_0

    :cond_3
    int-to-float v4, p1

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v5

    int-to-float v5, v5

    div-float v2, v4, v5

    invoke-static {v2}, Lcom/sec/android/gallery3d/common/BitmapUtils;->computeSampleSizeLarger(F)I

    move-result v4

    iput v4, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    goto :goto_1
.end method

.method public static decodeThumbnail(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;Ljava/io/FileDescriptor;Landroid/graphics/BitmapFactory$Options;II)Landroid/graphics/Bitmap;
    .locals 11

    const/4 v10, 0x1

    const/4 v5, 0x0

    if-nez p2, :cond_0

    new-instance p2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    :cond_0
    new-instance v6, Lcom/sec/android/gallery3d/data/DecodeUtils$DecodeCanceller;

    invoke-direct {v6, p2}, Lcom/sec/android/gallery3d/data/DecodeUtils$DecodeCanceller;-><init>(Landroid/graphics/BitmapFactory$Options;)V

    invoke-interface {p0, v6}, Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;->setCancelListener(Lcom/sec/android/gallery3d/util/ThreadPool$CancelListener;)V

    iput-boolean v10, p2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {p1, v5, p2}, Lcom/sec/samsung/gallery/decoder/DecoderInterface;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    invoke-interface {p0}, Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v6

    if-eqz v6, :cond_2

    :cond_1
    :goto_0
    return-object v5

    :cond_2
    iget v4, p2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v1, p2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-eq p4, v10, :cond_6

    if-le v4, v1, :cond_5

    div-int v6, v4, v1

    int-to-float v6, v6

    :goto_1
    const v7, 0x402ccccd    # 2.7f

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_6

    int-to-float v6, p3

    invoke-static {v4, v1}, Ljava/lang/Math;->min(II)I

    move-result v7

    int-to-float v7, v7

    div-float v3, v6, v7

    invoke-static {v3}, Lcom/sec/android/gallery3d/common/BitmapUtils;->computeSampleSizeLarger(F)I

    move-result v6

    iput v6, p2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const v0, 0x9c400

    iget v6, p2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    div-int v6, v4, v6

    iget v7, p2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    div-int v7, v1, v7

    mul-int/2addr v6, v7

    const v7, 0x9c400

    if-le v6, v7, :cond_3

    const v6, 0x491c4000    # 640000.0f

    mul-int v7, v4, v1

    int-to-float v7, v7

    div-float/2addr v6, v7

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-float v6, v6

    invoke-static {v6}, Lcom/sec/android/gallery3d/common/BitmapUtils;->computeSampleSize(F)I

    move-result v6

    iput v6, p2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    :cond_3
    :goto_2
    const/4 v6, 0x0

    iput-boolean v6, p2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {p2}, Lcom/sec/android/gallery3d/data/DecodeUtils;->setOptionsMutable(Landroid/graphics/BitmapFactory$Options;)V

    invoke-static {p1, v5, p2}, Lcom/sec/samsung/gallery/decoder/DecoderInterface;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_1

    int-to-float v6, p3

    const/4 v5, 0x2

    if-ne p4, v5, :cond_7

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-static {v5, v7}, Ljava/lang/Math;->min(II)I

    move-result v5

    :goto_3
    int-to-float v5, v5

    div-float v3, v6, v5

    float-to-double v6, v3

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    cmpg-double v5, v6, v8

    if-gtz v5, :cond_4

    invoke-static {v2, v3, v10}, Lcom/sec/android/gallery3d/common/BitmapUtils;->resizeBitmapByScale(Landroid/graphics/Bitmap;FZ)Landroid/graphics/Bitmap;

    move-result-object v2

    :cond_4
    invoke-static {v2}, Lcom/sec/android/gallery3d/data/DecodeUtils;->ensureGLCompatibleBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v5

    goto :goto_0

    :cond_5
    div-int v6, v1, v4

    int-to-float v6, v6

    goto :goto_1

    :cond_6
    int-to-float v6, p3

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v7

    int-to-float v7, v7

    div-float v3, v6, v7

    invoke-static {v3}, Lcom/sec/android/gallery3d/common/BitmapUtils;->computeSampleSizeLarger(F)I

    move-result v6

    iput v6, p2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    goto :goto_2

    :cond_7
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I

    move-result v5

    goto :goto_3
.end method

.method public static decodeThumbnail(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;II)Landroid/graphics/Bitmap;
    .locals 6

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Lcom/sec/android/gallery3d/data/DecodeUtils;->decodeThumbnailDirectly(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private static decodeThumbnailDirectly(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;IIZ)Landroid/graphics/Bitmap;
    .locals 8

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v7, v6

    invoke-static/range {v0 .. v7}, Lcom/sec/android/gallery3d/data/DecodeUtils;->decodeThumbnailDirectly(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;IIZZZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static decodeThumbnailDirectly(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;IIZZZ)Landroid/graphics/Bitmap;
    .locals 10

    if-nez p2, :cond_0

    new-instance p2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    :cond_0
    new-instance v5, Lcom/sec/android/gallery3d/data/DecodeUtils$DecodeCanceller;

    invoke-direct {v5, p2}, Lcom/sec/android/gallery3d/data/DecodeUtils$DecodeCanceller;-><init>(Landroid/graphics/BitmapFactory$Options;)V

    invoke-interface {p0, v5}, Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;->setCancelListener(Lcom/sec/android/gallery3d/util/ThreadPool$CancelListener;)V

    if-eqz p5, :cond_1

    const/4 v5, 0x1

    iput-boolean v5, p2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {p1, p2}, Lcom/sec/samsung/gallery/decoder/DecoderInterface;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    :cond_1
    invoke-interface {p0}, Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x0

    :goto_0
    return-object v5

    :cond_2
    iget v4, p2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v1, p2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-eqz v4, :cond_3

    if-nez v1, :cond_4

    :cond_3
    const-string/jumbo v5, "DecodeUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "w: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", h: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    goto :goto_0

    :cond_4
    const/4 v5, 0x1

    if-eq p4, v5, :cond_9

    if-le v4, v1, :cond_8

    div-int v5, v4, v1

    int-to-float v5, v5

    :goto_1
    const v6, 0x402ccccd    # 2.7f

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_9

    int-to-float v5, p3

    invoke-static {v4, v1}, Ljava/lang/Math;->min(II)I

    move-result v6

    int-to-float v6, v6

    div-float v3, v5, v6

    invoke-static {v3}, Lcom/sec/android/gallery3d/common/BitmapUtils;->computeSampleSizeLarger(F)I

    move-result v5

    iput v5, p2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const v0, 0x138800

    iget v5, p2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    div-int v5, v4, v5

    iget v6, p2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    div-int v6, v1, v6

    mul-int/2addr v5, v6

    const v6, 0x138800

    if-le v5, v6, :cond_5

    const v5, 0x499c4000    # 1280000.0f

    mul-int v6, v4, v1

    int-to-float v6, v6

    div-float/2addr v5, v6

    float-to-double v6, v5

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-float v5, v6

    invoke-static {v5}, Lcom/sec/android/gallery3d/common/BitmapUtils;->computeSampleSize(F)I

    move-result v5

    iput v5, p2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    :cond_5
    :goto_2
    const/4 v5, 0x0

    iput-boolean v5, p2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {p2}, Lcom/sec/android/gallery3d/data/DecodeUtils;->setOptionsMutable(Landroid/graphics/BitmapFactory$Options;)V

    if-eqz p6, :cond_a

    invoke-static {p1}, Lcom/sec/samsung/gallery/decoder/DecoderInterface;->decodeDNGPreview(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_7

    if-eq v4, v1, :cond_7

    const/4 v5, 0x1

    if-eq p4, v5, :cond_6

    const/4 v5, 0x2

    if-ne p4, v5, :cond_7

    :cond_6
    int-to-float v5, v4

    int-to-float v6, v1

    invoke-static {v2, v5, v6}, Lcom/sec/android/gallery3d/common/BitmapUtils;->resizeBitmapByRatio(Landroid/graphics/Bitmap;FF)Landroid/graphics/Bitmap;

    move-result-object v2

    :cond_7
    :goto_3
    if-nez v2, :cond_d

    const/4 v5, 0x0

    goto/16 :goto_0

    :cond_8
    div-int v5, v1, v4

    int-to-float v5, v5

    goto :goto_1

    :cond_9
    int-to-float v5, p3

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v6

    int-to-float v6, v6

    div-float v3, v5, v6

    invoke-static {v3}, Lcom/sec/android/gallery3d/common/BitmapUtils;->computeSampleSizeLarger(F)I

    move-result v5

    iput v5, p2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    goto :goto_2

    :cond_a
    if-nez p6, :cond_b

    if-eqz p7, :cond_c

    :cond_b
    const/4 v5, 0x1

    :goto_4
    invoke-static {p1, p2, v5}, Lcom/sec/samsung/gallery/decoder/DecoderInterface;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_3

    :cond_c
    const/4 v5, 0x0

    goto :goto_4

    :cond_d
    int-to-float v6, p3

    const/4 v5, 0x2

    if-eq p4, v5, :cond_e

    const/4 v5, 0x3

    if-eq p4, v5, :cond_e

    const/4 v5, 0x4

    if-ne p4, v5, :cond_10

    :cond_e
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-static {v5, v7}, Ljava/lang/Math;->min(II)I

    move-result v5

    :goto_5
    int-to-float v5, v5

    div-float v3, v6, v5

    float-to-double v6, v3

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    cmpg-double v5, v6, v8

    if-gtz v5, :cond_f

    const/4 v5, 0x1

    invoke-static {v2, v3, v5}, Lcom/sec/android/gallery3d/common/BitmapUtils;->resizeBitmapByScale(Landroid/graphics/Bitmap;FZ)Landroid/graphics/Bitmap;

    move-result-object v2

    :cond_f
    invoke-static {v2}, Lcom/sec/android/gallery3d/data/DecodeUtils;->ensureGLCompatibleBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v5

    goto/16 :goto_0

    :cond_10
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I

    move-result v5

    goto :goto_5
.end method

.method public static decodeUsingPool(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;[BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 15

    if-nez p4, :cond_0

    new-instance p4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct/range {p4 .. p4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    :cond_0
    invoke-static/range {p1 .. p2}, Lcom/sec/samsung/gallery/decoder/DecoderInterface;->isAstcByteArray([BI)Z

    move-result v6

    move-object/from16 v0, p4

    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v2, 0x1

    if-ge v1, v2, :cond_1

    const/4 v1, 0x1

    move-object/from16 v0, p4

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    :cond_1
    if-eqz v6, :cond_3

    const/4 v1, 0x0

    move-object/from16 v0, p4

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    :goto_0
    move-object/from16 v0, p4

    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    move-object v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    invoke-static/range {v1 .. v6}, Lcom/sec/android/gallery3d/data/DecodeUtils;->findCachedBitmap(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;[BIILandroid/graphics/BitmapFactory$Options;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    :goto_1
    move-object/from16 v0, p4

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    const/4 v12, 0x1

    move-object v7, p0

    move-object/from16 v8, p1

    move/from16 v9, p2

    move/from16 v10, p3

    move-object/from16 v11, p4

    :try_start_0
    invoke-static/range {v7 .. v12}, Lcom/sec/android/gallery3d/data/DecodeUtils;->decode(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;[BIILandroid/graphics/BitmapFactory$Options;Z)Landroid/graphics/Bitmap;

    move-result-object v13

    move-object/from16 v0, p4

    iget-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_2

    move-object/from16 v0, p4

    iget-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    if-eq v1, v13, :cond_2

    invoke-static {}, Lcom/sec/android/photos/data/GalleryBitmapPool;->getInstance()Lcom/sec/android/photos/data/GalleryBitmapPool;

    move-result-object v1

    move-object/from16 v0, p4

    iget-object v2, v0, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Lcom/sec/android/photos/data/GalleryBitmapPool;->put(Landroid/graphics/Bitmap;)Z

    const/4 v1, 0x0

    move-object/from16 v0, p4

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_2
    return-object v13

    :cond_3
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move-object/from16 v0, p4

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    goto :goto_1

    :catch_0
    move-exception v14

    move-object/from16 v0, p4

    iget-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    if-nez v1, :cond_5

    throw v14

    :cond_5
    const-string/jumbo v1, "DecodeUtils"

    const-string/jumbo v2, "decode fail with a given bitmap, try decode to a new bitmap"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/photos/data/GalleryBitmapPool;->getInstance()Lcom/sec/android/photos/data/GalleryBitmapPool;

    move-result-object v1

    move-object/from16 v0, p4

    iget-object v2, v0, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Lcom/sec/android/photos/data/GalleryBitmapPool;->put(Landroid/graphics/Bitmap;)Z

    const/4 v1, 0x0

    move-object/from16 v0, p4

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    const/4 v12, 0x1

    move-object v7, p0

    move-object/from16 v8, p1

    move/from16 v9, p2

    move/from16 v10, p3

    move-object/from16 v11, p4

    invoke-static/range {v7 .. v12}, Lcom/sec/android/gallery3d/data/DecodeUtils;->decode(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;[BIILandroid/graphics/BitmapFactory$Options;Z)Landroid/graphics/Bitmap;

    move-result-object v13

    goto :goto_2
.end method

.method public static ensureGLCompatibleBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 3

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 p0, 0x0

    goto :goto_0

    :cond_2
    invoke-static {p0}, Lcom/sec/samsung/gallery/lib/factory/BitmapWrapper;->isGLCompressed(Landroid/graphics/Bitmap;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    move-object p0, v0

    goto :goto_0
.end method

.method private static findCachedBitmap(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;[BIILandroid/graphics/BitmapFactory$Options;Z)Landroid/graphics/Bitmap;
    .locals 3

    invoke-static {p0, p1, p2, p3, p4}, Lcom/sec/android/gallery3d/data/DecodeUtils;->decodeBounds(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;[BIILandroid/graphics/BitmapFactory$Options;)V

    invoke-static {}, Lcom/sec/android/photos/data/GalleryBitmapPool;->getInstance()Lcom/sec/android/photos/data/GalleryBitmapPool;

    move-result-object v0

    iget v1, p4, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v2, p4, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-virtual {v0, v1, v2, p5}, Lcom/sec/android/photos/data/GalleryBitmapPool;->get(IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static isPanoramicRatio(Landroid/graphics/Bitmap;)Z
    .locals 5

    const/4 v2, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-le v1, v0, :cond_2

    div-int v3, v1, v0

    int-to-float v3, v3

    :goto_1
    const v4, 0x402ccccd    # 2.7f

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    div-int v3, v0, v1

    int-to-float v3, v3

    goto :goto_1
.end method

.method public static requestDecode(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/graphics/BitmapFactory$Options;I)Landroid/graphics/Bitmap;
    .locals 7

    const/4 v3, 0x0

    if-nez p3, :cond_0

    new-instance p3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    :cond_0
    new-instance v4, Lcom/sec/android/gallery3d/data/DecodeUtils$DecodeCanceller;

    invoke-direct {v4, p3}, Lcom/sec/android/gallery3d/data/DecodeUtils$DecodeCanceller;-><init>(Landroid/graphics/BitmapFactory$Options;)V

    invoke-interface {p0, v4}, Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;->setCancelListener(Lcom/sec/android/gallery3d/util/ThreadPool$CancelListener;)V

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p1, p2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    const/4 v4, 0x1

    iput-boolean v4, p3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    const/4 v4, 0x0

    invoke-static {v1, v4, p3}, Lcom/sec/samsung/gallery/decoder/DecoderInterface;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    invoke-interface {p0}, Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {v1}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    :goto_0
    return-object v3

    :cond_1
    :try_start_1
    iget v4, p3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v5, p3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {v4, v5, p4}, Lcom/sec/android/gallery3d/common/BitmapUtils;->computeSampleSizeLarger(III)I

    move-result v4

    iput v4, p3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v4, 0x0

    iput-boolean v4, p3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    invoke-virtual {p1, p2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    const/4 v4, 0x0

    invoke-static {v1, v4, p3}, Lcom/sec/samsung/gallery/decoder/DecoderInterface;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    if-nez v2, :cond_2

    invoke-static {v1}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    :cond_2
    const/4 v4, 0x1

    :try_start_2
    invoke-static {v2, p4, v4}, Lcom/sec/android/gallery3d/common/BitmapUtils;->resizeDownIfTooBig(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/gallery3d/data/DecodeUtils;->ensureGLCompatibleBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v3

    invoke-static {v1}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_3
    const-string/jumbo v4, "DecodeUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Exception : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {v1}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_0
    move-exception v3

    invoke-static {v1}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    throw v3
.end method

.method public static requestDecode(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 1

    if-nez p2, :cond_0

    new-instance p2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    :cond_0
    new-instance v0, Lcom/sec/android/gallery3d/data/DecodeUtils$DecodeCanceller;

    invoke-direct {v0, p2}, Lcom/sec/android/gallery3d/data/DecodeUtils$DecodeCanceller;-><init>(Landroid/graphics/BitmapFactory$Options;)V

    invoke-interface {p0, v0}, Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;->setCancelListener(Lcom/sec/android/gallery3d/util/ThreadPool$CancelListener;)V

    invoke-static {p1, p2}, Lcom/sec/samsung/gallery/decoder/DecoderInterface;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/gallery3d/data/DecodeUtils;->ensureGLCompatibleBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private static setOptionsMutable(Landroid/graphics/BitmapFactory$Options;)V
    .locals 1

    sget-boolean v0, Lcom/sec/android/gallery3d/common/ApiHelper;->HAS_OPTIONS_IN_MUTABLE:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    :cond_0
    return-void
.end method
