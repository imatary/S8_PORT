.class public Lcom/sec/samsung/gallery/decoder/LargeImage;
.super Ljava/lang/Object;
.source "LargeImage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/samsung/gallery/decoder/LargeImage$LargeImageTileQueue;,
        Lcom/sec/samsung/gallery/decoder/LargeImage$LargeImageTileUploader;,
        Lcom/sec/samsung/gallery/decoder/LargeImage$LargeImageListener;,
        Lcom/sec/samsung/gallery/decoder/LargeImage$LargeImageJob;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "LargeImage"

.field private static final UPLOAD_LIMIT:I = 0x32

.field private static final USE_POOL:Z = true


# instance fields
.field private largeImageTask:Lcom/sec/android/gallery3d/util/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sec/android/gallery3d/util/Future",
            "<",
            "Landroid/util/LongSparseArray",
            "<",
            "Lcom/sec/samsung/gallery/decoder/LargeImageTile;",
            ">;>;"
        }
    .end annotation
.end field

.field public final mDecodeLock:Ljava/lang/Object;

.field public mDecodedTileList:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray",
            "<",
            "Lcom/sec/samsung/gallery/decoder/LargeImageTile;",
            ">;"
        }
    .end annotation
.end field

.field private final mDecoderInterface:Lcom/sec/samsung/gallery/decoder/DecoderInterface;

.field private volatile mDecodingComplete:Z

.field public volatile mDecodingStarted:Z

.field public final mImageHeight:I

.field public final mImageWidth:I

.field private final mItem:Lcom/sec/android/gallery3d/data/MediaItem;

.field private final mLargeImageTilePool:Lcom/sec/samsung/gallery/decoder/LargeImageTilePool;

.field public final mLevel:[I

.field private final mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

.field private volatile mNeedClear:Z

.field private final mPhotoDataAdapter:Lcom/sec/android/gallery3d/app/PhotoDataAdapter;

.field private final mPhotoView:Lcom/sec/android/gallery3d/ui/PhotoView;

.field private final mRegionDecoder:Lcom/sec/samsung/gallery/decoder/regiondecoder/RegionDecoder;

.field public final mSize:[I

.field private final mTileList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/samsung/gallery/decoder/LargeImageTile;",
            ">;"
        }
    .end annotation
.end field

.field private final mTileRange:Landroid/graphics/Rect;

.field private final mTileSize:I

.field private final mTileUploader:Lcom/sec/samsung/gallery/decoder/LargeImage$LargeImageTileUploader;

.field private final mUploadQueue:Lcom/sec/samsung/gallery/decoder/LargeImage$LargeImageTileQueue;

.field private mUploadTileCount:I

.field public volatile mUploadingComplete:Z


# direct methods
.method public constructor <init>(Lcom/sec/samsung/gallery/decoder/regiondecoder/RegionDecoder;Lcom/sec/android/gallery3d/interfaces/LibraryContext;Lcom/sec/android/gallery3d/data/MediaItem;ILcom/sec/android/gallery3d/ui/PhotoView;Lcom/sec/android/gallery3d/app/PhotoDataAdapter;Lcom/sec/samsung/gallery/decoder/LargeImageTilePool;Z)V
    .locals 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v5, 0x0

    iput v5, p0, Lcom/sec/samsung/gallery/decoder/LargeImage;->mUploadTileCount:I

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, p0, Lcom/sec/samsung/gallery/decoder/LargeImage;->mTileRange:Landroid/graphics/Rect;

    new-instance v5, Lcom/sec/samsung/gallery/decoder/LargeImage$LargeImageTileQueue;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Lcom/sec/samsung/gallery/decoder/LargeImage$LargeImageTileQueue;-><init>(Lcom/sec/samsung/gallery/decoder/LargeImage$1;)V

    iput-object v5, p0, Lcom/sec/samsung/gallery/decoder/LargeImage;->mUploadQueue:Lcom/sec/samsung/gallery/decoder/LargeImage$LargeImageTileQueue;

    new-instance v5, Lcom/sec/samsung/gallery/decoder/LargeImage$LargeImageTileUploader;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lcom/sec/samsung/gallery/decoder/LargeImage$LargeImageTileUploader;-><init>(Lcom/sec/samsung/gallery/decoder/LargeImage;Lcom/sec/samsung/gallery/decoder/LargeImage$1;)V

    iput-object v5, p0, Lcom/sec/samsung/gallery/decoder/LargeImage;->mTileUploader:Lcom/sec/samsung/gallery/decoder/LargeImage$LargeImageTileUploader;

    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/sec/samsung/gallery/decoder/LargeImage;->mNeedClear:Z

    new-instance v5, Ljava/lang/Object;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    iput-object v5, p0, Lcom/sec/samsung/gallery/decoder/LargeImage;->mDecodeLock:Ljava/lang/Object;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/sec/samsung/gallery/decoder/LargeImage;->mTileList:Ljava/util/ArrayList;

    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/sec/samsung/gallery/decoder/LargeImage;->mDecodingStarted:Z

    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/sec/samsung/gallery/decoder/LargeImage;->mDecodingComplete:Z

    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/sec/samsung/gallery/decoder/LargeImage;->mUploadingComplete:Z

    iput-object p1, p0, Lcom/sec/samsung/gallery/decoder/LargeImage;->mRegionDecoder:Lcom/sec/samsung/gallery/decoder/regiondecoder/RegionDecoder;

    iput-object p2, p0, Lcom/sec/samsung/gallery/decoder/LargeImage;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {p2}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getDecoderInterface()Lcom/sec/samsung/gallery/decoder/DecoderInterface;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/samsung/gallery/decoder/LargeImage;->mDecoderInterface:Lcom/sec/samsung/gallery/decoder/DecoderInterface;

    move-object/from16 v0, p6

    iput-object v0, p0, Lcom/sec/samsung/gallery/decoder/LargeImage;->mPhotoDataAdapter:Lcom/sec/android/gallery3d/app/PhotoDataAdapter;

    iput-object p3, p0, Lcom/sec/samsung/gallery/decoder/LargeImage;->mItem:Lcom/sec/android/gallery3d/data/MediaItem;

    iget-object v5, p0, Lcom/sec/samsung/gallery/decoder/LargeImage;->mRegionDecoder:Lcom/sec/samsung/gallery/decoder/regiondecoder/RegionDecoder;

    invoke-virtual {v5}, Lcom/sec/samsung/gallery/decoder/regiondecoder/RegionDecoder;->getHeight()I

    move-result v5

    iput v5, p0, Lcom/sec/samsung/gallery/decoder/LargeImage;->mImageHeight:I

    iget-object v5, p0, Lcom/sec/samsung/gallery/decoder/LargeImage;->mRegionDecoder:Lcom/sec/samsung/gallery/decoder/regiondecoder/RegionDecoder;

    invoke-virtual {v5}, Lcom/sec/samsung/gallery/decoder/regiondecoder/RegionDecoder;->getWidth()I

    move-result v5

    iput v5, p0, Lcom/sec/samsung/gallery/decoder/LargeImage;->mImageWidth:I

    iput-object p5, p0, Lcom/sec/samsung/gallery/decoder/LargeImage;->mPhotoView:Lcom/sec/android/gallery3d/ui/PhotoView;

    iget-object v5, p0, Lcom/sec/samsung/gallery/decoder/LargeImage;->mPhotoView:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/ui/PhotoView;->isAtMinimalScale()Z

    move-result v5

    if-eqz v5, :cond_0

    if-eqz p8, :cond_0

    iget-object v5, p0, Lcom/sec/samsung/gallery/decoder/LargeImage;->mRegionDecoder:Lcom/sec/samsung/gallery/decoder/regiondecoder/RegionDecoder;

    invoke-virtual {v5}, Lcom/sec/samsung/gallery/decoder/regiondecoder/RegionDecoder;->useLTN()V

    :cond_0
    invoke-virtual {p5}, Lcom/sec/android/gallery3d/ui/PhotoView;->getWidth()I

    move-result v4

    invoke-virtual {p5}, Lcom/sec/android/gallery3d/ui/PhotoView;->getHeight()I

    move-result v3

    invoke-static {}, Lcom/sec/android/gallery3d/ui/TileImageView;->getTileSize()I

    move-result v5

    iput v5, p0, Lcom/sec/samsung/gallery/decoder/LargeImage;->mTileSize:I

    iget-object v5, p0, Lcom/sec/samsung/gallery/decoder/LargeImage;->mTileRange:Landroid/graphics/Rect;

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget v8, p0, Lcom/sec/samsung/gallery/decoder/LargeImage;->mImageWidth:I

    iget v9, p0, Lcom/sec/samsung/gallery/decoder/LargeImage;->mImageHeight:I

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    const/4 v5, 0x0

    iget v6, p0, Lcom/sec/samsung/gallery/decoder/LargeImage;->mImageWidth:I

    int-to-float v6, v6

    int-to-float v7, p4

    div-float/2addr v6, v7

    invoke-static {v6}, Lcom/sec/android/gallery3d/common/Utils;->ceilLog2(F)I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    const/4 v5, 0x2

    new-array v5, v5, [I

    iput-object v5, p0, Lcom/sec/samsung/gallery/decoder/LargeImage;->mLevel:[I

    int-to-float v5, v4

    iget v6, p0, Lcom/sec/samsung/gallery/decoder/LargeImage;->mImageWidth:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    int-to-float v6, v3

    iget v7, p0, Lcom/sec/samsung/gallery/decoder/LargeImage;->mImageHeight:I

    int-to-float v7, v7

    div-float/2addr v6, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iget-object v5, p0, Lcom/sec/samsung/gallery/decoder/LargeImage;->mLevel:[I

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    div-float/2addr v7, v1

    invoke-static {v7}, Lcom/sec/android/gallery3d/common/Utils;->floorLog2(F)I

    move-result v7

    const/4 v8, 0x0

    invoke-static {v7, v8, v2}, Lcom/sec/android/gallery3d/common/Utils;->clamp(III)I

    move-result v7

    aput v7, v5, v6

    int-to-float v5, v4

    iget v6, p0, Lcom/sec/samsung/gallery/decoder/LargeImage;->mImageHeight:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    int-to-float v6, v3

    iget v7, p0, Lcom/sec/samsung/gallery/decoder/LargeImage;->mImageWidth:I

    int-to-float v7, v7

    div-float/2addr v6, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iget-object v5, p0, Lcom/sec/samsung/gallery/decoder/LargeImage;->mLevel:[I

    const/4 v6, 0x1

    const/high16 v7, 0x3f800000    # 1.0f

    div-float/2addr v7, v1

    invoke-static {v7}, Lcom/sec/android/gallery3d/common/Utils;->floorLog2(F)I

    move-result v7

    const/4 v8, 0x0

    invoke-static {v7, v8, v2}, Lcom/sec/android/gallery3d/common/Utils;->clamp(III)I

    move-result v7

    aput v7, v5, v6

    const/4 v5, 0x2

    new-array v5, v5, [I

    iput-object v5, p0, Lcom/sec/samsung/gallery/decoder/LargeImage;->mSize:[I

    move-object/from16 v0, p7

    iput-object v0, p0, Lcom/sec/samsung/gallery/decoder/LargeImage;->mLargeImageTilePool:Lcom/sec/samsung/gallery/decoder/LargeImageTilePool;

    return-void
.end method

.method static synthetic access$1000(Lcom/sec/samsung/gallery/decoder/LargeImage;IIII)Landroid/graphics/Bitmap;
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/samsung/gallery/decoder/LargeImage;->getTile(IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lcom/sec/samsung/gallery/decoder/LargeImage;Lcom/sec/samsung/gallery/decoder/LargeImageTile;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/decoder/LargeImage;->queueForUpload(Lcom/sec/samsung/gallery/decoder/LargeImageTile;)V

    return-void
.end method

.method static synthetic access$1200(III)J
    .locals 2

    invoke-static {p0, p1, p2}, Lcom/sec/samsung/gallery/decoder/LargeImage;->makeKey(III)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$1300(Lcom/sec/samsung/gallery/decoder/LargeImage;Lcom/sec/android/gallery3d/util/Future;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/decoder/LargeImage;->updateLargeImage(Lcom/sec/android/gallery3d/util/Future;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/sec/samsung/gallery/decoder/LargeImage;)Lcom/sec/samsung/gallery/decoder/LargeImage$LargeImageTileQueue;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/decoder/LargeImage;->mUploadQueue:Lcom/sec/samsung/gallery/decoder/LargeImage$LargeImageTileQueue;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/sec/samsung/gallery/decoder/LargeImage;)Lcom/sec/android/gallery3d/ui/PhotoView;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/decoder/LargeImage;->mPhotoView:Lcom/sec/android/gallery3d/ui/PhotoView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/samsung/gallery/decoder/LargeImage;)Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/decoder/LargeImage;->mTileRange:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/samsung/gallery/decoder/LargeImage;)I
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/decoder/LargeImage;->mTileSize:I

    return v0
.end method

.method static synthetic access$600(Lcom/sec/samsung/gallery/decoder/LargeImage;)I
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/decoder/LargeImage;->mUploadTileCount:I

    return v0
.end method

.method static synthetic access$602(Lcom/sec/samsung/gallery/decoder/LargeImage;I)I
    .locals 0

    iput p1, p0, Lcom/sec/samsung/gallery/decoder/LargeImage;->mUploadTileCount:I

    return p1
.end method

.method static synthetic access$610(Lcom/sec/samsung/gallery/decoder/LargeImage;)I
    .locals 2

    iget v0, p0, Lcom/sec/samsung/gallery/decoder/LargeImage;->mUploadTileCount:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/sec/samsung/gallery/decoder/LargeImage;->mUploadTileCount:I

    return v0
.end method

.method static synthetic access$700(Lcom/sec/samsung/gallery/decoder/LargeImage;)Lcom/sec/samsung/gallery/decoder/LargeImageTilePool;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/decoder/LargeImage;->mLargeImageTilePool:Lcom/sec/samsung/gallery/decoder/LargeImageTilePool;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sec/samsung/gallery/decoder/LargeImage;Landroid/util/LongSparseArray;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/decoder/LargeImage;->clearDecodedTiles(Landroid/util/LongSparseArray;)V

    return-void
.end method

.method static synthetic access$900(Lcom/sec/samsung/gallery/decoder/LargeImage;)Lcom/sec/samsung/gallery/decoder/DecoderInterface;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/decoder/LargeImage;->mDecoderInterface:Lcom/sec/samsung/gallery/decoder/DecoderInterface;

    return-object v0
.end method

.method private cleanUp()V
    .locals 2

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/decoder/LargeImage;->mNeedClear:Z

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/decoder/LargeImage;->mDecodingStarted:Z

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/decoder/LargeImage;->mDecodingComplete:Z

    invoke-direct {p0}, Lcom/sec/samsung/gallery/decoder/LargeImage;->freeTiles()V

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/decoder/LargeImage;->mUploadingComplete:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/sec/samsung/gallery/decoder/LargeImage;->mDecodingStarted:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/decoder/LargeImage;->mDecodingComplete:Z

    if-nez v0, :cond_0

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/decoder/LargeImage;->mDecodingStarted:Z

    invoke-direct {p0}, Lcom/sec/samsung/gallery/decoder/LargeImage;->freeTiles()V

    goto :goto_0
.end method

.method private clearDecodedTiles(Landroid/util/LongSparseArray;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/LongSparseArray",
            "<",
            "Lcom/sec/samsung/gallery/decoder/LargeImageTile;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/sec/samsung/gallery/decoder/LargeImage;->cleanUp()V

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p1}, Landroid/util/LongSparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    invoke-virtual {p1, v0}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/samsung/gallery/decoder/LargeImageTile;

    if-eqz v1, :cond_2

    iget-object v2, v1, Lcom/sec/samsung/gallery/decoder/LargeImageTile;->mDecodedTile:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_1

    iget-object v2, v1, Lcom/sec/samsung/gallery/decoder/LargeImageTile;->mDecodedTile:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/decoder/LargeImageTile;->onFreeBitmap(Landroid/graphics/Bitmap;)V

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/sec/samsung/gallery/decoder/LargeImageTile;->mDecodedTile:Landroid/graphics/Bitmap;

    :cond_1
    invoke-virtual {v1}, Lcom/sec/samsung/gallery/decoder/LargeImageTile;->recycle()V

    const/4 v2, 0x4

    iput v2, v1, Lcom/sec/samsung/gallery/decoder/LargeImageTile;->mTileState:I

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Landroid/util/LongSparseArray;->clear()V

    goto :goto_0
.end method

.method private fillTileList()V
    .locals 11

    const/4 v3, 0x0

    iput v3, p0, Lcom/sec/samsung/gallery/decoder/LargeImage;->mUploadTileCount:I

    iget-object v8, p0, Lcom/sec/samsung/gallery/decoder/LargeImage;->mTileRange:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/sec/samsung/gallery/decoder/LargeImage;->mLevel:[I

    aget v0, v0, v3

    iget-object v4, p0, Lcom/sec/samsung/gallery/decoder/LargeImage;->mLevel:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v7

    iget v0, p0, Lcom/sec/samsung/gallery/decoder/LargeImage;->mTileSize:I

    shl-int v9, v0, v7

    iget v2, v8, Landroid/graphics/Rect;->top:I

    :goto_0
    iget v0, v8, Landroid/graphics/Rect;->bottom:I

    if-ge v2, v0, :cond_1

    iget v1, v8, Landroid/graphics/Rect;->left:I

    :goto_1
    iget v0, v8, Landroid/graphics/Rect;->right:I

    if-ge v1, v0, :cond_0

    iget-object v10, p0, Lcom/sec/samsung/gallery/decoder/LargeImage;->mTileList:Ljava/util/ArrayList;

    new-instance v0, Lcom/sec/samsung/gallery/decoder/LargeImageTile;

    move v4, v3

    move v5, v3

    move v6, v3

    invoke-direct/range {v0 .. v7}, Lcom/sec/samsung/gallery/decoder/LargeImageTile;-><init>(IIIIIII)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v0, p0, Lcom/sec/samsung/gallery/decoder/LargeImage;->mUploadTileCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/samsung/gallery/decoder/LargeImage;->mUploadTileCount:I

    add-int/2addr v1, v9

    goto :goto_1

    :cond_0
    add-int/2addr v2, v9

    goto :goto_0

    :cond_1
    return-void
.end method

.method private freeTiles()V
    .locals 2

    iget-object v1, p0, Lcom/sec/samsung/gallery/decoder/LargeImage;->mUploadQueue:Lcom/sec/samsung/gallery/decoder/LargeImage$LargeImageTileQueue;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/decoder/LargeImage;->mUploadQueue:Lcom/sec/samsung/gallery/decoder/LargeImage$LargeImageTileQueue;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/decoder/LargeImage$LargeImageTileQueue;->clean()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private getTile(IIII)Landroid/graphics/Bitmap;
    .locals 9

    const/4 v8, 0x0

    sget-boolean v2, Lcom/sec/android/gallery3d/common/ApiHelper;->HAS_REUSING_BITMAP_IN_BITMAP_REGION_DECODER:Z

    if-nez v2, :cond_1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/samsung/gallery/decoder/LargeImage;->getTileWithoutReusingBitmap(IIII)Landroid/graphics/Bitmap;

    move-result-object v6

    :cond_0
    :goto_0
    return-object v6

    :cond_1
    shl-int v7, p4, p3

    new-instance v1, Landroid/graphics/Rect;

    add-int v2, p1, v7

    add-int v3, p2, v7

    invoke-direct {v1, p1, p2, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/decoder/LargeImage;->mRegionDecoder:Lcom/sec/samsung/gallery/decoder/regiondecoder/RegionDecoder;

    if-nez v0, :cond_2

    monitor-exit p0

    move-object v6, v8

    goto :goto_0

    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-enter v0

    :try_start_1
    iget v2, p0, Lcom/sec/samsung/gallery/decoder/LargeImage;->mImageWidth:I

    iget v3, p0, Lcom/sec/samsung/gallery/decoder/LargeImage;->mImageHeight:I

    move v4, p4

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/sec/samsung/gallery/decoder/regiondecoder/RegionDecoder;->decodeRegionEx(Landroid/graphics/Rect;IIII)Landroid/graphics/Bitmap;

    move-result-object v6

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v6, :cond_0

    const-string/jumbo v2, "LargeImage"

    const-string/jumbo v3, "fail in decoding region"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v6, v8

    goto :goto_0

    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    :catchall_1
    move-exception v2

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2
.end method

.method private getTileWithoutReusingBitmap(IIII)Landroid/graphics/Bitmap;
    .locals 14

    shl-int v8, p4, p3

    new-instance v9, Landroid/graphics/Rect;

    add-int v10, p1, v8

    add-int v11, p2, v8

    move/from16 v0, p2

    invoke-direct {v9, p1, v0, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    monitor-enter p0

    :try_start_0
    iget-object v6, p0, Lcom/sec/samsung/gallery/decoder/LargeImage;->mRegionDecoder:Lcom/sec/samsung/gallery/decoder/regiondecoder/RegionDecoder;

    if-nez v6, :cond_1

    const/4 v2, 0x0

    monitor-exit p0

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v5, Landroid/graphics/Rect;

    const/4 v10, 0x0

    const/4 v11, 0x0

    iget v12, p0, Lcom/sec/samsung/gallery/decoder/LargeImage;->mImageWidth:I

    iget v13, p0, Lcom/sec/samsung/gallery/decoder/LargeImage;->mImageHeight:I

    invoke-direct {v5, v10, v11, v12, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v5, v9}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v10

    invoke-static {v10}, Lcom/sec/android/gallery3d/common/Utils;->assertTrue(Z)V

    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v10, v4, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    const/4 v10, 0x1

    iput-boolean v10, v4, Landroid/graphics/BitmapFactory$Options;->inPreferQualityOverSpeed:Z

    const/4 v10, 0x1

    shl-int v10, v10, p3

    iput v10, v4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    monitor-enter v6

    :try_start_1
    invoke-virtual {v6, v5, v4}, Lcom/sec/samsung/gallery/decoder/regiondecoder/RegionDecoder;->decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v2, :cond_2

    const-string/jumbo v10, "LargeImage"

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

    shr-int v10, v10, p3

    int-to-float v10, v10

    iget v11, v5, Landroid/graphics/Rect;->top:I

    iget v12, v9, Landroid/graphics/Rect;->top:I

    sub-int/2addr v11, v12

    shr-int v11, v11, p3

    int-to-float v11, v11

    const/4 v12, 0x0

    invoke-virtual {v3, v2, v10, v11, v12}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    move-object v2, v7

    goto :goto_0
.end method

.method private static makeKey(III)J
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

.method private queueForUpload(Lcom/sec/samsung/gallery/decoder/LargeImageTile;)V
    .locals 3

    iget-object v1, p0, Lcom/sec/samsung/gallery/decoder/LargeImage;->mUploadQueue:Lcom/sec/samsung/gallery/decoder/LargeImage$LargeImageTileQueue;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/decoder/LargeImage;->mUploadQueue:Lcom/sec/samsung/gallery/decoder/LargeImage$LargeImageTileQueue;

    invoke-virtual {v0, p1}, Lcom/sec/samsung/gallery/decoder/LargeImage$LargeImageTileQueue;->push(Lcom/sec/samsung/gallery/decoder/LargeImageTile;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/decoder/LargeImage;->mTileUploader:Lcom/sec/samsung/gallery/decoder/LargeImage$LargeImageTileUploader;

    iget-object v0, v0, Lcom/sec/samsung/gallery/decoder/LargeImage$LargeImageTileUploader;->mActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/decoder/LargeImage;->mPhotoView:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/PhotoView;->getGLRoot()Lcom/sec/android/gallery3d/ui/GLRoot;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/decoder/LargeImage;->mTileUploader:Lcom/sec/samsung/gallery/decoder/LargeImage$LargeImageTileUploader;

    invoke-interface {v0, v1}, Lcom/sec/android/gallery3d/ui/GLRoot;->addOnGLIdleListener(Lcom/sec/android/gallery3d/ui/GLRoot$OnGLIdleListener;)V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private updateLargeImage(Lcom/sec/android/gallery3d/util/Future;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/gallery3d/util/Future",
            "<",
            "Landroid/util/LongSparseArray",
            "<",
            "Lcom/sec/samsung/gallery/decoder/LargeImageTile;",
            ">;>;)V"
        }
    .end annotation

    const/4 v5, 0x0

    const/4 v4, 0x1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/decoder/LargeImage;->mNeedClear:Z

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lcom/sec/android/gallery3d/util/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/LongSparseArray;

    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/decoder/LargeImage;->clearDecodedTiles(Landroid/util/LongSparseArray;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-interface {p1}, Lcom/sec/android/gallery3d/util/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/LongSparseArray;

    iput-object v0, p0, Lcom/sec/samsung/gallery/decoder/LargeImage;->mDecodedTileList:Landroid/util/LongSparseArray;

    iget-object v0, p0, Lcom/sec/samsung/gallery/decoder/LargeImage;->mDecodedTileList:Landroid/util/LongSparseArray;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/decoder/LargeImage;->mSize:[I

    iget v1, p0, Lcom/sec/samsung/gallery/decoder/LargeImage;->mImageHeight:I

    iget v2, p0, Lcom/sec/samsung/gallery/decoder/LargeImage;->mImageWidth:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/decoder/LargeImage;->mLevel:[I

    aget v2, v2, v5

    iget-object v3, p0, Lcom/sec/samsung/gallery/decoder/LargeImage;->mLevel:[I

    aget v3, v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    shl-int v2, v4, v2

    div-int/2addr v1, v2

    aput v1, v0, v5

    iget-object v0, p0, Lcom/sec/samsung/gallery/decoder/LargeImage;->mSize:[I

    iget v1, p0, Lcom/sec/samsung/gallery/decoder/LargeImage;->mImageHeight:I

    iget v2, p0, Lcom/sec/samsung/gallery/decoder/LargeImage;->mImageWidth:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/decoder/LargeImage;->mLevel:[I

    aget v2, v2, v5

    iget-object v3, p0, Lcom/sec/samsung/gallery/decoder/LargeImage;->mLevel:[I

    aget v3, v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    shl-int v2, v4, v2

    div-int/2addr v1, v2

    aput v1, v0, v4

    iput-boolean v4, p0, Lcom/sec/samsung/gallery/decoder/LargeImage;->mDecodingComplete:Z

    iget-object v0, p0, Lcom/sec/samsung/gallery/decoder/LargeImage;->mPhotoView:Lcom/sec/android/gallery3d/ui/PhotoView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/decoder/LargeImage;->mPhotoDataAdapter:Lcom/sec/android/gallery3d/app/PhotoDataAdapter;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->getCurrentMediaItem()Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/decoder/LargeImage;->mItem:Lcom/sec/android/gallery3d/data/MediaItem;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/decoder/LargeImage;->mDecoderInterface:Lcom/sec/samsung/gallery/decoder/DecoderInterface;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/decoder/DecoderInterface;->prepareAlphablendingAnimation()V

    goto :goto_0
.end method


# virtual methods
.method public decode()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/sec/samsung/gallery/decoder/LargeImage;->mItem:Lcom/sec/android/gallery3d/data/MediaItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/decoder/LargeImage;->mDecodedTileList:Landroid/util/LongSparseArray;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/decoder/LargeImage;->mDecodingStarted:Z

    iget-object v0, p0, Lcom/sec/samsung/gallery/decoder/LargeImage;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v0}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getAppContext()Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;->getThreadPool()Lcom/sec/android/gallery3d/util/ThreadPool;

    move-result-object v0

    new-instance v1, Lcom/sec/samsung/gallery/decoder/LargeImage$LargeImageJob;

    invoke-direct {v1, p0, v3}, Lcom/sec/samsung/gallery/decoder/LargeImage$LargeImageJob;-><init>(Lcom/sec/samsung/gallery/decoder/LargeImage;Lcom/sec/samsung/gallery/decoder/LargeImage$1;)V

    new-instance v2, Lcom/sec/samsung/gallery/decoder/LargeImage$LargeImageListener;

    invoke-direct {v2, p0, v3}, Lcom/sec/samsung/gallery/decoder/LargeImage$LargeImageListener;-><init>(Lcom/sec/samsung/gallery/decoder/LargeImage;Lcom/sec/samsung/gallery/decoder/LargeImage$1;)V

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/util/ThreadPool;->submit(Lcom/sec/android/gallery3d/util/ThreadPool$Job;Lcom/sec/android/gallery3d/util/FutureListener;)Lcom/sec/android/gallery3d/util/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/decoder/LargeImage;->largeImageTask:Lcom/sec/android/gallery3d/util/Future;

    :cond_0
    return-void
.end method

.method public isLocalImage()Z
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/decoder/LargeImage;->mItem:Lcom/sec/android/gallery3d/data/MediaItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/decoder/LargeImage;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v0}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getModel()Lcom/sec/android/gallery3d/interfaces/LibraryModel;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/decoder/LargeImage;->mItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-interface {v0, v1}, Lcom/sec/android/gallery3d/interfaces/LibraryModel;->isLocalImage(Lcom/sec/android/gallery3d/data/MediaItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public stopDecodeThread(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/sec/samsung/gallery/decoder/LargeImage;->mNeedClear:Z

    iget-object v0, p0, Lcom/sec/samsung/gallery/decoder/LargeImage;->largeImageTask:Lcom/sec/android/gallery3d/util/Future;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/decoder/LargeImage;->mRegionDecoder:Lcom/sec/samsung/gallery/decoder/regiondecoder/RegionDecoder;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/decoder/LargeImage;->mNeedClear:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/decoder/LargeImage;->mRegionDecoder:Lcom/sec/samsung/gallery/decoder/regiondecoder/RegionDecoder;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/decoder/regiondecoder/RegionDecoder;->requestCancelDecode()V

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/decoder/LargeImage;->largeImageTask:Lcom/sec/android/gallery3d/util/Future;

    invoke-interface {v0}, Lcom/sec/android/gallery3d/util/Future;->cancel()V

    :cond_1
    iget-boolean v0, p0, Lcom/sec/samsung/gallery/decoder/LargeImage;->mNeedClear:Z

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/sec/samsung/gallery/decoder/LargeImage;->mDecodeLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/decoder/LargeImage;->mDecodedTileList:Landroid/util/LongSparseArray;

    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/decoder/LargeImage;->clearDecodedTiles(Landroid/util/LongSparseArray;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/samsung/gallery/decoder/LargeImage;->mDecodedTileList:Landroid/util/LongSparseArray;

    monitor-exit v1

    :cond_2
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
