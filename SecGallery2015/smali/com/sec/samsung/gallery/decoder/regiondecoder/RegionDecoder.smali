.class public Lcom/sec/samsung/gallery/decoder/regiondecoder/RegionDecoder;
.super Ljava/lang/Object;
.source "RegionDecoder.java"


# instance fields
.field private mBFRegionDecoder:Lcom/sec/samsung/gallery/decoder/regiondecoder/BFRegionDecoder;

.field private mQuramRegionDecoder:Lcom/sec/samsung/gallery/decoder/regiondecoder/QuramCodecRegionDecoder;

.field private mSecMMCodecRegionDecoder:Lcom/sec/samsung/gallery/decoder/regiondecoder/SecMMCodecRegionDecoder;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newInstance(Ljava/io/FileDescriptor;Z)Lcom/sec/samsung/gallery/decoder/regiondecoder/RegionDecoder;
    .locals 3

    const/4 v0, 0x0

    sget-boolean v2, Lcom/sec/samsung/gallery/decoder/DecoderInterface;->FEATURE_USE_QURAM_DECODER:Z

    if-eqz v2, :cond_1

    invoke-static {p0, p1}, Lcom/sec/samsung/gallery/decoder/regiondecoder/SecMMCodecRegionDecoder;->newInstance(Ljava/io/FileDescriptor;Z)Lcom/sec/samsung/gallery/decoder/regiondecoder/SecMMCodecRegionDecoder;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/sec/samsung/gallery/decoder/regiondecoder/RegionDecoder;

    invoke-direct {v0}, Lcom/sec/samsung/gallery/decoder/regiondecoder/RegionDecoder;-><init>()V

    iput-object v1, v0, Lcom/sec/samsung/gallery/decoder/regiondecoder/RegionDecoder;->mSecMMCodecRegionDecoder:Lcom/sec/samsung/gallery/decoder/regiondecoder/SecMMCodecRegionDecoder;

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0, p1}, Lcom/sec/samsung/gallery/decoder/regiondecoder/BFRegionDecoder;->newInstance(Ljava/io/FileDescriptor;Z)Lcom/sec/samsung/gallery/decoder/regiondecoder/BFRegionDecoder;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/sec/samsung/gallery/decoder/regiondecoder/RegionDecoder;

    invoke-direct {v0}, Lcom/sec/samsung/gallery/decoder/regiondecoder/RegionDecoder;-><init>()V

    iput-object v1, v0, Lcom/sec/samsung/gallery/decoder/regiondecoder/RegionDecoder;->mBFRegionDecoder:Lcom/sec/samsung/gallery/decoder/regiondecoder/BFRegionDecoder;

    goto :goto_0
.end method

.method public static newInstance(Ljava/io/InputStream;Z)Lcom/sec/samsung/gallery/decoder/regiondecoder/RegionDecoder;
    .locals 3

    const/4 v0, 0x0

    sget-boolean v2, Lcom/sec/samsung/gallery/decoder/DecoderInterface;->FEATURE_USE_QURAM_DECODER:Z

    if-eqz v2, :cond_1

    invoke-static {p0, p1}, Lcom/sec/samsung/gallery/decoder/regiondecoder/SecMMCodecRegionDecoder;->newInstance(Ljava/io/InputStream;Z)Lcom/sec/samsung/gallery/decoder/regiondecoder/SecMMCodecRegionDecoder;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/sec/samsung/gallery/decoder/regiondecoder/RegionDecoder;

    invoke-direct {v0}, Lcom/sec/samsung/gallery/decoder/regiondecoder/RegionDecoder;-><init>()V

    iput-object v1, v0, Lcom/sec/samsung/gallery/decoder/regiondecoder/RegionDecoder;->mSecMMCodecRegionDecoder:Lcom/sec/samsung/gallery/decoder/regiondecoder/SecMMCodecRegionDecoder;

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0, p1}, Lcom/sec/samsung/gallery/decoder/regiondecoder/BFRegionDecoder;->newInstance(Ljava/io/InputStream;Z)Lcom/sec/samsung/gallery/decoder/regiondecoder/BFRegionDecoder;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/sec/samsung/gallery/decoder/regiondecoder/RegionDecoder;

    invoke-direct {v0}, Lcom/sec/samsung/gallery/decoder/regiondecoder/RegionDecoder;-><init>()V

    iput-object v1, v0, Lcom/sec/samsung/gallery/decoder/regiondecoder/RegionDecoder;->mBFRegionDecoder:Lcom/sec/samsung/gallery/decoder/regiondecoder/BFRegionDecoder;

    goto :goto_0
.end method

.method public static newInstance(Ljava/lang/String;ZZ)Lcom/sec/samsung/gallery/decoder/regiondecoder/RegionDecoder;
    .locals 4

    const/4 v0, 0x0

    sget-boolean v3, Lcom/sec/samsung/gallery/decoder/DecoderInterface;->FEATURE_USE_QURAM_DECODER:Z

    if-eqz v3, :cond_2

    if-eqz p2, :cond_2

    invoke-static {p0}, Lcom/sec/samsung/gallery/decoder/regiondecoder/QuramCodecRegionDecoder;->newInstance(Ljava/lang/String;)Lcom/sec/samsung/gallery/decoder/regiondecoder/QuramCodecRegionDecoder;

    move-result-object v2

    if-eqz v2, :cond_1

    new-instance v0, Lcom/sec/samsung/gallery/decoder/regiondecoder/RegionDecoder;

    invoke-direct {v0}, Lcom/sec/samsung/gallery/decoder/regiondecoder/RegionDecoder;-><init>()V

    iput-object v2, v0, Lcom/sec/samsung/gallery/decoder/regiondecoder/RegionDecoder;->mQuramRegionDecoder:Lcom/sec/samsung/gallery/decoder/regiondecoder/QuramCodecRegionDecoder;

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0, p1}, Lcom/sec/samsung/gallery/decoder/regiondecoder/BFRegionDecoder;->newInstance(Ljava/lang/String;Z)Lcom/sec/samsung/gallery/decoder/regiondecoder/BFRegionDecoder;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/sec/samsung/gallery/decoder/regiondecoder/RegionDecoder;

    invoke-direct {v0}, Lcom/sec/samsung/gallery/decoder/regiondecoder/RegionDecoder;-><init>()V

    iput-object v1, v0, Lcom/sec/samsung/gallery/decoder/regiondecoder/RegionDecoder;->mBFRegionDecoder:Lcom/sec/samsung/gallery/decoder/regiondecoder/BFRegionDecoder;

    goto :goto_0

    :cond_2
    sget-boolean v3, Lcom/sec/samsung/gallery/decoder/DecoderInterface;->FEATURE_USE_QURAM_DECODER:Z

    if-eqz v3, :cond_3

    invoke-static {p0, p1}, Lcom/sec/samsung/gallery/decoder/regiondecoder/SecMMCodecRegionDecoder;->newInstance(Ljava/lang/String;Z)Lcom/sec/samsung/gallery/decoder/regiondecoder/SecMMCodecRegionDecoder;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v0, Lcom/sec/samsung/gallery/decoder/regiondecoder/RegionDecoder;

    invoke-direct {v0}, Lcom/sec/samsung/gallery/decoder/regiondecoder/RegionDecoder;-><init>()V

    iput-object v2, v0, Lcom/sec/samsung/gallery/decoder/regiondecoder/RegionDecoder;->mSecMMCodecRegionDecoder:Lcom/sec/samsung/gallery/decoder/regiondecoder/SecMMCodecRegionDecoder;

    goto :goto_0

    :cond_3
    invoke-static {p0, p1}, Lcom/sec/samsung/gallery/decoder/regiondecoder/BFRegionDecoder;->newInstance(Ljava/lang/String;Z)Lcom/sec/samsung/gallery/decoder/regiondecoder/BFRegionDecoder;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v0, Lcom/sec/samsung/gallery/decoder/regiondecoder/RegionDecoder;

    invoke-direct {v0}, Lcom/sec/samsung/gallery/decoder/regiondecoder/RegionDecoder;-><init>()V

    iput-object v2, v0, Lcom/sec/samsung/gallery/decoder/regiondecoder/RegionDecoder;->mBFRegionDecoder:Lcom/sec/samsung/gallery/decoder/regiondecoder/BFRegionDecoder;

    goto :goto_0
.end method

.method public static newInstance([BIIZZ)Lcom/sec/samsung/gallery/decoder/regiondecoder/RegionDecoder;
    .locals 3

    const/4 v0, 0x0

    sget-boolean v2, Lcom/sec/samsung/gallery/decoder/DecoderInterface;->FEATURE_USE_QURAM_DECODER:Z

    if-eqz v2, :cond_1

    if-nez p4, :cond_1

    invoke-static {p0, p1, p2, p3}, Lcom/sec/samsung/gallery/decoder/regiondecoder/SecMMCodecRegionDecoder;->newInstance([BIIZ)Lcom/sec/samsung/gallery/decoder/regiondecoder/SecMMCodecRegionDecoder;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/sec/samsung/gallery/decoder/regiondecoder/RegionDecoder;

    invoke-direct {v0}, Lcom/sec/samsung/gallery/decoder/regiondecoder/RegionDecoder;-><init>()V

    iput-object v1, v0, Lcom/sec/samsung/gallery/decoder/regiondecoder/RegionDecoder;->mSecMMCodecRegionDecoder:Lcom/sec/samsung/gallery/decoder/regiondecoder/SecMMCodecRegionDecoder;

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0, p1, p2, p3}, Lcom/sec/samsung/gallery/decoder/regiondecoder/BFRegionDecoder;->newInstance([BIIZ)Lcom/sec/samsung/gallery/decoder/regiondecoder/BFRegionDecoder;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/sec/samsung/gallery/decoder/regiondecoder/RegionDecoder;

    invoke-direct {v0}, Lcom/sec/samsung/gallery/decoder/regiondecoder/RegionDecoder;-><init>()V

    iput-object v1, v0, Lcom/sec/samsung/gallery/decoder/regiondecoder/RegionDecoder;->mBFRegionDecoder:Lcom/sec/samsung/gallery/decoder/regiondecoder/BFRegionDecoder;

    goto :goto_0
.end method


# virtual methods
.method public decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/decoder/regiondecoder/RegionDecoder;->mQuramRegionDecoder:Lcom/sec/samsung/gallery/decoder/regiondecoder/QuramCodecRegionDecoder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/decoder/regiondecoder/RegionDecoder;->mQuramRegionDecoder:Lcom/sec/samsung/gallery/decoder/regiondecoder/QuramCodecRegionDecoder;

    invoke-virtual {v0, p1, p2}, Lcom/sec/samsung/gallery/decoder/regiondecoder/QuramCodecRegionDecoder;->decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/decoder/regiondecoder/RegionDecoder;->mSecMMCodecRegionDecoder:Lcom/sec/samsung/gallery/decoder/regiondecoder/SecMMCodecRegionDecoder;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/decoder/regiondecoder/RegionDecoder;->mSecMMCodecRegionDecoder:Lcom/sec/samsung/gallery/decoder/regiondecoder/SecMMCodecRegionDecoder;

    invoke-virtual {v0, p1, p2}, Lcom/sec/samsung/gallery/decoder/regiondecoder/SecMMCodecRegionDecoder;->decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/decoder/regiondecoder/RegionDecoder;->mBFRegionDecoder:Lcom/sec/samsung/gallery/decoder/regiondecoder/BFRegionDecoder;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/samsung/gallery/decoder/regiondecoder/RegionDecoder;->mBFRegionDecoder:Lcom/sec/samsung/gallery/decoder/regiondecoder/BFRegionDecoder;

    invoke-virtual {v0, p1, p2}, Lcom/sec/samsung/gallery/decoder/regiondecoder/BFRegionDecoder;->decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public decodeRegionEx(Landroid/graphics/Rect;IIII)Landroid/graphics/Bitmap;
    .locals 7

    const/4 v6, 0x0

    const/4 v1, 0x1

    const/4 v3, 0x0

    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v4, v2, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    iput-boolean v1, v2, Landroid/graphics/BitmapFactory$Options;->inPreferQualityOverSpeed:Z

    shl-int v4, v1, p5

    iput v4, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v3, v3, p2, p3}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v4, p1}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v4

    if-nez v4, :cond_2

    :goto_0
    invoke-static {}, Lcom/sec/android/photos/data/GalleryBitmapPool;->getInstance()Lcom/sec/android/photos/data/GalleryBitmapPool;

    move-result-object v4

    invoke-virtual {v4, p4, p4}, Lcom/sec/android/photos/data/GalleryBitmapPool;->get(II)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_3

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p4, p4, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_0
    :goto_1
    iput-object v0, v2, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    :try_start_0
    invoke-virtual {p0, p1, v2}, Lcom/sec/samsung/gallery/decoder/regiondecoder/RegionDecoder;->decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    iget-object v3, v2, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    if-eq v3, v0, :cond_1

    iget-object v3, v2, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/sec/android/photos/data/GalleryBitmapPool;->getInstance()Lcom/sec/android/photos/data/GalleryBitmapPool;

    move-result-object v3

    iget-object v4, v2, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v4}, Lcom/sec/android/photos/data/GalleryBitmapPool;->put(Landroid/graphics/Bitmap;)Z

    iput-object v6, v2, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    :cond_1
    return-object v0

    :cond_2
    move v1, v3

    goto :goto_0

    :cond_3
    if-eqz v1, :cond_0

    invoke-virtual {v0, v3}, Landroid/graphics/Bitmap;->eraseColor(I)V

    goto :goto_1

    :catchall_0
    move-exception v3

    iget-object v4, v2, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    if-eq v4, v0, :cond_4

    iget-object v4, v2, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_4

    invoke-static {}, Lcom/sec/android/photos/data/GalleryBitmapPool;->getInstance()Lcom/sec/android/photos/data/GalleryBitmapPool;

    move-result-object v4

    iget-object v5, v2, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v5}, Lcom/sec/android/photos/data/GalleryBitmapPool;->put(Landroid/graphics/Bitmap;)Z

    iput-object v6, v2, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    :cond_4
    throw v3
.end method

.method public getHeight()I
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/decoder/regiondecoder/RegionDecoder;->mQuramRegionDecoder:Lcom/sec/samsung/gallery/decoder/regiondecoder/QuramCodecRegionDecoder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/decoder/regiondecoder/RegionDecoder;->mQuramRegionDecoder:Lcom/sec/samsung/gallery/decoder/regiondecoder/QuramCodecRegionDecoder;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/decoder/regiondecoder/QuramCodecRegionDecoder;->getHeight()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/decoder/regiondecoder/RegionDecoder;->mSecMMCodecRegionDecoder:Lcom/sec/samsung/gallery/decoder/regiondecoder/SecMMCodecRegionDecoder;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/decoder/regiondecoder/RegionDecoder;->mSecMMCodecRegionDecoder:Lcom/sec/samsung/gallery/decoder/regiondecoder/SecMMCodecRegionDecoder;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/decoder/regiondecoder/SecMMCodecRegionDecoder;->getHeight()I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/decoder/regiondecoder/RegionDecoder;->mBFRegionDecoder:Lcom/sec/samsung/gallery/decoder/regiondecoder/BFRegionDecoder;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/samsung/gallery/decoder/regiondecoder/RegionDecoder;->mBFRegionDecoder:Lcom/sec/samsung/gallery/decoder/regiondecoder/BFRegionDecoder;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/decoder/regiondecoder/BFRegionDecoder;->getHeight()I

    move-result v0

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public getWidth()I
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/decoder/regiondecoder/RegionDecoder;->mQuramRegionDecoder:Lcom/sec/samsung/gallery/decoder/regiondecoder/QuramCodecRegionDecoder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/decoder/regiondecoder/RegionDecoder;->mQuramRegionDecoder:Lcom/sec/samsung/gallery/decoder/regiondecoder/QuramCodecRegionDecoder;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/decoder/regiondecoder/QuramCodecRegionDecoder;->getWidth()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/decoder/regiondecoder/RegionDecoder;->mSecMMCodecRegionDecoder:Lcom/sec/samsung/gallery/decoder/regiondecoder/SecMMCodecRegionDecoder;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/decoder/regiondecoder/RegionDecoder;->mSecMMCodecRegionDecoder:Lcom/sec/samsung/gallery/decoder/regiondecoder/SecMMCodecRegionDecoder;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/decoder/regiondecoder/SecMMCodecRegionDecoder;->getWidth()I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/decoder/regiondecoder/RegionDecoder;->mBFRegionDecoder:Lcom/sec/samsung/gallery/decoder/regiondecoder/BFRegionDecoder;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/samsung/gallery/decoder/regiondecoder/RegionDecoder;->mBFRegionDecoder:Lcom/sec/samsung/gallery/decoder/regiondecoder/BFRegionDecoder;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/decoder/regiondecoder/BFRegionDecoder;->getWidth()I

    move-result v0

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public final isRecycled()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/decoder/regiondecoder/RegionDecoder;->mQuramRegionDecoder:Lcom/sec/samsung/gallery/decoder/regiondecoder/QuramCodecRegionDecoder;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/samsung/gallery/decoder/regiondecoder/RegionDecoder;->mSecMMCodecRegionDecoder:Lcom/sec/samsung/gallery/decoder/regiondecoder/SecMMCodecRegionDecoder;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/decoder/regiondecoder/RegionDecoder;->mBFRegionDecoder:Lcom/sec/samsung/gallery/decoder/regiondecoder/BFRegionDecoder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/decoder/regiondecoder/RegionDecoder;->mBFRegionDecoder:Lcom/sec/samsung/gallery/decoder/regiondecoder/BFRegionDecoder;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/decoder/regiondecoder/BFRegionDecoder;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/decoder/regiondecoder/RegionDecoder;->mSecMMCodecRegionDecoder:Lcom/sec/samsung/gallery/decoder/regiondecoder/SecMMCodecRegionDecoder;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/decoder/regiondecoder/SecMMCodecRegionDecoder;->isRecycled()Z

    move-result v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sec/samsung/gallery/decoder/regiondecoder/RegionDecoder;->mQuramRegionDecoder:Lcom/sec/samsung/gallery/decoder/regiondecoder/QuramCodecRegionDecoder;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/decoder/regiondecoder/QuramCodecRegionDecoder;->isRecycled()Z

    move-result v0

    goto :goto_0
.end method

.method public recycle()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/decoder/regiondecoder/RegionDecoder;->mQuramRegionDecoder:Lcom/sec/samsung/gallery/decoder/regiondecoder/QuramCodecRegionDecoder;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/decoder/regiondecoder/RegionDecoder;->mQuramRegionDecoder:Lcom/sec/samsung/gallery/decoder/regiondecoder/QuramCodecRegionDecoder;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/decoder/regiondecoder/QuramCodecRegionDecoder;->recycle()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/decoder/regiondecoder/RegionDecoder;->mSecMMCodecRegionDecoder:Lcom/sec/samsung/gallery/decoder/regiondecoder/SecMMCodecRegionDecoder;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/samsung/gallery/decoder/regiondecoder/RegionDecoder;->mSecMMCodecRegionDecoder:Lcom/sec/samsung/gallery/decoder/regiondecoder/SecMMCodecRegionDecoder;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/decoder/regiondecoder/SecMMCodecRegionDecoder;->recycle()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sec/samsung/gallery/decoder/regiondecoder/RegionDecoder;->mBFRegionDecoder:Lcom/sec/samsung/gallery/decoder/regiondecoder/BFRegionDecoder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/decoder/regiondecoder/RegionDecoder;->mBFRegionDecoder:Lcom/sec/samsung/gallery/decoder/regiondecoder/BFRegionDecoder;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/decoder/regiondecoder/BFRegionDecoder;->recycle()V

    goto :goto_0
.end method

.method public requestCancelDecode()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/decoder/regiondecoder/RegionDecoder;->mQuramRegionDecoder:Lcom/sec/samsung/gallery/decoder/regiondecoder/QuramCodecRegionDecoder;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/decoder/regiondecoder/RegionDecoder;->mQuramRegionDecoder:Lcom/sec/samsung/gallery/decoder/regiondecoder/QuramCodecRegionDecoder;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/decoder/regiondecoder/QuramCodecRegionDecoder;->requestCancelDecode()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/decoder/regiondecoder/RegionDecoder;->mSecMMCodecRegionDecoder:Lcom/sec/samsung/gallery/decoder/regiondecoder/SecMMCodecRegionDecoder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/decoder/regiondecoder/RegionDecoder;->mSecMMCodecRegionDecoder:Lcom/sec/samsung/gallery/decoder/regiondecoder/SecMMCodecRegionDecoder;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/decoder/regiondecoder/SecMMCodecRegionDecoder;->requestCancelDecode()V

    goto :goto_0
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
