.class public Lcom/sec/android/gallery3d/ui/TileImageView;
.super Lcom/sec/android/gallery3d/ui/GLView;
.source "TileImageView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/gallery3d/ui/TileImageView$TileDecoder;,
        Lcom/sec/android/gallery3d/ui/TileImageView$TileQueue;,
        Lcom/sec/android/gallery3d/ui/TileImageView$Tile;,
        Lcom/sec/android/gallery3d/ui/TileImageView$TileUploader;,
        Lcom/sec/android/gallery3d/ui/TileImageView$TileSource;
    }
.end annotation


# static fields
.field private static final FeatureUseTileAlphaBlendingEnabled:Z

.field private static final SIZE_UNKNOWN:I = -0x1

.field private static final STATE_ACTIVATED:I = 0x1

.field private static final STATE_DECODED:I = 0x8

.field private static final STATE_DECODE_FAIL:I = 0x10

.field private static final STATE_DECODING:I = 0x4

.field private static final STATE_IN_QUEUE:I = 0x2

.field private static final STATE_RECYCLED:I = 0x40

.field private static final STATE_RECYCLING:I = 0x20

.field private static final TAG:Ljava/lang/String; = "TileImageView"

.field public static final TILE_BORDER:I = 0x1

.field private static final UPLOAD_LIMIT:I = 0x1

.field private static sDisplayHeightPixels:I

.field private static sDisplayWidthPixels:I

.field private static sTileSize:I


# instance fields
.field private final mActiveRange:[Landroid/graphics/Rect;

.field private final mActiveTiles:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray",
            "<",
            "Lcom/sec/android/gallery3d/ui/TileImageView$Tile;",
            ">;"
        }
    .end annotation
.end field

.field private mBackgroundTileUploaded:Z

.field private mCenterX:F

.field private mCenterY:F

.field private final mDecodeQueue:Lcom/sec/android/gallery3d/ui/TileImageView$TileQueue;

.field private final mDecoderInterface:Lcom/sec/samsung/gallery/decoder/DecoderInterface;

.field private mEnableDrawScreenNail:Z

.field mImageHeight:I

.field mImageWidth:I

.field private mIsTextureFreed:Z

.field private mLevel:I

.field private mLevelCount:I

.field private mModel:Lcom/sec/android/gallery3d/ui/TileImageView$TileSource;

.field private mOffsetX:I

.field private mOffsetY:I

.field private mRealOffsetX:I

.field private mRealOffsetY:I

.field private final mRecycledQueue:Lcom/sec/android/gallery3d/ui/TileImageView$TileQueue;

.field private mRenderComplete:Z

.field private mRotation:I

.field private mScale:F

.field private mScreenNail:Lcom/sec/android/gallery3d/ui/ScreenNail;

.field private final mSourceRect:Landroid/graphics/RectF;

.field private final mTargetRect:Landroid/graphics/RectF;

.field private final mThreadPool:Lcom/sec/android/gallery3d/util/ThreadPool;

.field private mTileDecoder:Lcom/sec/android/gallery3d/util/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sec/android/gallery3d/util/Future",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private final mTileRange:Landroid/graphics/Rect;

.field private final mTileUploader:Lcom/sec/android/gallery3d/ui/TileImageView$TileUploader;

.field private final mUploadQueue:Lcom/sec/android/gallery3d/ui/TileImageView$TileQueue;

.field private mUploadQuota:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseTileAlphaBlending:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/android/gallery3d/ui/TileImageView;->FeatureUseTileAlphaBlendingEnabled:Z

    const/16 v0, 0x438

    sput v0, Lcom/sec/android/gallery3d/ui/TileImageView;->sDisplayWidthPixels:I

    const/16 v0, 0x780

    sput v0, Lcom/sec/android/gallery3d/ui/TileImageView;->sDisplayHeightPixels:I

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/gallery3d/interfaces/LibraryContext;)V
    .locals 5

    const/4 v0, -0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/sec/android/gallery3d/ui/GLView;-><init>()V

    iput v4, p0, Lcom/sec/android/gallery3d/ui/TileImageView;->mLevel:I

    iput v0, p0, Lcom/sec/android/gallery3d/ui/TileImageView;->mImageWidth:I

    iput v0, p0, Lcom/sec/android/gallery3d/ui/TileImageView;->mImageHeight:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sec/android/gallery3d/ui/TileImageView;->mTileRange:Landroid/graphics/Rect;

    const/4 v0, 0x2

    new-array v0, v0, [Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    aput-object v1, v0, v4

    const/4 v1, 0x1

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/sec/android/gallery3d/ui/TileImageView;->mActiveRange:[Landroid/graphics/Rect;

    new-instance v0, Lcom/sec/android/gallery3d/ui/TileImageView$TileUploader;

    invoke-direct {v0, p0, v3}, Lcom/sec/android/gallery3d/ui/TileImageView$TileUploader;-><init>(Lcom/sec/android/gallery3d/ui/TileImageView;Lcom/sec/android/gallery3d/ui/TileImageView$1;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/ui/TileImageView;->mTileUploader:Lcom/sec/android/gallery3d/ui/TileImageView$TileUploader;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/sec/android/gallery3d/ui/TileImageView;->mSourceRect:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/sec/android/gallery3d/ui/TileImageView;->mTargetRect:Landroid/graphics/RectF;

    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/sec/android/gallery3d/ui/TileImageView;->mActiveTiles:Landroid/util/LongSparseArray;

    new-instance v0, Lcom/sec/android/gallery3d/ui/TileImageView$TileQueue;

    invoke-direct {v0, v3}, Lcom/sec/android/gallery3d/ui/TileImageView$TileQueue;-><init>(Lcom/sec/android/gallery3d/ui/TileImageView$1;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/ui/TileImageView;->mRecycledQueue:Lcom/sec/android/gallery3d/ui/TileImageView$TileQueue;

    new-instance v0, Lcom/sec/android/gallery3d/ui/TileImageView$TileQueue;

    invoke-direct {v0, v3}, Lcom/sec/android/gallery3d/ui/TileImageView$TileQueue;-><init>(Lcom/sec/android/gallery3d/ui/TileImageView$1;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/ui/TileImageView;->mUploadQueue:Lcom/sec/android/gallery3d/ui/TileImageView$TileQueue;

    new-instance v0, Lcom/sec/android/gallery3d/ui/TileImageView$TileQueue;

    invoke-direct {v0, v3}, Lcom/sec/android/gallery3d/ui/TileImageView$TileQueue;-><init>(Lcom/sec/android/gallery3d/ui/TileImageView$1;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/ui/TileImageView;->mDecodeQueue:Lcom/sec/android/gallery3d/ui/TileImageView$TileQueue;

    iput-boolean v4, p0, Lcom/sec/android/gallery3d/ui/TileImageView;->mEnableDrawScreenNail:Z

    invoke-interface {p1}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getAppContext()Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;->getThreadPool()Lcom/sec/android/gallery3d/util/ThreadPool;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/ui/TileImageView;->mThreadPool:Lcom/sec/android/gallery3d/util/ThreadPool;

    invoke-interface {p1}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getDecoderInterface()Lcom/sec/samsung/gallery/decoder/DecoderInterface;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/ui/TileImageView;->mDecoderInterface:Lcom/sec/samsung/gallery/decoder/DecoderInterface;

    return-void
.end method

.method static synthetic access$1200(Lcom/sec/android/gallery3d/ui/TileImageView;)Lcom/sec/android/gallery3d/ui/TileImageView$TileQueue;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/TileImageView;->mUploadQueue:Lcom/sec/android/gallery3d/ui/TileImageView$TileQueue;

    return-object v0
.end method

.method static synthetic access$1300()Z
    .locals 1

    sget-boolean v0, Lcom/sec/android/gallery3d/ui/TileImageView;->FeatureUseTileAlphaBlendingEnabled:Z

    return v0
.end method

.method static synthetic access$1400(Lcom/sec/android/gallery3d/ui/TileImageView;)Lcom/sec/android/gallery3d/ui/TileImageView$TileSource;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/TileImageView;->mModel:Lcom/sec/android/gallery3d/ui/TileImageView$TileSource;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/sec/android/gallery3d/ui/TileImageView;)Lcom/sec/samsung/gallery/decoder/DecoderInterface;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/TileImageView;->mDecoderInterface:Lcom/sec/samsung/gallery/decoder/DecoderInterface;

    return-object v0
.end method

.method static synthetic access$1600()I
    .locals 1

    sget v0, Lcom/sec/android/gallery3d/ui/TileImageView;->sTileSize:I

    return v0
.end method

.method static synthetic access$1700(Lcom/sec/android/gallery3d/ui/TileImageView;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/ui/TileImageView;->mLevelCount:I

    return v0
.end method

.method static synthetic access$1800(Lcom/sec/android/gallery3d/ui/TileImageView;III)Lcom/sec/android/gallery3d/ui/TileImageView$Tile;
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/gallery3d/ui/TileImageView;->getTile(III)Lcom/sec/android/gallery3d/ui/TileImageView$Tile;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1900(Lcom/sec/android/gallery3d/ui/TileImageView;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/ui/TileImageView;->mLevel:I

    return v0
.end method

.method static synthetic access$2100(Lcom/sec/android/gallery3d/ui/TileImageView;)Lcom/sec/android/gallery3d/ui/TileImageView$TileQueue;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/TileImageView;->mDecodeQueue:Lcom/sec/android/gallery3d/ui/TileImageView$TileQueue;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/sec/android/gallery3d/ui/TileImageView;Lcom/sec/android/gallery3d/ui/TileImageView$Tile;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/ui/TileImageView;->decodeTile(Lcom/sec/android/gallery3d/ui/TileImageView$Tile;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2300(Lcom/sec/android/gallery3d/ui/TileImageView;Lcom/sec/android/gallery3d/ui/TileImageView$Tile;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/ui/TileImageView;->queueForUpload(Lcom/sec/android/gallery3d/ui/TileImageView$Tile;)V

    return-void
.end method

.method private activateTile(III)V
    .locals 5

    invoke-static {p1, p2, p3}, Lcom/sec/android/gallery3d/ui/TileImageView;->makeTileKey(III)J

    move-result-wide v0

    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/TileImageView;->mActiveTiles:Landroid/util/LongSparseArray;

    invoke-virtual {v3, v0, v1}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/gallery3d/ui/TileImageView$Tile;

    if-eqz v2, :cond_1

    invoke-static {v2}, Lcom/sec/android/gallery3d/ui/TileImageView$Tile;->access$700(Lcom/sec/android/gallery3d/ui/TileImageView$Tile;)I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/sec/android/gallery3d/ui/TileImageView$Tile;->access$702(Lcom/sec/android/gallery3d/ui/TileImageView$Tile;I)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/gallery3d/ui/TileImageView;->obtainTile(III)Lcom/sec/android/gallery3d/ui/TileImageView$Tile;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/TileImageView;->mActiveTiles:Landroid/util/LongSparseArray;

    invoke-virtual {v3, v0, v1, v2}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_0
.end method

.method private calculateLTNLevel(IIIII)I
    .locals 7

    const/4 v6, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    int-to-float v2, p1

    int-to-float v3, p3

    div-float/2addr v2, v3

    int-to-float v3, p2

    int-to-float v4, p4

    div-float/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v0

    int-to-float v2, p1

    int-to-float v3, p4

    div-float/2addr v2, v3

    int-to-float v3, p2

    int-to-float v4, p3

    div-float/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v1

    div-float v2, v5, v0

    invoke-static {v2}, Lcom/sec/android/gallery3d/common/Utils;->floorLog2(F)I

    move-result v2

    invoke-static {v2, v6, p5}, Lcom/sec/android/gallery3d/common/Utils;->clamp(III)I

    move-result v2

    div-float v3, v5, v1

    invoke-static {v3}, Lcom/sec/android/gallery3d/common/Utils;->floorLog2(F)I

    move-result v3

    invoke-static {v3, v6, p5}, Lcom/sec/android/gallery3d/common/Utils;->clamp(III)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    return v2
.end method

.method private decodeTile(Lcom/sec/android/gallery3d/ui/TileImageView$Tile;)Z
    .locals 4

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/sec/android/gallery3d/ui/TileImageView$Tile;->access$700(Lcom/sec/android/gallery3d/ui/TileImageView$Tile;)I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    monitor-exit p0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v2, 0x4

    invoke-static {p1, v2}, Lcom/sec/android/gallery3d/ui/TileImageView$Tile;->access$702(Lcom/sec/android/gallery3d/ui/TileImageView$Tile;I)I

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p1}, Lcom/sec/android/gallery3d/ui/TileImageView$Tile;->access$900(Lcom/sec/android/gallery3d/ui/TileImageView$Tile;)Z

    move-result v0

    monitor-enter p0

    :try_start_1
    invoke-static {p1}, Lcom/sec/android/gallery3d/ui/TileImageView$Tile;->access$700(Lcom/sec/android/gallery3d/ui/TileImageView$Tile;)I

    move-result v2

    const/16 v3, 0x20

    if-ne v2, v3, :cond_2

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/ui/TileImageView$Tile;->yield()V

    const/16 v2, 0x40

    invoke-static {p1, v2}, Lcom/sec/android/gallery3d/ui/TileImageView$Tile;->access$702(Lcom/sec/android/gallery3d/ui/TileImageView$Tile;I)I

    invoke-static {p1}, Lcom/sec/android/gallery3d/ui/TileImageView$Tile;->access$1000(Lcom/sec/android/gallery3d/ui/TileImageView$Tile;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/sec/android/photos/data/GalleryBitmapPool;->getInstance()Lcom/sec/android/photos/data/GalleryBitmapPool;

    move-result-object v2

    invoke-static {p1}, Lcom/sec/android/gallery3d/ui/TileImageView$Tile;->access$1000(Lcom/sec/android/gallery3d/ui/TileImageView$Tile;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/photos/data/GalleryBitmapPool;->put(Landroid/graphics/Bitmap;)Z

    const/4 v2, 0x0

    invoke-static {p1, v2}, Lcom/sec/android/gallery3d/ui/TileImageView$Tile;->access$1002(Lcom/sec/android/gallery3d/ui/TileImageView$Tile;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    :cond_1
    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/TileImageView;->mRecycledQueue:Lcom/sec/android/gallery3d/ui/TileImageView$TileQueue;

    invoke-virtual {v2, p1}, Lcom/sec/android/gallery3d/ui/TileImageView$TileQueue;->push(Lcom/sec/android/gallery3d/ui/TileImageView$Tile;)Z

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move v0, v1

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :cond_2
    if-eqz v0, :cond_3

    const/16 v1, 0x8

    :goto_1
    :try_start_3
    invoke-static {p1, v1}, Lcom/sec/android/gallery3d/ui/TileImageView$Tile;->access$702(Lcom/sec/android/gallery3d/ui/TileImageView$Tile;I)I

    monitor-exit p0

    goto :goto_0

    :catchall_1
    move-exception v1

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1

    :cond_3
    const/16 v1, 0x10

    goto :goto_1
.end method

.method private drawTile(Lcom/sec/android/gallery3d/ui/TileImageView$Tile;Lcom/sec/android/gallery3d/glrenderer/GLCanvas;Landroid/graphics/RectF;Landroid/graphics/RectF;)Z
    .locals 8

    const/4 v7, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v2, 0x40000000    # 2.0f

    :goto_0
    invoke-virtual {p1}, Lcom/sec/android/gallery3d/ui/TileImageView$Tile;->isContentValid()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/sec/android/gallery3d/ui/TileImageView;->FeatureUseTileAlphaBlendingEnabled:Z

    if-eqz v0, :cond_0

    invoke-virtual {p3, v3, v3}, Landroid/graphics/RectF;->offset(FF)V

    :cond_0
    invoke-static {p1}, Lcom/sec/android/gallery3d/ui/TileImageView$Tile;->access$600(Lcom/sec/android/gallery3d/ui/TileImageView$Tile;)Lcom/sec/samsung/gallery/decoder/AlphablendingAnimation;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/sec/android/gallery3d/ui/TileImageView$Tile;->access$600(Lcom/sec/android/gallery3d/ui/TileImageView$Tile;)Lcom/sec/samsung/gallery/decoder/AlphablendingAnimation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/decoder/AlphablendingAnimation;->needToAnimate()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/sec/android/gallery3d/ui/TileImageView$Tile;->access$600(Lcom/sec/android/gallery3d/ui/TileImageView$Tile;)Lcom/sec/samsung/gallery/decoder/AlphablendingAnimation;

    move-result-object v0

    invoke-static {p1}, Lcom/sec/android/gallery3d/ui/TileImageView$Tile;->access$600(Lcom/sec/android/gallery3d/ui/TileImageView$Tile;)Lcom/sec/samsung/gallery/decoder/AlphablendingAnimation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/decoder/AlphablendingAnimation;->getProgress()F

    move-result v5

    move-object v1, p2

    move-object v2, p1

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/sec/samsung/gallery/decoder/AlphablendingAnimation;->drawBlended(Lcom/sec/android/gallery3d/glrenderer/GLCanvas;Lcom/sec/android/gallery3d/glrenderer/BasicTexture;Landroid/graphics/RectF;Landroid/graphics/RectF;F)V

    iput-boolean v7, p0, Lcom/sec/android/gallery3d/ui/TileImageView;->mRenderComplete:Z

    :goto_1
    const/4 v0, 0x1

    :goto_2
    return v0

    :cond_1
    invoke-interface {p2, p1, p3, p4}, Lcom/sec/android/gallery3d/glrenderer/GLCanvas;->drawTexture(Lcom/sec/android/gallery3d/glrenderer/BasicTexture;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lcom/sec/android/gallery3d/ui/TileImageView$Tile;->getParentTile()Lcom/sec/android/gallery3d/ui/TileImageView$Tile;

    move-result-object v6

    if-nez v6, :cond_3

    move v0, v7

    goto :goto_2

    :cond_3
    invoke-static {p1}, Lcom/sec/android/gallery3d/ui/TileImageView$Tile;->access$300(Lcom/sec/android/gallery3d/ui/TileImageView$Tile;)I

    move-result v0

    invoke-static {v6}, Lcom/sec/android/gallery3d/ui/TileImageView$Tile;->access$300(Lcom/sec/android/gallery3d/ui/TileImageView$Tile;)I

    move-result v1

    if-ne v0, v1, :cond_4

    iget v0, p3, Landroid/graphics/RectF;->left:F

    div-float/2addr v0, v2

    iput v0, p3, Landroid/graphics/RectF;->left:F

    iget v0, p3, Landroid/graphics/RectF;->right:F

    div-float/2addr v0, v2

    iput v0, p3, Landroid/graphics/RectF;->right:F

    :goto_3
    invoke-static {p1}, Lcom/sec/android/gallery3d/ui/TileImageView$Tile;->access$400(Lcom/sec/android/gallery3d/ui/TileImageView$Tile;)I

    move-result v0

    invoke-static {v6}, Lcom/sec/android/gallery3d/ui/TileImageView$Tile;->access$400(Lcom/sec/android/gallery3d/ui/TileImageView$Tile;)I

    move-result v1

    if-ne v0, v1, :cond_5

    iget v0, p3, Landroid/graphics/RectF;->top:F

    div-float/2addr v0, v2

    iput v0, p3, Landroid/graphics/RectF;->top:F

    iget v0, p3, Landroid/graphics/RectF;->bottom:F

    div-float/2addr v0, v2

    iput v0, p3, Landroid/graphics/RectF;->bottom:F

    :goto_4
    move-object p1, v6

    goto :goto_0

    :cond_4
    sget v0, Lcom/sec/android/gallery3d/ui/TileImageView;->sTileSize:I

    int-to-float v0, v0

    iget v1, p3, Landroid/graphics/RectF;->left:F

    add-float/2addr v0, v1

    div-float/2addr v0, v2

    iput v0, p3, Landroid/graphics/RectF;->left:F

    sget v0, Lcom/sec/android/gallery3d/ui/TileImageView;->sTileSize:I

    int-to-float v0, v0

    iget v1, p3, Landroid/graphics/RectF;->right:F

    add-float/2addr v0, v1

    div-float/2addr v0, v2

    iput v0, p3, Landroid/graphics/RectF;->right:F

    goto :goto_3

    :cond_5
    sget v0, Lcom/sec/android/gallery3d/ui/TileImageView;->sTileSize:I

    int-to-float v0, v0

    iget v1, p3, Landroid/graphics/RectF;->top:F

    add-float/2addr v0, v1

    div-float/2addr v0, v2

    iput v0, p3, Landroid/graphics/RectF;->top:F

    sget v0, Lcom/sec/android/gallery3d/ui/TileImageView;->sTileSize:I

    int-to-float v0, v0

    iget v1, p3, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v0, v1

    div-float/2addr v0, v2

    iput v0, p3, Landroid/graphics/RectF;->bottom:F

    goto :goto_4
.end method

.method private getRange(Landroid/graphics/Rect;FFIFI)V
    .locals 26

    move/from16 v0, p6

    neg-int v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-double v0, v0

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v10

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/gallery3d/ui/TileImageView;->getWidth()I

    move-result v20

    move/from16 v0, v20

    int-to-double v0, v0

    move-wide/from16 v18, v0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/gallery3d/ui/TileImageView;->getHeight()I

    move-result v20

    move/from16 v0, v20

    int-to-double v6, v0

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    mul-double v20, v4, v18

    mul-double v22, v14, v6

    sub-double v20, v20, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->abs(D)D

    move-result-wide v20

    mul-double v22, v4, v18

    mul-double v24, v14, v6

    add-double v22, v22, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->abs(D)D

    move-result-wide v22

    invoke-static/range {v20 .. v23}, Ljava/lang/Math;->max(DD)D

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v20

    move-wide/from16 v0, v20

    double-to-int v0, v0

    move/from16 v17, v0

    mul-double v20, v14, v18

    mul-double v22, v4, v6

    add-double v20, v20, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->abs(D)D

    move-result-wide v20

    mul-double v22, v14, v18

    mul-double v24, v4, v6

    sub-double v22, v22, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->abs(D)D

    move-result-wide v22

    invoke-static/range {v20 .. v23}, Ljava/lang/Math;->max(DD)D

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v20

    move-wide/from16 v0, v20

    double-to-int v8, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v20, v0

    const/high16 v21, 0x40000000    # 2.0f

    mul-float v21, v21, p5

    div-float v20, v20, v21

    sub-float v20, p2, v20

    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v20, v0

    :try_start_0
    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->floor(D)D

    move-result-wide v20

    move-wide/from16 v0, v20

    double-to-int v9, v0

    int-to-float v0, v8

    move/from16 v20, v0

    const/high16 v21, 0x40000000    # 2.0f

    mul-float v21, v21, p5

    div-float v20, v20, v21

    sub-float v20, p3, v20

    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->floor(D)D

    move-result-wide v20

    move-wide/from16 v0, v20

    double-to-int v0, v0

    move/from16 v16, v0

    int-to-float v0, v9

    move/from16 v20, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v21, v0

    div-float v21, v21, p5

    add-float v20, v20, v21

    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v20

    move-wide/from16 v0, v20

    double-to-int v12, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v20, v0

    int-to-float v0, v8

    move/from16 v21, v0

    div-float v21, v21, p5

    add-float v20, v20, v21

    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v20

    move-wide/from16 v0, v20

    double-to-int v2, v0

    sget v20, Lcom/sec/android/gallery3d/ui/TileImageView;->sTileSize:I

    shl-int v13, v20, p4

    const/16 v20, 0x0

    div-int v21, v9, v13

    mul-int v21, v21, v13

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->max(II)I

    move-result v9

    const/16 v20, 0x0

    div-int v21, v16, v13

    mul-int v21, v21, v13

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->max(II)I

    move-result v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/gallery3d/ui/TileImageView;->mImageWidth:I

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-static {v0, v12}, Ljava/lang/Math;->min(II)I

    move-result v12

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/gallery3d/ui/TileImageView;->mImageHeight:I

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v9, v1, v12, v2}, Landroid/graphics/Rect;->set(IIII)V
    :try_end_0
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v3

    const-string/jumbo v20, "TileImageView"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "ArithmeticException : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v3}, Ljava/lang/ArithmeticException;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getRange(Landroid/graphics/Rect;FFII)V
    .locals 7

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x1

    add-int/lit8 v2, p4, 0x1

    shl-int/2addr v1, v2

    int-to-float v1, v1

    div-float v5, v0, v1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/gallery3d/ui/TileImageView;->getRange(Landroid/graphics/Rect;FFIFI)V

    return-void
.end method

.method private getTile(III)Lcom/sec/android/gallery3d/ui/TileImageView$Tile;
    .locals 4

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/TileImageView;->mActiveTiles:Landroid/util/LongSparseArray;

    invoke-static {p1, p2, p3}, Lcom/sec/android/gallery3d/ui/TileImageView;->makeTileKey(III)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/ui/TileImageView$Tile;

    return-object v0
.end method

.method public static getTileNumPerScreen()I
    .locals 3

    sget v0, Lcom/sec/android/gallery3d/ui/TileImageView;->sDisplayWidthPixels:I

    int-to-float v0, v0

    sget v1, Lcom/sec/android/gallery3d/ui/TileImageView;->sTileSize:I

    add-int/lit8 v1, v1, 0x1

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    sget v1, Lcom/sec/android/gallery3d/ui/TileImageView;->sDisplayHeightPixels:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/gallery3d/ui/TileImageView;->sTileSize:I

    add-int/lit8 v2, v2, 0x1

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    mul-int/2addr v0, v1

    return v0
.end method

.method public static getTileSize()I
    .locals 1

    sget v0, Lcom/sec/android/gallery3d/ui/TileImageView;->sTileSize:I

    return v0
.end method

.method private declared-synchronized invalidateTiles()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/TileImageView;->mDecodeQueue:Lcom/sec/android/gallery3d/ui/TileImageView$TileQueue;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/ui/TileImageView$TileQueue;->clean()V

    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/TileImageView;->mUploadQueue:Lcom/sec/android/gallery3d/ui/TileImageView$TileQueue;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/ui/TileImageView$TileQueue;->clean()V

    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/TileImageView;->mActiveTiles:Landroid/util/LongSparseArray;

    invoke-virtual {v3}, Landroid/util/LongSparseArray;->size()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/TileImageView;->mActiveTiles:Landroid/util/LongSparseArray;

    invoke-virtual {v3, v0}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/gallery3d/ui/TileImageView$Tile;

    invoke-direct {p0, v2}, Lcom/sec/android/gallery3d/ui/TileImageView;->recycleTile(Lcom/sec/android/gallery3d/ui/TileImageView$Tile;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/TileImageView;->mActiveTiles:Landroid/util/LongSparseArray;

    invoke-virtual {v3}, Landroid/util/LongSparseArray;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method private static isHighResolution()Z
    .locals 2

    const/16 v1, 0x500

    sget v0, Lcom/sec/android/gallery3d/ui/TileImageView;->sDisplayHeightPixels:I

    if-ge v0, v1, :cond_0

    sget v0, Lcom/sec/android/gallery3d/ui/TileImageView;->sDisplayWidthPixels:I

    if-lt v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isScreenNailAnimating()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/TileImageView;->mScreenNail:Lcom/sec/android/gallery3d/ui/ScreenNail;

    instance-of v0, v0, Lcom/sec/android/gallery3d/ui/TiledScreenNail;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/TileImageView;->mScreenNail:Lcom/sec/android/gallery3d/ui/ScreenNail;

    check-cast v0, Lcom/sec/android/gallery3d/ui/TiledScreenNail;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/TiledScreenNail;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private layoutTiles(FFFI)V
    .locals 24

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/gallery3d/ui/TileImageView;->getWidth()I

    move-result v21

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/gallery3d/ui/TileImageView;->getHeight()I

    move-result v14

    const/high16 v3, 0x3f800000    # 1.0f

    div-float v3, v3, p3

    invoke-static {v3}, Lcom/sec/android/gallery3d/common/Utils;->floorLog2(F)I

    move-result v3

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/gallery3d/ui/TileImageView;->mLevelCount:I

    invoke-static {v3, v5, v6}, Lcom/sec/android/gallery3d/common/Utils;->clamp(III)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/gallery3d/ui/TileImageView;->mLevel:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/gallery3d/ui/TileImageView;->mLevel:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/gallery3d/ui/TileImageView;->mLevelCount:I

    if-eq v3, v5, :cond_2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/gallery3d/ui/TileImageView;->mTileRange:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/gallery3d/ui/TileImageView;->mLevel:I

    move-object/from16 v3, p0

    move/from16 v5, p1

    move/from16 v6, p2

    move/from16 v8, p3

    move/from16 v9, p4

    invoke-direct/range {v3 .. v9}, Lcom/sec/android/gallery3d/ui/TileImageView;->getRange(Landroid/graphics/Rect;FFIFI)V

    move/from16 v0, v21

    int-to-float v3, v0

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v3, v5

    iget v5, v4, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    sub-float v5, v5, p1

    mul-float v5, v5, p3

    add-float/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/gallery3d/ui/TileImageView;->mOffsetX:I

    int-to-float v3, v14

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v3, v5

    iget v5, v4, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    sub-float v5, v5, p2

    mul-float v5, v5, p3

    add-float/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/gallery3d/ui/TileImageView;->mOffsetY:I

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/gallery3d/ui/TileImageView;->mLevel:I

    shl-int/2addr v3, v5

    int-to-float v3, v3

    mul-float v3, v3, p3

    const/high16 v5, 0x3f400000    # 0.75f

    cmpl-float v3, v3, v5

    if-lez v3, :cond_1

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/gallery3d/ui/TileImageView;->mLevel:I

    add-int/lit8 v13, v3, -0x1

    :goto_0
    move/from16 v0, v21

    int-to-float v3, v0

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v3, v5

    mul-float v5, p1, p3

    sub-float/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/gallery3d/ui/TileImageView;->mRealOffsetX:I

    int-to-float v3, v14

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v3, v5

    mul-float v5, p2, p3

    sub-float/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/gallery3d/ui/TileImageView;->mRealOffsetY:I

    sget-boolean v3, Lcom/sec/android/gallery3d/ui/TileImageView;->FeatureUseTileAlphaBlendingEnabled:Z

    if-eqz v3, :cond_3

    move-object/from16 v0, p0

    iget v8, v0, Lcom/sec/android/gallery3d/ui/TileImageView;->mImageWidth:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/gallery3d/ui/TileImageView;->mImageHeight:I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/sec/android/gallery3d/ui/TileImageView;->mLevelCount:I

    move-object/from16 v5, p0

    move/from16 v6, v21

    move v7, v14

    invoke-direct/range {v5 .. v10}, Lcom/sec/android/gallery3d/ui/TileImageView;->calculateLTNLevel(IIIII)I

    move-result v15

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/gallery3d/ui/TileImageView;->mLevel:I

    if-gt v15, v3, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/gallery3d/ui/TileImageView;->mModel:Lcom/sec/android/gallery3d/ui/TileImageView$TileSource;

    instance-of v3, v3, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;

    if-eqz v3, :cond_3

    :cond_0
    :goto_1
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/gallery3d/ui/TileImageView;->mLevel:I

    goto :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/gallery3d/ui/TileImageView;->mLevel:I

    add-int/lit8 v13, v3, -0x2

    move/from16 v0, v21

    int-to-float v3, v0

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v3, v5

    mul-float v5, p1, p3

    sub-float/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/gallery3d/ui/TileImageView;->mOffsetX:I

    int-to-float v3, v14

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v3, v5

    mul-float v5, p2, p3

    sub-float/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/gallery3d/ui/TileImageView;->mOffsetY:I

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/gallery3d/ui/TileImageView;->mLevelCount:I

    add-int/lit8 v5, v5, -0x2

    invoke-static {v13, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v13

    add-int/lit8 v3, v13, 0x2

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/gallery3d/ui/TileImageView;->mLevelCount:I

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v12

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/gallery3d/ui/TileImageView;->mActiveRange:[Landroid/graphics/Rect;

    move v9, v13

    :goto_2
    if-ge v9, v12, :cond_4

    sub-int v3, v9, v13

    aget-object v6, v4, v3

    move-object/from16 v5, p0

    move/from16 v7, p1

    move/from16 v8, p2

    move/from16 v10, p4

    invoke-direct/range {v5 .. v10}, Lcom/sec/android/gallery3d/ui/TileImageView;->getRange(Landroid/graphics/Rect;FFII)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_4
    rem-int/lit8 v3, p4, 0x5a

    if-nez v3, :cond_0

    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/gallery3d/ui/TileImageView;->mDecodeQueue:Lcom/sec/android/gallery3d/ui/TileImageView$TileQueue;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/ui/TileImageView$TileQueue;->clean()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/gallery3d/ui/TileImageView;->mUploadQueue:Lcom/sec/android/gallery3d/ui/TileImageView$TileQueue;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/ui/TileImageView$TileQueue;->clean()V

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/sec/android/gallery3d/ui/TileImageView;->mBackgroundTileUploaded:Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/gallery3d/ui/TileImageView;->mActiveTiles:Landroid/util/LongSparseArray;

    invoke-virtual {v3}, Landroid/util/LongSparseArray;->size()I

    move-result v16

    const/4 v9, 0x0

    :goto_3
    move/from16 v0, v16

    if-ge v9, v0, :cond_7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/gallery3d/ui/TileImageView;->mActiveTiles:Landroid/util/LongSparseArray;

    invoke-virtual {v3, v9}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/sec/android/gallery3d/ui/TileImageView$Tile;

    invoke-static/range {v20 .. v20}, Lcom/sec/android/gallery3d/ui/TileImageView$Tile;->access$200(Lcom/sec/android/gallery3d/ui/TileImageView$Tile;)I

    move-result v15

    if-lt v15, v13, :cond_5

    if-ge v15, v12, :cond_5

    sub-int v3, v15, v13

    aget-object v3, v4, v3

    invoke-static/range {v20 .. v20}, Lcom/sec/android/gallery3d/ui/TileImageView$Tile;->access$300(Lcom/sec/android/gallery3d/ui/TileImageView$Tile;)I

    move-result v5

    invoke-static/range {v20 .. v20}, Lcom/sec/android/gallery3d/ui/TileImageView$Tile;->access$400(Lcom/sec/android/gallery3d/ui/TileImageView$Tile;)I

    move-result v6

    invoke-virtual {v3, v5, v6}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-nez v3, :cond_6

    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/gallery3d/ui/TileImageView;->mActiveTiles:Landroid/util/LongSparseArray;

    invoke-virtual {v3, v9}, Landroid/util/LongSparseArray;->removeAt(I)V

    add-int/lit8 v9, v9, -0x1

    add-int/lit8 v16, v16, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/sec/android/gallery3d/ui/TileImageView;->recycleTile(Lcom/sec/android/gallery3d/ui/TileImageView$Tile;)V

    :cond_6
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_7
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v9, v13

    :goto_4
    if-ge v9, v12, :cond_a

    sget v3, Lcom/sec/android/gallery3d/ui/TileImageView;->sTileSize:I

    shl-int v19, v3, v9

    sub-int v3, v9, v13

    aget-object v17, v4, v3

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v23, v0

    move-object/from16 v0, v17

    iget v11, v0, Landroid/graphics/Rect;->bottom:I

    :goto_5
    move/from16 v0, v23

    if-ge v0, v11, :cond_9

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v22, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v18, v0

    :goto_6
    move/from16 v0, v22

    move/from16 v1, v18

    if-ge v0, v1, :cond_8

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-direct {v0, v1, v2, v9}, Lcom/sec/android/gallery3d/ui/TileImageView;->activateTile(III)V

    add-int v22, v22, v19

    goto :goto_6

    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    :cond_8
    add-int v23, v23, v19

    goto :goto_5

    :cond_9
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/gallery3d/ui/TileImageView;->invalidate()V

    goto/16 :goto_1
.end method

.method private static makeTileKey(III)J
    .locals 7

    const/16 v6, 0x10

    int-to-long v0, p0

    shl-long v2, v0, v6

    int-to-long v4, p1

    or-long v0, v2, v4

    shl-long v2, v0, v6

    int-to-long v4, p2

    or-long v0, v2, v4

    return-wide v0
.end method

.method private declared-synchronized obtainTile(III)Lcom/sec/android/gallery3d/ui/TileImageView$Tile;
    .locals 7

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/TileImageView;->mRecycledQueue:Lcom/sec/android/gallery3d/ui/TileImageView$TileQueue;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/TileImageView$TileQueue;->pop()Lcom/sec/android/gallery3d/ui/TileImageView$Tile;

    move-result-object v6

    if-eqz v6, :cond_0

    const/4 v0, 0x1

    invoke-static {v6, v0}, Lcom/sec/android/gallery3d/ui/TileImageView$Tile;->access$702(Lcom/sec/android/gallery3d/ui/TileImageView$Tile;I)I

    invoke-virtual {v6, p1, p2, p3}, Lcom/sec/android/gallery3d/ui/TileImageView$Tile;->update(III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v6

    :cond_0
    :try_start_1
    new-instance v0, Lcom/sec/android/gallery3d/ui/TileImageView$Tile;

    const/4 v5, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/gallery3d/ui/TileImageView$Tile;-><init>(Lcom/sec/android/gallery3d/ui/TileImageView;IIILcom/sec/android/gallery3d/ui/TileImageView$1;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v6, v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized queueForDecode(Lcom/sec/android/gallery3d/ui/TileImageView$Tile;)V
    .locals 4

    const/4 v2, 0x2

    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/sec/android/gallery3d/ui/TileImageView$Tile;->access$700(Lcom/sec/android/gallery3d/ui/TileImageView$Tile;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x2

    invoke-static {p1, v0}, Lcom/sec/android/gallery3d/ui/TileImageView$Tile;->access$702(Lcom/sec/android/gallery3d/ui/TileImageView$Tile;I)I

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/TileImageView;->mDecodeQueue:Lcom/sec/android/gallery3d/ui/TileImageView$TileQueue;

    invoke-virtual {v0, p1}, Lcom/sec/android/gallery3d/ui/TileImageView$TileQueue;->push(Lcom/sec/android/gallery3d/ui/TileImageView$Tile;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    invoke-static {p1}, Lcom/sec/android/gallery3d/ui/TileImageView$Tile;->access$700(Lcom/sec/android/gallery3d/ui/TileImageView$Tile;)I

    move-result v0

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/TileImageView;->mDecodeQueue:Lcom/sec/android/gallery3d/ui/TileImageView$TileQueue;

    invoke-static {v0}, Lcom/sec/android/gallery3d/ui/TileImageView$TileQueue;->access$800(Lcom/sec/android/gallery3d/ui/TileImageView$TileQueue;)Lcom/sec/android/gallery3d/ui/TileImageView$Tile;

    move-result-object v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/sec/android/gallery3d/ui/TileImageView;->mCenterX:F

    iget v1, p0, Lcom/sec/android/gallery3d/ui/TileImageView;->mCenterY:F

    iget v2, p0, Lcom/sec/android/gallery3d/ui/TileImageView;->mScale:F

    iget v3, p0, Lcom/sec/android/gallery3d/ui/TileImageView;->mRotation:I

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/sec/android/gallery3d/ui/TileImageView;->layoutTiles(FFFI)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private queueForUpload(Lcom/sec/android/gallery3d/ui/TileImageView$Tile;)V
    .locals 3

    invoke-static {p1}, Lcom/sec/android/gallery3d/ui/TileImageView$Tile;->access$600(Lcom/sec/android/gallery3d/ui/TileImageView$Tile;)Lcom/sec/samsung/gallery/decoder/AlphablendingAnimation;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/sec/android/gallery3d/ui/TileImageView$Tile;->access$600(Lcom/sec/android/gallery3d/ui/TileImageView$Tile;)Lcom/sec/samsung/gallery/decoder/AlphablendingAnimation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/decoder/AlphablendingAnimation;->reset()V

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/TileImageView;->mUploadQueue:Lcom/sec/android/gallery3d/ui/TileImageView$TileQueue;

    invoke-virtual {v0, p1}, Lcom/sec/android/gallery3d/ui/TileImageView$TileQueue;->push(Lcom/sec/android/gallery3d/ui/TileImageView$Tile;)Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/TileImageView;->mTileUploader:Lcom/sec/android/gallery3d/ui/TileImageView$TileUploader;

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/TileImageView$TileUploader;->mActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/ui/TileImageView;->getGLRoot()Lcom/sec/android/gallery3d/ui/GLRoot;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/TileImageView;->mTileUploader:Lcom/sec/android/gallery3d/ui/TileImageView$TileUploader;

    invoke-interface {v0, v1}, Lcom/sec/android/gallery3d/ui/GLRoot;->addOnGLIdleListener(Lcom/sec/android/gallery3d/ui/GLRoot$OnGLIdleListener;)V

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private declared-synchronized recycleTile(Lcom/sec/android/gallery3d/ui/TileImageView$Tile;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/sec/android/gallery3d/ui/TileImageView$Tile;->access$700(Lcom/sec/android/gallery3d/ui/TileImageView$Tile;)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/16 v0, 0x20

    invoke-static {p1, v0}, Lcom/sec/android/gallery3d/ui/TileImageView$Tile;->access$702(Lcom/sec/android/gallery3d/ui/TileImageView$Tile;I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {p1}, Lcom/sec/android/gallery3d/ui/TileImageView$Tile;->yield()V

    const/16 v0, 0x40

    invoke-static {p1, v0}, Lcom/sec/android/gallery3d/ui/TileImageView$Tile;->access$702(Lcom/sec/android/gallery3d/ui/TileImageView$Tile;I)I

    invoke-static {p1}, Lcom/sec/android/gallery3d/ui/TileImageView$Tile;->access$1000(Lcom/sec/android/gallery3d/ui/TileImageView$Tile;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/sec/android/photos/data/GalleryBitmapPool;->getInstance()Lcom/sec/android/photos/data/GalleryBitmapPool;

    move-result-object v0

    invoke-static {p1}, Lcom/sec/android/gallery3d/ui/TileImageView$Tile;->access$1000(Lcom/sec/android/gallery3d/ui/TileImageView$Tile;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/photos/data/GalleryBitmapPool;->put(Landroid/graphics/Bitmap;)Z

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/sec/android/gallery3d/ui/TileImageView$Tile;->access$1002(Lcom/sec/android/gallery3d/ui/TileImageView$Tile;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    :cond_1
    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/TileImageView;->mRecycledQueue:Lcom/sec/android/gallery3d/ui/TileImageView$TileQueue;

    invoke-virtual {v0, p1}, Lcom/sec/android/gallery3d/ui/TileImageView$TileQueue;->push(Lcom/sec/android/gallery3d/ui/TileImageView$Tile;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static setDisplaySize(II)V
    .locals 0

    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sput p0, Lcom/sec/android/gallery3d/ui/TileImageView;->sDisplayWidthPixels:I

    sput p1, Lcom/sec/android/gallery3d/ui/TileImageView;->sDisplayHeightPixels:I

    invoke-static {}, Lcom/sec/android/gallery3d/ui/TileImageView;->setTileSize()V

    goto :goto_0
.end method

.method private static setTileSize()V
    .locals 1

    sget v0, Lcom/sec/android/gallery3d/ui/TileImageView;->sTileSize:I

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/sec/android/gallery3d/ui/TileImageView;->FeatureUseTileAlphaBlendingEnabled:Z

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/sec/android/gallery3d/ui/TileImageView;->isHighResolution()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x1fe

    sput v0, Lcom/sec/android/gallery3d/ui/TileImageView;->sTileSize:I

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/16 v0, 0xfe

    sput v0, Lcom/sec/android/gallery3d/ui/TileImageView;->sTileSize:I

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/sec/android/gallery3d/ui/TileImageView;->isHighResolution()Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0x200

    sput v0, Lcom/sec/android/gallery3d/ui/TileImageView;->sTileSize:I

    goto :goto_0

    :cond_3
    const/16 v0, 0x100

    sput v0, Lcom/sec/android/gallery3d/ui/TileImageView;->sTileSize:I

    goto :goto_0
.end method

.method private uploadBackgroundTiles()V
    .locals 4

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/sec/android/gallery3d/ui/TileImageView;->mBackgroundTileUploaded:Z

    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/TileImageView;->mActiveTiles:Landroid/util/LongSparseArray;

    invoke-virtual {v3}, Landroid/util/LongSparseArray;->size()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/TileImageView;->mActiveTiles:Landroid/util/LongSparseArray;

    invoke-virtual {v3, v0}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/gallery3d/ui/TileImageView$Tile;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/ui/TileImageView$Tile;->isContentValid()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-direct {p0, v2}, Lcom/sec/android/gallery3d/ui/TileImageView;->queueForDecode(Lcom/sec/android/gallery3d/ui/TileImageView$Tile;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public drawTile(Lcom/sec/android/gallery3d/glrenderer/GLCanvas;IIIFFF)V
    .locals 12

    iget-object v5, p0, Lcom/sec/android/gallery3d/ui/TileImageView;->mSourceRect:Landroid/graphics/RectF;

    iget-object v6, p0, Lcom/sec/android/gallery3d/ui/TileImageView;->mTargetRect:Landroid/graphics/RectF;

    add-float v8, p5, p7

    add-float v9, p6, p7

    move/from16 v0, p5

    move/from16 v1, p6

    invoke-virtual {v6, v0, v1, v8, v9}, Landroid/graphics/RectF;->set(FFFF)V

    const/4 v8, 0x0

    const/4 v9, 0x0

    sget v10, Lcom/sec/android/gallery3d/ui/TileImageView;->sTileSize:I

    int-to-float v10, v10

    sget v11, Lcom/sec/android/gallery3d/ui/TileImageView;->sTileSize:I

    int-to-float v11, v11

    invoke-virtual {v5, v8, v9, v10, v11}, Landroid/graphics/RectF;->set(FFFF)V

    move/from16 v0, p4

    invoke-direct {p0, p2, p3, v0}, Lcom/sec/android/gallery3d/ui/TileImageView;->getTile(III)Lcom/sec/android/gallery3d/ui/TileImageView$Tile;

    move-result-object v7

    if-eqz v7, :cond_4

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/ui/TileImageView$Tile;->isContentValid()Z

    move-result v8

    if-nez v8, :cond_0

    invoke-static {v7}, Lcom/sec/android/gallery3d/ui/TileImageView$Tile;->access$700(Lcom/sec/android/gallery3d/ui/TileImageView$Tile;)I

    move-result v8

    const/16 v9, 0x8

    if-ne v8, v9, :cond_3

    iget v8, p0, Lcom/sec/android/gallery3d/ui/TileImageView;->mUploadQuota:I

    if-lez v8, :cond_2

    iget v8, p0, Lcom/sec/android/gallery3d/ui/TileImageView;->mUploadQuota:I

    add-int/lit8 v8, v8, -0x1

    iput v8, p0, Lcom/sec/android/gallery3d/ui/TileImageView;->mUploadQuota:I

    invoke-virtual {v7, p1}, Lcom/sec/android/gallery3d/ui/TileImageView$Tile;->updateContent(Lcom/sec/android/gallery3d/glrenderer/GLCanvas;)V

    :cond_0
    :goto_0
    invoke-direct {p0, v7, p1, v5, v6}, Lcom/sec/android/gallery3d/ui/TileImageView;->drawTile(Lcom/sec/android/gallery3d/ui/TileImageView$Tile;Lcom/sec/android/gallery3d/glrenderer/GLCanvas;Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    move-result v8

    if-eqz v8, :cond_4

    :cond_1
    :goto_1
    return-void

    :cond_2
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/sec/android/gallery3d/ui/TileImageView;->mRenderComplete:Z

    goto :goto_0

    :cond_3
    invoke-static {v7}, Lcom/sec/android/gallery3d/ui/TileImageView$Tile;->access$700(Lcom/sec/android/gallery3d/ui/TileImageView$Tile;)I

    move-result v8

    const/16 v9, 0x10

    if-eq v8, v9, :cond_0

    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/sec/android/gallery3d/ui/TileImageView;->mRenderComplete:Z

    invoke-direct {p0, v7}, Lcom/sec/android/gallery3d/ui/TileImageView;->queueForDecode(Lcom/sec/android/gallery3d/ui/TileImageView$Tile;)V

    goto :goto_0

    :cond_4
    sget-boolean v8, Lcom/sec/android/gallery3d/ui/TileImageView;->FeatureUseTileAlphaBlendingEnabled:Z

    if-eqz v8, :cond_5

    iget-object v8, p0, Lcom/sec/android/gallery3d/ui/TileImageView;->mModel:Lcom/sec/android/gallery3d/ui/TileImageView$TileSource;

    instance-of v8, v8, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;

    if-nez v8, :cond_1

    :cond_5
    iget-object v8, p0, Lcom/sec/android/gallery3d/ui/TileImageView;->mScreenNail:Lcom/sec/android/gallery3d/ui/ScreenNail;

    if-eqz v8, :cond_1

    sget v8, Lcom/sec/android/gallery3d/ui/TileImageView;->sTileSize:I

    shl-int v4, v8, p4

    iget-object v8, p0, Lcom/sec/android/gallery3d/ui/TileImageView;->mScreenNail:Lcom/sec/android/gallery3d/ui/ScreenNail;

    invoke-interface {v8}, Lcom/sec/android/gallery3d/ui/ScreenNail;->getWidth()I

    move-result v8

    int-to-float v8, v8

    iget v9, p0, Lcom/sec/android/gallery3d/ui/TileImageView;->mImageWidth:I

    int-to-float v9, v9

    div-float v2, v8, v9

    iget-object v8, p0, Lcom/sec/android/gallery3d/ui/TileImageView;->mScreenNail:Lcom/sec/android/gallery3d/ui/ScreenNail;

    invoke-interface {v8}, Lcom/sec/android/gallery3d/ui/ScreenNail;->getHeight()I

    move-result v8

    int-to-float v8, v8

    iget v9, p0, Lcom/sec/android/gallery3d/ui/TileImageView;->mImageHeight:I

    int-to-float v9, v9

    div-float v3, v8, v9

    int-to-float v8, p2

    mul-float/2addr v8, v2

    int-to-float v9, p3

    mul-float/2addr v9, v3

    add-int v10, p2, v4

    int-to-float v10, v10

    mul-float/2addr v10, v2

    add-int v11, p3, v4

    int-to-float v11, v11

    mul-float/2addr v11, v3

    invoke-virtual {v5, v8, v9, v10, v11}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v8, p0, Lcom/sec/android/gallery3d/ui/TileImageView;->mScreenNail:Lcom/sec/android/gallery3d/ui/ScreenNail;

    invoke-interface {v8, p1, v5, v6}, Lcom/sec/android/gallery3d/ui/ScreenNail;->draw(Lcom/sec/android/gallery3d/glrenderer/GLCanvas;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    goto :goto_1
.end method

.method freeTextures()V
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/sec/android/gallery3d/ui/TileImageView;->mIsTextureFreed:Z

    iget-object v4, p0, Lcom/sec/android/gallery3d/ui/TileImageView;->mTileDecoder:Lcom/sec/android/gallery3d/util/Future;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/sec/android/gallery3d/ui/TileImageView;->mThreadPool:Lcom/sec/android/gallery3d/util/ThreadPool;

    iget-object v5, p0, Lcom/sec/android/gallery3d/ui/TileImageView;->mTileDecoder:Lcom/sec/android/gallery3d/util/Future;

    invoke-virtual {v4, v5}, Lcom/sec/android/gallery3d/util/ThreadPool;->removeInQueue(Lcom/sec/android/gallery3d/util/Future;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/gallery3d/ui/TileImageView;->mTileDecoder:Lcom/sec/android/gallery3d/util/Future;

    invoke-interface {v4}, Lcom/sec/android/gallery3d/util/Future;->cancel()V

    iget-object v4, p0, Lcom/sec/android/gallery3d/ui/TileImageView;->mTileDecoder:Lcom/sec/android/gallery3d/util/Future;

    invoke-interface {v4}, Lcom/sec/android/gallery3d/util/Future;->waitDone()V

    :cond_0
    iput-object v7, p0, Lcom/sec/android/gallery3d/ui/TileImageView;->mTileDecoder:Lcom/sec/android/gallery3d/util/Future;

    :cond_1
    iget-object v4, p0, Lcom/sec/android/gallery3d/ui/TileImageView;->mActiveTiles:Landroid/util/LongSparseArray;

    invoke-virtual {v4}, Landroid/util/LongSparseArray;->size()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_2

    iget-object v4, p0, Lcom/sec/android/gallery3d/ui/TileImageView;->mActiveTiles:Landroid/util/LongSparseArray;

    invoke-virtual {v4, v0}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/gallery3d/ui/TileImageView$Tile;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/ui/TileImageView$Tile;->recycle()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/sec/android/gallery3d/ui/TileImageView;->mActiveTiles:Landroid/util/LongSparseArray;

    invoke-virtual {v4}, Landroid/util/LongSparseArray;->clear()V

    iget-object v4, p0, Lcom/sec/android/gallery3d/ui/TileImageView;->mTileRange:Landroid/graphics/Rect;

    invoke-virtual {v4, v6, v6, v6, v6}, Landroid/graphics/Rect;->set(IIII)V

    monitor-enter p0

    :try_start_0
    iget-object v4, p0, Lcom/sec/android/gallery3d/ui/TileImageView;->mUploadQueue:Lcom/sec/android/gallery3d/ui/TileImageView$TileQueue;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/ui/TileImageView$TileQueue;->clean()V

    iget-object v4, p0, Lcom/sec/android/gallery3d/ui/TileImageView;->mDecodeQueue:Lcom/sec/android/gallery3d/ui/TileImageView$TileQueue;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/ui/TileImageView$TileQueue;->clean()V

    iget-object v4, p0, Lcom/sec/android/gallery3d/ui/TileImageView;->mRecycledQueue:Lcom/sec/android/gallery3d/ui/TileImageView$TileQueue;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/ui/TileImageView$TileQueue;->pop()Lcom/sec/android/gallery3d/ui/TileImageView$Tile;

    move-result-object v3

    :goto_1
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/ui/TileImageView$Tile;->recycle()V

    iget-object v4, p0, Lcom/sec/android/gallery3d/ui/TileImageView;->mRecycledQueue:Lcom/sec/android/gallery3d/ui/TileImageView$TileQueue;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/ui/TileImageView$TileQueue;->pop()Lcom/sec/android/gallery3d/ui/TileImageView$Tile;

    move-result-object v3

    goto :goto_1

    :cond_3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, v7}, Lcom/sec/android/gallery3d/ui/TileImageView;->setScreenNail(Lcom/sec/android/gallery3d/ui/ScreenNail;)V

    iput-boolean v6, p0, Lcom/sec/android/gallery3d/ui/TileImageView;->mEnableDrawScreenNail:Z

    return-void

    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method

.method public invalidateScreenNail(Lcom/sec/android/gallery3d/ui/ScreenNail;ZZ)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/TileImageView;->mScreenNail:Lcom/sec/android/gallery3d/ui/ScreenNail;

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/TileImageView;->mModel:Lcom/sec/android/gallery3d/ui/TileImageView$TileSource;

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/ui/TileImageView;->getGLRoot()Lcom/sec/android/gallery3d/ui/GLRoot;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sec/android/gallery3d/ui/TileImageView$TileSource;->getScreenNail(Lcom/sec/android/gallery3d/ui/GLRoot;)Lcom/sec/android/gallery3d/ui/ScreenNail;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/TileImageView;->mScreenNail:Lcom/sec/android/gallery3d/ui/ScreenNail;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/TileImageView;->mScreenNail:Lcom/sec/android/gallery3d/ui/ScreenNail;

    invoke-interface {v0}, Lcom/sec/android/gallery3d/ui/ScreenNail;->recycle()V

    :cond_0
    invoke-virtual {p0, p1}, Lcom/sec/android/gallery3d/ui/TileImageView;->setScreenNail(Lcom/sec/android/gallery3d/ui/ScreenNail;)V

    iput-boolean p3, p0, Lcom/sec/android/gallery3d/ui/TileImageView;->mEnableDrawScreenNail:Z

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/ui/TileImageView;->invalidate()V

    return-void
.end method

.method public notifyModelInvalidated()V
    .locals 4

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/sec/android/gallery3d/ui/TileImageView;->invalidateTiles()V

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/TileImageView;->mModel:Lcom/sec/android/gallery3d/ui/TileImageView$TileSource;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/gallery3d/ui/TileImageView;->setScreenNail(Lcom/sec/android/gallery3d/ui/ScreenNail;)V

    iput v1, p0, Lcom/sec/android/gallery3d/ui/TileImageView;->mImageWidth:I

    iput v1, p0, Lcom/sec/android/gallery3d/ui/TileImageView;->mImageHeight:I

    iput v1, p0, Lcom/sec/android/gallery3d/ui/TileImageView;->mLevelCount:I

    :goto_0
    iget v0, p0, Lcom/sec/android/gallery3d/ui/TileImageView;->mCenterX:F

    iget v1, p0, Lcom/sec/android/gallery3d/ui/TileImageView;->mCenterY:F

    iget v2, p0, Lcom/sec/android/gallery3d/ui/TileImageView;->mScale:F

    iget v3, p0, Lcom/sec/android/gallery3d/ui/TileImageView;->mRotation:I

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/sec/android/gallery3d/ui/TileImageView;->layoutTiles(FFFI)V

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/ui/TileImageView;->invalidate()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/TileImageView;->mModel:Lcom/sec/android/gallery3d/ui/TileImageView$TileSource;

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/ui/TileImageView;->getGLRoot()Lcom/sec/android/gallery3d/ui/GLRoot;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sec/android/gallery3d/ui/TileImageView$TileSource;->getScreenNail(Lcom/sec/android/gallery3d/ui/GLRoot;)Lcom/sec/android/gallery3d/ui/ScreenNail;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/gallery3d/ui/TileImageView;->setScreenNail(Lcom/sec/android/gallery3d/ui/ScreenNail;)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/TileImageView;->mModel:Lcom/sec/android/gallery3d/ui/TileImageView$TileSource;

    invoke-interface {v0}, Lcom/sec/android/gallery3d/ui/TileImageView$TileSource;->getImageWidth()I

    move-result v0

    iput v0, p0, Lcom/sec/android/gallery3d/ui/TileImageView;->mImageWidth:I

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/TileImageView;->mModel:Lcom/sec/android/gallery3d/ui/TileImageView$TileSource;

    invoke-interface {v0}, Lcom/sec/android/gallery3d/ui/TileImageView$TileSource;->getImageHeight()I

    move-result v0

    iput v0, p0, Lcom/sec/android/gallery3d/ui/TileImageView;->mImageHeight:I

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/TileImageView;->mModel:Lcom/sec/android/gallery3d/ui/TileImageView$TileSource;

    invoke-interface {v0}, Lcom/sec/android/gallery3d/ui/TileImageView$TileSource;->getLevelCount()I

    move-result v0

    iput v0, p0, Lcom/sec/android/gallery3d/ui/TileImageView;->mLevelCount:I

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 4

    invoke-super/range {p0 .. p5}, Lcom/sec/android/gallery3d/ui/GLView;->onLayout(ZIIII)V

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/sec/android/gallery3d/ui/TileImageView;->mCenterX:F

    iget v1, p0, Lcom/sec/android/gallery3d/ui/TileImageView;->mCenterY:F

    iget v2, p0, Lcom/sec/android/gallery3d/ui/TileImageView;->mScale:F

    iget v3, p0, Lcom/sec/android/gallery3d/ui/TileImageView;->mRotation:I

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/sec/android/gallery3d/ui/TileImageView;->layoutTiles(FFFI)V

    :cond_0
    return-void
.end method

.method public prepareTextures()V
    .locals 6

    const/4 v0, 0x0

    const/4 v5, 0x0

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/TileImageView;->mTileDecoder:Lcom/sec/android/gallery3d/util/Future;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/TileImageView;->mThreadPool:Lcom/sec/android/gallery3d/util/ThreadPool;

    new-instance v2, Lcom/sec/android/gallery3d/ui/TileImageView$TileDecoder;

    invoke-direct {v2, p0, v0}, Lcom/sec/android/gallery3d/ui/TileImageView$TileDecoder;-><init>(Lcom/sec/android/gallery3d/ui/TileImageView;Lcom/sec/android/gallery3d/ui/TileImageView$1;)V

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/util/ThreadPool;->submit(Lcom/sec/android/gallery3d/util/ThreadPool$Job;)Lcom/sec/android/gallery3d/util/Future;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/gallery3d/ui/TileImageView;->mTileDecoder:Lcom/sec/android/gallery3d/util/Future;

    :cond_0
    iget-boolean v1, p0, Lcom/sec/android/gallery3d/ui/TileImageView;->mIsTextureFreed:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/sec/android/gallery3d/ui/TileImageView;->mCenterX:F

    iget v2, p0, Lcom/sec/android/gallery3d/ui/TileImageView;->mCenterY:F

    iget v3, p0, Lcom/sec/android/gallery3d/ui/TileImageView;->mScale:F

    iget v4, p0, Lcom/sec/android/gallery3d/ui/TileImageView;->mRotation:I

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/sec/android/gallery3d/ui/TileImageView;->layoutTiles(FFFI)V

    iput-boolean v5, p0, Lcom/sec/android/gallery3d/ui/TileImageView;->mIsTextureFreed:Z

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/TileImageView;->mModel:Lcom/sec/android/gallery3d/ui/TileImageView$TileSource;

    if-nez v1, :cond_2

    :goto_0
    invoke-virtual {p0, v0}, Lcom/sec/android/gallery3d/ui/TileImageView;->setScreenNail(Lcom/sec/android/gallery3d/ui/ScreenNail;)V

    :cond_1
    iput-boolean v5, p0, Lcom/sec/android/gallery3d/ui/TileImageView;->mEnableDrawScreenNail:Z

    return-void

    :cond_2
    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/TileImageView;->mModel:Lcom/sec/android/gallery3d/ui/TileImageView$TileSource;

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/ui/TileImageView;->getGLRoot()Lcom/sec/android/gallery3d/ui/GLRoot;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sec/android/gallery3d/ui/TileImageView$TileSource;->getScreenNail(Lcom/sec/android/gallery3d/ui/GLRoot;)Lcom/sec/android/gallery3d/ui/ScreenNail;

    move-result-object v0

    goto :goto_0
.end method

.method public render(Lcom/sec/android/gallery3d/glrenderer/GLCanvas;)V
    .locals 26

    invoke-super/range {p0 .. p1}, Lcom/sec/android/gallery3d/ui/GLView;->render(Lcom/sec/android/gallery3d/glrenderer/GLCanvas;)V

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/gallery3d/ui/TileImageView;->mUploadQuota:I

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/sec/android/gallery3d/ui/TileImageView;->mRenderComplete:Z

    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/gallery3d/ui/TileImageView;->mLevel:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/gallery3d/ui/TileImageView;->mRotation:I

    move/from16 v25, v0

    const/16 v21, 0x0

    if-eqz v25, :cond_0

    or-int/lit8 v21, v21, 0x2

    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/ui/TileImageView;->mScreenNail:Lcom/sec/android/gallery3d/ui/ScreenNail;

    if-nez v2, :cond_1

    const-string/jumbo v2, "TileImageView"

    const-string/jumbo v3, "mScreenNail is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-eqz v21, :cond_2

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-interface {v0, v1}, Lcom/sec/android/gallery3d/glrenderer/GLCanvas;->save(I)V

    if-eqz v25, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/gallery3d/ui/TileImageView;->getWidth()I

    move-result v2

    div-int/lit8 v19, v2, 0x2

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/gallery3d/ui/TileImageView;->getHeight()I

    move-result v2

    div-int/lit8 v20, v2, 0x2

    move/from16 v0, v19

    int-to-float v2, v0

    move/from16 v0, v20

    int-to-float v3, v0

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v3}, Lcom/sec/android/gallery3d/glrenderer/GLCanvas;->translate(FF)V

    move/from16 v0, v25

    int-to-float v2, v0

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v3, v6, v10}, Lcom/sec/android/gallery3d/glrenderer/GLCanvas;->rotate(FFFF)V

    move/from16 v0, v19

    neg-int v2, v0

    int-to-float v2, v2

    move/from16 v0, v20

    neg-int v3, v0

    int-to-float v3, v3

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v3}, Lcom/sec/android/gallery3d/glrenderer/GLCanvas;->translate(FF)V

    :cond_2
    :try_start_0
    sget v2, Lcom/sec/android/gallery3d/ui/TileImageView;->sTileSize:I

    shl-int v12, v2, v11

    sget-boolean v2, Lcom/sec/android/gallery3d/ui/TileImageView;->FeatureUseTileAlphaBlendingEnabled:Z

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/ui/TileImageView;->mDecoderInterface:Lcom/sec/samsung/gallery/decoder/DecoderInterface;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/gallery3d/ui/TileImageView;->getGLRoot()Lcom/sec/android/gallery3d/ui/GLRoot;

    move-result-object v3

    invoke-virtual {v2, v3, v11}, Lcom/sec/samsung/gallery/decoder/DecoderInterface;->isLevelChanged(Lcom/sec/android/gallery3d/ui/GLRoot;I)Z

    move-result v2

    if-nez v2, :cond_5

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sec/android/gallery3d/ui/TileImageView;->mEnableDrawScreenNail:Z

    if-nez v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/ui/TileImageView;->mScreenNail:Lcom/sec/android/gallery3d/ui/ScreenNail;

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/ui/TileImageView;->mModel:Lcom/sec/android/gallery3d/ui/TileImageView$TileSource;

    instance-of v2, v2, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/ui/TileImageView;->mDecoderInterface:Lcom/sec/samsung/gallery/decoder/DecoderInterface;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/gallery3d/ui/TileImageView;->getGLRoot()Lcom/sec/android/gallery3d/ui/GLRoot;

    move-result-object v3

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/gallery3d/ui/TileImageView;->mRealOffsetX:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/gallery3d/ui/TileImageView;->mRealOffsetY:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/gallery3d/ui/TileImageView;->mImageWidth:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/sec/android/gallery3d/ui/TileImageView;->mImageHeight:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/gallery3d/ui/TileImageView;->mScale:F

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/gallery3d/ui/TileImageView;->mScreenNail:Lcom/sec/android/gallery3d/ui/ScreenNail;

    move-object/from16 v4, p1

    invoke-virtual/range {v2 .. v11}, Lcom/sec/samsung/gallery/decoder/DecoderInterface;->drawOnCenter(Lcom/sec/android/gallery3d/ui/GLRoot;Lcom/sec/android/gallery3d/glrenderer/GLCanvas;IIIIFLcom/sec/android/gallery3d/ui/ScreenNail;I)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/sec/android/gallery3d/ui/TileImageView;->mRenderComplete:Z

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sec/android/gallery3d/ui/TileImageView;->mRenderComplete:Z

    if-nez v2, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/gallery3d/ui/TileImageView;->invalidate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    if-eqz v21, :cond_4

    invoke-interface/range {p1 .. p1}, Lcom/sec/android/gallery3d/glrenderer/GLCanvas;->restore()V

    :cond_4
    :goto_0
    return-void

    :cond_5
    :try_start_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/gallery3d/ui/TileImageView;->mLevelCount:I

    if-eq v11, v2, :cond_a

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/gallery3d/ui/TileImageView;->isScreenNailAnimating()Z

    move-result v2

    if-nez v2, :cond_a

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sec/android/gallery3d/ui/TileImageView;->mEnableDrawScreenNail:Z

    if-nez v2, :cond_a

    int-to-float v2, v12

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/gallery3d/ui/TileImageView;->mScale:F

    mul-float v9, v2, v3

    sget-boolean v2, Lcom/sec/android/gallery3d/ui/TileImageView;->FeatureUseTileAlphaBlendingEnabled:Z

    if-eqz v2, :cond_8

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/gallery3d/ui/TileImageView;->mDecoderInterface:Lcom/sec/samsung/gallery/decoder/DecoderInterface;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/gallery3d/ui/TileImageView;->getGLRoot()Lcom/sec/android/gallery3d/ui/GLRoot;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/gallery3d/ui/TileImageView;->mTileRange:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/gallery3d/ui/TileImageView;->mScale:F

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/gallery3d/ui/TileImageView;->mOffsetX:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/gallery3d/ui/TileImageView;->mOffsetY:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/TileImageView;->mScreenNail:Lcom/sec/android/gallery3d/ui/ScreenNail;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/gallery3d/ui/TileImageView;->mImageWidth:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/gallery3d/ui/TileImageView;->mImageHeight:I

    move/from16 v18, v0

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    invoke-virtual/range {v6 .. v18}, Lcom/sec/samsung/gallery/decoder/DecoderInterface;->centerDrawTiles(Lcom/sec/android/gallery3d/ui/GLRoot;Lcom/sec/android/gallery3d/ui/TileImageView;Lcom/sec/android/gallery3d/glrenderer/GLCanvas;Landroid/graphics/Rect;IIFIILcom/sec/android/gallery3d/ui/ScreenNail;II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_6
    :goto_1
    if-eqz v21, :cond_7

    invoke-interface/range {p1 .. p1}, Lcom/sec/android/gallery3d/glrenderer/GLCanvas;->restore()V

    :cond_7
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sec/android/gallery3d/ui/TileImageView;->mRenderComplete:Z

    if-eqz v2, :cond_c

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sec/android/gallery3d/ui/TileImageView;->mBackgroundTileUploaded:Z

    if-nez v2, :cond_4

    sget-boolean v2, Lcom/sec/android/gallery3d/ui/TileImageView;->FeatureUseTileAlphaBlendingEnabled:Z

    if-nez v2, :cond_4

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/gallery3d/ui/TileImageView;->uploadBackgroundTiles()V

    goto :goto_0

    :cond_8
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/TileImageView;->mTileRange:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v5, v0, Landroid/graphics/Rect;->top:I

    const/16 v22, 0x0

    :goto_2
    move-object/from16 v0, v24

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    if-ge v5, v2, :cond_6

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/gallery3d/ui/TileImageView;->mOffsetY:I

    int-to-float v2, v2

    move/from16 v0, v22

    int-to-float v3, v0

    mul-float/2addr v3, v9

    add-float v8, v2, v3

    move-object/from16 v0, v24

    iget v4, v0, Landroid/graphics/Rect;->left:I

    const/16 v23, 0x0

    :goto_3
    move-object/from16 v0, v24

    iget v2, v0, Landroid/graphics/Rect;->right:I

    if-ge v4, v2, :cond_9

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/gallery3d/ui/TileImageView;->mOffsetX:I

    int-to-float v2, v2

    move/from16 v0, v23

    int-to-float v3, v0

    mul-float/2addr v3, v9

    add-float v7, v2, v3

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move v6, v11

    invoke-virtual/range {v2 .. v9}, Lcom/sec/android/gallery3d/ui/TileImageView;->drawTile(Lcom/sec/android/gallery3d/glrenderer/GLCanvas;IIIFFF)V

    add-int/2addr v4, v12

    add-int/lit8 v23, v23, 0x1

    goto :goto_3

    :cond_9
    add-int/2addr v5, v12

    add-int/lit8 v22, v22, 0x1

    goto :goto_2

    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/ui/TileImageView;->mScreenNail:Lcom/sec/android/gallery3d/ui/ScreenNail;

    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/gallery3d/ui/TileImageView;->mScreenNail:Lcom/sec/android/gallery3d/ui/ScreenNail;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/gallery3d/ui/TileImageView;->mRealOffsetX:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/gallery3d/ui/TileImageView;->mRealOffsetY:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/gallery3d/ui/TileImageView;->mImageWidth:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/gallery3d/ui/TileImageView;->mScale:F

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v17

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/gallery3d/ui/TileImageView;->mImageHeight:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/gallery3d/ui/TileImageView;->mScale:F

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v18

    move-object/from16 v14, p1

    invoke-interface/range {v13 .. v18}, Lcom/sec/android/gallery3d/ui/ScreenNail;->draw(Lcom/sec/android/gallery3d/glrenderer/GLCanvas;IIII)V

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/gallery3d/ui/TileImageView;->isScreenNailAnimating()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/gallery3d/ui/TileImageView;->invalidate()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1

    :catchall_0
    move-exception v2

    if-eqz v21, :cond_b

    invoke-interface/range {p1 .. p1}, Lcom/sec/android/gallery3d/glrenderer/GLCanvas;->restore()V

    :cond_b
    throw v2

    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/gallery3d/ui/TileImageView;->invalidate()V

    goto/16 :goto_0
.end method

.method public setModel(Lcom/sec/android/gallery3d/ui/TileImageView$TileSource;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/ui/TileImageView;->mModel:Lcom/sec/android/gallery3d/ui/TileImageView$TileSource;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/ui/TileImageView;->notifyModelInvalidated()V

    :cond_0
    return-void
.end method

.method setPosition(FFFI)Z
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/ui/TileImageView;->mCenterX:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/sec/android/gallery3d/ui/TileImageView;->mCenterY:F

    cmpl-float v0, v0, p2

    if-nez v0, :cond_0

    iget v0, p0, Lcom/sec/android/gallery3d/ui/TileImageView;->mScale:F

    cmpl-float v0, v0, p3

    if-nez v0, :cond_0

    iget v0, p0, Lcom/sec/android/gallery3d/ui/TileImageView;->mRotation:I

    if-ne v0, p4, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iput p1, p0, Lcom/sec/android/gallery3d/ui/TileImageView;->mCenterX:F

    iput p2, p0, Lcom/sec/android/gallery3d/ui/TileImageView;->mCenterY:F

    iput p3, p0, Lcom/sec/android/gallery3d/ui/TileImageView;->mScale:F

    iput p4, p0, Lcom/sec/android/gallery3d/ui/TileImageView;->mRotation:I

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/gallery3d/ui/TileImageView;->layoutTiles(FFFI)V

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/ui/TileImageView;->invalidate()V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setScreenNail(Lcom/sec/android/gallery3d/ui/ScreenNail;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/TileImageView;->mScreenNail:Lcom/sec/android/gallery3d/ui/ScreenNail;

    if-ne v0, p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/TileImageView;->mScreenNail:Lcom/sec/android/gallery3d/ui/ScreenNail;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/TileImageView;->mScreenNail:Lcom/sec/android/gallery3d/ui/ScreenNail;

    invoke-interface {v0}, Lcom/sec/android/gallery3d/ui/ScreenNail;->isAnimatable()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/TileImageView;->mScreenNail:Lcom/sec/android/gallery3d/ui/ScreenNail;

    invoke-interface {v0}, Lcom/sec/android/gallery3d/ui/ScreenNail;->stopAnimation()V

    :cond_2
    iput-object p1, p0, Lcom/sec/android/gallery3d/ui/TileImageView;->mScreenNail:Lcom/sec/android/gallery3d/ui/ScreenNail;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/sec/android/gallery3d/ui/ScreenNail;->isAnimatable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/sec/android/gallery3d/ui/ScreenNail;->startAnimation()V

    goto :goto_0
.end method
