.class public Lcom/sec/android/wallpapercropper2/TiledImageRenderer;
.super Ljava/lang/Object;
.source "TiledImageRenderer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/wallpapercropper2/TiledImageRenderer$Tile;,
        Lcom/sec/android/wallpapercropper2/TiledImageRenderer$TileDecoder;,
        Lcom/sec/android/wallpapercropper2/TiledImageRenderer$TileQueue;,
        Lcom/sec/android/wallpapercropper2/TiledImageRenderer$TileSource;
    }
.end annotation


# static fields
.field public static final BOTTOM:I = 0x2

.field private static final BOTTOM_M:I = 0x20

.field public static final INVALID_DIRECTION:I = -0x1

.field public static final LEFT:I = 0x1

.field private static final LEFT_M:I = 0x10

.field public static final RIGHT:I = 0x3

.field private static final RIGHT_M:I = 0x30

.field public static final SIZE_UNKNOWN:I = -0x1

.field private static final STATE_ACTIVATED:I = 0x1

.field private static final STATE_DECODED:I = 0x8

.field private static final STATE_DECODE_FAIL:I = 0x10

.field private static final STATE_DECODING:I = 0x4

.field private static final STATE_IN_QUEUE:I = 0x2

.field private static final STATE_RECYCLED:I = 0x40

.field private static final STATE_RECYCLING:I = 0x20

.field private static final TAG:Ljava/lang/String; = "Cropper2_TileRenderer"

.field public static final TOP:I = 0x0

.field private static final TOP_M:I = 0x0

.field private static final UPLOAD_LIMIT:I = 0x1

.field private static sTilePool:Landroid/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pools$Pool",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private dimBottom:Landroid/graphics/RectF;

.field private dimTop:Landroid/graphics/RectF;

.field private final mActiveRange:[Landroid/graphics/Rect;

.field private final mActiveTiles:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray",
            "<",
            "Lcom/sec/android/wallpapercropper2/TiledImageRenderer$Tile;",
            ">;"
        }
    .end annotation
.end field

.field private mBackgroundTileUploaded:Z

.field private mBg:Lcom/android/gallery3d/glrenderer/BitmapTexture;

.field protected mCenterX:F

.field protected mCenterY:F

.field private final mDecodeQueue:Lcom/sec/android/wallpapercropper2/TiledImageRenderer$TileQueue;

.field private mEffect:[Lcom/android/gallery3d/glrenderer/EdgeEffect;

.field protected mImageHeight:I

.field protected mImageWidth:I

.field private mIsWideHome:Z

.field private mLayoutTiles:Z

.field private mLevel:I

.field protected mLevelCount:I

.field private mMatrix:[F

.field private mModel:Lcom/sec/android/wallpapercropper2/TiledImageRenderer$TileSource;

.field private mOffsetX:I

.field private mOffsetY:I

.field private mParent:Landroid/view/View;

.field private mPreview:Lcom/android/gallery3d/glrenderer/BasicTexture;

.field private final mQueueLock:Ljava/lang/Object;

.field private final mRecycledQueue:Lcom/sec/android/wallpapercropper2/TiledImageRenderer$TileQueue;

.field private mRenderComplete:Z

.field protected mRotation:I

.field protected mScale:F

.field private final mSourceRect:Landroid/graphics/RectF;

.field private final mTargetRect:Landroid/graphics/RectF;

.field private mTileDecoder:Lcom/sec/android/wallpapercropper2/TiledImageRenderer$TileDecoder;

.field private final mTileRange:Landroid/graphics/Rect;

.field private mTileSize:I

.field private final mUploadQueue:Lcom/sec/android/wallpapercropper2/TiledImageRenderer$TileQueue;

.field private mUploadQuota:I

.field private mViewHeight:I

.field private mViewWidth:I


# direct methods
.method static synthetic -get0(Lcom/sec/android/wallpapercropper2/TiledImageRenderer;)Lcom/sec/android/wallpapercropper2/TiledImageRenderer$TileQueue;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->mDecodeQueue:Lcom/sec/android/wallpapercropper2/TiledImageRenderer$TileQueue;

    return-object v0
.end method

.method static synthetic -get1(Lcom/sec/android/wallpapercropper2/TiledImageRenderer;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->mLevel:I

    return v0
.end method

.method static synthetic -get2(Lcom/sec/android/wallpapercropper2/TiledImageRenderer;)Lcom/sec/android/wallpapercropper2/TiledImageRenderer$TileSource;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->mModel:Lcom/sec/android/wallpapercropper2/TiledImageRenderer$TileSource;

    return-object v0
.end method

.method static synthetic -get3(Lcom/sec/android/wallpapercropper2/TiledImageRenderer;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->mQueueLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get4(Lcom/sec/android/wallpapercropper2/TiledImageRenderer;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->mTileSize:I

    return v0
.end method

.method static synthetic -get5()Landroid/util/Pools$Pool;
    .locals 1

    sget-object v0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->sTilePool:Landroid/util/Pools$Pool;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/sec/android/wallpapercropper2/TiledImageRenderer;III)Lcom/sec/android/wallpapercropper2/TiledImageRenderer$Tile;
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->getTile(III)Lcom/sec/android/wallpapercropper2/TiledImageRenderer$Tile;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/sec/android/wallpapercropper2/TiledImageRenderer;Lcom/sec/android/wallpapercropper2/TiledImageRenderer$Tile;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->decodeTile(Lcom/sec/android/wallpapercropper2/TiledImageRenderer$Tile;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/util/Pools$SynchronizedPool;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Landroid/util/Pools$SynchronizedPool;-><init>(I)V

    sput-object v0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->sTilePool:Landroid/util/Pools$Pool;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 6

    const/4 v5, 0x4

    const/4 v2, -0x1

    const/4 v0, 0x0

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->mLevel:I

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->mSourceRect:Landroid/graphics/RectF;

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->mTargetRect:Landroid/graphics/RectF;

    new-instance v1, Landroid/util/LongSparseArray;

    invoke-direct {v1}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v1, p0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->mActiveTiles:Landroid/util/LongSparseArray;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->mQueueLock:Ljava/lang/Object;

    new-instance v1, Lcom/sec/android/wallpapercropper2/TiledImageRenderer$TileQueue;

    invoke-direct {v1, v4}, Lcom/sec/android/wallpapercropper2/TiledImageRenderer$TileQueue;-><init>(Lcom/sec/android/wallpapercropper2/TiledImageRenderer$TileQueue;)V

    iput-object v1, p0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->mRecycledQueue:Lcom/sec/android/wallpapercropper2/TiledImageRenderer$TileQueue;

    new-instance v1, Lcom/sec/android/wallpapercropper2/TiledImageRenderer$TileQueue;

    invoke-direct {v1, v4}, Lcom/sec/android/wallpapercropper2/TiledImageRenderer$TileQueue;-><init>(Lcom/sec/android/wallpapercropper2/TiledImageRenderer$TileQueue;)V

    iput-object v1, p0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->mUploadQueue:Lcom/sec/android/wallpapercropper2/TiledImageRenderer$TileQueue;

    new-instance v1, Lcom/sec/android/wallpapercropper2/TiledImageRenderer$TileQueue;

    invoke-direct {v1, v4}, Lcom/sec/android/wallpapercropper2/TiledImageRenderer$TileQueue;-><init>(Lcom/sec/android/wallpapercropper2/TiledImageRenderer$TileQueue;)V

    iput-object v1, p0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->mDecodeQueue:Lcom/sec/android/wallpapercropper2/TiledImageRenderer$TileQueue;

    iput v2, p0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->mImageWidth:I

    iput v2, p0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->mImageHeight:I

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->mTileRange:Landroid/graphics/Rect;

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/graphics/Rect;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    aput-object v2, v1, v0

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iput-object v1, p0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->mActiveRange:[Landroid/graphics/Rect;

    new-array v1, v5, [Lcom/android/gallery3d/glrenderer/EdgeEffect;

    iput-object v1, p0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->mEffect:[Lcom/android/gallery3d/glrenderer/EdgeEffect;

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->dimTop:Landroid/graphics/RectF;

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->dimBottom:Landroid/graphics/RectF;

    const/16 v1, 0x40

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->mMatrix:[F

    iput-object p2, p0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->mParent:Landroid/view/View;

    :goto_0
    if-ge v0, v5, :cond_0

    iget-object v1, p0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->mEffect:[Lcom/android/gallery3d/glrenderer/EdgeEffect;

    new-instance v2, Lcom/android/gallery3d/glrenderer/EdgeEffect;

    invoke-direct {v2, p1}, Lcom/android/gallery3d/glrenderer/EdgeEffect;-><init>(Landroid/content/Context;)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer$TileDecoder;

    invoke-direct {v0, p0, v4}, Lcom/sec/android/wallpapercropper2/TiledImageRenderer$TileDecoder;-><init>(Lcom/sec/android/wallpapercropper2/TiledImageRenderer;Lcom/sec/android/wallpapercropper2/TiledImageRenderer$TileDecoder;)V

    iput-object v0, p0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->mTileDecoder:Lcom/sec/android/wallpapercropper2/TiledImageRenderer$TileDecoder;

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->mTileDecoder:Lcom/sec/android/wallpapercropper2/TiledImageRenderer$TileDecoder;

    invoke-virtual {v0}, Lcom/sec/android/wallpapercropper2/TiledImageRenderer$TileDecoder;->start()V

    return-void
.end method

.method private activateTile(III)V
    .locals 4

    invoke-static {p1, p2, p3}, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->makeTileKey(III)J

    move-result-wide v2

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->mActiveTiles:Landroid/util/LongSparseArray;

    invoke-virtual {v0, v2, v3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer$Tile;

    if-eqz v0, :cond_1

    iget v1, v0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer$Tile;->mTileState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    iput v1, v0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer$Tile;->mTileState:I

    :cond_0
    return-void

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->obtainTile(III)Lcom/sec/android/wallpapercropper2/TiledImageRenderer$Tile;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->mActiveTiles:Landroid/util/LongSparseArray;

    invoke-virtual {v1, v2, v3, v0}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;->printStackTrace()V

    goto :goto_0
.end method

.method private calculateLevelCount()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->mPreview:Lcom/android/gallery3d/glrenderer/BasicTexture;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->mImageWidth:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->mPreview:Lcom/android/gallery3d/glrenderer/BasicTexture;

    invoke-virtual {v1}, Lcom/android/gallery3d/glrenderer/BasicTexture;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-static {v0}, Lcom/android/gallery3d/util/Utils;->ceilLog2(F)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->mLevelCount:I

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x1

    iget v0, p0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->mImageWidth:I

    iget v2, p0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->mImageHeight:I

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget v0, p0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->mTileSize:I

    :goto_1
    if-ge v0, v2, :cond_1

    shl-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    iput v1, p0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->mLevelCount:I

    goto :goto_0
.end method

.method private decodeTile(Lcom/sec/android/wallpapercropper2/TiledImageRenderer$Tile;)V
    .locals 4

    iget-object v1, p0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->mQueueLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v0, p1, Lcom/sec/android/wallpapercropper2/TiledImageRenderer$Tile;->mTileState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    monitor-exit v1

    return-void

    :cond_0
    const/4 v0, 0x4

    :try_start_1
    iput v0, p1, Lcom/sec/android/wallpapercropper2/TiledImageRenderer$Tile;->mTileState:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    invoke-virtual {p1}, Lcom/sec/android/wallpapercropper2/TiledImageRenderer$Tile;->decode()Z

    move-result v1

    iget-object v2, p0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->mQueueLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_2
    iget v0, p1, Lcom/sec/android/wallpapercropper2/TiledImageRenderer$Tile;->mTileState:I

    const/16 v3, 0x20

    if-ne v0, v3, :cond_2

    const/16 v0, 0x40

    iput v0, p1, Lcom/sec/android/wallpapercropper2/TiledImageRenderer$Tile;->mTileState:I

    iget-object v0, p1, Lcom/sec/android/wallpapercropper2/TiledImageRenderer$Tile;->mDecodedTile:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->sTilePool:Landroid/util/Pools$Pool;

    iget-object v1, p1, Lcom/sec/android/wallpapercropper2/TiledImageRenderer$Tile;->mDecodedTile:Landroid/graphics/Bitmap;

    invoke-interface {v0, v1}, Landroid/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/sec/android/wallpapercropper2/TiledImageRenderer$Tile;->mDecodedTile:Landroid/graphics/Bitmap;

    :cond_1
    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->mRecycledQueue:Lcom/sec/android/wallpapercropper2/TiledImageRenderer$TileQueue;

    invoke-virtual {v0, p1}, Lcom/sec/android/wallpapercropper2/TiledImageRenderer$TileQueue;->push(Lcom/sec/android/wallpapercropper2/TiledImageRenderer$Tile;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v2

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_2
    if-eqz v1, :cond_3

    const/16 v0, 0x8

    :goto_0
    :try_start_3
    iput v0, p1, Lcom/sec/android/wallpapercropper2/TiledImageRenderer$Tile;->mTileState:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-nez v1, :cond_4

    monitor-exit v2

    return-void

    :cond_3
    const/16 v0, 0x10

    goto :goto_0

    :cond_4
    :try_start_4
    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->mUploadQueue:Lcom/sec/android/wallpapercropper2/TiledImageRenderer$TileQueue;

    invoke-virtual {v0, p1}, Lcom/sec/android/wallpapercropper2/TiledImageRenderer$TileQueue;->push(Lcom/sec/android/wallpapercropper2/TiledImageRenderer$Tile;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit v2

    invoke-direct {p0}, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->invalidate()V

    return-void

    :catchall_1
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method private drawTile(Lcom/android/gallery3d/glrenderer/GLCanvas;IIIFFF)V
    .locals 8

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->mSourceRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->mTargetRect:Landroid/graphics/RectF;

    add-float v2, p5, p7

    add-float v3, p6, p7

    invoke-virtual {v1, p5, p6, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    iget v2, p0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->mTileSize:I

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->mTileSize:I

    int-to-float v3, v3

    invoke-virtual {v0, v4, v4, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-direct {p0, p2, p3, p4}, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->getTile(III)Lcom/sec/android/wallpapercropper2/TiledImageRenderer$Tile;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/sec/android/wallpapercropper2/TiledImageRenderer$Tile;->isContentValid()Z

    move-result v3

    if-nez v3, :cond_0

    iget v3, v2, Lcom/sec/android/wallpapercropper2/TiledImageRenderer$Tile;->mTileState:I

    const/16 v4, 0x8

    if-ne v3, v4, :cond_2

    iget v3, p0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->mUploadQuota:I

    if-lez v3, :cond_1

    iget v3, p0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->mUploadQuota:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->mUploadQuota:I

    invoke-virtual {v2, p1}, Lcom/sec/android/wallpapercropper2/TiledImageRenderer$Tile;->updateContent(Lcom/android/gallery3d/glrenderer/GLCanvas;)V

    :cond_0
    :goto_0
    invoke-direct {p0, v2, p1, v0, v1}, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->drawTile(Lcom/sec/android/wallpapercropper2/TiledImageRenderer$Tile;Lcom/android/gallery3d/glrenderer/GLCanvas;Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    move-result v2

    if-eqz v2, :cond_3

    return-void

    :cond_1
    iput-boolean v5, p0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->mRenderComplete:Z

    goto :goto_0

    :cond_2
    iget v3, v2, Lcom/sec/android/wallpapercropper2/TiledImageRenderer$Tile;->mTileState:I

    const/16 v4, 0x10

    if-eq v3, v4, :cond_0

    iput-boolean v5, p0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->mRenderComplete:Z

    invoke-direct {p0, v2}, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->queueForDecode(Lcom/sec/android/wallpapercropper2/TiledImageRenderer$Tile;)V

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->mPreview:Lcom/android/gallery3d/glrenderer/BasicTexture;

    if-eqz v2, :cond_4

    :try_start_0
    iget v2, p0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->mTileSize:I

    shl-int/2addr v2, p4

    iget-object v3, p0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->mPreview:Lcom/android/gallery3d/glrenderer/BasicTexture;

    invoke-virtual {v3}, Lcom/android/gallery3d/glrenderer/BasicTexture;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->mImageWidth:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    iget-object v4, p0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->mPreview:Lcom/android/gallery3d/glrenderer/BasicTexture;

    invoke-virtual {v4}, Lcom/android/gallery3d/glrenderer/BasicTexture;->getHeight()I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->mImageHeight:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    int-to-float v5, p2

    mul-float/2addr v5, v3

    int-to-float v6, p3

    mul-float/2addr v6, v4

    add-int v7, p2, v2

    int-to-float v7, v7

    mul-float/2addr v3, v7

    add-int/2addr v2, p3

    int-to-float v2, v2

    mul-float/2addr v2, v4

    invoke-virtual {v0, v5, v6, v3, v2}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v2, p0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->mPreview:Lcom/android/gallery3d/glrenderer/BasicTexture;

    invoke-interface {p1, v2, v0, v1}, Lcom/android/gallery3d/glrenderer/GLCanvas;->drawTexture(Lcom/android/gallery3d/glrenderer/BasicTexture;Landroid/graphics/RectF;Landroid/graphics/RectF;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    :goto_1
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "Cropper2_TileRenderer"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private drawTile(Lcom/sec/android/wallpapercropper2/TiledImageRenderer$Tile;Lcom/android/gallery3d/glrenderer/GLCanvas;Landroid/graphics/RectF;Landroid/graphics/RectF;)Z
    .locals 4

    const/high16 v3, 0x40000000    # 2.0f

    :goto_0
    invoke-virtual {p1}, Lcom/sec/android/wallpapercropper2/TiledImageRenderer$Tile;->isContentValid()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2, p1, p3, p4}, Lcom/android/gallery3d/glrenderer/GLCanvas;->drawTexture(Lcom/android/gallery3d/glrenderer/BasicTexture;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/sec/android/wallpapercropper2/TiledImageRenderer$Tile;->getParentTile()Lcom/sec/android/wallpapercropper2/TiledImageRenderer$Tile;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    :cond_1
    iget v1, p1, Lcom/sec/android/wallpapercropper2/TiledImageRenderer$Tile;->mX:I

    iget v2, v0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer$Tile;->mX:I

    if-ne v1, v2, :cond_2

    iget v1, p3, Landroid/graphics/RectF;->left:F

    div-float/2addr v1, v3

    iput v1, p3, Landroid/graphics/RectF;->left:F

    iget v1, p3, Landroid/graphics/RectF;->right:F

    div-float/2addr v1, v3

    iput v1, p3, Landroid/graphics/RectF;->right:F

    :goto_1
    iget v1, p1, Lcom/sec/android/wallpapercropper2/TiledImageRenderer$Tile;->mY:I

    iget v2, v0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer$Tile;->mY:I

    if-ne v1, v2, :cond_3

    iget v1, p3, Landroid/graphics/RectF;->top:F

    div-float/2addr v1, v3

    iput v1, p3, Landroid/graphics/RectF;->top:F

    iget v1, p3, Landroid/graphics/RectF;->bottom:F

    div-float/2addr v1, v3

    iput v1, p3, Landroid/graphics/RectF;->bottom:F

    :goto_2
    move-object p1, v0

    goto :goto_0

    :cond_2
    iget v1, p0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->mTileSize:I

    int-to-float v1, v1

    iget v2, p3, Landroid/graphics/RectF;->left:F

    add-float/2addr v1, v2

    div-float/2addr v1, v3

    iput v1, p3, Landroid/graphics/RectF;->left:F

    iget v1, p0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->mTileSize:I

    int-to-float v1, v1

    iget v2, p3, Landroid/graphics/RectF;->right:F

    add-float/2addr v1, v2

    div-float/2addr v1, v3

    iput v1, p3, Landroid/graphics/RectF;->right:F

    goto :goto_1

    :cond_3
    iget v1, p0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->mTileSize:I

    int-to-float v1, v1

    iget v2, p3, Landroid/graphics/RectF;->top:F

    add-float/2addr v1, v2

    div-float/2addr v1, v3

    iput v1, p3, Landroid/graphics/RectF;->top:F

    iget v1, p0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->mTileSize:I

    int-to-float v1, v1

    iget v2, p3, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v1, v2

    div-float/2addr v1, v3

    iput v1, p3, Landroid/graphics/RectF;->bottom:F

    goto :goto_2
.end method

.method private getBackGroundTexture()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->mBg:Lcom/android/gallery3d/glrenderer/BitmapTexture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->mBg:Lcom/android/gallery3d/glrenderer/BitmapTexture;

    invoke-virtual {v0}, Lcom/android/gallery3d/glrenderer/BitmapTexture;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->mParent:Landroid/view/View;

    check-cast v0, Lcom/sec/android/wallpapercropper2/CropView;

    invoke-virtual {v0}, Lcom/sec/android/wallpapercropper2/CropView;->getRealHomePreviewBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Lcom/android/gallery3d/glrenderer/BitmapTexture;

    invoke-direct {v1, v0, v2, v2}, Lcom/android/gallery3d/glrenderer/BitmapTexture;-><init>(Landroid/graphics/Bitmap;ZZ)V

    iput-object v1, p0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->mBg:Lcom/android/gallery3d/glrenderer/BitmapTexture;

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->mBg:Lcom/android/gallery3d/glrenderer/BitmapTexture;

    invoke-virtual {v0}, Lcom/android/gallery3d/glrenderer/BitmapTexture;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0
.end method

.method private getRange(Landroid/graphics/Rect;FFIFI)V
    .locals 16

    move/from16 v0, p6

    neg-int v2, v0

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->mViewWidth:I

    int-to-double v4, v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->mViewHeight:I

    int-to-double v6, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    mul-double v10, v8, v4

    mul-double v12, v2, v6

    sub-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(D)D

    move-result-wide v10

    mul-double v12, v8, v4

    mul-double v14, v2, v6

    add-double/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->abs(D)D

    move-result-wide v12

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->max(DD)D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-int v10, v10

    mul-double v12, v2, v4

    mul-double v14, v8, v6

    add-double/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->abs(D)D

    move-result-wide v12

    mul-double/2addr v2, v4

    mul-double v4, v8, v6

    sub-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    invoke-static {v12, v13, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    int-to-float v3, v10

    const/high16 v4, 0x40000000    # 2.0f

    mul-float v4, v4, p5

    div-float/2addr v3, v4

    sub-float v3, p2, v3

    float-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v3, v4

    int-to-float v4, v2

    const/high16 v5, 0x40000000    # 2.0f

    mul-float v5, v5, p5

    div-float/2addr v4, v5

    sub-float v4, p3, v4

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v4, v4

    int-to-float v5, v3

    int-to-float v6, v10

    div-float v6, v6, p5

    add-float/2addr v5, v6

    float-to-double v6, v5

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v5, v6

    int-to-float v6, v4

    int-to-float v2, v2

    div-float v2, v2, p5

    add-float/2addr v2, v6

    float-to-double v6, v2

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v2, v6

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->mTileSize:I

    shl-int v6, v6, p4

    div-int/2addr v3, v6

    mul-int/2addr v3, v6

    const/4 v7, 0x0

    invoke-static {v7, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    div-int/2addr v4, v6

    mul-int/2addr v4, v6

    const/4 v6, 0x0

    invoke-static {v6, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->mImageWidth:I

    invoke-static {v6, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->mImageHeight:I

    invoke-static {v6, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4, v5, v2}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method private getRange(Landroid/graphics/Rect;FFII)V
    .locals 7

    add-int/lit8 v0, p4, 0x1

    const/4 v1, 0x1

    shl-int v0, v1, v0

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    div-float v5, v1, v0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->getRange(Landroid/graphics/Rect;FFIFI)V

    return-void
.end method

.method private getTile(III)Lcom/sec/android/wallpapercropper2/TiledImageRenderer$Tile;
    .locals 4

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->mActiveTiles:Landroid/util/LongSparseArray;

    invoke-static {p1, p2, p3}, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->makeTileKey(III)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer$Tile;

    return-object v0
.end method

.method private invalidate()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->mParent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method

.method private invalidateTiles()V
    .locals 4

    iget-object v2, p0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->mQueueLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->mDecodeQueue:Lcom/sec/android/wallpapercropper2/TiledImageRenderer$TileQueue;

    invoke-virtual {v0}, Lcom/sec/android/wallpapercropper2/TiledImageRenderer$TileQueue;->clean()V

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->mUploadQueue:Lcom/sec/android/wallpapercropper2/TiledImageRenderer$TileQueue;

    invoke-virtual {v0}, Lcom/sec/android/wallpapercropper2/TiledImageRenderer$TileQueue;->clean()V

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->mActiveTiles:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->size()I

    move-result v3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->mActiveTiles:Landroid/util/LongSparseArray;

    invoke-virtual {v0, v1}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer$Tile;

    invoke-direct {p0, v0}, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->recycleTile(Lcom/sec/android/wallpapercropper2/TiledImageRenderer$Tile;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->mActiveTiles:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method private static isHighResolution(Landroid/content/Context;)Z
    .locals 4

    const/16 v3, 0x800

    const/4 v1, 0x1

    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    const-string/jumbo v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v0, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    if-gt v0, v3, :cond_0

    iget v0, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    if-le v0, v3, :cond_1

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private layoutTiles()V
    .locals 10

    const/high16 v8, 0x40000000    # 2.0f

    const/4 v7, 0x0

    iget v0, p0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->mViewWidth:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->mViewHeight:I

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->mLayoutTiles:Z

    if-eqz v0, :cond_0

    iput-boolean v7, p0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->mLayoutTiles:Z

    iget v0, p0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->mScale:F

    const/high16 v1, 0x3f800000    # 1.0f

    div-float v0, v1, v0

    invoke-static {v0}, Lcom/android/gallery3d/util/Utils;->floorLog2(F)I

    move-result v0

    iget v1, p0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->mLevelCount:I

    invoke-static {v0, v7, v1}, Lcom/android/gallery3d/util/Utils;->clamp(III)I

    move-result v0

    iput v0, p0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->mLevel:I

    iget v0, p0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->mLevel:I

    iget v1, p0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->mLevelCount:I

    if-eq v0, v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->mTileRange:Landroid/graphics/Rect;

    iget v2, p0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->mCenterX:F

    iget v3, p0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->mCenterY:F

    iget v4, p0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->mLevel:I

    iget v5, p0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->mScale:F

    iget v6, p0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->mRotation:I

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->getRange(Landroid/graphics/Rect;FFIFI)V

    iget v0, p0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->mViewWidth:I

    int-to-float v0, v0

    div-float/2addr v0, v8

    iget v2, v1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->mCenterX:F

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->mScale:F

    mul-float/2addr v2, v3

    add-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->mOffsetX:I

    iget v0, p0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->mViewHeight:I

    int-to-float v0, v0

    div-float/2addr v0, v8

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    iget v2, p0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->mCenterY:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->mScale:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->mOffsetY:I

    iget v0, p0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->mScale:F

    iget v1, p0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->mLevel:I

    const/4 v2, 0x1

    shl-int v1, v2, v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f400000    # 0.75f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    iget v0, p0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->mLevel:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    iget v1, p0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->mLevelCount:I

    add-int/lit8 v1, v1, -0x2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v7, v0}, Ljava/lang/Math;->max(II)I

    move-result v6

    add-int/lit8 v0, v6, 0x2

    iget v1, p0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->mLevelCount:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v8

    iget-object v9, p0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->mActiveRange:[Landroid/graphics/Rect;

    move v4, v6

    :goto_1
    if-ge v4, v8, :cond_4

    sub-int v0, v4, v6

    aget-object v1, v9, v0

    iget v2, p0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->mCenterX:F

    iget v3, p0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->mCenterY:F

    iget v5, p0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->mRotation:I

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->getRange(Landroid/graphics/Rect;FFII)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    iget v0, p0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->mLevel:I

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->mLevel:I

    add-int/lit8 v0, v0, -0x2

    iget v1, p0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->mViewWidth:I

    int-to-float v1, v1

    div-float/2addr v1, v8

    iget v2, p0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->mCenterX:F

    iget v3, p0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->mScale:F

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, p0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->mOffsetX:I

    iget v1, p0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->mViewHeight:I

    int-to-float v1, v1

    div-float/2addr v1, v8

    iget v2, p0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->mCenterY:F

    iget v3, p0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->mScale:F

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, p0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->mOffsetY:I

    goto :goto_0

    :cond_4
    iget v0, p0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->mRotation:I

    rem-int/lit8 v0, v0, 0x5a

    if-eqz v0, :cond_5

    return-void

    :cond_5
    iget-object v3, p0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->mQueueLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->mDecodeQueue:Lcom/sec/android/wallpapercropper2/TiledImageRenderer$TileQueue;

    invoke-virtual {v0}, Lcom/sec/android/wallpapercropper2/TiledImageRenderer$TileQueue;->clean()V

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->mUploadQueue:Lcom/sec/android/wallpapercropper2/TiledImageRenderer$TileQueue;

    invoke-virtual {v0}, Lcom/sec/android/wallpapercropper2/TiledImageRenderer$TileQueue;->clean()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->mBackgroundTileUploaded:Z

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->mActiveTiles:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->size()I

    move-result v2

    move v1, v7

    :goto_2
    if-ge v1, v2, :cond_8

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->mActiveTiles:Landroid/util/LongSparseArray;

    invoke-virtual {v0, v1}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer$Tile;

    if-eqz v0, :cond_c

    iget v4, v0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer$Tile;->mTileLevel:I

    if-lt v4, v6, :cond_6

    if-lt v4, v8, :cond_7

    :cond_6
    iget-object v4, p0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->mActiveTiles:Landroid/util/LongSparseArray;

    invoke-virtual {v4, v1}, Landroid/util/LongSparseArray;->removeAt(I)V

    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v2, v2, -0x1

    invoke-direct {p0, v0}, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->recycleTile(Lcom/sec/android/wallpapercropper2/TiledImageRenderer$Tile;)V

    move v0, v1

    move v1, v2

    :goto_3
    add-int/lit8 v0, v0, 0x1

    move v2, v1

    move v1, v0

    goto :goto_2

    :cond_7
    sub-int/2addr v4, v6

    aget-object v4, v9, v4

    iget v5, v0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer$Tile;->mX:I

    iget v7, v0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer$Tile;->mY:I

    invoke-virtual {v4, v5, v7}, Landroid/graphics/Rect;->contains(II)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_6

    move v0, v1

    move v1, v2

    goto :goto_3

    :cond_8
    monitor-exit v3

    move v2, v6

    :goto_4
    if-ge v2, v8, :cond_b

    iget v0, p0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->mTileSize:I

    shl-int v3, v0, v2

    sub-int v0, v2, v6

    aget-object v4, v9, v0

    iget v0, v4, Landroid/graphics/Rect;->top:I

    iget v5, v4, Landroid/graphics/Rect;->bottom:I

    move v1, v0

    :goto_5
    if-ge v1, v5, :cond_a

    iget v0, v4, Landroid/graphics/Rect;->left:I

    iget v7, v4, Landroid/graphics/Rect;->right:I

    :goto_6
    if-ge v0, v7, :cond_9

    invoke-direct {p0, v0, v1, v2}, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->activateTile(III)V

    add-int/2addr v0, v3

    goto :goto_6

    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0

    :cond_9
    add-int v0, v1, v3

    move v1, v0

    goto :goto_5

    :cond_a
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_4

    :cond_b
    invoke-direct {p0}, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->invalidate()V

    return-void

    :cond_c
    move v0, v1

    move v1, v2

    goto :goto_3
.end method

.method private static makeTileKey(III)J
    .locals 5

    const/16 v4, 0x10

    int-to-long v0, p0

    shl-long/2addr v0, v4

    int-to-long v2, p1

    or-long/2addr v0, v2

    shl-long/2addr v0, v4

    int-to-long v2, p2

    or-long/2addr v0, v2

    return-wide v0
.end method

.method private obtainTile(III)Lcom/sec/android/wallpapercropper2/TiledImageRenderer$Tile;
    .locals 3

    iget-object v1, p0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->mQueueLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->mRecycledQueue:Lcom/sec/android/wallpapercropper2/TiledImageRenderer$TileQueue;

    invoke-virtual {v0}, Lcom/sec/android/wallpapercropper2/TiledImageRenderer$TileQueue;->pop()Lcom/sec/android/wallpapercropper2/TiledImageRenderer$Tile;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    iput v2, v0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer$Tile;->mTileState:I

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/android/wallpapercropper2/TiledImageRenderer$Tile;->update(III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :cond_0
    :try_start_1
    new-instance v0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer$Tile;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/sec/android/wallpapercropper2/TiledImageRenderer$Tile;-><init>(Lcom/sec/android/wallpapercropper2/TiledImageRenderer;III)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private queueForDecode(Lcom/sec/android/wallpapercropper2/TiledImageRenderer$Tile;)V
    .locals 3

    iget-object v1, p0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->mQueueLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v0, p1, Lcom/sec/android/wallpapercropper2/TiledImageRenderer$Tile;->mTileState:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const/4 v0, 0x2

    iput v0, p1, Lcom/sec/android/wallpapercropper2/TiledImageRenderer$Tile;->mTileState:I

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->mDecodeQueue:Lcom/sec/android/wallpapercropper2/TiledImageRenderer$TileQueue;

    invoke-virtual {v0, p1}, Lcom/sec/android/wallpapercropper2/TiledImageRenderer$TileQueue;->push(Lcom/sec/android/wallpapercropper2/TiledImageRenderer$Tile;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->mQueueLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private recycleTile(Lcom/sec/android/wallpapercropper2/TiledImageRenderer$Tile;)V
    .locals 3

    iget-object v1, p0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->mQueueLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v0, p1, Lcom/sec/android/wallpapercropper2/TiledImageRenderer$Tile;->mTileState:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_0

    const/16 v0, 0x20

    iput v0, p1, Lcom/sec/android/wallpapercropper2/TiledImageRenderer$Tile;->mTileState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :cond_0
    const/16 v0, 0x40

    :try_start_1
    iput v0, p1, Lcom/sec/android/wallpapercropper2/TiledImageRenderer$Tile;->mTileState:I

    iget-object v0, p1, Lcom/sec/android/wallpapercropper2/TiledImageRenderer$Tile;->mDecodedTile:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->sTilePool:Landroid/util/Pools$Pool;

    iget-object v2, p1, Lcom/sec/android/wallpapercropper2/TiledImageRenderer$Tile;->mDecodedTile:Landroid/graphics/Bitmap;

    invoke-interface {v0, v2}, Landroid/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/sec/android/wallpapercropper2/TiledImageRenderer$Tile;->mDecodedTile:Landroid/graphics/Bitmap;

    :cond_1
    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->mRecycledQueue:Lcom/sec/android/wallpapercropper2/TiledImageRenderer$TileQueue;

    invoke-virtual {v0, p1}, Lcom/sec/android/wallpapercropper2/TiledImageRenderer$TileQueue;->push(Lcom/sec/android/wallpapercropper2/TiledImageRenderer$Tile;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static suggestedTileSize(Landroid/content/Context;)I
    .locals 1

    invoke-static {p0}, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->isHighResolution(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x200

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x100

    goto :goto_0
.end method

.method private uploadBackgroundTiles(Lcom/android/gallery3d/glrenderer/GLCanvas;)V
    .locals 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->mBackgroundTileUploaded:Z

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->mActiveTiles:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->size()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_2

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->mActiveTiles:Landroid/util/LongSparseArray;

    invoke-virtual {v0, v1}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer$Tile;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/wallpapercropper2/TiledImageRenderer$Tile;->isContentValid()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    invoke-direct {p0, v0}, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->queueForDecode(Lcom/sec/android/wallpapercropper2/TiledImageRenderer$Tile;)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method private uploadTiles(Lcom/android/gallery3d/glrenderer/GLCanvas;)V
    .locals 5

    const/4 v1, 0x0

    const/4 v0, 0x1

    :cond_0
    :goto_0
    if-lez v0, :cond_4

    iget-object v2, p0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->mQueueLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->mUploadQueue:Lcom/sec/android/wallpapercropper2/TiledImageRenderer$TileQueue;

    invoke-virtual {v1}, Lcom/sec/android/wallpapercropper2/TiledImageRenderer$TileQueue;->pop()Lcom/sec/android/wallpapercropper2/TiledImageRenderer$Tile;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit v2

    if-nez v1, :cond_2

    move-object v0, v1

    :goto_1
    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->invalidate()V

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_2
    invoke-virtual {v1}, Lcom/sec/android/wallpapercropper2/TiledImageRenderer$Tile;->isContentValid()Z

    move-result v2

    if-nez v2, :cond_0

    iget v2, v1, Lcom/sec/android/wallpapercropper2/TiledImageRenderer$Tile;->mTileState:I

    const/16 v3, 0x8

    if-ne v2, v3, :cond_3

    invoke-virtual {v1, p1}, Lcom/sec/android/wallpapercropper2/TiledImageRenderer$Tile;->updateContent(Lcom/android/gallery3d/glrenderer/GLCanvas;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_3
    const-string/jumbo v2, "Cropper2_TileRenderer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Tile in upload queue has invalid state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Lcom/sec/android/wallpapercropper2/TiledImageRenderer$Tile;->mTileState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    move-object v0, v1

    goto :goto_1
.end method


# virtual methods
.method public draw(Lcom/android/gallery3d/glrenderer/GLCanvas;)Z
    .locals 16

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->layoutTiles()V

    invoke-direct/range {p0 .. p1}, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->uploadTiles(Lcom/android/gallery3d/glrenderer/GLCanvas;)V

    const/4 v9, 0x0

    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->mUploadQuota:I

    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->mRenderComplete:Z

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->mLevel:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->mRotation:I

    const/4 v1, 0x0

    if-eqz v13, :cond_e

    const/4 v1, 0x2

    move v12, v1

    :goto_0
    if-eqz v12, :cond_0

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Lcom/android/gallery3d/glrenderer/GLCanvas;->save(I)V

    if-eqz v13, :cond_0

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->mViewWidth:I

    div-int/lit8 v1, v1, 0x2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->mViewHeight:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v3, v1

    int-to-float v4, v2

    move-object/from16 v0, p1

    invoke-interface {v0, v3, v4}, Lcom/android/gallery3d/glrenderer/GLCanvas;->translate(FF)V

    int-to-float v3, v13

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    move-object/from16 v0, p1

    invoke-interface {v0, v3, v4, v6, v7}, Lcom/android/gallery3d/glrenderer/GLCanvas;->rotate(FFFF)V

    neg-int v1, v1

    int-to-float v1, v1

    neg-int v2, v2

    int-to-float v2, v2

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2}, Lcom/android/gallery3d/glrenderer/GLCanvas;->translate(FF)V

    :cond_0
    :try_start_0
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->mLevelCount:I

    if-eq v5, v1, :cond_2

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->mTileSize:I

    shl-int v14, v1, v5

    int-to-float v1, v14

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->mScale:F

    mul-float v8, v1, v2

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->mTileRange:Landroid/graphics/Rect;

    iget v4, v15, Landroid/graphics/Rect;->top:I

    const/4 v1, 0x0

    move v11, v1

    :goto_1
    iget v1, v15, Landroid/graphics/Rect;->bottom:I

    if-ge v4, v1, :cond_3

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->mOffsetY:I

    int-to-float v1, v1

    int-to-float v2, v11

    mul-float/2addr v2, v8

    add-float v7, v1, v2

    iget v3, v15, Landroid/graphics/Rect;->left:I

    const/4 v1, 0x0

    move v10, v1

    :goto_2
    iget v1, v15, Landroid/graphics/Rect;->right:I

    if-ge v3, v1, :cond_1

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->mOffsetX:I

    int-to-float v1, v1

    int-to-float v2, v10

    mul-float/2addr v2, v8

    add-float v6, v1, v2

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v8}, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->drawTile(Lcom/android/gallery3d/glrenderer/GLCanvas;IIIFFF)V

    add-int/2addr v3, v14

    add-int/lit8 v1, v10, 0x1

    move v10, v1

    goto :goto_2

    :cond_1
    add-int/2addr v4, v14

    add-int/lit8 v1, v11, 0x1

    move v11, v1

    goto :goto_1

    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->mPreview:Lcom/android/gallery3d/glrenderer/BasicTexture;

    if-eqz v1, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->mPreview:Lcom/android/gallery3d/glrenderer/BasicTexture;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->mOffsetX:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->mOffsetY:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->mImageWidth:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->mScale:F

    mul-float/2addr v2, v5

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v5

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->mImageHeight:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->mScale:F

    mul-float/2addr v2, v6

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v6

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/android/gallery3d/glrenderer/BasicTexture;->draw(Lcom/android/gallery3d/glrenderer/GLCanvas;IIII)V

    :cond_3
    const/4 v1, 0x2

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Lcom/android/gallery3d/glrenderer/GLCanvas;->save(I)V

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->mViewWidth:I

    div-int/lit8 v7, v1, 0x2

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->mViewHeight:I

    div-int/lit8 v8, v1, 0x2

    int-to-float v1, v7

    int-to-float v2, v8

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2}, Lcom/android/gallery3d/glrenderer/GLCanvas;->translate(FF)V

    neg-int v1, v13

    int-to-float v1, v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/gallery3d/glrenderer/GLCanvas;->rotate(FFFF)V

    neg-int v1, v7

    int-to-float v1, v1

    neg-int v2, v8

    int-to-float v2, v2

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2}, Lcom/android/gallery3d/glrenderer/GLCanvas;->translate(FF)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->mBg:Lcom/android/gallery3d/glrenderer/BitmapTexture;

    if-eqz v1, :cond_4

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->mBg:Lcom/android/gallery3d/glrenderer/BitmapTexture;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->mViewWidth:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->mViewHeight:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/android/gallery3d/glrenderer/BitmapTexture;->draw(Lcom/android/gallery3d/glrenderer/GLCanvas;IIII)V

    :cond_4
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->mIsWideHome:Z

    if-eqz v1, :cond_5

    const-string/jumbo v1, "#7A000000"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->dimTop:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->dimTop:Landroid/graphics/RectF;

    iget v3, v1, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->dimTop:Landroid/graphics/RectF;

    iget v4, v1, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->dimTop:Landroid/graphics/RectF;

    iget v5, v1, Landroid/graphics/RectF;->bottom:F

    move-object/from16 v1, p1

    invoke-interface/range {v1 .. v6}, Lcom/android/gallery3d/glrenderer/GLCanvas;->fillRect(FFFFI)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->dimBottom:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->dimBottom:Landroid/graphics/RectF;

    iget v3, v1, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->dimBottom:Landroid/graphics/RectF;

    iget v4, v1, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->dimBottom:Landroid/graphics/RectF;

    iget v5, v1, Landroid/graphics/RectF;->bottom:F

    move-object/from16 v1, p1

    invoke-interface/range {v1 .. v6}, Lcom/android/gallery3d/glrenderer/GLCanvas;->fillRect(FFFFI)V

    :cond_5
    invoke-interface/range {p1 .. p1}, Lcom/android/gallery3d/glrenderer/GLCanvas;->restore()V

    const/4 v1, 0x0

    move v2, v9

    :goto_3
    const/4 v3, 0x4

    if-ge v1, v3, :cond_6

    const/4 v3, 0x2

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Lcom/android/gallery3d/glrenderer/GLCanvas;->save(I)V

    int-to-float v3, v7

    int-to-float v4, v8

    move-object/from16 v0, p1

    invoke-interface {v0, v3, v4}, Lcom/android/gallery3d/glrenderer/GLCanvas;->translate(FF)V

    neg-int v3, v13

    int-to-float v3, v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    move-object/from16 v0, p1

    invoke-interface {v0, v3, v4, v5, v6}, Lcom/android/gallery3d/glrenderer/GLCanvas;->rotate(FFFF)V

    neg-int v3, v7

    int-to-float v3, v3

    neg-int v4, v8

    int-to-float v4, v4

    move-object/from16 v0, p1

    invoke-interface {v0, v3, v4}, Lcom/android/gallery3d/glrenderer/GLCanvas;->translate(FF)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->mMatrix:[F

    mul-int/lit8 v4, v1, 0x10

    move-object/from16 v0, p1

    invoke-interface {v0, v3, v4}, Lcom/android/gallery3d/glrenderer/GLCanvas;->multiplyMatrix([FI)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->mEffect:[Lcom/android/gallery3d/glrenderer/EdgeEffect;

    aget-object v3, v3, v1

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/android/gallery3d/glrenderer/EdgeEffect;->draw(Lcom/android/gallery3d/glrenderer/GLCanvas;)Z

    move-result v3

    or-int/2addr v2, v3

    invoke-interface/range {p1 .. p1}, Lcom/android/gallery3d/glrenderer/GLCanvas;->restore()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_6
    if-eqz v2, :cond_7

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->invalidate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_7
    if-eqz v12, :cond_8

    invoke-interface/range {p1 .. p1}, Lcom/android/gallery3d/glrenderer/GLCanvas;->restore()V

    :cond_8
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->mRenderComplete:Z

    if-eqz v1, :cond_c

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->mBackgroundTileUploaded:Z

    if-nez v1, :cond_9

    invoke-direct/range {p0 .. p1}, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->uploadBackgroundTiles(Lcom/android/gallery3d/glrenderer/GLCanvas;)V

    :cond_9
    :goto_4
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->mRenderComplete:Z

    if-nez v1, :cond_a

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->mPreview:Lcom/android/gallery3d/glrenderer/BasicTexture;

    if-eqz v1, :cond_d

    :cond_a
    const/4 v1, 0x1

    :goto_5
    return v1

    :catchall_0
    move-exception v1

    if-eqz v12, :cond_b

    invoke-interface/range {p1 .. p1}, Lcom/android/gallery3d/glrenderer/GLCanvas;->restore()V

    :cond_b
    throw v1

    :cond_c
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->invalidate()V

    goto :goto_4

    :cond_d
    const/4 v1, 0x0

    goto :goto_5

    :cond_e
    move v12, v1

    goto/16 :goto_0
.end method

.method public freeTextures()V
    .locals 4

    const/4 v2, 0x0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->mLayoutTiles:Z

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->mTileDecoder:Lcom/sec/android/wallpapercropper2/TiledImageRenderer$TileDecoder;

    invoke-virtual {v0}, Lcom/sec/android/wallpapercropper2/TiledImageRenderer$TileDecoder;->finishAndWait()V

    iget-object v1, p0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->mQueueLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->mUploadQueue:Lcom/sec/android/wallpapercropper2/TiledImageRenderer$TileQueue;

    invoke-virtual {v0}, Lcom/sec/android/wallpapercropper2/TiledImageRenderer$TileQueue;->clean()V

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->mDecodeQueue:Lcom/sec/android/wallpapercropper2/TiledImageRenderer$TileQueue;

    invoke-virtual {v0}, Lcom/sec/android/wallpapercropper2/TiledImageRenderer$TileQueue;->clean()V

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->mRecycledQueue:Lcom/sec/android/wallpapercropper2/TiledImageRenderer$TileQueue;

    invoke-virtual {v0}, Lcom/sec/android/wallpapercropper2/TiledImageRenderer$TileQueue;->pop()Lcom/sec/android/wallpapercropper2/TiledImageRenderer$Tile;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/wallpapercropper2/TiledImageRenderer$Tile;->recycle()V

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->mRecycledQueue:Lcom/sec/android/wallpapercropper2/TiledImageRenderer$TileQueue;

    invoke-virtual {v0}, Lcom/sec/android/wallpapercropper2/TiledImageRenderer$TileQueue;->pop()Lcom/sec/android/wallpapercropper2/TiledImageRenderer$Tile;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    goto :goto_0

    :cond_0
    monitor-exit v1

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->mActiveTiles:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->size()I

    move-result v3

    move v1, v2

    :goto_1
    if-ge v1, v3, :cond_1

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->mActiveTiles:Landroid/util/LongSparseArray;

    invoke-virtual {v0, v1}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer$Tile;

    invoke-virtual {v0}, Lcom/sec/android/wallpapercropper2/TiledImageRenderer$Tile;->recycle()V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->mActiveTiles:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->clear()V

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->mTileRange:Landroid/graphics/Rect;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/graphics/Rect;->set(IIII)V

    :cond_2
    sget-object v0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->sTilePool:Landroid/util/Pools$Pool;

    invoke-interface {v0}, Landroid/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    return-void
.end method

.method public freeView()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->mPreview:Lcom/android/gallery3d/glrenderer/BasicTexture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->mPreview:Lcom/android/gallery3d/glrenderer/BasicTexture;

    invoke-virtual {v0}, Lcom/android/gallery3d/glrenderer/BasicTexture;->recycle()V

    iput-object v1, p0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->mPreview:Lcom/android/gallery3d/glrenderer/BasicTexture;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->mBg:Lcom/android/gallery3d/glrenderer/BitmapTexture;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->mBg:Lcom/android/gallery3d/glrenderer/BitmapTexture;

    invoke-virtual {v0}, Lcom/android/gallery3d/glrenderer/BitmapTexture;->recycle()V

    iput-object v1, p0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->mBg:Lcom/android/gallery3d/glrenderer/BitmapTexture;

    :cond_1
    return-void
.end method

.method public getViewHeight()I
    .locals 1

    iget v0, p0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->mViewHeight:I

    return v0
.end method

.method public getViewWidth()I
    .locals 1

    iget v0, p0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->mViewWidth:I

    return v0
.end method

.method public notifyModelInvalidated()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->invalidateTiles()V

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->mModel:Lcom/sec/android/wallpapercropper2/TiledImageRenderer$TileSource;

    if-nez v0, :cond_0

    iput v1, p0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->mImageWidth:I

    iput v1, p0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->mImageHeight:I

    iput v1, p0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->mLevelCount:I

    iput-object v2, p0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->mPreview:Lcom/android/gallery3d/glrenderer/BasicTexture;

    iput-object v2, p0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->mBg:Lcom/android/gallery3d/glrenderer/BitmapTexture;

    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->mLayoutTiles:Z

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->mModel:Lcom/sec/android/wallpapercropper2/TiledImageRenderer$TileSource;

    invoke-interface {v0}, Lcom/sec/android/wallpapercropper2/TiledImageRenderer$TileSource;->getImageWidth()I

    move-result v0

    iput v0, p0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->mImageWidth:I

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->mModel:Lcom/sec/android/wallpapercropper2/TiledImageRenderer$TileSource;

    invoke-interface {v0}, Lcom/sec/android/wallpapercropper2/TiledImageRenderer$TileSource;->getImageHeight()I

    move-result v0

    iput v0, p0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->mImageHeight:I

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->mModel:Lcom/sec/android/wallpapercropper2/TiledImageRenderer$TileSource;

    invoke-interface {v0}, Lcom/sec/android/wallpapercropper2/TiledImageRenderer$TileSource;->getPreview()Lcom/android/gallery3d/glrenderer/UploadedTexture;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->mPreview:Lcom/android/gallery3d/glrenderer/BasicTexture;

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->mModel:Lcom/sec/android/wallpapercropper2/TiledImageRenderer$TileSource;

    invoke-interface {v0}, Lcom/sec/android/wallpapercropper2/TiledImageRenderer$TileSource;->getTileSize()I

    move-result v0

    iput v0, p0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->mTileSize:I

    invoke-direct {p0}, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->getBackGroundTexture()V

    invoke-direct {p0}, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->calculateLevelCount()V

    goto :goto_0
.end method

.method public onPull(FFI)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->mEffect:[Lcom/android/gallery3d/glrenderer/EdgeEffect;

    aget-object v0, v0, p3

    invoke-virtual {v0, p1, p2}, Lcom/android/gallery3d/glrenderer/EdgeEffect;->onPull(FF)V

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->mEffect:[Lcom/android/gallery3d/glrenderer/EdgeEffect;

    aget-object v0, v0, p3

    invoke-virtual {v0}, Lcom/android/gallery3d/glrenderer/EdgeEffect;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->invalidate()V

    :cond_0
    return-void
.end method

.method public onRelease()V
    .locals 4

    const/4 v1, 0x0

    move v2, v1

    move v3, v1

    :goto_0
    const/4 v0, 0x4

    if-ge v2, v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->mEffect:[Lcom/android/gallery3d/glrenderer/EdgeEffect;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lcom/android/gallery3d/glrenderer/EdgeEffect;->onRelease()V

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->mEffect:[Lcom/android/gallery3d/glrenderer/EdgeEffect;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lcom/android/gallery3d/glrenderer/EdgeEffect;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_1
    or-int/2addr v3, v0

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    if-eqz v3, :cond_2

    invoke-direct {p0}, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->invalidate()V

    :cond_2
    return-void
.end method

.method public onRelease(I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->mEffect:[Lcom/android/gallery3d/glrenderer/EdgeEffect;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/android/gallery3d/glrenderer/EdgeEffect;->onRelease()V

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->mEffect:[Lcom/android/gallery3d/glrenderer/EdgeEffect;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/android/gallery3d/glrenderer/EdgeEffect;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->invalidate()V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setIsWideHome(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->mIsWideHome:Z

    return-void
.end method

.method public setModel(Lcom/sec/android/wallpapercropper2/TiledImageRenderer$TileSource;I)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->mModel:Lcom/sec/android/wallpapercropper2/TiledImageRenderer$TileSource;

    if-eq v0, p1, :cond_1

    iput-object p1, p0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->mModel:Lcom/sec/android/wallpapercropper2/TiledImageRenderer$TileSource;

    invoke-virtual {p0}, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->notifyModelInvalidated()V

    :cond_1
    iget v0, p0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->mRotation:I

    if-eq v0, p2, :cond_2

    iput p2, p0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->mRotation:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->mLayoutTiles:Z

    :cond_2
    return-void
.end method

.method public setPosition(FFF)V
    .locals 1

    iget v0, p0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->mCenterX:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->mCenterY:F

    cmpl-float v0, v0, p2

    if-nez v0, :cond_0

    iget v0, p0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->mScale:F

    cmpl-float v0, v0, p3

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->mCenterX:F

    iput p2, p0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->mCenterY:F

    iput p3, p0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->mScale:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->mLayoutTiles:Z

    return-void
.end method

.method public setViewSize(II)V
    .locals 7

    const/16 v6, 0x20

    const/16 v1, 0x10

    const/4 v2, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    move v0, v2

    :goto_0
    const/4 v4, 0x4

    if-ge v0, v4, :cond_1

    and-int/lit8 v4, v0, 0x1

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->mEffect:[Lcom/android/gallery3d/glrenderer/EdgeEffect;

    aget-object v4, v4, v0

    invoke-virtual {v4, p1, p2}, Lcom/android/gallery3d/glrenderer/EdgeEffect;->setSize(II)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->mEffect:[Lcom/android/gallery3d/glrenderer/EdgeEffect;

    aget-object v4, v4, v0

    invoke-virtual {v4, p2, p1}, Lcom/android/gallery3d/glrenderer/EdgeEffect;->setSize(II)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->mMatrix:[F

    invoke-static {v0, v2}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->mMatrix:[F

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->mMatrix:[F

    invoke-static {v0, v6}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->mMatrix:[F

    const/16 v2, 0x30

    invoke-static {v0, v2}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->mMatrix:[F

    const/high16 v2, 0x42b40000    # 90.0f

    move v4, v3

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->mMatrix:[F

    const/high16 v2, -0x40800000    # -1.0f

    invoke-static {v0, v1, v5, v2, v5}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->mMatrix:[F

    int-to-float v1, p2

    invoke-static {v0, v6, v3, v1, v3}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->mMatrix:[F

    const/high16 v1, -0x40800000    # -1.0f

    invoke-static {v0, v6, v5, v1, v5}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->mMatrix:[F

    int-to-float v1, p1

    const/16 v2, 0x30

    invoke-static {v0, v2, v1, v3, v3}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->mMatrix:[F

    const/high16 v2, 0x42b40000    # 90.0f

    const/16 v1, 0x30

    move v4, v3

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    iput p1, p0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->mViewWidth:I

    iput p2, p0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->mViewHeight:I

    iget v0, p0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->mViewWidth:I

    int-to-float v0, v0

    const/high16 v1, 0x3f100000    # 0.5625f

    mul-float/2addr v1, v0

    iget v2, p0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->mViewHeight:I

    int-to-float v2, v2

    sub-float v1, v2, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->dimTop:Landroid/graphics/RectF;

    invoke-virtual {v2, v3, v3, v0, v1}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v2, p0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->dimBottom:Landroid/graphics/RectF;

    iget v4, p0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->mViewHeight:I

    int-to-float v4, v4

    sub-float v1, v4, v1

    iget v4, p0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->mViewHeight:I

    int-to-float v4, v4

    invoke-virtual {v2, v3, v1, v0, v4}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method
