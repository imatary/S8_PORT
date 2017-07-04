.class public Lcom/sec/android/gallery3d/util/ResourceManager;
.super Ljava/lang/Object;
.source "ResourceManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ResourceManager"

.field private static volatile mResourceManager:Lcom/sec/android/gallery3d/util/ResourceManager;


# instance fields
.field private mBrokenMovieThumbnail:Landroid/graphics/Bitmap;

.field private mBrokenPictureThumbnail:Landroid/graphics/Bitmap;

.field private mCloudOnlyThumbnail:Landroid/graphics/Bitmap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/gallery3d/util/ResourceManager;->mResourceManager:Lcom/sec/android/gallery3d/util/ResourceManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sec/android/gallery3d/util/ResourceManager;->mBrokenMovieThumbnail:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/sec/android/gallery3d/util/ResourceManager;->mBrokenPictureThumbnail:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/sec/android/gallery3d/util/ResourceManager;->mCloudOnlyThumbnail:Landroid/graphics/Bitmap;

    return-void
.end method

.method public static getInstance()Lcom/sec/android/gallery3d/util/ResourceManager;
    .locals 2

    const-class v1, Lcom/sec/android/gallery3d/util/ResourceManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/sec/android/gallery3d/util/ResourceManager;->mResourceManager:Lcom/sec/android/gallery3d/util/ResourceManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/gallery3d/util/ResourceManager;

    invoke-direct {v0}, Lcom/sec/android/gallery3d/util/ResourceManager;-><init>()V

    sput-object v0, Lcom/sec/android/gallery3d/util/ResourceManager;->mResourceManager:Lcom/sec/android/gallery3d/util/ResourceManager;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcom/sec/android/gallery3d/util/ResourceManager;->mResourceManager:Lcom/sec/android/gallery3d/util/ResourceManager;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public getBrokenMovieThumbnail(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 2

    iget-object v1, p0, Lcom/sec/android/gallery3d/util/ResourceManager;->mBrokenMovieThumbnail:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/util/ResourceManager;->mBrokenMovieThumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->UseGraceDecorView:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->UseDreamBrokenIcon:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    if-eqz v1, :cond_2

    const v0, 0x7f0201ee

    :goto_0
    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/sec/samsung/gallery/decoder/DecoderInterface;->decodeResource(Landroid/content/Context;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/gallery3d/util/ResourceManager;->mBrokenMovieThumbnail:Landroid/graphics/Bitmap;

    :cond_1
    iget-object v1, p0, Lcom/sec/android/gallery3d/util/ResourceManager;->mBrokenMovieThumbnail:Landroid/graphics/Bitmap;

    invoke-static {v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1

    :cond_2
    const v0, 0x7f0202ed

    goto :goto_0

    :cond_3
    const v0, 0x7f0202ec

    goto :goto_0
.end method

.method public getBrokenPictureThumbnail(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 2

    iget-object v1, p0, Lcom/sec/android/gallery3d/util/ResourceManager;->mBrokenPictureThumbnail:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/util/ResourceManager;->mBrokenPictureThumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->UseDreamBrokenIcon:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    if-eqz v1, :cond_2

    const v0, 0x7f0201ee

    :goto_0
    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/sec/samsung/gallery/decoder/DecoderInterface;->decodeResource(Landroid/content/Context;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/gallery3d/util/ResourceManager;->mBrokenPictureThumbnail:Landroid/graphics/Bitmap;

    :cond_1
    iget-object v1, p0, Lcom/sec/android/gallery3d/util/ResourceManager;->mBrokenPictureThumbnail:Landroid/graphics/Bitmap;

    invoke-static {v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1

    :cond_2
    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->UseGraceDecorView:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->IsNOS:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    if-nez v1, :cond_3

    const v0, 0x7f0202eb

    goto :goto_0

    :cond_3
    const v0, 0x7f0202ea

    goto :goto_0
.end method

.method public getBrokenThumbBG(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 8

    invoke-static {p1}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getScreenSize(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v4

    const/4 v6, 0x2

    invoke-static {v6}, Lcom/sec/android/gallery3d/data/MediaItem;->getTargetSize(I)I

    move-result v5

    iget v6, v4, Landroid/graphics/Point;->y:I

    mul-int/2addr v6, v5

    iget v7, v4, Landroid/graphics/Point;->x:I

    div-int v3, v6, v7

    const v6, 0x7f100049

    invoke-static {p1, v6}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v6, v6, Landroid/content/res/Configuration;->orientation:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    invoke-static {v5, v3}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    :goto_0
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v3, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->drawColor(I)V

    return-object v0

    :cond_0
    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-static {v5, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    goto :goto_0
.end method

.method public getBrokenThumnailSize(Landroid/content/Context;I)I
    .locals 3

    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/android/gallery3d/util/ResourceManager;->getBrokenPictureThumbnail(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_1

    const-string/jumbo v1, "ResourceManager"

    const-string/jumbo v2, "Broken thumbnail bitmap is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :goto_1
    return v1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/sec/android/gallery3d/util/ResourceManager;->getBrokenMovieThumbnail(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    goto :goto_1
.end method

.method public getCloudOnlyThumb(Landroid/content/Context;I)Landroid/graphics/Bitmap;
    .locals 13

    const/4 v3, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/android/gallery3d/util/ResourceManager;->mCloudOnlyThumbnail:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/util/ResourceManager;->mCloudOnlyThumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/sec/android/gallery3d/data/MediaItem;->getTargetSize(I)I

    move-result v12

    const v0, 0x7f100081

    invoke-static {p1, v0}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v9

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v12, v12, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/util/ResourceManager;->mCloudOnlyThumbnail:Landroid/graphics/Bitmap;

    new-instance v7, Landroid/graphics/Canvas;

    iget-object v0, p0, Lcom/sec/android/gallery3d/util/ResourceManager;->mCloudOnlyThumbnail:Landroid/graphics/Bitmap;

    invoke-direct {v7, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v7, v9}, Landroid/graphics/Canvas;->drawColor(I)V

    const v0, 0x7f0201ed

    invoke-static {p1, v0, v3}, Lcom/sec/samsung/gallery/decoder/DecoderInterface;->decodeResource(Landroid/content/Context;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    sub-int v0, v12, v0

    shr-int/lit8 v10, v0, 0x1

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    sub-int v0, v12, v0

    shr-int/lit8 v11, v0, 0x1

    int-to-float v0, v10

    int-to-float v2, v11

    invoke-virtual {v7, v8, v0, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_1
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    int-to-float v0, p2

    invoke-virtual {v5, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    iget-object v0, p0, Lcom/sec/android/gallery3d/util/ResourceManager;->mCloudOnlyThumbnail:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/sec/android/gallery3d/util/ResourceManager;->mCloudOnlyThumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget-object v2, p0, Lcom/sec/android/gallery3d/util/ResourceManager;->mCloudOnlyThumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getCloudOnlyThumbBG(Landroid/content/Context;I)Landroid/graphics/Bitmap;
    .locals 11

    const/4 v6, 0x1

    const/4 v1, 0x0

    invoke-static {p1}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getScreenSize(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v9

    const/4 v2, 0x2

    invoke-static {v2}, Lcom/sec/android/gallery3d/data/MediaItem;->getTargetSize(I)I

    move-result v3

    iget v2, v9, Landroid/graphics/Point;->y:I

    mul-int/2addr v2, v3

    iget v10, v9, Landroid/graphics/Point;->x:I

    div-int v4, v2, v10

    const v2, 0x7f100081

    invoke-static {p1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v8

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    if-ne v2, v6, :cond_0

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    :goto_0
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v7, Landroid/graphics/Canvas;

    invoke-direct {v7, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v7, v8}, Landroid/graphics/Canvas;->drawColor(I)V

    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    int-to-float v2, p2

    invoke-virtual {v5, v2}, Landroid/graphics/Matrix;->postRotate(F)Z

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1

    :cond_0
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    goto :goto_0
.end method

.method public getCloudOnlyThumbnailSize(Landroid/content/Context;I)I
    .locals 3

    neg-int v1, p2

    invoke-virtual {p0, p1, v1}, Lcom/sec/android/gallery3d/util/ResourceManager;->getCloudOnlyThumb(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v1, "ResourceManager"

    const-string/jumbo v2, "Broken thumbnail bitmap is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    goto :goto_0
.end method
