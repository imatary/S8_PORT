.class public Lcom/amap/api/mapcore2d/bl$e;
.super Ljava/lang/Object;
.source "Mediator.java"

# interfaces
.implements Lcom/amap/api/mapcore2d/br;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/mapcore2d/bl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "e"
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/mapcore2d/bl;

.field private b:I

.field private c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/amap/api/mapcore2d/bl;)V
    .locals 1

    iput-object p1, p0, Lcom/amap/api/mapcore2d/bl$e;->a:Lcom/amap/api/mapcore2d/bl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/amap/api/mapcore2d/bl$e;->b:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/bl$e;->c:Ljava/util/HashMap;

    return-void
.end method

.method private a(Z)I
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/amap/api/mapcore2d/bl$e;->a:Lcom/amap/api/mapcore2d/bl;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/bl;->b:Lcom/amap/api/mapcore2d/bl$d;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/bl$d;->c()I

    move-result v0

    iget-object v1, p0, Lcom/amap/api/mapcore2d/bl$e;->a:Lcom/amap/api/mapcore2d/bl;

    iget-object v1, v1, Lcom/amap/api/mapcore2d/bl;->b:Lcom/amap/api/mapcore2d/bl$d;

    invoke-virtual {v1}, Lcom/amap/api/mapcore2d/bl$d;->d()I

    move-result v1

    invoke-virtual {p0, v2, v1}, Lcom/amap/api/mapcore2d/bl$e;->a(II)Lcom/amap/api/mapcore2d/ae;

    move-result-object v1

    invoke-virtual {p0, v0, v2}, Lcom/amap/api/mapcore2d/bl$e;->a(II)Lcom/amap/api/mapcore2d/ae;

    move-result-object v0

    if-eqz p1, :cond_0

    invoke-virtual {v1}, Lcom/amap/api/mapcore2d/ae;->a()I

    move-result v1

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/ae;->a()I

    move-result v0

    sub-int v0, v1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v1}, Lcom/amap/api/mapcore2d/ae;->b()I

    move-result v1

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/ae;->b()I

    move-result v0

    sub-int v0, v1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public a(F)F
    .locals 5

    const/4 v0, 0x0

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/amap/api/mapcore2d/bl$e;->a:Lcom/amap/api/mapcore2d/bl;

    iget-object v1, v1, Lcom/amap/api/mapcore2d/bl;->b:Lcom/amap/api/mapcore2d/bl$d;

    invoke-virtual {v1}, Lcom/amap/api/mapcore2d/bl$d;->e()I

    move-result v1

    iget-object v2, p0, Lcom/amap/api/mapcore2d/bl$e;->c:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    const/16 v3, 0x1e

    if-gt v2, v3, :cond_0

    iget v2, p0, Lcom/amap/api/mapcore2d/bl$e;->b:I

    if-eq v1, v2, :cond_1

    :cond_0
    iput v1, p0, Lcom/amap/api/mapcore2d/bl$e;->b:I

    iget-object v1, p0, Lcom/amap/api/mapcore2d/bl$e;->c:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    :cond_1
    iget-object v1, p0, Lcom/amap/api/mapcore2d/bl$e;->c:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p0, v4, v4}, Lcom/amap/api/mapcore2d/bl$e;->a(II)Lcom/amap/api/mapcore2d/ae;

    move-result-object v1

    const/16 v2, 0x64

    invoke-virtual {p0, v4, v2}, Lcom/amap/api/mapcore2d/bl$e;->a(II)Lcom/amap/api/mapcore2d/ae;

    move-result-object v2

    iget-object v3, p0, Lcom/amap/api/mapcore2d/bl$e;->a:Lcom/amap/api/mapcore2d/bl;

    iget-object v3, v3, Lcom/amap/api/mapcore2d/bl;->h:Lcom/amap/api/mapcore2d/bh;

    invoke-virtual {v3, v1, v2}, Lcom/amap/api/mapcore2d/bh;->a(Lcom/amap/api/mapcore2d/ae;Lcom/amap/api/mapcore2d/ae;)F

    move-result v1

    cmpg-float v2, v1, v0

    if-gtz v2, :cond_2

    :goto_0
    return v0

    :cond_2
    const/high16 v0, 0x42c80000    # 100.0f

    div-float v1, p1, v1

    mul-float/2addr v0, v1

    iget-object v1, p0, Lcom/amap/api/mapcore2d/bl$e;->c:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bl$e;->c:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    goto :goto_0
.end method

.method public a()I
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/amap/api/mapcore2d/bl$e;->a(Z)I

    move-result v0

    return v0
.end method

.method public a(Lcom/amap/api/mapcore2d/ae;Landroid/graphics/Point;)Landroid/graphics/Point;
    .locals 10

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    iget-object v0, p0, Lcom/amap/api/mapcore2d/bl$e;->a:Lcom/amap/api/mapcore2d/bl;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/bl;->b:Lcom/amap/api/mapcore2d/bl$d;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/bl$d;->e()I

    move-result v1

    iget-object v0, p0, Lcom/amap/api/mapcore2d/bl$e;->a:Lcom/amap/api/mapcore2d/bl;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/bl;->h:Lcom/amap/api/mapcore2d/bh;

    iget-object v2, p0, Lcom/amap/api/mapcore2d/bl$e;->a:Lcom/amap/api/mapcore2d/bl;

    iget-object v2, v2, Lcom/amap/api/mapcore2d/bl;->h:Lcom/amap/api/mapcore2d/bh;

    iget-object v2, v2, Lcom/amap/api/mapcore2d/bh;->i:Lcom/amap/api/mapcore2d/ae;

    iget-object v3, p0, Lcom/amap/api/mapcore2d/bl$e;->a:Lcom/amap/api/mapcore2d/bl;

    iget-object v3, v3, Lcom/amap/api/mapcore2d/bl;->h:Lcom/amap/api/mapcore2d/bh;

    iget-object v3, v3, Lcom/amap/api/mapcore2d/bh;->k:Landroid/graphics/Point;

    iget-object v4, p0, Lcom/amap/api/mapcore2d/bl$e;->a:Lcom/amap/api/mapcore2d/bl;

    iget-object v4, v4, Lcom/amap/api/mapcore2d/bl;->h:Lcom/amap/api/mapcore2d/bh;

    iget-object v4, v4, Lcom/amap/api/mapcore2d/bh;->h:[D

    aget-wide v4, v4, v1

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/amap/api/mapcore2d/bh;->b(Lcom/amap/api/mapcore2d/ae;Lcom/amap/api/mapcore2d/ae;Landroid/graphics/Point;D)Landroid/graphics/PointF;

    move-result-object v2

    iget-object v0, p0, Lcom/amap/api/mapcore2d/bl$e;->a:Lcom/amap/api/mapcore2d/bl;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/bl;->b:Lcom/amap/api/mapcore2d/bl$d;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/bl$d;->a(Lcom/amap/api/mapcore2d/bl$d;)Lcom/amap/api/mapcore2d/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/b;->G()Lcom/amap/api/mapcore2d/bm;

    move-result-object v3

    iget-object v0, p0, Lcom/amap/api/mapcore2d/bl$e;->a:Lcom/amap/api/mapcore2d/bl;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/bl;->b:Lcom/amap/api/mapcore2d/bl$d;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/bl$d;->a(Lcom/amap/api/mapcore2d/bl$d;)Lcom/amap/api/mapcore2d/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/b;->a()Lcom/amap/api/mapcore2d/bl;

    move-result-object v0

    iget-object v0, v0, Lcom/amap/api/mapcore2d/bl;->h:Lcom/amap/api/mapcore2d/bh;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/bh;->k:Landroid/graphics/Point;

    iget-boolean v1, v3, Lcom/amap/api/mapcore2d/bm;->m:Z

    if-eqz v1, :cond_4

    const/4 v0, 0x1

    :try_start_0
    iget-object v1, p0, Lcom/amap/api/mapcore2d/bl$e;->a:Lcom/amap/api/mapcore2d/bl;

    iget-object v1, v1, Lcom/amap/api/mapcore2d/bl;->g:Lcom/amap/api/mapcore2d/b;

    iget-object v1, v1, Lcom/amap/api/mapcore2d/b;->g:Lcom/amap/api/mapcore2d/au;

    invoke-interface {v1}, Lcom/amap/api/mapcore2d/au;->f()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    iget-boolean v1, v3, Lcom/amap/api/mapcore2d/bm;->l:Z

    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    sget v0, Lcom/amap/api/mapcore2d/bm;->j:F

    iget v1, v2, Landroid/graphics/PointF;->x:F

    float-to-int v1, v1

    int-to-float v1, v1

    iget-object v4, v3, Lcom/amap/api/mapcore2d/bm;->f:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, v4

    mul-float/2addr v0, v1

    iget-object v1, v3, Lcom/amap/api/mapcore2d/bm;->f:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    add-float/2addr v0, v1

    iget-object v1, v3, Lcom/amap/api/mapcore2d/bm;->g:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget-object v4, v3, Lcom/amap/api/mapcore2d/bm;->f:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, v4

    add-float v4, v0, v1

    sget v0, Lcom/amap/api/mapcore2d/bm;->j:F

    iget v1, v2, Landroid/graphics/PointF;->y:F

    float-to-int v1, v1

    int-to-float v1, v1

    iget-object v2, v3, Lcom/amap/api/mapcore2d/bm;->f:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    sub-float/2addr v1, v2

    mul-float/2addr v0, v1

    iget-object v1, v3, Lcom/amap/api/mapcore2d/bm;->f:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    add-float/2addr v0, v1

    iget-object v1, v3, Lcom/amap/api/mapcore2d/bm;->g:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iget-object v2, v3, Lcom/amap/api/mapcore2d/bm;->f:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    sub-float/2addr v1, v2

    add-float v2, v0, v1

    float-to-int v1, v4

    float-to-int v0, v2

    float-to-double v4, v4

    int-to-double v6, v1

    add-double/2addr v6, v8

    cmpl-double v3, v4, v6

    if-ltz v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    :cond_0
    float-to-double v2, v2

    int-to-double v4, v0

    add-double/2addr v4, v8

    cmpl-double v2, v2, v4

    if-ltz v2, :cond_1

    add-int/lit8 v0, v0, 0x1

    :cond_1
    :goto_1
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2, v1, v0}, Landroid/graphics/Point;-><init>(II)V

    if-eqz p2, :cond_2

    iget v0, v2, Landroid/graphics/Point;->x:I

    iput v0, p2, Landroid/graphics/Point;->x:I

    iget v0, v2, Landroid/graphics/Point;->y:I

    iput v0, p2, Landroid/graphics/Point;->y:I

    :cond_2
    return-object v2

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :cond_3
    iget v0, v2, Landroid/graphics/PointF;->x:F

    float-to-int v1, v0

    iget v0, v2, Landroid/graphics/PointF;->y:F

    float-to-int v0, v0

    goto :goto_1

    :cond_4
    sget v1, Lcom/amap/api/mapcore2d/co;->c:F

    iget v3, v2, Landroid/graphics/PointF;->x:F

    float-to-int v3, v3

    iget v4, v0, Landroid/graphics/Point;->x:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v1, v3

    iget v3, v0, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    add-float/2addr v3, v1

    sget v1, Lcom/amap/api/mapcore2d/co;->c:F

    iget v2, v2, Landroid/graphics/PointF;->y:F

    float-to-int v2, v2

    iget v4, v0, Landroid/graphics/Point;->y:I

    sub-int/2addr v2, v4

    int-to-float v2, v2

    mul-float/2addr v1, v2

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    add-float v2, v1, v0

    float-to-int v1, v3

    float-to-int v0, v2

    float-to-double v4, v3

    int-to-double v6, v1

    add-double/2addr v6, v8

    cmpl-double v3, v4, v6

    if-ltz v3, :cond_5

    add-int/lit8 v1, v1, 0x1

    :cond_5
    float-to-double v2, v2

    int-to-double v4, v0

    add-double/2addr v4, v8

    cmpl-double v2, v2, v4

    if-ltz v2, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public a(II)Lcom/amap/api/mapcore2d/ae;
    .locals 7

    iget-object v0, p0, Lcom/amap/api/mapcore2d/bl$e;->a:Lcom/amap/api/mapcore2d/bl;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/bl;->b:Lcom/amap/api/mapcore2d/bl$d;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/bl$d;->e()I

    move-result v4

    new-instance v1, Landroid/graphics/PointF;

    int-to-float v0, p1

    int-to-float v2, p2

    invoke-direct {v1, v0, v2}, Landroid/graphics/PointF;-><init>(FF)V

    iget-object v0, p0, Lcom/amap/api/mapcore2d/bl$e;->a:Lcom/amap/api/mapcore2d/bl;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/bl;->h:Lcom/amap/api/mapcore2d/bh;

    iget-object v2, p0, Lcom/amap/api/mapcore2d/bl$e;->a:Lcom/amap/api/mapcore2d/bl;

    iget-object v2, v2, Lcom/amap/api/mapcore2d/bl;->h:Lcom/amap/api/mapcore2d/bh;

    iget-object v2, v2, Lcom/amap/api/mapcore2d/bh;->i:Lcom/amap/api/mapcore2d/ae;

    iget-object v3, p0, Lcom/amap/api/mapcore2d/bl$e;->a:Lcom/amap/api/mapcore2d/bl;

    iget-object v3, v3, Lcom/amap/api/mapcore2d/bl;->h:Lcom/amap/api/mapcore2d/bh;

    iget-object v3, v3, Lcom/amap/api/mapcore2d/bh;->k:Landroid/graphics/Point;

    iget-object v5, p0, Lcom/amap/api/mapcore2d/bl$e;->a:Lcom/amap/api/mapcore2d/bl;

    iget-object v5, v5, Lcom/amap/api/mapcore2d/bl;->h:Lcom/amap/api/mapcore2d/bh;

    iget-object v5, v5, Lcom/amap/api/mapcore2d/bh;->h:[D

    aget-wide v4, v5, v4

    iget-object v6, p0, Lcom/amap/api/mapcore2d/bl$e;->a:Lcom/amap/api/mapcore2d/bl;

    iget-object v6, v6, Lcom/amap/api/mapcore2d/bl;->h:Lcom/amap/api/mapcore2d/bh;

    iget-object v6, v6, Lcom/amap/api/mapcore2d/bh;->l:Lcom/amap/api/mapcore2d/bh$a;

    invoke-virtual/range {v0 .. v6}, Lcom/amap/api/mapcore2d/bh;->a(Landroid/graphics/PointF;Lcom/amap/api/mapcore2d/ae;Landroid/graphics/Point;DLcom/amap/api/mapcore2d/bh$a;)Lcom/amap/api/mapcore2d/ae;

    move-result-object v0

    return-object v0
.end method

.method public b()I
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/amap/api/mapcore2d/bl$e;->a(Z)I

    move-result v0

    return v0
.end method
