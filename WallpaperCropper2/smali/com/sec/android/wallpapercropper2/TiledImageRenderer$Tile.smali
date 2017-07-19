.class Lcom/sec/android/wallpapercropper2/TiledImageRenderer$Tile;
.super Lcom/android/gallery3d/glrenderer/UploadedTexture;
.source "TiledImageRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/wallpapercropper2/TiledImageRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Tile"
.end annotation


# instance fields
.field public mDecodedTile:Landroid/graphics/Bitmap;

.field public mNext:Lcom/sec/android/wallpapercropper2/TiledImageRenderer$Tile;

.field public mTileLevel:I

.field public volatile mTileState:I

.field public mX:I

.field public mY:I

.field final synthetic this$0:Lcom/sec/android/wallpapercropper2/TiledImageRenderer;


# direct methods
.method public constructor <init>(Lcom/sec/android/wallpapercropper2/TiledImageRenderer;III)V
    .locals 1

    iput-object p1, p0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer$Tile;->this$0:Lcom/sec/android/wallpapercropper2/TiledImageRenderer;

    invoke-direct {p0}, Lcom/android/gallery3d/glrenderer/UploadedTexture;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer$Tile;->mTileState:I

    iput p2, p0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer$Tile;->mX:I

    iput p3, p0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer$Tile;->mY:I

    iput p4, p0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer$Tile;->mTileLevel:I

    return-void
.end method


# virtual methods
.method decode()Z
    .locals 5

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->-get5()Landroid/util/Pools$Pool;

    move-result-object v0

    invoke-interface {v0}, Landroid/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer$Tile;->this$0:Lcom/sec/android/wallpapercropper2/TiledImageRenderer;

    invoke-static {v3}, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->-get4(Lcom/sec/android/wallpapercropper2/TiledImageRenderer;)I

    move-result v3

    if-eq v2, v3, :cond_0

    move-object v0, v1

    :cond_0
    iget-object v1, p0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer$Tile;->this$0:Lcom/sec/android/wallpapercropper2/TiledImageRenderer;

    invoke-static {v1}, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->-get2(Lcom/sec/android/wallpapercropper2/TiledImageRenderer;)Lcom/sec/android/wallpapercropper2/TiledImageRenderer$TileSource;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer$Tile;->mTileLevel:I

    iget v3, p0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer$Tile;->mX:I

    iget v4, p0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer$Tile;->mY:I

    invoke-interface {v1, v2, v3, v4, v0}, Lcom/sec/android/wallpapercropper2/TiledImageRenderer$TileSource;->getTile(IIILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer$Tile;->mDecodedTile:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer$Tile;->mDecodedTile:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    return v0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "Cropper2_TileRenderer"

    const-string/jumbo v2, "fail to decode tile"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getParentTile()Lcom/sec/android/wallpapercropper2/TiledImageRenderer$Tile;
    .locals 4

    iget v0, p0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer$Tile;->mTileLevel:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer$Tile;->this$0:Lcom/sec/android/wallpapercropper2/TiledImageRenderer;

    iget v1, v1, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->mLevelCount:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer$Tile;->this$0:Lcom/sec/android/wallpapercropper2/TiledImageRenderer;

    invoke-static {v0}, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->-get4(Lcom/sec/android/wallpapercropper2/TiledImageRenderer;)I

    move-result v0

    iget v1, p0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer$Tile;->mTileLevel:I

    add-int/lit8 v1, v1, 0x1

    shl-int/2addr v0, v1

    iget v1, p0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer$Tile;->mX:I

    div-int/2addr v1, v0

    mul-int/2addr v1, v0

    iget v2, p0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer$Tile;->mY:I

    div-int/2addr v2, v0

    mul-int/2addr v0, v2

    iget-object v2, p0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer$Tile;->this$0:Lcom/sec/android/wallpapercropper2/TiledImageRenderer;

    iget v3, p0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer$Tile;->mTileLevel:I

    add-int/lit8 v3, v3, 0x1

    invoke-static {v2, v1, v0, v3}, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->-wrap0(Lcom/sec/android/wallpapercropper2/TiledImageRenderer;III)Lcom/sec/android/wallpapercropper2/TiledImageRenderer$Tile;

    move-result-object v0

    return-object v0
.end method

.method public getTextureHeight()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer$Tile;->this$0:Lcom/sec/android/wallpapercropper2/TiledImageRenderer;

    invoke-static {v0}, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->-get4(Lcom/sec/android/wallpapercropper2/TiledImageRenderer;)I

    move-result v0

    return v0
.end method

.method public getTextureWidth()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer$Tile;->this$0:Lcom/sec/android/wallpapercropper2/TiledImageRenderer;

    invoke-static {v0}, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->-get4(Lcom/sec/android/wallpapercropper2/TiledImageRenderer;)I

    move-result v0

    return v0
.end method

.method protected onFreeBitmap(Landroid/graphics/Bitmap;)V
    .locals 1

    invoke-static {}, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->-get5()Landroid/util/Pools$Pool;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    return-void
.end method

.method protected onGetBitmap()Landroid/graphics/Bitmap;
    .locals 5

    const/4 v4, 0x0

    const/16 v2, 0x8

    const/4 v1, 0x1

    iget v0, p0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer$Tile;->mTileState:I

    if-eq v0, v2, :cond_0

    return-object v4

    :cond_0
    iget v0, p0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer$Tile;->mTileState:I

    if-ne v0, v2, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/android/gallery3d/util/Utils;->assertTrue(Z)V

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer$Tile;->this$0:Lcom/sec/android/wallpapercropper2/TiledImageRenderer;

    iget v0, v0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->mImageWidth:I

    iget v2, p0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer$Tile;->mX:I

    sub-int/2addr v0, v2

    iget v2, p0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer$Tile;->mTileLevel:I

    shr-int/2addr v0, v2

    iget-object v2, p0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer$Tile;->this$0:Lcom/sec/android/wallpapercropper2/TiledImageRenderer;

    iget v2, v2, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->mImageHeight:I

    iget v3, p0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer$Tile;->mY:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer$Tile;->mTileLevel:I

    shr-int/2addr v2, v3

    iget-object v3, p0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer$Tile;->this$0:Lcom/sec/android/wallpapercropper2/TiledImageRenderer;

    invoke-static {v3}, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->-get4(Lcom/sec/android/wallpapercropper2/TiledImageRenderer;)I

    move-result v3

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v3, p0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer$Tile;->this$0:Lcom/sec/android/wallpapercropper2/TiledImageRenderer;

    invoke-static {v3}, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->-get4(Lcom/sec/android/wallpapercropper2/TiledImageRenderer;)I

    move-result v3

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {p0, v0, v2}, Lcom/sec/android/wallpapercropper2/TiledImageRenderer$Tile;->setSize(II)V

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer$Tile;->mDecodedTile:Landroid/graphics/Bitmap;

    iput-object v4, p0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer$Tile;->mDecodedTile:Landroid/graphics/Bitmap;

    iput v1, p0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer$Tile;->mTileState:I

    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string/jumbo v0, "tile(%s, %s, %s / %s)"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer$Tile;->mX:I

    iget-object v3, p0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer$Tile;->this$0:Lcom/sec/android/wallpapercropper2/TiledImageRenderer;

    invoke-static {v3}, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->-get4(Lcom/sec/android/wallpapercropper2/TiledImageRenderer;)I

    move-result v3

    div-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget v2, p0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer$Tile;->mY:I

    iget-object v3, p0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer$Tile;->this$0:Lcom/sec/android/wallpapercropper2/TiledImageRenderer;

    invoke-static {v3}, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->-get4(Lcom/sec/android/wallpapercropper2/TiledImageRenderer;)I

    move-result v3

    div-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer$Tile;->this$0:Lcom/sec/android/wallpapercropper2/TiledImageRenderer;

    invoke-static {v2}, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->-get1(Lcom/sec/android/wallpapercropper2/TiledImageRenderer;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer$Tile;->this$0:Lcom/sec/android/wallpapercropper2/TiledImageRenderer;

    iget v2, v2, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->mLevelCount:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public update(III)V
    .locals 0

    iput p1, p0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer$Tile;->mX:I

    iput p2, p0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer$Tile;->mY:I

    iput p3, p0, Lcom/sec/android/wallpapercropper2/TiledImageRenderer$Tile;->mTileLevel:I

    invoke-virtual {p0}, Lcom/sec/android/wallpapercropper2/TiledImageRenderer$Tile;->invalidateContent()V

    return-void
.end method
