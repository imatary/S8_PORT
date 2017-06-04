.class Lcom/amap/api/mapcore2d/cm;
.super Landroid/view/View;
.source "WaterMarkerView.java"


# instance fields
.field private a:Landroid/graphics/Bitmap;

.field private b:Landroid/graphics/Bitmap;

.field private c:Landroid/graphics/Paint;

.field private d:Z

.field private e:I

.field private f:Lcom/amap/api/mapcore2d/b;

.field private g:I

.field private h:Landroid/graphics/Rect;

.field private i:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/amap/api/mapcore2d/b;)V
    .locals 5

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/cm;->c:Landroid/graphics/Paint;

    iput-boolean v1, p0, Lcom/amap/api/mapcore2d/cm;->d:Z

    iput v1, p0, Lcom/amap/api/mapcore2d/cm;->e:I

    iput v1, p0, Lcom/amap/api/mapcore2d/cm;->g:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/cm;->h:Landroid/graphics/Rect;

    const/16 v0, 0xa

    iput v0, p0, Lcom/amap/api/mapcore2d/cm;->i:I

    const-string/jumbo v1, "WaterMarkerView"

    iput-object p2, p0, Lcom/amap/api/mapcore2d/cm;->f:Lcom/amap/api/mapcore2d/b;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    :try_start_0
    sget-object v0, Lcom/amap/api/mapcore2d/y;->e:Lcom/amap/api/mapcore2d/y$a;

    sget-object v3, Lcom/amap/api/mapcore2d/y$a;->b:Lcom/amap/api/mapcore2d/y$a;

    if-ne v0, v3, :cond_0

    const-string/jumbo v0, "apl2d.data"

    invoke-virtual {v2, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/amap/api/mapcore2d/cm;->a:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/amap/api/mapcore2d/cm;->a:Landroid/graphics/Bitmap;

    sget v4, Lcom/amap/api/mapcore2d/y;->a:F

    invoke-static {v3, v4}, Lcom/amap/api/mapcore2d/cy;->a(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/amap/api/mapcore2d/cm;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    sget-object v0, Lcom/amap/api/mapcore2d/y;->e:Lcom/amap/api/mapcore2d/y$a;

    sget-object v3, Lcom/amap/api/mapcore2d/y$a;->b:Lcom/amap/api/mapcore2d/y$a;

    if-ne v0, v3, :cond_1

    const-string/jumbo v0, "apl12d.data"

    invoke-virtual {v2, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    :goto_1
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/amap/api/mapcore2d/cm;->b:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/amap/api/mapcore2d/cm;->b:Landroid/graphics/Bitmap;

    sget v3, Lcom/amap/api/mapcore2d/y;->a:F

    invoke-static {v2, v3}, Lcom/amap/api/mapcore2d/cy;->a(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/amap/api/mapcore2d/cm;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    iget-object v0, p0, Lcom/amap/api/mapcore2d/cm;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/amap/api/mapcore2d/cm;->e:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    iget-object v0, p0, Lcom/amap/api/mapcore2d/cm;->c:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/amap/api/mapcore2d/cm;->c:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/amap/api/mapcore2d/cm;->c:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void

    :cond_0
    :try_start_1
    const-string/jumbo v0, "ap2d.data"

    invoke-virtual {v2, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "ap12d.data"

    invoke-virtual {v2, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string/jumbo v2, "WaterMarkerView"

    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/cy;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method


# virtual methods
.method public a()V
    .locals 3

    const-string/jumbo v1, "destory"

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/cm;->a:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore2d/cm;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/cm;->b:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/mapcore2d/cm;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore2d/cm;->a:Landroid/graphics/Bitmap;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore2d/cm;->b:Landroid/graphics/Bitmap;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore2d/cm;->c:Landroid/graphics/Paint;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v2, "WaterMarkerView"

    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/cy;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/amap/api/mapcore2d/cm;->g:I

    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/amap/api/mapcore2d/cm;->d:Z

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/cm;->invalidate()V

    return-void
.end method

.method public b()Landroid/graphics/Bitmap;
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/mapcore2d/cm;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore2d/cm;->b:Landroid/graphics/Bitmap;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/cm;->a:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public c()Landroid/graphics/Point;
    .locals 4

    new-instance v0, Landroid/graphics/Point;

    iget v1, p0, Lcom/amap/api/mapcore2d/cm;->i:I

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/cm;->getHeight()I

    move-result v2

    iget v3, p0, Lcom/amap/api/mapcore2d/cm;->e:I

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, -0xa

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    return-object v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    iget-object v0, p0, Lcom/amap/api/mapcore2d/cm;->b:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/cm;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    add-int/lit8 v0, v0, 0x3

    iget v1, p0, Lcom/amap/api/mapcore2d/cm;->g:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/amap/api/mapcore2d/cm;->f:Lcom/amap/api/mapcore2d/b;

    invoke-virtual {v1}, Lcom/amap/api/mapcore2d/b;->getWidth()I

    move-result v1

    sub-int v0, v1, v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/amap/api/mapcore2d/cm;->i:I

    :goto_1
    sget-object v0, Lcom/amap/api/mapcore2d/y;->e:Lcom/amap/api/mapcore2d/y$a;

    sget-object v1, Lcom/amap/api/mapcore2d/y$a;->b:Lcom/amap/api/mapcore2d/y$a;

    if-ne v0, v1, :cond_3

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/cm;->b()Landroid/graphics/Bitmap;

    move-result-object v0

    iget v1, p0, Lcom/amap/api/mapcore2d/cm;->i:I

    add-int/lit8 v1, v1, 0xf

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/cm;->getHeight()I

    move-result v2

    iget v3, p0, Lcom/amap/api/mapcore2d/cm;->e:I

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x8

    int-to-float v2, v2

    iget-object v3, p0, Lcom/amap/api/mapcore2d/cm;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/amap/api/mapcore2d/cm;->g:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/amap/api/mapcore2d/cm;->f:Lcom/amap/api/mapcore2d/b;

    invoke-virtual {v1}, Lcom/amap/api/mapcore2d/b;->getWidth()I

    move-result v1

    sub-int v0, v1, v0

    add-int/lit8 v0, v0, -0xa

    iput v0, p0, Lcom/amap/api/mapcore2d/cm;->i:I

    goto :goto_1

    :cond_2
    const/16 v0, 0xa

    iput v0, p0, Lcom/amap/api/mapcore2d/cm;->i:I

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/cm;->b()Landroid/graphics/Bitmap;

    move-result-object v0

    iget v1, p0, Lcom/amap/api/mapcore2d/cm;->i:I

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/cm;->getHeight()I

    move-result v2

    iget v3, p0, Lcom/amap/api/mapcore2d/cm;->e:I

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x8

    int-to-float v2, v2

    iget-object v3, p0, Lcom/amap/api/mapcore2d/cm;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0
.end method
