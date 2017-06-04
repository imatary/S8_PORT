.class public Lcom/sec/android/photos/data/GalleryBitmapPool;
.super Ljava/lang/Object;
.source "GalleryBitmapPool.java"


# static fields
.field private static final COMMON_PHOTO_ASPECT_RATIOS:[Landroid/graphics/Point;

.field private static final sInstance:Lcom/sec/android/photos/data/GalleryBitmapPool;


# instance fields
.field private final mPools:[Lcom/sec/android/photos/data/SparseArrayBitmapPool;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x3

    new-array v0, v4, [Landroid/graphics/Point;

    const/4 v1, 0x0

    new-instance v2, Landroid/graphics/Point;

    const/4 v3, 0x4

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2, v4, v5}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v0, v1

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0x10

    const/16 v3, 0x9

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    aput-object v1, v0, v5

    sput-object v0, Lcom/sec/android/photos/data/GalleryBitmapPool;->COMMON_PHOTO_ASPECT_RATIOS:[Landroid/graphics/Point;

    new-instance v0, Lcom/sec/android/photos/data/GalleryBitmapPool;

    invoke-static {}, Lcom/sec/android/photos/data/GalleryBitmapPool;->getSquareSize()I

    move-result v1

    invoke-static {}, Lcom/sec/android/photos/data/GalleryBitmapPool;->getPhotoSize()I

    move-result v2

    invoke-static {}, Lcom/sec/android/photos/data/GalleryBitmapPool;->getMiscSize()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/photos/data/GalleryBitmapPool;-><init>(III)V

    sput-object v0, Lcom/sec/android/photos/data/GalleryBitmapPool;->sInstance:Lcom/sec/android/photos/data/GalleryBitmapPool;

    return-void
.end method

.method private constructor <init>(III)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/sec/android/photos/data/SparseArrayBitmapPool;

    iput-object v1, p0, Lcom/sec/android/photos/data/GalleryBitmapPool;->mPools:[Lcom/sec/android/photos/data/SparseArrayBitmapPool;

    new-instance v0, Landroid/support/v4/util/Pools$SynchronizedPool;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Landroid/support/v4/util/Pools$SynchronizedPool;-><init>(I)V

    iget-object v1, p0, Lcom/sec/android/photos/data/GalleryBitmapPool;->mPools:[Lcom/sec/android/photos/data/SparseArrayBitmapPool;

    const/4 v2, 0x0

    new-instance v3, Lcom/sec/android/photos/data/SparseArrayBitmapPool;

    invoke-direct {v3, p1, v0}, Lcom/sec/android/photos/data/SparseArrayBitmapPool;-><init>(ILandroid/support/v4/util/Pools$Pool;)V

    aput-object v3, v1, v2

    iget-object v1, p0, Lcom/sec/android/photos/data/GalleryBitmapPool;->mPools:[Lcom/sec/android/photos/data/SparseArrayBitmapPool;

    const/4 v2, 0x1

    new-instance v3, Lcom/sec/android/photos/data/SparseArrayBitmapPool;

    invoke-direct {v3, p2, v0}, Lcom/sec/android/photos/data/SparseArrayBitmapPool;-><init>(ILandroid/support/v4/util/Pools$Pool;)V

    aput-object v3, v1, v2

    iget-object v1, p0, Lcom/sec/android/photos/data/GalleryBitmapPool;->mPools:[Lcom/sec/android/photos/data/SparseArrayBitmapPool;

    const/4 v2, 0x2

    new-instance v3, Lcom/sec/android/photos/data/SparseArrayBitmapPool;

    invoke-direct {v3, p3, v0}, Lcom/sec/android/photos/data/SparseArrayBitmapPool;-><init>(ILandroid/support/v4/util/Pools$Pool;)V

    aput-object v3, v1, v2

    return-void
.end method

.method public static getInstance()Lcom/sec/android/photos/data/GalleryBitmapPool;
    .locals 1

    sget-object v0, Lcom/sec/android/photos/data/GalleryBitmapPool;->sInstance:Lcom/sec/android/photos/data/GalleryBitmapPool;

    return-object v0
.end method

.method private static getMiscSize()I
    .locals 2

    const/4 v1, 0x1

    invoke-static {v1}, Lcom/sec/android/gallery3d/data/MediaItem;->getTargetSize(I)I

    move-result v0

    invoke-static {v1}, Lcom/sec/android/gallery3d/data/MediaItem;->getTargetSize(I)I

    move-result v1

    mul-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x4

    mul-int/lit8 v0, v0, 0x6

    return v0
.end method

.method private static getPhotoSize()I
    .locals 1

    const v0, 0x6aaaaa

    return v0
.end method

.method private getPoolForDimensions(II)Lcom/sec/android/photos/data/SparseArrayBitmapPool;
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/sec/android/photos/data/GalleryBitmapPool;->getPoolIndexForDimensions(II)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/sec/android/photos/data/GalleryBitmapPool;->mPools:[Lcom/sec/android/photos/data/SparseArrayBitmapPool;

    aget-object v1, v1, v0

    goto :goto_0
.end method

.method private getPoolIndexForDimensions(II)I
    .locals 8

    const/4 v3, 0x0

    if-lez p1, :cond_0

    if-gtz p2, :cond_2

    :cond_0
    const/4 v3, -0x1

    :cond_1
    :goto_0
    return v3

    :cond_2
    if-eq p1, p2, :cond_1

    if-le p1, p2, :cond_3

    move v2, p2

    move v1, p1

    :goto_1
    sget-object v4, Lcom/sec/android/photos/data/GalleryBitmapPool;->COMMON_PHOTO_ASPECT_RATIOS:[Landroid/graphics/Point;

    array-length v5, v4

    :goto_2
    if-ge v3, v5, :cond_5

    aget-object v0, v4, v3

    iget v6, v0, Landroid/graphics/Point;->x:I

    mul-int/2addr v6, v2

    iget v7, v0, Landroid/graphics/Point;->y:I

    mul-int/2addr v7, v1

    if-ne v6, v7, :cond_4

    const/4 v3, 0x1

    goto :goto_0

    :cond_3
    move v2, p1

    move v1, p2

    goto :goto_1

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_5
    const/4 v3, 0x2

    goto :goto_0
.end method

.method private static getSquareSize()I
    .locals 2

    invoke-static {}, Lcom/sec/android/gallery3d/ui/TileImageView;->getTileSize()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    invoke-static {}, Lcom/sec/android/gallery3d/ui/TileImageView;->getTileSize()I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    mul-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x4

    invoke-static {}, Lcom/sec/android/gallery3d/ui/TileImageView;->getTileNumPerScreen()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    mul-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public clear()V
    .locals 4

    iget-object v2, p0, Lcom/sec/android/photos/data/GalleryBitmapPool;->mPools:[Lcom/sec/android/photos/data/SparseArrayBitmapPool;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    invoke-virtual {v0}, Lcom/sec/android/photos/data/SparseArrayBitmapPool;->clear()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public get(II)Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/sec/android/photos/data/GalleryBitmapPool;->get(IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public get(IIZ)Landroid/graphics/Bitmap;
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/sec/android/photos/data/GalleryBitmapPool;->getPoolForDimensions(II)Lcom/sec/android/photos/data/SparseArrayBitmapPool;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/android/photos/data/SparseArrayBitmapPool;->get(IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0
.end method

.method public put(Landroid/graphics/Bitmap;)Z
    .locals 4

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-eq v2, v3, :cond_1

    invoke-static {p1}, Lcom/sec/samsung/gallery/lib/factory/BitmapWrapper;->isGLCompressed(Landroid/graphics/Bitmap;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/sec/android/photos/data/GalleryBitmapPool;->getPoolForDimensions(II)Lcom/sec/android/photos/data/SparseArrayBitmapPool;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    :cond_2
    invoke-virtual {v0, p1}, Lcom/sec/android/photos/data/SparseArrayBitmapPool;->put(Landroid/graphics/Bitmap;)Z

    move-result v1

    goto :goto_0
.end method
