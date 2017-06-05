.class public Lcom/sec/android/photos/data/WallpaperCropperBitmapPool;
.super Ljava/lang/Object;
.source "WallpaperCropperBitmapPool.java"


# static fields
.field private static final CAPACITY_BYTES:I = 0x1400000

.field private static final COMMON_PHOTO_ASPECT_RATIOS:[Landroid/graphics/Point;

.field private static final POOL_INDEX_MISC:I = 0x2

.field private static final POOL_INDEX_NONE:I = -0x1

.field private static final POOL_INDEX_PHOTO:I = 0x1

.field private static final POOL_INDEX_SQUARE:I = 0x0

.field public static final SCREEN_NAIL_MAX:I = 0x3

.field private static sInstance:Lcom/sec/android/photos/data/WallpaperCropperBitmapPool;


# instance fields
.field private mCapacityBytes:I

.field private mPools:[Lcom/sec/android/photos/data/SparseArrayBitmapPool;

.field private mSharedNodePool:Landroid/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pools$Pool",
            "<",
            "Lcom/sec/android/photos/data/SparseArrayBitmapPool$Node;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x3

    new-array v0, v3, [Landroid/graphics/Point;

    new-instance v1, Landroid/graphics/Point;

    const/4 v2, 0x4

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Landroid/graphics/Point;

    const/16 v2, 0x10

    const/16 v3, 0x9

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    aput-object v1, v0, v4

    sput-object v0, Lcom/sec/android/photos/data/WallpaperCropperBitmapPool;->COMMON_PHOTO_ASPECT_RATIOS:[Landroid/graphics/Point;

    new-instance v0, Lcom/sec/android/photos/data/WallpaperCropperBitmapPool;

    invoke-static {}, Lcom/sec/android/photos/data/WallpaperCropperBitmapPool;->getSquareSize()I

    move-result v1

    invoke-static {}, Lcom/sec/android/photos/data/WallpaperCropperBitmapPool;->getPhotoSize()I

    move-result v2

    invoke-static {}, Lcom/sec/android/photos/data/WallpaperCropperBitmapPool;->getMiscSize()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/photos/data/WallpaperCropperBitmapPool;-><init>(III)V

    sput-object v0, Lcom/sec/android/photos/data/WallpaperCropperBitmapPool;->sInstance:Lcom/sec/android/photos/data/WallpaperCropperBitmapPool;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 3

    div-int/lit8 v0, p1, 0x3

    div-int/lit8 v1, p1, 0x3

    div-int/lit8 v2, p1, 0x3

    invoke-direct {p0, v0, v1, v2}, Lcom/sec/android/photos/data/WallpaperCropperBitmapPool;-><init>(III)V

    return-void
.end method

.method private constructor <init>(III)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/Pools$SynchronizedPool;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Landroid/util/Pools$SynchronizedPool;-><init>(I)V

    iput-object v0, p0, Lcom/sec/android/photos/data/WallpaperCropperBitmapPool;->mSharedNodePool:Landroid/util/Pools$Pool;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/sec/android/photos/data/SparseArrayBitmapPool;

    iput-object v0, p0, Lcom/sec/android/photos/data/WallpaperCropperBitmapPool;->mPools:[Lcom/sec/android/photos/data/SparseArrayBitmapPool;

    iget-object v0, p0, Lcom/sec/android/photos/data/WallpaperCropperBitmapPool;->mPools:[Lcom/sec/android/photos/data/SparseArrayBitmapPool;

    new-instance v1, Lcom/sec/android/photos/data/SparseArrayBitmapPool;

    iget-object v2, p0, Lcom/sec/android/photos/data/WallpaperCropperBitmapPool;->mSharedNodePool:Landroid/util/Pools$Pool;

    invoke-direct {v1, p1, v2}, Lcom/sec/android/photos/data/SparseArrayBitmapPool;-><init>(ILandroid/util/Pools$Pool;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v0, p0, Lcom/sec/android/photos/data/WallpaperCropperBitmapPool;->mPools:[Lcom/sec/android/photos/data/SparseArrayBitmapPool;

    new-instance v1, Lcom/sec/android/photos/data/SparseArrayBitmapPool;

    iget-object v2, p0, Lcom/sec/android/photos/data/WallpaperCropperBitmapPool;->mSharedNodePool:Landroid/util/Pools$Pool;

    invoke-direct {v1, p2, v2}, Lcom/sec/android/photos/data/SparseArrayBitmapPool;-><init>(ILandroid/util/Pools$Pool;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v0, p0, Lcom/sec/android/photos/data/WallpaperCropperBitmapPool;->mPools:[Lcom/sec/android/photos/data/SparseArrayBitmapPool;

    new-instance v1, Lcom/sec/android/photos/data/SparseArrayBitmapPool;

    iget-object v2, p0, Lcom/sec/android/photos/data/WallpaperCropperBitmapPool;->mSharedNodePool:Landroid/util/Pools$Pool;

    invoke-direct {v1, p3, v2}, Lcom/sec/android/photos/data/SparseArrayBitmapPool;-><init>(ILandroid/util/Pools$Pool;)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    add-int v0, p1, p2

    add-int/2addr v0, p3

    iput v0, p0, Lcom/sec/android/photos/data/WallpaperCropperBitmapPool;->mCapacityBytes:I

    return-void
.end method

.method public static getInstance()Lcom/sec/android/photos/data/WallpaperCropperBitmapPool;
    .locals 1

    sget-object v0, Lcom/sec/android/photos/data/WallpaperCropperBitmapPool;->sInstance:Lcom/sec/android/photos/data/WallpaperCropperBitmapPool;

    return-object v0
.end method

.method private static getMiscSize()I
    .locals 2

    invoke-static {}, Lcom/android/gallery3d/util/Utils;->getTargetSize()I

    move-result v0

    invoke-static {}, Lcom/android/gallery3d/util/Utils;->getTargetSize()I

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

    invoke-direct {p0, p1, p2}, Lcom/sec/android/photos/data/WallpaperCropperBitmapPool;->getPoolIndexForDimensions(II)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/sec/android/photos/data/WallpaperCropperBitmapPool;->mPools:[Lcom/sec/android/photos/data/SparseArrayBitmapPool;

    aget-object v0, v1, v0

    return-object v0
.end method

.method private getPoolIndexForDimensions(II)I
    .locals 6

    const/4 v0, 0x0

    if-lez p1, :cond_0

    if-gtz p2, :cond_1

    :cond_0
    const/4 v0, -0x1

    return v0

    :cond_1
    if-ne p1, p2, :cond_2

    return v0

    :cond_2
    if-le p1, p2, :cond_3

    :goto_0
    sget-object v1, Lcom/sec/android/photos/data/WallpaperCropperBitmapPool;->COMMON_PHOTO_ASPECT_RATIOS:[Landroid/graphics/Point;

    array-length v2, v1

    :goto_1
    if-ge v0, v2, :cond_5

    aget-object v3, v1, v0

    iget v4, v3, Landroid/graphics/Point;->x:I

    mul-int/2addr v4, p2

    iget v3, v3, Landroid/graphics/Point;->y:I

    mul-int/2addr v3, p1

    if-ne v4, v3, :cond_4

    const/4 v0, 0x1

    return v0

    :cond_3
    move v5, p2

    move p2, p1

    move p1, v5

    goto :goto_0

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    const/4 v0, 0x2

    return v0
.end method

.method private static getSquareSize()I
    .locals 2

    invoke-static {}, Lcom/android/gallery3d/util/Utils;->getTileSize()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    invoke-static {}, Lcom/android/gallery3d/util/Utils;->getTileSize()I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    mul-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x4

    invoke-static {}, Lcom/android/gallery3d/util/Utils;->getTileNumPerScreen()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    mul-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public clear()V
    .locals 4

    iget-object v1, p0, Lcom/sec/android/photos/data/WallpaperCropperBitmapPool;->mPools:[Lcom/sec/android/photos/data/SparseArrayBitmapPool;

    const/4 v0, 0x0

    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    invoke-virtual {v3}, Lcom/sec/android/photos/data/SparseArrayBitmapPool;->clear()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public get(II)Landroid/graphics/Bitmap;
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/photos/data/WallpaperCropperBitmapPool;->getPoolForDimensions(II)Lcom/sec/android/photos/data/SparseArrayBitmapPool;

    move-result-object v0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/sec/android/photos/data/SparseArrayBitmapPool;->get(II)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getCapacity()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/sec/android/photos/data/WallpaperCropperBitmapPool;->mCapacityBytes:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getSize()I
    .locals 5

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/sec/android/photos/data/WallpaperCropperBitmapPool;->mPools:[Lcom/sec/android/photos/data/SparseArrayBitmapPool;

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    invoke-virtual {v4}, Lcom/sec/android/photos/data/SparseArrayBitmapPool;->getSize()I

    move-result v4

    add-int/2addr v1, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public put(Landroid/graphics/Bitmap;)Z
    .locals 3

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-eq v0, v1, :cond_1

    :cond_0
    return v2

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/sec/android/photos/data/WallpaperCropperBitmapPool;->getPoolForDimensions(II)Lcom/sec/android/photos/data/SparseArrayBitmapPool;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    return v2

    :cond_2
    invoke-virtual {v0, p1}, Lcom/sec/android/photos/data/SparseArrayBitmapPool;->put(Landroid/graphics/Bitmap;)Z

    move-result v0

    return v0
.end method
