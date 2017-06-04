.class Lcom/amap/api/mapcore2d/bu;
.super Landroid/view/View;
.source "ScaleView.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:Lcom/amap/api/mapcore2d/b;

.field private d:Landroid/graphics/Paint;

.field private e:Landroid/graphics/Paint;

.field private f:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/amap/api/mapcore2d/b;)V
    .locals 5

    const/4 v4, 0x1

    const/high16 v3, -0x1000000

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/amap/api/mapcore2d/bu;->a:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/amap/api/mapcore2d/bu;->b:I

    iput-object p2, p0, Lcom/amap/api/mapcore2d/bu;->c:Lcom/amap/api/mapcore2d/b;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/bu;->d:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/bu;->f:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/amap/api/mapcore2d/bu;->d:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/amap/api/mapcore2d/bu;->d:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/amap/api/mapcore2d/bu;->d:Landroid/graphics/Paint;

    const/high16 v1, 0x40000000    # 2.0f

    sget v2, Lcom/amap/api/mapcore2d/y;->a:F

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/amap/api/mapcore2d/bu;->d:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/bu;->e:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/amap/api/mapcore2d/bu;->e:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/amap/api/mapcore2d/bu;->e:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/amap/api/mapcore2d/bu;->e:Landroid/graphics/Paint;

    const/high16 v1, 0x41a00000    # 20.0f

    sget v2, Lcom/amap/api/mapcore2d/y;->a:F

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore2d/bu;->d:Landroid/graphics/Paint;

    iput-object v0, p0, Lcom/amap/api/mapcore2d/bu;->e:Landroid/graphics/Paint;

    iput-object v0, p0, Lcom/amap/api/mapcore2d/bu;->f:Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/amap/api/mapcore2d/bu;->a:Ljava/lang/String;

    return-void
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/amap/api/mapcore2d/bu;->b:I

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/mapcore2d/bu;->a:Ljava/lang/String;

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    const-string/jumbo v2, "onDraw"

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bu;->c:Lcom/amap/api/mapcore2d/b;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/b;->q()Lcom/amap/api/mapcore2d/au;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/au;->a()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bu;->a:Ljava/lang/String;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/amap/api/mapcore2d/bu;->b:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/amap/api/mapcore2d/bu;->b:I

    :try_start_1
    iget-object v1, p0, Lcom/amap/api/mapcore2d/bu;->c:Lcom/amap/api/mapcore2d/b;

    invoke-virtual {v1}, Lcom/amap/api/mapcore2d/b;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x5

    if-le v0, v1, :cond_2

    iget-object v1, p0, Lcom/amap/api/mapcore2d/bu;->c:Lcom/amap/api/mapcore2d/b;

    invoke-virtual {v1}, Lcom/amap/api/mapcore2d/b;->getWidth()I

    move-result v1

    div-int/lit8 v0, v1, 0x5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_2
    move v6, v0

    :goto_1
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bu;->c:Lcom/amap/api/mapcore2d/b;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/b;->A()Landroid/graphics/Point;

    move-result-object v1

    iget-object v0, p0, Lcom/amap/api/mapcore2d/bu;->e:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/amap/api/mapcore2d/bu;->a:Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/amap/api/mapcore2d/bu;->a:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    iget-object v5, p0, Lcom/amap/api/mapcore2d/bu;->f:Landroid/graphics/Rect;

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    iget v0, v1, Landroid/graphics/Point;->x:I

    add-int/2addr v0, v6

    iget-object v2, p0, Lcom/amap/api/mapcore2d/bu;->c:Lcom/amap/api/mapcore2d/b;

    invoke-virtual {v2}, Lcom/amap/api/mapcore2d/b;->getWidth()I

    move-result v2

    add-int/lit8 v2, v2, -0xa

    if-le v0, v2, :cond_3

    iget-object v0, p0, Lcom/amap/api/mapcore2d/bu;->c:Lcom/amap/api/mapcore2d/b;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/b;->getWidth()I

    move-result v0

    add-int/lit8 v0, v0, -0xa

    iget-object v2, p0, Lcom/amap/api/mapcore2d/bu;->f:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    add-int/2addr v2, v6

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    :goto_2
    iget v1, v1, Landroid/graphics/Point;->y:I

    iget-object v2, p0, Lcom/amap/api/mapcore2d/bu;->f:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x5

    iget-object v2, p0, Lcom/amap/api/mapcore2d/bu;->a:Ljava/lang/String;

    int-to-float v3, v0

    int-to-float v4, v1

    iget-object v5, p0, Lcom/amap/api/mapcore2d/bu;->e:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget-object v2, p0, Lcom/amap/api/mapcore2d/bu;->f:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    sub-int v2, v6, v2

    div-int/lit8 v2, v2, 0x2

    sub-int v7, v0, v2

    iget-object v0, p0, Lcom/amap/api/mapcore2d/bu;->f:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    add-int/lit8 v0, v0, -0x5

    add-int v8, v1, v0

    int-to-float v1, v7

    add-int/lit8 v0, v8, -0x2

    int-to-float v2, v0

    int-to-float v3, v7

    add-int/lit8 v0, v8, 0x2

    int-to-float v4, v0

    iget-object v5, p0, Lcom/amap/api/mapcore2d/bu;->d:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    int-to-float v1, v7

    int-to-float v2, v8

    add-int v0, v7, v6

    int-to-float v3, v0

    int-to-float v4, v8

    iget-object v5, p0, Lcom/amap/api/mapcore2d/bu;->d:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int v0, v7, v6

    int-to-float v1, v0

    add-int/lit8 v0, v8, -0x2

    int-to-float v2, v0

    add-int v0, v7, v6

    int-to-float v3, v0

    add-int/lit8 v0, v8, 0x2

    int-to-float v4, v0

    iget-object v5, p0, Lcom/amap/api/mapcore2d/bu;->d:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    :catch_1
    move-exception v1

    const-string/jumbo v3, "ScaleView"

    invoke-static {v1, v3, v2}, Lcom/amap/api/mapcore2d/cy;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    move v6, v0

    goto/16 :goto_1

    :cond_3
    iget v0, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/amap/api/mapcore2d/bu;->f:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    sub-int v2, v6, v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    goto :goto_2
.end method
