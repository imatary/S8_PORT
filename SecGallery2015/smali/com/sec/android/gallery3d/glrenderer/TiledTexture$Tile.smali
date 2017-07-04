.class Lcom/sec/android/gallery3d/glrenderer/TiledTexture$Tile;
.super Lcom/sec/android/gallery3d/glrenderer/UploadedTexture;
.source "TiledTexture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/gallery3d/glrenderer/TiledTexture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Tile"
.end annotation


# instance fields
.field public bitmap:Landroid/graphics/Bitmap;

.field public contentHeight:I

.field public contentWidth:I

.field public nextFreeTile:Lcom/sec/android/gallery3d/glrenderer/TiledTexture$Tile;

.field public offsetX:I

.field public offsetY:I

.field final synthetic this$0:Lcom/sec/android/gallery3d/glrenderer/TiledTexture;


# direct methods
.method private constructor <init>(Lcom/sec/android/gallery3d/glrenderer/TiledTexture;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/glrenderer/TiledTexture$Tile;->this$0:Lcom/sec/android/gallery3d/glrenderer/TiledTexture;

    invoke-direct {p0}, Lcom/sec/android/gallery3d/glrenderer/UploadedTexture;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/gallery3d/glrenderer/TiledTexture;Lcom/sec/android/gallery3d/glrenderer/TiledTexture$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/glrenderer/TiledTexture$Tile;-><init>(Lcom/sec/android/gallery3d/glrenderer/TiledTexture;)V

    return-void
.end method


# virtual methods
.method protected onFreeBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    return-void
.end method

.method protected onGetBitmap()Landroid/graphics/Bitmap;
    .locals 12

    const/16 v11, 0xfe

    iget-object v7, p0, Lcom/sec/android/gallery3d/glrenderer/TiledTexture$Tile;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v7, :cond_4

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/glrenderer/TiledTexture$Tile;->this$0:Lcom/sec/android/gallery3d/glrenderer/TiledTexture;

    invoke-static {v0}, Lcom/sec/android/gallery3d/glrenderer/TiledTexture;->access$100(Lcom/sec/android/gallery3d/glrenderer/TiledTexture;)Landroid/graphics/Canvas;

    move-result-object v0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/sec/android/gallery3d/glrenderer/TiledTexture$Tile;->offsetX:I

    rsub-int/lit8 v9, v0, 0x1

    iget v0, p0, Lcom/sec/android/gallery3d/glrenderer/TiledTexture$Tile;->offsetY:I

    rsub-int/lit8 v10, v0, 0x1

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    add-int v8, v0, v9

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    add-int v6, v0, v10

    iget-object v0, p0, Lcom/sec/android/gallery3d/glrenderer/TiledTexture$Tile;->this$0:Lcom/sec/android/gallery3d/glrenderer/TiledTexture;

    invoke-static {v0}, Lcom/sec/android/gallery3d/glrenderer/TiledTexture;->access$100(Lcom/sec/android/gallery3d/glrenderer/TiledTexture;)Landroid/graphics/Canvas;

    move-result-object v0

    int-to-float v1, v9

    int-to-float v2, v10

    iget-object v3, p0, Lcom/sec/android/gallery3d/glrenderer/TiledTexture$Tile;->this$0:Lcom/sec/android/gallery3d/glrenderer/TiledTexture;

    invoke-static {v3}, Lcom/sec/android/gallery3d/glrenderer/TiledTexture;->access$200(Lcom/sec/android/gallery3d/glrenderer/TiledTexture;)Landroid/graphics/Paint;

    move-result-object v3

    invoke-virtual {v0, v7, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    if-lez v9, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/glrenderer/TiledTexture$Tile;->this$0:Lcom/sec/android/gallery3d/glrenderer/TiledTexture;

    invoke-static {v0}, Lcom/sec/android/gallery3d/glrenderer/TiledTexture;->access$100(Lcom/sec/android/gallery3d/glrenderer/TiledTexture;)Landroid/graphics/Canvas;

    move-result-object v0

    add-int/lit8 v1, v9, -0x1

    int-to-float v1, v1

    const/4 v2, 0x0

    add-int/lit8 v3, v9, -0x1

    int-to-float v3, v3

    const/high16 v4, 0x43800000    # 256.0f

    iget-object v5, p0, Lcom/sec/android/gallery3d/glrenderer/TiledTexture$Tile;->this$0:Lcom/sec/android/gallery3d/glrenderer/TiledTexture;

    invoke-static {v5}, Lcom/sec/android/gallery3d/glrenderer/TiledTexture;->access$300(Lcom/sec/android/gallery3d/glrenderer/TiledTexture;)Landroid/graphics/Paint;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_0
    if-lez v10, :cond_1

    iget-object v0, p0, Lcom/sec/android/gallery3d/glrenderer/TiledTexture$Tile;->this$0:Lcom/sec/android/gallery3d/glrenderer/TiledTexture;

    invoke-static {v0}, Lcom/sec/android/gallery3d/glrenderer/TiledTexture;->access$100(Lcom/sec/android/gallery3d/glrenderer/TiledTexture;)Landroid/graphics/Canvas;

    move-result-object v0

    const/4 v1, 0x0

    add-int/lit8 v2, v10, -0x1

    int-to-float v2, v2

    const/high16 v3, 0x43800000    # 256.0f

    add-int/lit8 v4, v10, -0x1

    int-to-float v4, v4

    iget-object v5, p0, Lcom/sec/android/gallery3d/glrenderer/TiledTexture$Tile;->this$0:Lcom/sec/android/gallery3d/glrenderer/TiledTexture;

    invoke-static {v5}, Lcom/sec/android/gallery3d/glrenderer/TiledTexture;->access$300(Lcom/sec/android/gallery3d/glrenderer/TiledTexture;)Landroid/graphics/Paint;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_1
    if-ge v8, v11, :cond_2

    iget-object v0, p0, Lcom/sec/android/gallery3d/glrenderer/TiledTexture$Tile;->this$0:Lcom/sec/android/gallery3d/glrenderer/TiledTexture;

    invoke-static {v0}, Lcom/sec/android/gallery3d/glrenderer/TiledTexture;->access$100(Lcom/sec/android/gallery3d/glrenderer/TiledTexture;)Landroid/graphics/Canvas;

    move-result-object v0

    int-to-float v1, v8

    const/4 v2, 0x0

    int-to-float v3, v8

    const/high16 v4, 0x43800000    # 256.0f

    iget-object v5, p0, Lcom/sec/android/gallery3d/glrenderer/TiledTexture$Tile;->this$0:Lcom/sec/android/gallery3d/glrenderer/TiledTexture;

    invoke-static {v5}, Lcom/sec/android/gallery3d/glrenderer/TiledTexture;->access$300(Lcom/sec/android/gallery3d/glrenderer/TiledTexture;)Landroid/graphics/Paint;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_2
    if-ge v6, v11, :cond_3

    iget-object v0, p0, Lcom/sec/android/gallery3d/glrenderer/TiledTexture$Tile;->this$0:Lcom/sec/android/gallery3d/glrenderer/TiledTexture;

    invoke-static {v0}, Lcom/sec/android/gallery3d/glrenderer/TiledTexture;->access$100(Lcom/sec/android/gallery3d/glrenderer/TiledTexture;)Landroid/graphics/Canvas;

    move-result-object v0

    const/4 v1, 0x0

    int-to-float v2, v6

    const/high16 v3, 0x43800000    # 256.0f

    int-to-float v4, v6

    iget-object v5, p0, Lcom/sec/android/gallery3d/glrenderer/TiledTexture$Tile;->this$0:Lcom/sec/android/gallery3d/glrenderer/TiledTexture;

    invoke-static {v5}, Lcom/sec/android/gallery3d/glrenderer/TiledTexture;->access$300(Lcom/sec/android/gallery3d/glrenderer/TiledTexture;)Landroid/graphics/Paint;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    iget-object v0, p0, Lcom/sec/android/gallery3d/glrenderer/TiledTexture$Tile;->this$0:Lcom/sec/android/gallery3d/glrenderer/TiledTexture;

    invoke-static {v0}, Lcom/sec/android/gallery3d/glrenderer/TiledTexture;->access$400(Lcom/sec/android/gallery3d/glrenderer/TiledTexture;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public setSize(II)V
    .locals 2

    const/16 v1, 0x100

    iput p1, p0, Lcom/sec/android/gallery3d/glrenderer/TiledTexture$Tile;->contentWidth:I

    iput p2, p0, Lcom/sec/android/gallery3d/glrenderer/TiledTexture$Tile;->contentHeight:I

    add-int/lit8 v0, p1, 0x2

    iput v0, p0, Lcom/sec/android/gallery3d/glrenderer/TiledTexture$Tile;->mWidth:I

    add-int/lit8 v0, p2, 0x2

    iput v0, p0, Lcom/sec/android/gallery3d/glrenderer/TiledTexture$Tile;->mHeight:I

    iput v1, p0, Lcom/sec/android/gallery3d/glrenderer/TiledTexture$Tile;->mTextureWidth:I

    iput v1, p0, Lcom/sec/android/gallery3d/glrenderer/TiledTexture$Tile;->mTextureHeight:I

    return-void
.end method
