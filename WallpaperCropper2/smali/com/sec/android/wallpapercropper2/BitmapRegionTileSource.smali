.class public Lcom/sec/android/wallpapercropper2/BitmapRegionTileSource;
.super Ljava/lang/Object;
.source "BitmapRegionTileSource.java"

# interfaces
.implements Lcom/sec/android/wallpapercropper2/TiledImageRenderer$TileSource;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xf
.end annotation


# static fields
.field private static final GL_SIZE_LIMIT:I = 0x800

.field public static final MAX_PREVIEW_SIZE:I = 0x400

.field private static final REUSE_BITMAP:Z

.field private static final TAG:Ljava/lang/String; = "Cropper2_BMTileSource"


# instance fields
.field private mBlurredPreview:Landroid/graphics/Bitmap;

.field private mCanvas:Landroid/graphics/Canvas;

.field mHeight:I

.field private mOptions:Landroid/graphics/BitmapFactory$Options;

.field private mOverlapRegion:Landroid/graphics/Rect;

.field private mPreview:Lcom/android/gallery3d/glrenderer/UploadedTexture;

.field private mRegionDecoder:Lcom/sec/samsung/gallery/decoder/regiondecoder/IBitmapRegionDecoder;

.field private final mRotation:I

.field private mSource:Lcom/sec/android/wallpapercropper2/UriBitmapSource;

.field mTileSize:I

.field private mWantRegion:Landroid/graphics/Rect;

.field mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/sec/android/wallpapercropper2/BitmapRegionTileSource;->REUSE_BITMAP:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/wallpapercropper2/UriBitmapSource;Z)V
    .locals 6

    const/16 v5, 0x800

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sec/android/wallpapercropper2/BitmapRegionTileSource;->mWantRegion:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sec/android/wallpapercropper2/BitmapRegionTileSource;->mOverlapRegion:Landroid/graphics/Rect;

    iput-object p2, p0, Lcom/sec/android/wallpapercropper2/BitmapRegionTileSource;->mSource:Lcom/sec/android/wallpapercropper2/UriBitmapSource;

    invoke-static {p1}, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->suggestedTileSize(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/wallpapercropper2/BitmapRegionTileSource;->mTileSize:I

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/BitmapRegionTileSource;->mSource:Lcom/sec/android/wallpapercropper2/UriBitmapSource;

    invoke-virtual {v0}, Lcom/sec/android/wallpapercropper2/UriBitmapSource;->getRotation()I

    move-result v0

    iput v0, p0, Lcom/sec/android/wallpapercropper2/BitmapRegionTileSource;->mRotation:I

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/BitmapRegionTileSource;->mSource:Lcom/sec/android/wallpapercropper2/UriBitmapSource;

    invoke-virtual {v0}, Lcom/sec/android/wallpapercropper2/UriBitmapSource;->getRegionDecoder()Lcom/sec/samsung/gallery/decoder/regiondecoder/IBitmapRegionDecoder;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/wallpapercropper2/BitmapRegionTileSource;->mRegionDecoder:Lcom/sec/samsung/gallery/decoder/regiondecoder/IBitmapRegionDecoder;

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/BitmapRegionTileSource;->mRegionDecoder:Lcom/sec/samsung/gallery/decoder/regiondecoder/IBitmapRegionDecoder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/BitmapRegionTileSource;->mRegionDecoder:Lcom/sec/samsung/gallery/decoder/regiondecoder/IBitmapRegionDecoder;

    invoke-interface {v0}, Lcom/sec/samsung/gallery/decoder/regiondecoder/IBitmapRegionDecoder;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/sec/android/wallpapercropper2/BitmapRegionTileSource;->mWidth:I

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/BitmapRegionTileSource;->mRegionDecoder:Lcom/sec/samsung/gallery/decoder/regiondecoder/IBitmapRegionDecoder;

    invoke-interface {v0}, Lcom/sec/samsung/gallery/decoder/regiondecoder/IBitmapRegionDecoder;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/sec/android/wallpapercropper2/BitmapRegionTileSource;->mHeight:I

    :cond_0
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-object v0, p0, Lcom/sec/android/wallpapercropper2/BitmapRegionTileSource;->mOptions:Landroid/graphics/BitmapFactory$Options;

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/BitmapRegionTileSource;->mOptions:Landroid/graphics/BitmapFactory$Options;

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v3, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/BitmapRegionTileSource;->mOptions:Landroid/graphics/BitmapFactory$Options;

    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inPreferQualityOverSpeed:Z

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/BitmapRegionTileSource;->mOptions:Landroid/graphics/BitmapFactory$Options;

    const v3, 0x8000

    new-array v3, v3, [B

    iput-object v3, v0, Landroid/graphics/BitmapFactory$Options;->inTempStorage:[B

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/BitmapRegionTileSource;->mSource:Lcom/sec/android/wallpapercropper2/UriBitmapSource;

    invoke-virtual {v0}, Lcom/sec/android/wallpapercropper2/UriBitmapSource;->getPreviewSize()I

    move-result v0

    if-eqz v0, :cond_4

    const/16 v3, 0x400

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v3, p0, Lcom/sec/android/wallpapercropper2/BitmapRegionTileSource;->mSource:Lcom/sec/android/wallpapercropper2/UriBitmapSource;

    invoke-direct {p0, v3, v0}, Lcom/sec/android/wallpapercropper2/BitmapRegionTileSource;->decodePreview(Lcom/sec/android/wallpapercropper2/UriBitmapSource;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p2, Lcom/sec/android/wallpapercropper2/UriBitmapSource;->mPreview:Landroid/graphics/Bitmap;

    iget-object v0, p2, Lcom/sec/android/wallpapercropper2/UriBitmapSource;->mPreview:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_5

    move v0, v1

    :goto_0
    and-int/2addr v0, p3

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/BitmapRegionTileSource;->mBlurredPreview:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/BitmapRegionTileSource;->mBlurredPreview:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    iget-object v0, p2, Lcom/sec/android/wallpapercropper2/UriBitmapSource;->mPreview:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v3, p2, Lcom/sec/android/wallpapercropper2/UriBitmapSource;->mPreview:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    const/high16 v3, 0x43000000    # 128.0f

    div-float v0, v3, v0

    iget-object v3, p2, Lcom/sec/android/wallpapercropper2/UriBitmapSource;->mPreview:Landroid/graphics/Bitmap;

    invoke-static {v3, v0, v2}, Lcom/android/gallery3d/util/BitmapUtils;->resizeBitmapByScale(Landroid/graphics/Bitmap;FZ)Landroid/graphics/Bitmap;

    move-result-object v0

    const/high16 v3, 0x41c80000    # 25.0f

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v0, v4, v1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-static {p1, v3, v4}, Lcom/android/gallery3d/util/BitmapUtils;->createBlurredImage(Landroid/content/Context;FLandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/wallpapercropper2/BitmapRegionTileSource;->mBlurredPreview:Landroid/graphics/Bitmap;

    iget-object v3, p2, Lcom/sec/android/wallpapercropper2/UriBitmapSource;->mPreview:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v3}, Landroid/graphics/Bitmap;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_2
    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/BitmapRegionTileSource;->mBlurredPreview:Landroid/graphics/Bitmap;

    iget v3, p0, Lcom/sec/android/wallpapercropper2/BitmapRegionTileSource;->mRotation:I

    invoke-static {p1, v0, v3, v1}, Lcom/android/gallery3d/util/BitmapUtils;->resizeAndCropCenter(Landroid/content/Context;Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/wallpapercropper2/BitmapRegionTileSource;->mBlurredPreview:Landroid/graphics/Bitmap;

    :cond_3
    iget-object v0, p2, Lcom/sec/android/wallpapercropper2/UriBitmapSource;->mPreview:Landroid/graphics/Bitmap;

    if-nez v0, :cond_6

    const-string/jumbo v0, "Cropper2_BMTileSource"

    const-string/jumbo v1, "preview is null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_1
    return-void

    :cond_5
    move v0, v2

    goto :goto_0

    :cond_6
    iget-object v0, p2, Lcom/sec/android/wallpapercropper2/UriBitmapSource;->mPreview:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-gt v0, v5, :cond_7

    iget-object v0, p2, Lcom/sec/android/wallpapercropper2/UriBitmapSource;->mPreview:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-gt v0, v5, :cond_7

    new-instance v0, Lcom/android/gallery3d/glrenderer/BitmapTexture;

    iget-object v1, p2, Lcom/sec/android/wallpapercropper2/UriBitmapSource;->mPreview:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Lcom/android/gallery3d/glrenderer/BitmapTexture;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/sec/android/wallpapercropper2/BitmapRegionTileSource;->mPreview:Lcom/android/gallery3d/glrenderer/UploadedTexture;

    goto :goto_1

    :cond_7
    const-string/jumbo v0, "Cropper2_BMTileSource"

    const-string/jumbo v3, "Failed to create preview of apropriate size!  in: %dx%d, out: %dx%d"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    iget v5, p0, Lcom/sec/android/wallpapercropper2/BitmapRegionTileSource;->mWidth:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    iget v2, p0, Lcom/sec/android/wallpapercropper2/BitmapRegionTileSource;->mHeight:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v1

    iget-object v1, p2, Lcom/sec/android/wallpapercropper2/UriBitmapSource;->mPreview:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v4, v2

    iget-object v1, p2, Lcom/sec/android/wallpapercropper2/UriBitmapSource;->mPreview:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v4, v2

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private decodePreview(Lcom/sec/android/wallpapercropper2/UriBitmapSource;I)Landroid/graphics/Bitmap;
    .locals 6

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/sec/android/wallpapercropper2/UriBitmapSource;->getPreviewBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    int-to-float v1, p2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    float-to-double v2, v1

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    cmpg-double v2, v2, v4

    if-gtz v2, :cond_1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/gallery3d/util/BitmapUtils;->resizeBitmapByScale(Landroid/graphics/Bitmap;FZ)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_1
    invoke-direct {p0, v0}, Lcom/sec/android/wallpapercropper2/BitmapRegionTileSource;->ensureGLCompatibleBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private ensureGLCompatibleBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-object p1

    :cond_1
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_0
.end method

.method private getDecodedBitmap()Landroid/graphics/Bitmap;
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sec/android/wallpapercropper2/BitmapRegionTileSource;->mRegionDecoder:Lcom/sec/samsung/gallery/decoder/regiondecoder/IBitmapRegionDecoder;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/BitmapRegionTileSource;->mRegionDecoder:Lcom/sec/samsung/gallery/decoder/regiondecoder/IBitmapRegionDecoder;

    iget-object v1, p0, Lcom/sec/android/wallpapercropper2/BitmapRegionTileSource;->mWantRegion:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/sec/android/wallpapercropper2/BitmapRegionTileSource;->mOptions:Landroid/graphics/BitmapFactory$Options;

    invoke-interface {v0, v1, v2}, Lcom/sec/samsung/gallery/decoder/regiondecoder/IBitmapRegionDecoder;->decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private getTileWithoutReusingBitmap(IIII)Landroid/graphics/Bitmap;
    .locals 7

    const/4 v3, 0x0

    const/4 v6, 0x0

    shl-int v0, p4, p1

    iget-object v1, p0, Lcom/sec/android/wallpapercropper2/BitmapRegionTileSource;->mWantRegion:Landroid/graphics/Rect;

    add-int v2, p2, v0

    add-int/2addr v0, p3

    invoke-virtual {v1, p2, p3, v2, v0}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/BitmapRegionTileSource;->mOverlapRegion:Landroid/graphics/Rect;

    iget v1, p0, Lcom/sec/android/wallpapercropper2/BitmapRegionTileSource;->mWidth:I

    iget v2, p0, Lcom/sec/android/wallpapercropper2/BitmapRegionTileSource;->mHeight:I

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/BitmapRegionTileSource;->mOptions:Landroid/graphics/BitmapFactory$Options;

    const/4 v1, 0x1

    shl-int/2addr v1, p1

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    invoke-direct {p0}, Lcom/sec/android/wallpapercropper2/BitmapRegionTileSource;->getDecodedBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v1, "Cropper2_BMTileSource"

    const-string/jumbo v2, "fail in decoding region"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/sec/android/wallpapercropper2/BitmapRegionTileSource;->mWantRegion:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/sec/android/wallpapercropper2/BitmapRegionTileSource;->mOverlapRegion:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v0

    :cond_1
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p4, p4, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/wallpapercropper2/BitmapRegionTileSource;->mCanvas:Landroid/graphics/Canvas;

    if-nez v2, :cond_2

    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2}, Landroid/graphics/Canvas;-><init>()V

    iput-object v2, p0, Lcom/sec/android/wallpapercropper2/BitmapRegionTileSource;->mCanvas:Landroid/graphics/Canvas;

    :cond_2
    iget-object v2, p0, Lcom/sec/android/wallpapercropper2/BitmapRegionTileSource;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v2, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    iget-object v2, p0, Lcom/sec/android/wallpapercropper2/BitmapRegionTileSource;->mCanvas:Landroid/graphics/Canvas;

    iget-object v3, p0, Lcom/sec/android/wallpapercropper2/BitmapRegionTileSource;->mOverlapRegion:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Lcom/sec/android/wallpapercropper2/BitmapRegionTileSource;->mWantRegion:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    shr-int/2addr v3, p1

    int-to-float v3, v3

    iget-object v4, p0, Lcom/sec/android/wallpapercropper2/BitmapRegionTileSource;->mOverlapRegion:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget-object v5, p0, Lcom/sec/android/wallpapercropper2/BitmapRegionTileSource;->mWantRegion:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v5

    shr-int/2addr v4, p1

    int-to-float v4, v4

    invoke-virtual {v2, v0, v3, v4, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/BitmapRegionTileSource;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, v6}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    return-object v1
.end method


# virtual methods
.method public freePreview(Z)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/BitmapRegionTileSource;->mPreview:Lcom/android/gallery3d/glrenderer/UploadedTexture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/BitmapRegionTileSource;->mPreview:Lcom/android/gallery3d/glrenderer/UploadedTexture;

    invoke-virtual {v0}, Lcom/android/gallery3d/glrenderer/UploadedTexture;->recycle()V

    iput-object v1, p0, Lcom/sec/android/wallpapercropper2/BitmapRegionTileSource;->mPreview:Lcom/android/gallery3d/glrenderer/UploadedTexture;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/BitmapRegionTileSource;->mBlurredPreview:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/BitmapRegionTileSource;->mBlurredPreview:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, Lcom/sec/android/wallpapercropper2/BitmapRegionTileSource;->mBlurredPreview:Landroid/graphics/Bitmap;

    :cond_1
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/BitmapRegionTileSource;->mRegionDecoder:Lcom/sec/samsung/gallery/decoder/regiondecoder/IBitmapRegionDecoder;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/BitmapRegionTileSource;->mRegionDecoder:Lcom/sec/samsung/gallery/decoder/regiondecoder/IBitmapRegionDecoder;

    invoke-interface {v0}, Lcom/sec/samsung/gallery/decoder/regiondecoder/IBitmapRegionDecoder;->recycle()V

    :cond_2
    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/BitmapRegionTileSource;->mOptions:Landroid/graphics/BitmapFactory$Options;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/BitmapRegionTileSource;->mOptions:Landroid/graphics/BitmapFactory$Options;

    iget-object v0, v0, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/BitmapRegionTileSource;->mOptions:Landroid/graphics/BitmapFactory$Options;

    iget-object v0, v0, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/BitmapRegionTileSource;->mOptions:Landroid/graphics/BitmapFactory$Options;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    :cond_3
    return-void
.end method

.method public getBlurredBitmap()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/BitmapRegionTileSource;->mBlurredPreview:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getImageHeight()I
    .locals 1

    iget v0, p0, Lcom/sec/android/wallpapercropper2/BitmapRegionTileSource;->mHeight:I

    return v0
.end method

.method public getImageWidth()I
    .locals 1

    iget v0, p0, Lcom/sec/android/wallpapercropper2/BitmapRegionTileSource;->mWidth:I

    return v0
.end method

.method public getPreview()Lcom/android/gallery3d/glrenderer/UploadedTexture;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/BitmapRegionTileSource;->mPreview:Lcom/android/gallery3d/glrenderer/UploadedTexture;

    return-object v0
.end method

.method public getRotation()I
    .locals 1

    iget v0, p0, Lcom/sec/android/wallpapercropper2/BitmapRegionTileSource;->mRotation:I

    return v0
.end method

.method public getTile(IIILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/sec/android/wallpapercropper2/BitmapRegionTileSource;->getTileSize()I

    move-result v0

    sget-boolean v1, Lcom/sec/android/wallpapercropper2/BitmapRegionTileSource;->REUSE_BITMAP:Z

    if-nez v1, :cond_0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/sec/android/wallpapercropper2/BitmapRegionTileSource;->getTileWithoutReusingBitmap(IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    :cond_0
    shl-int v1, v0, p1

    iget-object v2, p0, Lcom/sec/android/wallpapercropper2/BitmapRegionTileSource;->mWantRegion:Landroid/graphics/Rect;

    add-int v3, p2, v1

    add-int/2addr v1, p3

    invoke-virtual {v2, p2, p3, v3, v1}, Landroid/graphics/Rect;->set(IIII)V

    if-nez p4, :cond_1

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p4

    :cond_1
    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/BitmapRegionTileSource;->mOptions:Landroid/graphics/BitmapFactory$Options;

    const/4 v1, 0x1

    shl-int/2addr v1, p1

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/BitmapRegionTileSource;->mOptions:Landroid/graphics/BitmapFactory$Options;

    iput-object p4, v0, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    :try_start_0
    invoke-direct {p0}, Lcom/sec/android/wallpapercropper2/BitmapRegionTileSource;->getDecodedBitmap()Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/wallpapercropper2/BitmapRegionTileSource;->mOptions:Landroid/graphics/BitmapFactory$Options;

    iget-object v1, v1, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    if-eq v1, v0, :cond_2

    iget-object v1, p0, Lcom/sec/android/wallpapercropper2/BitmapRegionTileSource;->mOptions:Landroid/graphics/BitmapFactory$Options;

    iget-object v1, v1, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/wallpapercropper2/BitmapRegionTileSource;->mOptions:Landroid/graphics/BitmapFactory$Options;

    iput-object v4, v1, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    :cond_2
    if-nez v0, :cond_3

    const-string/jumbo v1, "Cropper2_BMTileSource"

    const-string/jumbo v2, "fail in decoding region"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/sec/android/wallpapercropper2/BitmapRegionTileSource;->mOptions:Landroid/graphics/BitmapFactory$Options;

    iget-object v1, v1, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    if-eq v1, p4, :cond_4

    iget-object v1, p0, Lcom/sec/android/wallpapercropper2/BitmapRegionTileSource;->mOptions:Landroid/graphics/BitmapFactory$Options;

    iget-object v1, v1, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/sec/android/wallpapercropper2/BitmapRegionTileSource;->mOptions:Landroid/graphics/BitmapFactory$Options;

    iput-object v4, v1, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    :cond_4
    throw v0
.end method

.method public getTileSize()I
    .locals 1

    iget v0, p0, Lcom/sec/android/wallpapercropper2/BitmapRegionTileSource;->mTileSize:I

    return v0
.end method
