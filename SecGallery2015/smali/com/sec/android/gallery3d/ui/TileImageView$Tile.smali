.class Lcom/sec/android/gallery3d/ui/TileImageView$Tile;
.super Lcom/sec/android/gallery3d/glrenderer/UploadedTexture;
.source "TileImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/gallery3d/ui/TileImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Tile"
.end annotation


# instance fields
.field private mAlphablendingAnimation:Lcom/sec/samsung/gallery/decoder/AlphablendingAnimation;

.field private mDecodedTile:Landroid/graphics/Bitmap;

.field private mNext:Lcom/sec/android/gallery3d/ui/TileImageView$Tile;

.field private mTileLevel:I

.field private volatile mTileState:I

.field private mX:I

.field private mY:I

.field final synthetic this$0:Lcom/sec/android/gallery3d/ui/TileImageView;


# direct methods
.method private constructor <init>(Lcom/sec/android/gallery3d/ui/TileImageView;III)V
    .locals 5

    iput-object p1, p0, Lcom/sec/android/gallery3d/ui/TileImageView$Tile;->this$0:Lcom/sec/android/gallery3d/ui/TileImageView;

    invoke-direct {p0}, Lcom/sec/android/gallery3d/glrenderer/UploadedTexture;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/gallery3d/ui/TileImageView$Tile;->mTileState:I

    iput p2, p0, Lcom/sec/android/gallery3d/ui/TileImageView$Tile;->mX:I

    iput p3, p0, Lcom/sec/android/gallery3d/ui/TileImageView$Tile;->mY:I

    iput p4, p0, Lcom/sec/android/gallery3d/ui/TileImageView$Tile;->mTileLevel:I

    invoke-static {}, Lcom/sec/android/gallery3d/ui/TileImageView;->access$1300()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/sec/android/gallery3d/ui/TileImageView;->access$1400(Lcom/sec/android/gallery3d/ui/TileImageView;)Lcom/sec/android/gallery3d/ui/TileImageView$TileSource;

    move-result-object v0

    instance-of v0, v0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/sec/samsung/gallery/decoder/AlphablendingAnimation;

    invoke-static {p1}, Lcom/sec/android/gallery3d/ui/TileImageView;->access$1500(Lcom/sec/android/gallery3d/ui/TileImageView;)Lcom/sec/samsung/gallery/decoder/DecoderInterface;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/decoder/DecoderInterface;->getAlphablendingAnimationInterface()Lcom/sec/samsung/gallery/decoder/AlphablendingAnimationInterface;

    move-result-object v1

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x43960000    # 300.0f

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/samsung/gallery/decoder/AlphablendingAnimation;-><init>(Lcom/sec/samsung/gallery/decoder/AlphablendingAnimationInterface;FFF)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/ui/TileImageView$Tile;->mAlphablendingAnimation:Lcom/sec/samsung/gallery/decoder/AlphablendingAnimation;

    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/gallery3d/ui/TileImageView;IIILcom/sec/android/gallery3d/ui/TileImageView$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/gallery3d/ui/TileImageView$Tile;-><init>(Lcom/sec/android/gallery3d/ui/TileImageView;III)V

    return-void
.end method

.method static synthetic access$1000(Lcom/sec/android/gallery3d/ui/TileImageView$Tile;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/TileImageView$Tile;->mDecodedTile:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/sec/android/gallery3d/ui/TileImageView$Tile;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/ui/TileImageView$Tile;->mDecodedTile:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$200(Lcom/sec/android/gallery3d/ui/TileImageView$Tile;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/ui/TileImageView$Tile;->mTileLevel:I

    return v0
.end method

.method static synthetic access$2000(Lcom/sec/android/gallery3d/ui/TileImageView$Tile;)Lcom/sec/android/gallery3d/ui/TileImageView$Tile;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/TileImageView$Tile;->mNext:Lcom/sec/android/gallery3d/ui/TileImageView$Tile;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/sec/android/gallery3d/ui/TileImageView$Tile;Lcom/sec/android/gallery3d/ui/TileImageView$Tile;)Lcom/sec/android/gallery3d/ui/TileImageView$Tile;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/ui/TileImageView$Tile;->mNext:Lcom/sec/android/gallery3d/ui/TileImageView$Tile;

    return-object p1
.end method

.method static synthetic access$300(Lcom/sec/android/gallery3d/ui/TileImageView$Tile;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/ui/TileImageView$Tile;->mX:I

    return v0
.end method

.method static synthetic access$400(Lcom/sec/android/gallery3d/ui/TileImageView$Tile;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/ui/TileImageView$Tile;->mY:I

    return v0
.end method

.method static synthetic access$600(Lcom/sec/android/gallery3d/ui/TileImageView$Tile;)Lcom/sec/samsung/gallery/decoder/AlphablendingAnimation;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/TileImageView$Tile;->mAlphablendingAnimation:Lcom/sec/samsung/gallery/decoder/AlphablendingAnimation;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/android/gallery3d/ui/TileImageView$Tile;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/ui/TileImageView$Tile;->mTileState:I

    return v0
.end method

.method static synthetic access$702(Lcom/sec/android/gallery3d/ui/TileImageView$Tile;I)I
    .locals 0

    iput p1, p0, Lcom/sec/android/gallery3d/ui/TileImageView$Tile;->mTileState:I

    return p1
.end method

.method static synthetic access$900(Lcom/sec/android/gallery3d/ui/TileImageView$Tile;)Z
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/gallery3d/ui/TileImageView$Tile;->decode()Z

    move-result v0

    return v0
.end method

.method private decode()Z
    .locals 9

    const/4 v3, 0x1

    invoke-static {}, Lcom/sec/android/gallery3d/ui/TileImageView;->access$1300()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/sec/android/gallery3d/ui/TileImageView;->access$1600()I

    move-result v4

    add-int/lit8 v2, v4, 0x2

    iget v4, p0, Lcom/sec/android/gallery3d/ui/TileImageView$Tile;->mTileLevel:I

    shl-int v0, v3, v4

    :try_start_0
    iget-object v4, p0, Lcom/sec/android/gallery3d/ui/TileImageView$Tile;->this$0:Lcom/sec/android/gallery3d/ui/TileImageView;

    invoke-static {v4}, Lcom/sec/android/gallery3d/ui/TileImageView;->access$1400(Lcom/sec/android/gallery3d/ui/TileImageView;)Lcom/sec/android/gallery3d/ui/TileImageView$TileSource;

    move-result-object v4

    iget v5, p0, Lcom/sec/android/gallery3d/ui/TileImageView$Tile;->mTileLevel:I

    iget v6, p0, Lcom/sec/android/gallery3d/ui/TileImageView$Tile;->mX:I

    sub-int/2addr v6, v0

    iget v7, p0, Lcom/sec/android/gallery3d/ui/TileImageView$Tile;->mY:I

    sub-int/2addr v7, v0

    invoke-interface {v4, v5, v6, v7, v2}, Lcom/sec/android/gallery3d/ui/TileImageView$TileSource;->getTile(IIII)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/android/gallery3d/data/DecodeUtils;->ensureGLCompatibleBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/gallery3d/ui/TileImageView$Tile;->mDecodedTile:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v4, p0, Lcom/sec/android/gallery3d/ui/TileImageView$Tile;->mDecodedTile:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_1

    :goto_1
    return v3

    :catch_0
    move-exception v1

    const-string/jumbo v4, "TileImageView"

    const-string/jumbo v5, "fail to decode tile"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_0
    :try_start_1
    iget-object v4, p0, Lcom/sec/android/gallery3d/ui/TileImageView$Tile;->this$0:Lcom/sec/android/gallery3d/ui/TileImageView;

    invoke-static {v4}, Lcom/sec/android/gallery3d/ui/TileImageView;->access$1400(Lcom/sec/android/gallery3d/ui/TileImageView;)Lcom/sec/android/gallery3d/ui/TileImageView$TileSource;

    move-result-object v4

    iget v5, p0, Lcom/sec/android/gallery3d/ui/TileImageView$Tile;->mTileLevel:I

    iget v6, p0, Lcom/sec/android/gallery3d/ui/TileImageView$Tile;->mX:I

    iget v7, p0, Lcom/sec/android/gallery3d/ui/TileImageView$Tile;->mY:I

    invoke-static {}, Lcom/sec/android/gallery3d/ui/TileImageView;->access$1600()I

    move-result v8

    invoke-interface {v4, v5, v6, v7, v8}, Lcom/sec/android/gallery3d/ui/TileImageView$TileSource;->getTile(IIII)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/android/gallery3d/data/DecodeUtils;->ensureGLCompatibleBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/gallery3d/ui/TileImageView$Tile;->mDecodedTile:Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    const-string/jumbo v4, "TileImageView"

    const-string/jumbo v5, "fail to decode tile"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method


# virtual methods
.method public getParentTile()Lcom/sec/android/gallery3d/ui/TileImageView$Tile;
    .locals 5

    iget v3, p0, Lcom/sec/android/gallery3d/ui/TileImageView$Tile;->mTileLevel:I

    add-int/lit8 v3, v3, 0x1

    iget-object v4, p0, Lcom/sec/android/gallery3d/ui/TileImageView$Tile;->this$0:Lcom/sec/android/gallery3d/ui/TileImageView;

    invoke-static {v4}, Lcom/sec/android/gallery3d/ui/TileImageView;->access$1700(Lcom/sec/android/gallery3d/ui/TileImageView;)I

    move-result v4

    if-ne v3, v4, :cond_0

    const/4 v3, 0x0

    :goto_0
    return-object v3

    :cond_0
    invoke-static {}, Lcom/sec/android/gallery3d/ui/TileImageView;->access$1600()I

    move-result v3

    iget v4, p0, Lcom/sec/android/gallery3d/ui/TileImageView$Tile;->mTileLevel:I

    add-int/lit8 v4, v4, 0x1

    shl-int v0, v3, v4

    iget v3, p0, Lcom/sec/android/gallery3d/ui/TileImageView$Tile;->mX:I

    div-int/2addr v3, v0

    mul-int v1, v0, v3

    iget v3, p0, Lcom/sec/android/gallery3d/ui/TileImageView$Tile;->mY:I

    div-int/2addr v3, v0

    mul-int v2, v0, v3

    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/TileImageView$Tile;->this$0:Lcom/sec/android/gallery3d/ui/TileImageView;

    iget v4, p0, Lcom/sec/android/gallery3d/ui/TileImageView$Tile;->mTileLevel:I

    add-int/lit8 v4, v4, 0x1

    invoke-static {v3, v1, v2, v4}, Lcom/sec/android/gallery3d/ui/TileImageView;->access$1800(Lcom/sec/android/gallery3d/ui/TileImageView;III)Lcom/sec/android/gallery3d/ui/TileImageView$Tile;

    move-result-object v3

    goto :goto_0
.end method

.method public getTextureHeight()I
    .locals 1

    invoke-static {}, Lcom/sec/android/gallery3d/ui/TileImageView;->access$1300()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/android/gallery3d/ui/TileImageView;->access$1600()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/sec/android/gallery3d/ui/TileImageView;->access$1600()I

    move-result v0

    goto :goto_0
.end method

.method public getTextureWidth()I
    .locals 1

    invoke-static {}, Lcom/sec/android/gallery3d/ui/TileImageView;->access$1300()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/android/gallery3d/ui/TileImageView;->access$1600()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/sec/android/gallery3d/ui/TileImageView;->access$1600()I

    move-result v0

    goto :goto_0
.end method

.method protected onFreeBitmap(Landroid/graphics/Bitmap;)V
    .locals 1

    invoke-static {}, Lcom/sec/android/photos/data/GalleryBitmapPool;->getInstance()Lcom/sec/android/photos/data/GalleryBitmapPool;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/photos/data/GalleryBitmapPool;->put(Landroid/graphics/Bitmap;)Z

    return-void
.end method

.method protected onGetBitmap()Landroid/graphics/Bitmap;
    .locals 7

    const/4 v3, 0x0

    iget v4, p0, Lcom/sec/android/gallery3d/ui/TileImageView$Tile;->mTileState:I

    const/16 v5, 0x8

    if-eq v4, v5, :cond_0

    const-string/jumbo v4, "TileImageView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mTileState (value:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/sec/android/gallery3d/ui/TileImageView$Tile;->mTileState:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ") is NOT State_DECODED."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v3

    :goto_0
    return-object v0

    :cond_0
    iget-object v4, p0, Lcom/sec/android/gallery3d/ui/TileImageView$Tile;->this$0:Lcom/sec/android/gallery3d/ui/TileImageView;

    iget v4, v4, Lcom/sec/android/gallery3d/ui/TileImageView;->mImageWidth:I

    iget v5, p0, Lcom/sec/android/gallery3d/ui/TileImageView$Tile;->mX:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/sec/android/gallery3d/ui/TileImageView$Tile;->mTileLevel:I

    shr-int v2, v4, v5

    iget-object v4, p0, Lcom/sec/android/gallery3d/ui/TileImageView$Tile;->this$0:Lcom/sec/android/gallery3d/ui/TileImageView;

    iget v4, v4, Lcom/sec/android/gallery3d/ui/TileImageView;->mImageHeight:I

    iget v5, p0, Lcom/sec/android/gallery3d/ui/TileImageView$Tile;->mY:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/sec/android/gallery3d/ui/TileImageView$Tile;->mTileLevel:I

    shr-int v1, v4, v5

    invoke-static {}, Lcom/sec/android/gallery3d/ui/TileImageView;->access$1300()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {}, Lcom/sec/android/gallery3d/ui/TileImageView;->access$1600()I

    move-result v4

    add-int/lit8 v4, v4, 0x2

    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {}, Lcom/sec/android/gallery3d/ui/TileImageView;->access$1600()I

    move-result v5

    add-int/lit8 v5, v5, 0x2

    invoke-static {v5, v1}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-virtual {p0, v4, v5}, Lcom/sec/android/gallery3d/ui/TileImageView$Tile;->setSize(II)V

    :goto_1
    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/TileImageView$Tile;->mDecodedTile:Landroid/graphics/Bitmap;

    iput-object v3, p0, Lcom/sec/android/gallery3d/ui/TileImageView$Tile;->mDecodedTile:Landroid/graphics/Bitmap;

    const/4 v3, 0x1

    iput v3, p0, Lcom/sec/android/gallery3d/ui/TileImageView$Tile;->mTileState:I

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/sec/android/gallery3d/ui/TileImageView;->access$1600()I

    move-result v4

    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {}, Lcom/sec/android/gallery3d/ui/TileImageView;->access$1600()I

    move-result v5

    invoke-static {v5, v1}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-virtual {p0, v4, v5}, Lcom/sec/android/gallery3d/ui/TileImageView$Tile;->setSize(II)V

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    const-string/jumbo v0, "tile(%s, %s, %s / %s)"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/sec/android/gallery3d/ui/TileImageView$Tile;->mX:I

    invoke-static {}, Lcom/sec/android/gallery3d/ui/TileImageView;->access$1600()I

    move-result v4

    div-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/sec/android/gallery3d/ui/TileImageView$Tile;->mY:I

    invoke-static {}, Lcom/sec/android/gallery3d/ui/TileImageView;->access$1600()I

    move-result v4

    div-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/TileImageView$Tile;->this$0:Lcom/sec/android/gallery3d/ui/TileImageView;

    invoke-static {v3}, Lcom/sec/android/gallery3d/ui/TileImageView;->access$1900(Lcom/sec/android/gallery3d/ui/TileImageView;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/TileImageView$Tile;->this$0:Lcom/sec/android/gallery3d/ui/TileImageView;

    invoke-static {v3}, Lcom/sec/android/gallery3d/ui/TileImageView;->access$1700(Lcom/sec/android/gallery3d/ui/TileImageView;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public update(III)V
    .locals 0

    iput p1, p0, Lcom/sec/android/gallery3d/ui/TileImageView$Tile;->mX:I

    iput p2, p0, Lcom/sec/android/gallery3d/ui/TileImageView$Tile;->mY:I

    iput p3, p0, Lcom/sec/android/gallery3d/ui/TileImageView$Tile;->mTileLevel:I

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/ui/TileImageView$Tile;->invalidateContent()V

    return-void
.end method
