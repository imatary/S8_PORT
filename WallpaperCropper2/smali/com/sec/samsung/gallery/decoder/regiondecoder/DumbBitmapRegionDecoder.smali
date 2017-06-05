.class public Lcom/sec/samsung/gallery/decoder/regiondecoder/DumbBitmapRegionDecoder;
.super Ljava/lang/Object;
.source "DumbBitmapRegionDecoder.java"

# interfaces
.implements Lcom/sec/samsung/gallery/decoder/regiondecoder/IBitmapRegionDecoder;


# instance fields
.field mBuffer:Landroid/graphics/Bitmap;

.field mTempPaint:Landroid/graphics/Paint;


# direct methods
.method private constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/samsung/gallery/decoder/regiondecoder/DumbBitmapRegionDecoder;->mBuffer:Landroid/graphics/Bitmap;

    return-void
.end method

.method private static getDummyBitmapOptions(ZII)Landroid/graphics/BitmapFactory$Options;
    .locals 3

    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    if-eqz p0, :cond_0

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x44800000    # 1024.0f

    div-float v1, v2, v1

    invoke-static {v1}, Lcom/android/gallery3d/util/BitmapUtils;->computeSampleSizeLarger(F)I

    move-result v1

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    :cond_0
    return-object v0
.end method

.method public static newInstance(Ljava/io/InputStream;ZII)Lcom/sec/samsung/gallery/decoder/regiondecoder/DumbBitmapRegionDecoder;
    .locals 3

    const/4 v2, 0x0

    :try_start_0
    invoke-static {p1, p2, p3}, Lcom/sec/samsung/gallery/decoder/regiondecoder/DumbBitmapRegionDecoder;->getDummyBitmapOptions(ZII)Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/sec/samsung/gallery/decoder/regiondecoder/DumbBitmapRegionDecoder;

    invoke-direct {v1, v0}, Lcom/sec/samsung/gallery/decoder/regiondecoder/DumbBitmapRegionDecoder;-><init>(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-object v2

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    goto :goto_0
.end method

.method public static newInstance(Ljava/lang/String;ZII)Lcom/sec/samsung/gallery/decoder/regiondecoder/DumbBitmapRegionDecoder;
    .locals 3

    const/4 v2, 0x0

    :try_start_0
    invoke-static {p1, p2, p3}, Lcom/sec/samsung/gallery/decoder/regiondecoder/DumbBitmapRegionDecoder;->getDummyBitmapOptions(ZII)Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    const-string/jumbo v1, ".golf"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/android/gallery3d/golf/GolfMgr;

    invoke-direct {v0}, Lcom/android/gallery3d/golf/GolfMgr;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/gallery3d/golf/GolfMgr;->CreateThumbnails(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    new-instance v1, Lcom/sec/samsung/gallery/decoder/regiondecoder/DumbBitmapRegionDecoder;

    invoke-direct {v1, v0}, Lcom/sec/samsung/gallery/decoder/regiondecoder/DumbBitmapRegionDecoder;-><init>(Landroid/graphics/Bitmap;)V

    return-object v1

    :cond_0
    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_1
    return-object v2

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 6

    const/4 v2, 0x1

    const/high16 v5, 0x3f800000    # 1.0f

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/sec/samsung/gallery/decoder/regiondecoder/DumbBitmapRegionDecoder;->mTempPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/sec/samsung/gallery/decoder/regiondecoder/DumbBitmapRegionDecoder;->mTempPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    iget v1, p2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int/2addr v2, v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v3

    div-int/2addr v3, v1

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    int-to-float v3, v1

    div-float v3, v5, v3

    int-to-float v1, v1

    div-float v1, v5, v1

    invoke-virtual {v0, v3, v1}, Landroid/graphics/Canvas;->scale(FF)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/decoder/regiondecoder/DumbBitmapRegionDecoder;->mBuffer:Landroid/graphics/Bitmap;

    iget v3, p1, Landroid/graphics/Rect;->left:I

    neg-int v3, v3

    int-to-float v3, v3

    iget v4, p1, Landroid/graphics/Rect;->top:I

    neg-int v4, v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/sec/samsung/gallery/decoder/regiondecoder/DumbBitmapRegionDecoder;->mTempPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    return-object v2
.end method

.method public getHeight()I
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/decoder/regiondecoder/DumbBitmapRegionDecoder;->mBuffer:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    return v0
.end method

.method public getWidth()I
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/decoder/regiondecoder/DumbBitmapRegionDecoder;->mBuffer:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    return v0
.end method

.method public isRecycled()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/decoder/regiondecoder/DumbBitmapRegionDecoder;->mBuffer:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public recycle()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/samsung/gallery/decoder/regiondecoder/DumbBitmapRegionDecoder;->mBuffer:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/decoder/regiondecoder/DumbBitmapRegionDecoder;->mBuffer:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, Lcom/sec/samsung/gallery/decoder/regiondecoder/DumbBitmapRegionDecoder;->mBuffer:Landroid/graphics/Bitmap;

    :cond_0
    return-void
.end method
