.class public Lcom/sec/samsung/gallery/decoder/regiondecoder/RegionDecoder;
.super Ljava/lang/Object;
.source "RegionDecoder.java"


# instance fields
.field private mSecMMCodecRegionDecoder:Lcom/sec/samsung/gallery/decoder/regiondecoder/SecMMCodecRegionDecoder;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newInstance(Ljava/io/FileDescriptor;Z)Lcom/sec/samsung/gallery/decoder/regiondecoder/RegionDecoder;
    .locals 2

    const/4 v0, 0x0

    invoke-static {p0, p1}, Lcom/sec/samsung/gallery/decoder/regiondecoder/SecMMCodecRegionDecoder;->newInstance(Ljava/io/FileDescriptor;Z)Lcom/sec/samsung/gallery/decoder/regiondecoder/SecMMCodecRegionDecoder;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/sec/samsung/gallery/decoder/regiondecoder/RegionDecoder;

    invoke-direct {v0}, Lcom/sec/samsung/gallery/decoder/regiondecoder/RegionDecoder;-><init>()V

    iput-object v1, v0, Lcom/sec/samsung/gallery/decoder/regiondecoder/RegionDecoder;->mSecMMCodecRegionDecoder:Lcom/sec/samsung/gallery/decoder/regiondecoder/SecMMCodecRegionDecoder;

    :cond_0
    return-object v0
.end method

.method public static newInstance(Ljava/io/InputStream;Z)Lcom/sec/samsung/gallery/decoder/regiondecoder/RegionDecoder;
    .locals 2

    const/4 v0, 0x0

    invoke-static {p0, p1}, Lcom/sec/samsung/gallery/decoder/regiondecoder/SecMMCodecRegionDecoder;->newInstance(Ljava/io/InputStream;Z)Lcom/sec/samsung/gallery/decoder/regiondecoder/SecMMCodecRegionDecoder;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/sec/samsung/gallery/decoder/regiondecoder/RegionDecoder;

    invoke-direct {v0}, Lcom/sec/samsung/gallery/decoder/regiondecoder/RegionDecoder;-><init>()V

    iput-object v1, v0, Lcom/sec/samsung/gallery/decoder/regiondecoder/RegionDecoder;->mSecMMCodecRegionDecoder:Lcom/sec/samsung/gallery/decoder/regiondecoder/SecMMCodecRegionDecoder;

    :cond_0
    return-object v0
.end method

.method public static newInstance(Ljava/lang/String;Z)Lcom/sec/samsung/gallery/decoder/regiondecoder/RegionDecoder;
    .locals 2

    const/4 v0, 0x0

    invoke-static {p0, p1}, Lcom/sec/samsung/gallery/decoder/regiondecoder/SecMMCodecRegionDecoder;->newInstance(Ljava/lang/String;Z)Lcom/sec/samsung/gallery/decoder/regiondecoder/SecMMCodecRegionDecoder;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/sec/samsung/gallery/decoder/regiondecoder/RegionDecoder;

    invoke-direct {v0}, Lcom/sec/samsung/gallery/decoder/regiondecoder/RegionDecoder;-><init>()V

    iput-object v1, v0, Lcom/sec/samsung/gallery/decoder/regiondecoder/RegionDecoder;->mSecMMCodecRegionDecoder:Lcom/sec/samsung/gallery/decoder/regiondecoder/SecMMCodecRegionDecoder;

    :cond_0
    return-object v0
.end method

.method public static newInstance([BIIZ)Lcom/sec/samsung/gallery/decoder/regiondecoder/RegionDecoder;
    .locals 2

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3}, Lcom/sec/samsung/gallery/decoder/regiondecoder/SecMMCodecRegionDecoder;->newInstance([BIIZ)Lcom/sec/samsung/gallery/decoder/regiondecoder/SecMMCodecRegionDecoder;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/sec/samsung/gallery/decoder/regiondecoder/RegionDecoder;

    invoke-direct {v0}, Lcom/sec/samsung/gallery/decoder/regiondecoder/RegionDecoder;-><init>()V

    iput-object v1, v0, Lcom/sec/samsung/gallery/decoder/regiondecoder/RegionDecoder;->mSecMMCodecRegionDecoder:Lcom/sec/samsung/gallery/decoder/regiondecoder/SecMMCodecRegionDecoder;

    :cond_0
    return-object v0
.end method

.method public static newInstance([BIIZZ)Lcom/sec/samsung/gallery/decoder/regiondecoder/RegionDecoder;
    .locals 2

    const/4 v0, 0x0

    if-nez p4, :cond_0

    invoke-static {p0, p1, p2, p3}, Lcom/sec/samsung/gallery/decoder/regiondecoder/SecMMCodecRegionDecoder;->newInstance([BIIZ)Lcom/sec/samsung/gallery/decoder/regiondecoder/SecMMCodecRegionDecoder;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/sec/samsung/gallery/decoder/regiondecoder/RegionDecoder;

    invoke-direct {v0}, Lcom/sec/samsung/gallery/decoder/regiondecoder/RegionDecoder;-><init>()V

    iput-object v1, v0, Lcom/sec/samsung/gallery/decoder/regiondecoder/RegionDecoder;->mSecMMCodecRegionDecoder:Lcom/sec/samsung/gallery/decoder/regiondecoder/SecMMCodecRegionDecoder;

    :cond_0
    return-object v0
.end method


# virtual methods
.method public decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/decoder/regiondecoder/RegionDecoder;->mSecMMCodecRegionDecoder:Lcom/sec/samsung/gallery/decoder/regiondecoder/SecMMCodecRegionDecoder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/decoder/regiondecoder/RegionDecoder;->mSecMMCodecRegionDecoder:Lcom/sec/samsung/gallery/decoder/regiondecoder/SecMMCodecRegionDecoder;

    invoke-virtual {v0, p1, p2}, Lcom/sec/samsung/gallery/decoder/regiondecoder/SecMMCodecRegionDecoder;->decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public decodeRegionEx(Landroid/graphics/Rect;Landroid/graphics/Rect;IIII)Landroid/graphics/Bitmap;
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v4, 0x0

    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v2, v3, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    iput-boolean v0, v3, Landroid/graphics/BitmapFactory$Options;->inPreferQualityOverSpeed:Z

    shl-int v2, v0, p6

    iput v2, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v1, v1, p3, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v2, p1}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    :cond_0
    invoke-static {}, Lcom/sec/android/photos/data/WallpaperCropperBitmapPool;->getInstance()Lcom/sec/android/photos/data/WallpaperCropperBitmapPool;

    move-result-object v2

    invoke-virtual {v2, p5, p5}, Lcom/sec/android/photos/data/WallpaperCropperBitmapPool;->get(II)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_2

    if-eqz v0, :cond_4

    invoke-virtual {v2, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    move-object v0, v2

    :goto_0
    iput-object v0, v3, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    :try_start_0
    invoke-virtual {p0, p1, v3}, Lcom/sec/samsung/gallery/decoder/regiondecoder/RegionDecoder;->decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    iget-object v1, v3, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    if-eq v1, v0, :cond_1

    iget-object v1, v3, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/sec/android/photos/data/WallpaperCropperBitmapPool;->getInstance()Lcom/sec/android/photos/data/WallpaperCropperBitmapPool;

    move-result-object v1

    iget-object v2, v3, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Lcom/sec/android/photos/data/WallpaperCropperBitmapPool;->put(Landroid/graphics/Bitmap;)Z

    iput-object v4, v3, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    :cond_1
    return-object v0

    :cond_2
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p5, p5, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception v1

    iget-object v2, v3, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    if-eq v2, v0, :cond_3

    iget-object v0, v3, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/sec/android/photos/data/WallpaperCropperBitmapPool;->getInstance()Lcom/sec/android/photos/data/WallpaperCropperBitmapPool;

    move-result-object v0

    iget-object v2, v3, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v2}, Lcom/sec/android/photos/data/WallpaperCropperBitmapPool;->put(Landroid/graphics/Bitmap;)Z

    iput-object v4, v3, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    :cond_3
    throw v1

    :cond_4
    move-object v0, v2

    goto :goto_0
.end method

.method public getHeight()I
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/decoder/regiondecoder/RegionDecoder;->mSecMMCodecRegionDecoder:Lcom/sec/samsung/gallery/decoder/regiondecoder/SecMMCodecRegionDecoder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/decoder/regiondecoder/RegionDecoder;->mSecMMCodecRegionDecoder:Lcom/sec/samsung/gallery/decoder/regiondecoder/SecMMCodecRegionDecoder;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/decoder/regiondecoder/SecMMCodecRegionDecoder;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/decoder/regiondecoder/RegionDecoder;->mSecMMCodecRegionDecoder:Lcom/sec/samsung/gallery/decoder/regiondecoder/SecMMCodecRegionDecoder;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/decoder/regiondecoder/SecMMCodecRegionDecoder;->getHeight()I

    move-result v0

    return v0
.end method

.method public getWidth()I
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/decoder/regiondecoder/RegionDecoder;->mSecMMCodecRegionDecoder:Lcom/sec/samsung/gallery/decoder/regiondecoder/SecMMCodecRegionDecoder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/decoder/regiondecoder/RegionDecoder;->mSecMMCodecRegionDecoder:Lcom/sec/samsung/gallery/decoder/regiondecoder/SecMMCodecRegionDecoder;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/decoder/regiondecoder/SecMMCodecRegionDecoder;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/decoder/regiondecoder/RegionDecoder;->mSecMMCodecRegionDecoder:Lcom/sec/samsung/gallery/decoder/regiondecoder/SecMMCodecRegionDecoder;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/decoder/regiondecoder/SecMMCodecRegionDecoder;->getWidth()I

    move-result v0

    return v0
.end method

.method public final isRecycled()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/decoder/regiondecoder/RegionDecoder;->mSecMMCodecRegionDecoder:Lcom/sec/samsung/gallery/decoder/regiondecoder/SecMMCodecRegionDecoder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/decoder/regiondecoder/RegionDecoder;->mSecMMCodecRegionDecoder:Lcom/sec/samsung/gallery/decoder/regiondecoder/SecMMCodecRegionDecoder;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/decoder/regiondecoder/SecMMCodecRegionDecoder;->isRecycled()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public recycle()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/decoder/regiondecoder/RegionDecoder;->mSecMMCodecRegionDecoder:Lcom/sec/samsung/gallery/decoder/regiondecoder/SecMMCodecRegionDecoder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/decoder/regiondecoder/RegionDecoder;->mSecMMCodecRegionDecoder:Lcom/sec/samsung/gallery/decoder/regiondecoder/SecMMCodecRegionDecoder;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/decoder/regiondecoder/SecMMCodecRegionDecoder;->recycle()V

    :cond_0
    return-void
.end method

.method public requestCanceDecode()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/decoder/regiondecoder/RegionDecoder;->mSecMMCodecRegionDecoder:Lcom/sec/samsung/gallery/decoder/regiondecoder/SecMMCodecRegionDecoder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/decoder/regiondecoder/RegionDecoder;->mSecMMCodecRegionDecoder:Lcom/sec/samsung/gallery/decoder/regiondecoder/SecMMCodecRegionDecoder;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/decoder/regiondecoder/SecMMCodecRegionDecoder;->requestCancelDecode()V

    :cond_0
    return-void
.end method

.method public useLTN()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/decoder/regiondecoder/RegionDecoder;->mSecMMCodecRegionDecoder:Lcom/sec/samsung/gallery/decoder/regiondecoder/SecMMCodecRegionDecoder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/decoder/regiondecoder/RegionDecoder;->mSecMMCodecRegionDecoder:Lcom/sec/samsung/gallery/decoder/regiondecoder/SecMMCodecRegionDecoder;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/decoder/regiondecoder/SecMMCodecRegionDecoder;->useLTN()I

    :cond_0
    return-void
.end method
