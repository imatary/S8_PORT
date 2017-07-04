.class public Lcom/sec/android/gallery3d/glrenderer/TiledTexture;
.super Ljava/lang/Object;
.source "TiledTexture.java"

# interfaces
.implements Lcom/sec/android/gallery3d/glrenderer/Texture;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/gallery3d/glrenderer/TiledTexture$TiledTextureResources;,
        Lcom/sec/android/gallery3d/glrenderer/TiledTexture$Tile;,
        Lcom/sec/android/gallery3d/glrenderer/TiledTexture$Uploader;
    }
.end annotation


# static fields
.field private static final BORDER_SIZE:I = 0x1

.field private static final CONTENT_SIZE:I = 0xfe

.field private static final INIT_CAPACITY:I = 0x8

.field private static final TILE_SIZE:I = 0x100

.field private static final UPLOAD_TILE_LIMIT:J = 0x4L


# instance fields
.field private final mDestRect:Landroid/graphics/RectF;

.field private final mHeight:I

.field private final mSrcRect:Landroid/graphics/RectF;

.field private final mTiles:[Lcom/sec/android/gallery3d/glrenderer/TiledTexture$Tile;

.field private mUploadIndex:I

.field private final mWidth:I

.field private sBitmapPaint:Landroid/graphics/Paint;

.field private sCanvas:Landroid/graphics/Canvas;

.field private sFreeTileHead:Lcom/sec/android/gallery3d/glrenderer/TiledTexture$Tile;

.field private final sFreeTileLock:Ljava/lang/Object;

.field private sPaint:Landroid/graphics/Paint;

.field private sUploadBitmap:Landroid/graphics/Bitmap;


# direct methods
.method private constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 9

    const/16 v8, 0xfe

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v6, 0x0

    iput-object v6, p0, Lcom/sec/android/gallery3d/glrenderer/TiledTexture;->sFreeTileHead:Lcom/sec/android/gallery3d/glrenderer/TiledTexture$Tile;

    new-instance v6, Ljava/lang/Object;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    iput-object v6, p0, Lcom/sec/android/gallery3d/glrenderer/TiledTexture;->sFreeTileLock:Ljava/lang/Object;

    const/4 v6, 0x0

    iput v6, p0, Lcom/sec/android/gallery3d/glrenderer/TiledTexture;->mUploadIndex:I

    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {v6}, Landroid/graphics/RectF;-><init>()V

    iput-object v6, p0, Lcom/sec/android/gallery3d/glrenderer/TiledTexture;->mSrcRect:Landroid/graphics/RectF;

    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {v6}, Landroid/graphics/RectF;-><init>()V

    iput-object v6, p0, Lcom/sec/android/gallery3d/glrenderer/TiledTexture;->mDestRect:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    iput v6, p0, Lcom/sec/android/gallery3d/glrenderer/TiledTexture;->mWidth:I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    iput v6, p0, Lcom/sec/android/gallery3d/glrenderer/TiledTexture;->mHeight:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    iget v3, p0, Lcom/sec/android/gallery3d/glrenderer/TiledTexture;->mWidth:I

    :goto_0
    if-ge v4, v3, :cond_1

    const/4 v5, 0x0

    iget v0, p0, Lcom/sec/android/gallery3d/glrenderer/TiledTexture;->mHeight:I

    :goto_1
    if-ge v5, v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/gallery3d/glrenderer/TiledTexture;->obtainTile()Lcom/sec/android/gallery3d/glrenderer/TiledTexture$Tile;

    move-result-object v2

    iput v4, v2, Lcom/sec/android/gallery3d/glrenderer/TiledTexture$Tile;->offsetX:I

    iput v5, v2, Lcom/sec/android/gallery3d/glrenderer/TiledTexture$Tile;->offsetY:I

    iput-object p1, v2, Lcom/sec/android/gallery3d/glrenderer/TiledTexture$Tile;->bitmap:Landroid/graphics/Bitmap;

    iget v6, p0, Lcom/sec/android/gallery3d/glrenderer/TiledTexture;->mWidth:I

    sub-int/2addr v6, v4

    invoke-static {v8, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    iget v7, p0, Lcom/sec/android/gallery3d/glrenderer/TiledTexture;->mHeight:I

    sub-int/2addr v7, v5

    invoke-static {v8, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-virtual {v2, v6, v7}, Lcom/sec/android/gallery3d/glrenderer/TiledTexture$Tile;->setSize(II)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit16 v5, v5, 0xfe

    goto :goto_1

    :cond_0
    add-int/lit16 v4, v4, 0xfe

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Lcom/sec/android/gallery3d/glrenderer/TiledTexture$Tile;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Lcom/sec/android/gallery3d/glrenderer/TiledTexture$Tile;

    iput-object v6, p0, Lcom/sec/android/gallery3d/glrenderer/TiledTexture;->mTiles:[Lcom/sec/android/gallery3d/glrenderer/TiledTexture$Tile;

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;Lcom/sec/android/gallery3d/glrenderer/TiledTexture$TiledTextureResources;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/glrenderer/TiledTexture;-><init>(Landroid/graphics/Bitmap;)V

    invoke-static {p2}, Lcom/sec/android/gallery3d/glrenderer/TiledTexture$TiledTextureResources;->access$600(Lcom/sec/android/gallery3d/glrenderer/TiledTexture$TiledTextureResources;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/glrenderer/TiledTexture;->sUploadBitmap:Landroid/graphics/Bitmap;

    invoke-static {p2}, Lcom/sec/android/gallery3d/glrenderer/TiledTexture$TiledTextureResources;->access$700(Lcom/sec/android/gallery3d/glrenderer/TiledTexture$TiledTextureResources;)Landroid/graphics/Canvas;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/glrenderer/TiledTexture;->sCanvas:Landroid/graphics/Canvas;

    invoke-static {p2}, Lcom/sec/android/gallery3d/glrenderer/TiledTexture$TiledTextureResources;->access$800(Lcom/sec/android/gallery3d/glrenderer/TiledTexture$TiledTextureResources;)Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/glrenderer/TiledTexture;->sBitmapPaint:Landroid/graphics/Paint;

    invoke-static {p2}, Lcom/sec/android/gallery3d/glrenderer/TiledTexture$TiledTextureResources;->access$900(Lcom/sec/android/gallery3d/glrenderer/TiledTexture$TiledTextureResources;)Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/glrenderer/TiledTexture;->sPaint:Landroid/graphics/Paint;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/gallery3d/glrenderer/TiledTexture;Lcom/sec/android/gallery3d/glrenderer/GLCanvas;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/glrenderer/TiledTexture;->uploadNextTile(Lcom/sec/android/gallery3d/glrenderer/GLCanvas;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/sec/android/gallery3d/glrenderer/TiledTexture;)Landroid/graphics/Canvas;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/glrenderer/TiledTexture;->sCanvas:Landroid/graphics/Canvas;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/gallery3d/glrenderer/TiledTexture;)Landroid/graphics/Paint;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/glrenderer/TiledTexture;->sBitmapPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/gallery3d/glrenderer/TiledTexture;)Landroid/graphics/Paint;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/glrenderer/TiledTexture;->sPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/gallery3d/glrenderer/TiledTexture;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/glrenderer/TiledTexture;->sUploadBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method private freeTile(Lcom/sec/android/gallery3d/glrenderer/TiledTexture$Tile;)V
    .locals 2

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/glrenderer/TiledTexture$Tile;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/sec/android/gallery3d/glrenderer/TiledTexture$Tile;->bitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/sec/android/gallery3d/glrenderer/TiledTexture;->sFreeTileLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/glrenderer/TiledTexture;->sFreeTileHead:Lcom/sec/android/gallery3d/glrenderer/TiledTexture$Tile;

    iput-object v0, p1, Lcom/sec/android/gallery3d/glrenderer/TiledTexture$Tile;->nextFreeTile:Lcom/sec/android/gallery3d/glrenderer/TiledTexture$Tile;

    iput-object p1, p0, Lcom/sec/android/gallery3d/glrenderer/TiledTexture;->sFreeTileHead:Lcom/sec/android/gallery3d/glrenderer/TiledTexture$Tile;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;FFFFFF)V
    .locals 4

    iget v0, p1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, p2

    mul-float/2addr v0, p6

    add-float/2addr v0, p4

    iget v1, p1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v1, p3

    mul-float/2addr v1, p7

    add-float/2addr v1, p5

    iget v2, p1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v2, p2

    mul-float/2addr v2, p6

    add-float/2addr v2, p4

    iget v3, p1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v3, p3

    mul-float/2addr v3, p7

    add-float/2addr v3, p5

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method

.method private obtainTile()Lcom/sec/android/gallery3d/glrenderer/TiledTexture$Tile;
    .locals 3

    iget-object v2, p0, Lcom/sec/android/gallery3d/glrenderer/TiledTexture;->sFreeTileLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/glrenderer/TiledTexture;->sFreeTileHead:Lcom/sec/android/gallery3d/glrenderer/TiledTexture$Tile;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/gallery3d/glrenderer/TiledTexture$Tile;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/android/gallery3d/glrenderer/TiledTexture$Tile;-><init>(Lcom/sec/android/gallery3d/glrenderer/TiledTexture;Lcom/sec/android/gallery3d/glrenderer/TiledTexture$1;)V

    monitor-exit v2

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, v0, Lcom/sec/android/gallery3d/glrenderer/TiledTexture$Tile;->nextFreeTile:Lcom/sec/android/gallery3d/glrenderer/TiledTexture$Tile;

    iput-object v1, p0, Lcom/sec/android/gallery3d/glrenderer/TiledTexture;->sFreeTileHead:Lcom/sec/android/gallery3d/glrenderer/TiledTexture$Tile;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/sec/android/gallery3d/glrenderer/TiledTexture$Tile;->nextFreeTile:Lcom/sec/android/gallery3d/glrenderer/TiledTexture$Tile;

    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private uploadNextTile(Lcom/sec/android/gallery3d/glrenderer/GLCanvas;)Z
    .locals 6

    const/4 v1, 0x1

    iget v2, p0, Lcom/sec/android/gallery3d/glrenderer/TiledTexture;->mUploadIndex:I

    iget-object v3, p0, Lcom/sec/android/gallery3d/glrenderer/TiledTexture;->mTiles:[Lcom/sec/android/gallery3d/glrenderer/TiledTexture$Tile;

    array-length v3, v3

    if-ne v2, v3, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-object v2, p0, Lcom/sec/android/gallery3d/glrenderer/TiledTexture;->mTiles:[Lcom/sec/android/gallery3d/glrenderer/TiledTexture$Tile;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lcom/sec/android/gallery3d/glrenderer/TiledTexture;->mTiles:[Lcom/sec/android/gallery3d/glrenderer/TiledTexture$Tile;

    iget v4, p0, Lcom/sec/android/gallery3d/glrenderer/TiledTexture;->mUploadIndex:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/sec/android/gallery3d/glrenderer/TiledTexture;->mUploadIndex:I

    aget-object v0, v3, v4

    iget-object v3, v0, Lcom/sec/android/gallery3d/glrenderer/TiledTexture$Tile;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_2

    invoke-virtual {v0, p1}, Lcom/sec/android/gallery3d/glrenderer/TiledTexture$Tile;->updateContent(Lcom/sec/android/gallery3d/glrenderer/GLCanvas;)V

    :cond_2
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget v2, p0, Lcom/sec/android/gallery3d/glrenderer/TiledTexture;->mUploadIndex:I

    iget-object v3, p0, Lcom/sec/android/gallery3d/glrenderer/TiledTexture;->mTiles:[Lcom/sec/android/gallery3d/glrenderer/TiledTexture$Tile;

    array-length v3, v3

    if-eq v2, v3, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public draw(Lcom/sec/android/gallery3d/glrenderer/GLCanvas;II)V
    .locals 6

    iget v4, p0, Lcom/sec/android/gallery3d/glrenderer/TiledTexture;->mWidth:I

    iget v5, p0, Lcom/sec/android/gallery3d/glrenderer/TiledTexture;->mHeight:I

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/gallery3d/glrenderer/TiledTexture;->draw(Lcom/sec/android/gallery3d/glrenderer/GLCanvas;IIII)V

    return-void
.end method

.method public draw(Lcom/sec/android/gallery3d/glrenderer/GLCanvas;IIII)V
    .locals 13

    iget-object v2, p0, Lcom/sec/android/gallery3d/glrenderer/TiledTexture;->mSrcRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/sec/android/gallery3d/glrenderer/TiledTexture;->mDestRect:Landroid/graphics/RectF;

    move/from16 v0, p4

    int-to-float v3, v0

    iget v4, p0, Lcom/sec/android/gallery3d/glrenderer/TiledTexture;->mWidth:I

    int-to-float v4, v4

    div-float v7, v3, v4

    move/from16 v0, p5

    int-to-float v3, v0

    iget v4, p0, Lcom/sec/android/gallery3d/glrenderer/TiledTexture;->mHeight:I

    int-to-float v4, v4

    div-float v8, v3, v4

    iget-object v12, p0, Lcom/sec/android/gallery3d/glrenderer/TiledTexture;->mTiles:[Lcom/sec/android/gallery3d/glrenderer/TiledTexture$Tile;

    monitor-enter v12

    const/4 v9, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/sec/android/gallery3d/glrenderer/TiledTexture;->mTiles:[Lcom/sec/android/gallery3d/glrenderer/TiledTexture$Tile;

    array-length v10, v3

    :goto_0
    if-ge v9, v10, :cond_0

    iget-object v3, p0, Lcom/sec/android/gallery3d/glrenderer/TiledTexture;->mTiles:[Lcom/sec/android/gallery3d/glrenderer/TiledTexture$Tile;

    aget-object v11, v3, v9

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget v5, v11, Lcom/sec/android/gallery3d/glrenderer/TiledTexture$Tile;->contentWidth:I

    int-to-float v5, v5

    iget v6, v11, Lcom/sec/android/gallery3d/glrenderer/TiledTexture$Tile;->contentHeight:I

    int-to-float v6, v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    iget v3, v11, Lcom/sec/android/gallery3d/glrenderer/TiledTexture$Tile;->offsetX:I

    int-to-float v3, v3

    iget v4, v11, Lcom/sec/android/gallery3d/glrenderer/TiledTexture$Tile;->offsetY:I

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/RectF;->offset(FF)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    int-to-float v5, p2

    move/from16 v0, p3

    int-to-float v6, v0

    invoke-static/range {v1 .. v8}, Lcom/sec/android/gallery3d/glrenderer/TiledTexture;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;FFFFFF)V

    iget v3, v11, Lcom/sec/android/gallery3d/glrenderer/TiledTexture$Tile;->offsetX:I

    rsub-int/lit8 v3, v3, 0x1

    int-to-float v3, v3

    iget v4, v11, Lcom/sec/android/gallery3d/glrenderer/TiledTexture$Tile;->offsetY:I

    rsub-int/lit8 v4, v4, 0x1

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/RectF;->offset(FF)V

    iget-object v3, p0, Lcom/sec/android/gallery3d/glrenderer/TiledTexture;->mSrcRect:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/sec/android/gallery3d/glrenderer/TiledTexture;->mDestRect:Landroid/graphics/RectF;

    invoke-interface {p1, v11, v3, v4}, Lcom/sec/android/gallery3d/glrenderer/GLCanvas;->drawTexture(Lcom/sec/android/gallery3d/glrenderer/BasicTexture;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_0
    monitor-exit v12

    return-void

    :catchall_0
    move-exception v3

    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public draw(Lcom/sec/android/gallery3d/glrenderer/GLCanvas;Landroid/graphics/RectF;Landroid/graphics/RectF;)V
    .locals 17

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/glrenderer/TiledTexture;->mSrcRect:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/gallery3d/glrenderer/TiledTexture;->mDestRect:Landroid/graphics/RectF;

    move-object/from16 v0, p2

    iget v3, v0, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p2

    iget v4, v0, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p3

    iget v5, v0, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p3

    iget v6, v0, Landroid/graphics/RectF;->top:F

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/RectF;->width()F

    move-result v12

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->width()F

    move-result v13

    div-float v7, v12, v13

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/RectF;->height()F

    move-result v12

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->height()F

    move-result v13

    div-float v8, v12, v13

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/gallery3d/glrenderer/TiledTexture;->mTiles:[Lcom/sec/android/gallery3d/glrenderer/TiledTexture$Tile;

    monitor-enter v13

    const/4 v9, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/gallery3d/glrenderer/TiledTexture;->mTiles:[Lcom/sec/android/gallery3d/glrenderer/TiledTexture$Tile;

    array-length v10, v12

    :goto_0
    if-ge v9, v10, :cond_1

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/gallery3d/glrenderer/TiledTexture;->mTiles:[Lcom/sec/android/gallery3d/glrenderer/TiledTexture$Tile;

    aget-object v11, v12, v9

    const/4 v12, 0x0

    const/4 v14, 0x0

    iget v15, v11, Lcom/sec/android/gallery3d/glrenderer/TiledTexture$Tile;->contentWidth:I

    int-to-float v15, v15

    iget v0, v11, Lcom/sec/android/gallery3d/glrenderer/TiledTexture$Tile;->contentHeight:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v2, v12, v14, v15, v0}, Landroid/graphics/RectF;->set(FFFF)V

    iget v12, v11, Lcom/sec/android/gallery3d/glrenderer/TiledTexture$Tile;->offsetX:I

    int-to-float v12, v12

    iget v14, v11, Lcom/sec/android/gallery3d/glrenderer/TiledTexture$Tile;->offsetY:I

    int-to-float v14, v14

    invoke-virtual {v2, v12, v14}, Landroid/graphics/RectF;->offset(FF)V

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Landroid/graphics/RectF;->intersect(Landroid/graphics/RectF;)Z

    move-result v12

    if-nez v12, :cond_0

    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_0
    invoke-static/range {v1 .. v8}, Lcom/sec/android/gallery3d/glrenderer/TiledTexture;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;FFFFFF)V

    iget v12, v11, Lcom/sec/android/gallery3d/glrenderer/TiledTexture$Tile;->offsetX:I

    rsub-int/lit8 v12, v12, 0x1

    int-to-float v12, v12

    iget v14, v11, Lcom/sec/android/gallery3d/glrenderer/TiledTexture$Tile;->offsetY:I

    rsub-int/lit8 v14, v14, 0x1

    int-to-float v14, v14

    invoke-virtual {v2, v12, v14}, Landroid/graphics/RectF;->offset(FF)V

    move-object/from16 v0, p1

    invoke-interface {v0, v11, v2, v1}, Lcom/sec/android/gallery3d/glrenderer/GLCanvas;->drawTexture(Lcom/sec/android/gallery3d/glrenderer/BasicTexture;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    goto :goto_1

    :catchall_0
    move-exception v12

    monitor-exit v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v12

    :cond_1
    :try_start_1
    monitor-exit v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public drawMixed(Lcom/sec/android/gallery3d/glrenderer/GLCanvas;IFIIII)V
    .locals 18

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/glrenderer/TiledTexture;->mSrcRect:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/gallery3d/glrenderer/TiledTexture;->mDestRect:Landroid/graphics/RectF;

    move/from16 v0, p6

    int-to-float v3, v0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/gallery3d/glrenderer/TiledTexture;->mWidth:I

    int-to-float v4, v4

    div-float v7, v3, v4

    move/from16 v0, p7

    int-to-float v3, v0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/gallery3d/glrenderer/TiledTexture;->mHeight:I

    int-to-float v4, v4

    div-float v8, v3, v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/glrenderer/TiledTexture;->mTiles:[Lcom/sec/android/gallery3d/glrenderer/TiledTexture$Tile;

    move-object/from16 v17, v0

    monitor-enter v17

    const/4 v15, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/gallery3d/glrenderer/TiledTexture;->mTiles:[Lcom/sec/android/gallery3d/glrenderer/TiledTexture$Tile;

    array-length v0, v3

    move/from16 v16, v0

    :goto_0
    move/from16 v0, v16

    if-ge v15, v0, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/gallery3d/glrenderer/TiledTexture;->mTiles:[Lcom/sec/android/gallery3d/glrenderer/TiledTexture$Tile;

    aget-object v10, v3, v15

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget v5, v10, Lcom/sec/android/gallery3d/glrenderer/TiledTexture$Tile;->contentWidth:I

    int-to-float v5, v5

    iget v6, v10, Lcom/sec/android/gallery3d/glrenderer/TiledTexture$Tile;->contentHeight:I

    int-to-float v6, v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    iget v3, v10, Lcom/sec/android/gallery3d/glrenderer/TiledTexture$Tile;->offsetX:I

    int-to-float v3, v3

    iget v4, v10, Lcom/sec/android/gallery3d/glrenderer/TiledTexture$Tile;->offsetY:I

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/RectF;->offset(FF)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    move/from16 v0, p4

    int-to-float v5, v0

    move/from16 v0, p5

    int-to-float v6, v0

    invoke-static/range {v1 .. v8}, Lcom/sec/android/gallery3d/glrenderer/TiledTexture;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;FFFFFF)V

    iget v3, v10, Lcom/sec/android/gallery3d/glrenderer/TiledTexture$Tile;->offsetX:I

    rsub-int/lit8 v3, v3, 0x1

    int-to-float v3, v3

    iget v4, v10, Lcom/sec/android/gallery3d/glrenderer/TiledTexture$Tile;->offsetY:I

    rsub-int/lit8 v4, v4, 0x1

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/RectF;->offset(FF)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/gallery3d/glrenderer/TiledTexture;->mSrcRect:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/gallery3d/glrenderer/TiledTexture;->mDestRect:Landroid/graphics/RectF;

    move-object/from16 v9, p1

    move/from16 v11, p2

    move/from16 v12, p3

    invoke-interface/range {v9 .. v14}, Lcom/sec/android/gallery3d/glrenderer/GLCanvas;->drawMixed(Lcom/sec/android/gallery3d/glrenderer/BasicTexture;IFLandroid/graphics/RectF;Landroid/graphics/RectF;)V

    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    :cond_0
    monitor-exit v17

    return-void

    :catchall_0
    move-exception v3

    monitor-exit v17
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public getHeight()I
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/glrenderer/TiledTexture;->mHeight:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/glrenderer/TiledTexture;->mWidth:I

    return v0
.end method

.method public isOpaque()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isReady()Z
    .locals 2

    iget v0, p0, Lcom/sec/android/gallery3d/glrenderer/TiledTexture;->mUploadIndex:I

    iget-object v1, p0, Lcom/sec/android/gallery3d/glrenderer/TiledTexture;->mTiles:[Lcom/sec/android/gallery3d/glrenderer/TiledTexture$Tile;

    array-length v1, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public recycle()V
    .locals 4

    iget-object v3, p0, Lcom/sec/android/gallery3d/glrenderer/TiledTexture;->mTiles:[Lcom/sec/android/gallery3d/glrenderer/TiledTexture$Tile;

    monitor-enter v3

    const/4 v0, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/sec/android/gallery3d/glrenderer/TiledTexture;->mTiles:[Lcom/sec/android/gallery3d/glrenderer/TiledTexture$Tile;

    array-length v1, v2

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v2, p0, Lcom/sec/android/gallery3d/glrenderer/TiledTexture;->mTiles:[Lcom/sec/android/gallery3d/glrenderer/TiledTexture$Tile;

    aget-object v2, v2, v0

    invoke-direct {p0, v2}, Lcom/sec/android/gallery3d/glrenderer/TiledTexture;->freeTile(Lcom/sec/android/gallery3d/glrenderer/TiledTexture$Tile;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    monitor-exit v3

    return-void

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method
