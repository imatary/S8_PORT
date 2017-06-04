.class Lcom/amap/api/mapcore2d/aw;
.super Lcom/amap/api/mapcore2d/ax;
.source "LayerPropertys.java"


# instance fields
.field public a:Ljava/lang/String;

.field public b:I

.field public c:I

.field public d:Z

.field public e:Z

.field public f:Z

.field public g:Z

.field public h:Z

.field public i:J

.field public j:Lcom/amap/api/mapcore2d/ck;

.field public k:I

.field public l:Ljava/lang/String;

.field m:Lcom/amap/api/mapcore2d/q;

.field n:Lcom/amap/api/mapcore2d/r;

.field o:Lcom/amap/api/mapcore2d/bw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amap/api/mapcore2d/bw",
            "<",
            "Lcom/amap/api/mapcore2d/n$a;",
            ">;"
        }
    .end annotation
.end field

.field private p:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/amap/api/mapcore2d/ax;-><init>()V

    const-string/jumbo v0, "LayerPropertys"

    iput-object v0, p0, Lcom/amap/api/mapcore2d/aw;->p:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/amap/api/mapcore2d/aw;->a:Ljava/lang/String;

    const/16 v0, 0x12

    iput v0, p0, Lcom/amap/api/mapcore2d/aw;->b:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/amap/api/mapcore2d/aw;->c:I

    iput-boolean v3, p0, Lcom/amap/api/mapcore2d/aw;->d:Z

    iput-boolean v3, p0, Lcom/amap/api/mapcore2d/aw;->e:Z

    iput-boolean v1, p0, Lcom/amap/api/mapcore2d/aw;->f:Z

    iput-boolean v1, p0, Lcom/amap/api/mapcore2d/aw;->g:Z

    iput-boolean v1, p0, Lcom/amap/api/mapcore2d/aw;->h:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/amap/api/mapcore2d/aw;->i:J

    iput-object v2, p0, Lcom/amap/api/mapcore2d/aw;->j:Lcom/amap/api/mapcore2d/ck;

    const/4 v0, -0x1

    iput v0, p0, Lcom/amap/api/mapcore2d/aw;->k:I

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/amap/api/mapcore2d/aw;->l:Ljava/lang/String;

    iput-object v2, p0, Lcom/amap/api/mapcore2d/aw;->m:Lcom/amap/api/mapcore2d/q;

    iput-object v2, p0, Lcom/amap/api/mapcore2d/aw;->n:Lcom/amap/api/mapcore2d/r;

    iput-object v2, p0, Lcom/amap/api/mapcore2d/aw;->o:Lcom/amap/api/mapcore2d/bw;

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 2

    iget-object v0, p0, Lcom/amap/api/mapcore2d/aw;->n:Lcom/amap/api/mapcore2d/r;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/r;->a(Lcom/amap/api/mapcore2d/q;)V

    iget-object v0, p0, Lcom/amap/api/mapcore2d/aw;->m:Lcom/amap/api/mapcore2d/q;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/q;->c()V

    iget-object v0, p0, Lcom/amap/api/mapcore2d/aw;->o:Lcom/amap/api/mapcore2d/bw;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/bw;->clear()V

    return-void
.end method

.method protected a(Landroid/graphics/Canvas;)V
    .locals 7

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/aw;->o:Lcom/amap/api/mapcore2d/bw;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore2d/aw;->o:Lcom/amap/api/mapcore2d/bw;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/bw;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore2d/n$a;

    iget v1, v0, Lcom/amap/api/mapcore2d/n$a;->g:I

    if-gez v1, :cond_3

    iget-boolean v1, p0, Lcom/amap/api/mapcore2d/aw;->e:Z

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/amap/api/mapcore2d/n;->c()Landroid/graphics/Bitmap;

    move-result-object v1

    :goto_2
    iget-object v0, v0, Lcom/amap/api/mapcore2d/n$a;->f:Landroid/graphics/PointF;

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    iget v3, v0, Landroid/graphics/PointF;->x:F

    sget v4, Lcom/amap/api/mapcore2d/y;->i:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    iget v4, v0, Landroid/graphics/PointF;->y:F

    sget v5, Lcom/amap/api/mapcore2d/y;->i:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    new-instance v5, Landroid/graphics/RectF;

    iget v6, v0, Landroid/graphics/PointF;->x:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-direct {v5, v6, v0, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/4 v0, 0x0

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v0, v5, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/util/ConcurrentModificationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/amap/api/mapcore2d/aw;->p:Ljava/lang/String;

    const-string/jumbo v2, "drawLayer"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore2d/cy;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    :try_start_1
    iget-object v1, p0, Lcom/amap/api/mapcore2d/aw;->m:Lcom/amap/api/mapcore2d/q;

    iget v3, v0, Lcom/amap/api/mapcore2d/n$a;->g:I

    invoke-virtual {v1, v3}, Lcom/amap/api/mapcore2d/q;->a(I)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/util/ConcurrentModificationException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    goto :goto_2
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    instance-of v0, p1, Lcom/amap/api/mapcore2d/aw;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/amap/api/mapcore2d/aw;

    iget-object v0, p0, Lcom/amap/api/mapcore2d/aw;->a:Ljava/lang/String;

    iget-object v1, p1, Lcom/amap/api/mapcore2d/aw;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Lcom/amap/api/mapcore2d/aw;->k:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore2d/aw;->a:Ljava/lang/String;

    return-object v0
.end method
