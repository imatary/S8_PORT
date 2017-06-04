.class public Lcom/sec/android/gallery3d/ui/TileImageViewAdapter;
.super Ljava/lang/Object;
.source "TileImageViewAdapter.java"

# interfaces
.implements Lcom/sec/android/gallery3d/ui/TileImageView$TileSource;


# static fields
.field private static final TAG:Ljava/lang/String; = "TileImageViewAdapter"


# instance fields
.field private final mGLRoot:Lcom/sec/android/gallery3d/ui/GLRoot;

.field private mImageHeight:I

.field private mImageWidth:I

.field private mLevelCount:I

.field private mRegionDecoder:Lcom/sec/samsung/gallery/decoder/regiondecoder/RegionDecoder;

.field private mScreenNail:Lcom/sec/android/gallery3d/ui/ScreenNail;

.field private mScreenNailCopy:Lcom/sec/android/gallery3d/ui/ScreenNail;


# direct methods
.method public constructor <init>(Lcom/sec/android/gallery3d/ui/GLRoot;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/gallery3d/ui/TileImageViewAdapter;->mGLRoot:Lcom/sec/android/gallery3d/ui/GLRoot;

    return-void
.end method

.method private calculateLevelCount()I
    .locals 3

    const/4 v0, 0x0

    iget v1, p0, Lcom/sec/android/gallery3d/ui/TileImageViewAdapter;->mImageWidth:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/TileImageViewAdapter;->mScreenNail:Lcom/sec/android/gallery3d/ui/ScreenNail;

    invoke-interface {v2}, Lcom/sec/android/gallery3d/ui/ScreenNail;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-static {v1}, Lcom/sec/android/gallery3d/common/Utils;->ceilLog2(F)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private getTileWithoutReusingBitmap(IIII)Landroid/graphics/Bitmap;
    .locals 14

    shl-int v8, p4, p1

    new-instance v9, Landroid/graphics/Rect;

    add-int v10, p2, v8

    add-int v11, p3, v8

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-direct {v9, v0, v1, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    monitor-enter p0

    :try_start_0
    iget-object v6, p0, Lcom/sec/android/gallery3d/ui/TileImageViewAdapter;->mRegionDecoder:Lcom/sec/samsung/gallery/decoder/regiondecoder/RegionDecoder;

    if-nez v6, :cond_1

    const/4 v2, 0x0

    monitor-exit p0

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    new-instance v5, Landroid/graphics/Rect;

    const/4 v10, 0x0

    const/4 v11, 0x0

    iget v12, p0, Lcom/sec/android/gallery3d/ui/TileImageViewAdapter;->mImageWidth:I

    iget v13, p0, Lcom/sec/android/gallery3d/ui/TileImageViewAdapter;->mImageHeight:I

    invoke-direct {v5, v10, v11, v12, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v5, v9}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v10

    invoke-static {v10}, Lcom/sec/android/gallery3d/common/Utils;->assertTrue(Z)V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v10, v4, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    const/4 v10, 0x1

    iput-boolean v10, v4, Landroid/graphics/BitmapFactory$Options;->inPreferQualityOverSpeed:Z

    const/4 v10, 0x1

    shl-int/2addr v10, p1

    iput v10, v4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    monitor-enter v6

    :try_start_1
    invoke-virtual {v6, v5, v4}, Lcom/sec/samsung/gallery/decoder/regiondecoder/RegionDecoder;->decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v2, :cond_2

    const-string/jumbo v10, "TileImageViewAdapter"

    const-string/jumbo v11, "fail in decoding region"

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    goto :goto_0

    :catchall_0
    move-exception v10

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v10

    :catchall_1
    move-exception v10

    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v10

    :cond_2
    invoke-virtual {v9, v5}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, p4

    move/from16 v1, p4

    invoke-static {v0, v1, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v7}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iget v10, v5, Landroid/graphics/Rect;->left:I

    iget v11, v9, Landroid/graphics/Rect;->left:I

    sub-int/2addr v10, v11

    shr-int/2addr v10, p1

    int-to-float v10, v10

    iget v11, v5, Landroid/graphics/Rect;->top:I

    iget v12, v9, Landroid/graphics/Rect;->top:I

    sub-int/2addr v11, v12

    shr-int/2addr v11, p1

    int-to-float v11, v11

    const/4 v12, 0x0

    invoke-virtual {v3, v2, v10, v11, v12}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    move-object v2, v7

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized clear()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/sec/android/gallery3d/ui/TileImageViewAdapter;->mScreenNail:Lcom/sec/android/gallery3d/ui/ScreenNail;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/gallery3d/ui/TileImageViewAdapter;->mScreenNailCopy:Lcom/sec/android/gallery3d/ui/ScreenNail;

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/gallery3d/ui/TileImageViewAdapter;->mImageWidth:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/gallery3d/ui/TileImageViewAdapter;->mImageHeight:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/gallery3d/ui/TileImageViewAdapter;->mLevelCount:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/gallery3d/ui/TileImageViewAdapter;->mRegionDecoder:Lcom/sec/samsung/gallery/decoder/regiondecoder/RegionDecoder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getImageHeight()I
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/ui/TileImageViewAdapter;->mImageHeight:I

    return v0
.end method

.method public getImageWidth()I
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/ui/TileImageViewAdapter;->mImageWidth:I

    return v0
.end method

.method public declared-synchronized getLevelCount()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/sec/android/gallery3d/ui/TileImageViewAdapter;->mLevelCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getScreenNail(Lcom/sec/android/gallery3d/ui/GLRoot;)Lcom/sec/android/gallery3d/ui/ScreenNail;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/TileImageViewAdapter;->mGLRoot:Lcom/sec/android/gallery3d/ui/GLRoot;

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/TileImageViewAdapter;->mScreenNail:Lcom/sec/android/gallery3d/ui/ScreenNail;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/TileImageViewAdapter;->mScreenNailCopy:Lcom/sec/android/gallery3d/ui/ScreenNail;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getTile(IIII)Landroid/graphics/Bitmap;
    .locals 8

    sget-boolean v2, Lcom/sec/android/gallery3d/common/ApiHelper;->HAS_REUSING_BITMAP_IN_BITMAP_REGION_DECODER:Z

    if-nez v2, :cond_1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/gallery3d/ui/TileImageViewAdapter;->getTileWithoutReusingBitmap(IIII)Landroid/graphics/Bitmap;

    move-result-object v6

    :cond_0
    :goto_0
    return-object v6

    :cond_1
    shl-int v7, p4, p1

    new-instance v1, Landroid/graphics/Rect;

    add-int v2, p2, v7

    add-int v3, p3, v7

    invoke-direct {v1, p2, p3, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/TileImageViewAdapter;->mRegionDecoder:Lcom/sec/samsung/gallery/decoder/regiondecoder/RegionDecoder;

    if-nez v0, :cond_2

    const/4 v6, 0x0

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-enter v0

    :try_start_2
    iget v2, p0, Lcom/sec/android/gallery3d/ui/TileImageViewAdapter;->mImageWidth:I

    iget v3, p0, Lcom/sec/android/gallery3d/ui/TileImageViewAdapter;->mImageHeight:I

    move v4, p4

    move v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sec/samsung/gallery/decoder/regiondecoder/RegionDecoder;->decodeRegionEx(Landroid/graphics/Rect;IIII)Landroid/graphics/Bitmap;

    move-result-object v6

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-nez v6, :cond_0

    const-string/jumbo v2, "TileImageViewAdapter"

    const-string/jumbo v3, "fail in decoding region"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_1
    move-exception v2

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2
.end method

.method public declared-synchronized setRegionDecoder(Lcom/sec/samsung/gallery/decoder/regiondecoder/RegionDecoder;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/sec/android/gallery3d/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/decoder/regiondecoder/RegionDecoder;

    iput-object v0, p0, Lcom/sec/android/gallery3d/ui/TileImageViewAdapter;->mRegionDecoder:Lcom/sec/samsung/gallery/decoder/regiondecoder/RegionDecoder;

    invoke-virtual {p1}, Lcom/sec/samsung/gallery/decoder/regiondecoder/RegionDecoder;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/sec/android/gallery3d/ui/TileImageViewAdapter;->mImageWidth:I

    invoke-virtual {p1}, Lcom/sec/samsung/gallery/decoder/regiondecoder/RegionDecoder;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/sec/android/gallery3d/ui/TileImageViewAdapter;->mImageHeight:I

    invoke-direct {p0}, Lcom/sec/android/gallery3d/ui/TileImageViewAdapter;->calculateLevelCount()I

    move-result v0

    iput v0, p0, Lcom/sec/android/gallery3d/ui/TileImageViewAdapter;->mLevelCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setScreenNail(Lcom/sec/android/gallery3d/ui/ScreenNail;II)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/sec/android/gallery3d/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/sec/android/gallery3d/ui/TileImageViewAdapter;->mScreenNail:Lcom/sec/android/gallery3d/ui/ScreenNail;

    invoke-interface {p1}, Lcom/sec/android/gallery3d/ui/ScreenNail;->copy()Lcom/sec/android/gallery3d/ui/ScreenNail;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/ui/TileImageViewAdapter;->mScreenNailCopy:Lcom/sec/android/gallery3d/ui/ScreenNail;

    iput p2, p0, Lcom/sec/android/gallery3d/ui/TileImageViewAdapter;->mImageWidth:I

    iput p3, p0, Lcom/sec/android/gallery3d/ui/TileImageViewAdapter;->mImageHeight:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/gallery3d/ui/TileImageViewAdapter;->mRegionDecoder:Lcom/sec/samsung/gallery/decoder/regiondecoder/RegionDecoder;

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/gallery3d/ui/TileImageViewAdapter;->mLevelCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
