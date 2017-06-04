.class Lcom/amap/api/mapcore2d/co;
.super Lcom/amap/api/mapcore2d/h;
.source "ZoomCtlAnim.java"


# static fields
.field static c:F


# instance fields
.field public d:I

.field public e:Z

.field private f:Landroid/view/animation/Animation$AnimationListener;

.field private g:Lcom/amap/api/mapcore2d/b;

.field private h:F

.field private i:F

.field private j:F

.field private k:F

.field private l:F

.field private m:Z

.field private n:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    sput v0, Lcom/amap/api/mapcore2d/co;->c:F

    return-void
.end method

.method public constructor <init>(Lcom/amap/api/mapcore2d/b;Landroid/view/animation/Animation$AnimationListener;)V
    .locals 3

    const/4 v2, 0x0

    const/16 v0, 0xa0

    const/16 v1, 0x28

    invoke-direct {p0, v0, v1}, Lcom/amap/api/mapcore2d/h;-><init>(II)V

    iput-boolean v2, p0, Lcom/amap/api/mapcore2d/co;->n:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/amap/api/mapcore2d/co;->d:I

    iput-boolean v2, p0, Lcom/amap/api/mapcore2d/co;->e:Z

    iput-object p1, p0, Lcom/amap/api/mapcore2d/co;->g:Lcom/amap/api/mapcore2d/b;

    iput-object p2, p0, Lcom/amap/api/mapcore2d/co;->f:Landroid/view/animation/Animation$AnimationListener;

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 5

    iget-boolean v0, p0, Lcom/amap/api/mapcore2d/co;->m:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/amap/api/mapcore2d/co;->c:F

    iget v1, p0, Lcom/amap/api/mapcore2d/co;->l:F

    add-float/2addr v0, v1

    sput v0, Lcom/amap/api/mapcore2d/co;->c:F

    :goto_0
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    sget v1, Lcom/amap/api/mapcore2d/co;->c:F

    sget v2, Lcom/amap/api/mapcore2d/co;->c:F

    iget v3, p0, Lcom/amap/api/mapcore2d/co;->h:F

    iget v4, p0, Lcom/amap/api/mapcore2d/co;->i:F

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Matrix;->setScale(FFFF)V

    iget-object v1, p0, Lcom/amap/api/mapcore2d/co;->g:Lcom/amap/api/mapcore2d/b;

    sget v2, Lcom/amap/api/mapcore2d/co;->c:F

    invoke-virtual {v1, v2}, Lcom/amap/api/mapcore2d/b;->c(F)Z

    iget-object v1, p0, Lcom/amap/api/mapcore2d/co;->g:Lcom/amap/api/mapcore2d/b;

    invoke-virtual {v1, v0}, Lcom/amap/api/mapcore2d/b;->b(Landroid/graphics/Matrix;)Z

    return-void

    :cond_0
    sget v0, Lcom/amap/api/mapcore2d/co;->c:F

    iget v1, p0, Lcom/amap/api/mapcore2d/co;->l:F

    sub-float/2addr v0, v1

    sput v0, Lcom/amap/api/mapcore2d/co;->c:F

    goto :goto_0
.end method

.method public a(FIZFF)V
    .locals 3

    const/high16 v2, 0x3f000000    # 0.5f

    iput-boolean p3, p0, Lcom/amap/api/mapcore2d/co;->m:Z

    iput p4, p0, Lcom/amap/api/mapcore2d/co;->h:F

    iput p5, p0, Lcom/amap/api/mapcore2d/co;->i:F

    iput p1, p0, Lcom/amap/api/mapcore2d/co;->j:F

    iget v0, p0, Lcom/amap/api/mapcore2d/co;->j:F

    sput v0, Lcom/amap/api/mapcore2d/co;->c:F

    iget-boolean v0, p0, Lcom/amap/api/mapcore2d/co;->m:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/amap/api/mapcore2d/co;->j:F

    iget v1, p0, Lcom/amap/api/mapcore2d/co;->b:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/amap/api/mapcore2d/co;->a:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/amap/api/mapcore2d/co;->l:F

    iget v0, p0, Lcom/amap/api/mapcore2d/co;->j:F

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/amap/api/mapcore2d/co;->k:F

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/amap/api/mapcore2d/co;->j:F

    mul-float/2addr v0, v2

    iget v1, p0, Lcom/amap/api/mapcore2d/co;->b:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/amap/api/mapcore2d/co;->a:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/amap/api/mapcore2d/co;->l:F

    iget v0, p0, Lcom/amap/api/mapcore2d/co;->j:F

    mul-float/2addr v0, v2

    iput v0, p0, Lcom/amap/api/mapcore2d/co;->k:F

    goto :goto_0
.end method

.method public a(IZFF)V
    .locals 9

    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    iget-object v0, p0, Lcom/amap/api/mapcore2d/co;->g:Lcom/amap/api/mapcore2d/b;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/b;->b:[I

    iget-object v1, p0, Lcom/amap/api/mapcore2d/co;->g:Lcom/amap/api/mapcore2d/b;

    iget-object v1, v1, Lcom/amap/api/mapcore2d/b;->b:[I

    aget v1, v1, v6

    aput v1, v0, v7

    iget-object v0, p0, Lcom/amap/api/mapcore2d/co;->g:Lcom/amap/api/mapcore2d/b;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/b;->b:[I

    aput p1, v0, v6

    iget-object v0, p0, Lcom/amap/api/mapcore2d/co;->g:Lcom/amap/api/mapcore2d/b;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/b;->b:[I

    aget v0, v0, v7

    iget-object v1, p0, Lcom/amap/api/mapcore2d/co;->g:Lcom/amap/api/mapcore2d/b;

    iget-object v1, v1, Lcom/amap/api/mapcore2d/b;->b:[I

    aget v1, v1, v6

    if-ne v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/co;->g:Lcom/amap/api/mapcore2d/b;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/b;->a()Lcom/amap/api/mapcore2d/bl;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/mapcore2d/co;->g:Lcom/amap/api/mapcore2d/b;

    invoke-virtual {v1}, Lcom/amap/api/mapcore2d/b;->B()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/bl;->a(Z)V

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/co;->e()Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0xa0

    iput v0, p0, Lcom/amap/api/mapcore2d/co;->a:I

    iget-object v0, p0, Lcom/amap/api/mapcore2d/co;->g:Lcom/amap/api/mapcore2d/b;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/b;->H()F

    move-result v1

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/amap/api/mapcore2d/co;->a(FIZFF)V

    iget-object v0, p0, Lcom/amap/api/mapcore2d/co;->g:Lcom/amap/api/mapcore2d/b;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/b;->a()Lcom/amap/api/mapcore2d/bl;

    move-result-object v0

    iget-object v0, v0, Lcom/amap/api/mapcore2d/bl;->d:Lcom/amap/api/mapcore2d/bl$a;

    invoke-virtual {v0, v6}, Lcom/amap/api/mapcore2d/bl$a;->a(Z)V

    iget-object v0, p0, Lcom/amap/api/mapcore2d/co;->g:Lcom/amap/api/mapcore2d/b;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/b;->a()Lcom/amap/api/mapcore2d/bl;

    move-result-object v0

    iget-object v0, v0, Lcom/amap/api/mapcore2d/bl;->d:Lcom/amap/api/mapcore2d/bl$a;

    iput-boolean v6, v0, Lcom/amap/api/mapcore2d/bl$a;->b:Z

    iget-object v0, p0, Lcom/amap/api/mapcore2d/co;->f:Landroid/view/animation/Animation$AnimationListener;

    invoke-interface {v0, v8}, Landroid/view/animation/Animation$AnimationListener;->onAnimationStart(Landroid/view/animation/Animation;)V

    invoke-super {p0}, Lcom/amap/api/mapcore2d/h;->c()V

    goto :goto_0

    :cond_1
    iput-boolean v6, p0, Lcom/amap/api/mapcore2d/co;->n:Z

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/co;->d()V

    iget v1, p0, Lcom/amap/api/mapcore2d/co;->k:F

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/amap/api/mapcore2d/co;->a(FIZFF)V

    iget-object v0, p0, Lcom/amap/api/mapcore2d/co;->g:Lcom/amap/api/mapcore2d/b;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/b;->a()Lcom/amap/api/mapcore2d/bl;

    move-result-object v0

    iget-object v0, v0, Lcom/amap/api/mapcore2d/bl;->d:Lcom/amap/api/mapcore2d/bl$a;

    invoke-virtual {v0, v6}, Lcom/amap/api/mapcore2d/bl$a;->a(Z)V

    iget-object v0, p0, Lcom/amap/api/mapcore2d/co;->g:Lcom/amap/api/mapcore2d/b;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/b;->a()Lcom/amap/api/mapcore2d/bl;

    move-result-object v0

    iget-object v0, v0, Lcom/amap/api/mapcore2d/bl;->d:Lcom/amap/api/mapcore2d/bl$a;

    iput-boolean v6, v0, Lcom/amap/api/mapcore2d/bl$a;->b:Z

    iget-object v0, p0, Lcom/amap/api/mapcore2d/co;->f:Landroid/view/animation/Animation$AnimationListener;

    invoke-interface {v0, v8}, Landroid/view/animation/Animation$AnimationListener;->onAnimationStart(Landroid/view/animation/Animation;)V

    invoke-super {p0}, Lcom/amap/api/mapcore2d/h;->c()V

    iput-boolean v7, p0, Lcom/amap/api/mapcore2d/co;->n:Z

    goto :goto_0
.end method

.method protected b()V
    .locals 5

    const/4 v4, 0x1

    iget-boolean v0, p0, Lcom/amap/api/mapcore2d/co;->n:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/co;->g:Lcom/amap/api/mapcore2d/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore2d/co;->g:Lcom/amap/api/mapcore2d/b;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/b;->a()Lcom/amap/api/mapcore2d/bl;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore2d/co;->g:Lcom/amap/api/mapcore2d/b;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/b;->a()Lcom/amap/api/mapcore2d/bl;

    move-result-object v0

    iget-object v0, v0, Lcom/amap/api/mapcore2d/bl;->d:Lcom/amap/api/mapcore2d/bl$a;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/amap/api/mapcore2d/bl$a;->b:Z

    iget-boolean v0, p0, Lcom/amap/api/mapcore2d/co;->e:Z

    if-ne v0, v4, :cond_2

    new-instance v0, Landroid/graphics/Point;

    iget v1, p0, Lcom/amap/api/mapcore2d/co;->h:F

    float-to-int v1, v1

    iget v2, p0, Lcom/amap/api/mapcore2d/co;->i:F

    float-to-int v2, v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    iget-object v1, p0, Lcom/amap/api/mapcore2d/co;->g:Lcom/amap/api/mapcore2d/b;

    invoke-virtual {v1}, Lcom/amap/api/mapcore2d/b;->s()Lcom/amap/api/mapcore2d/br;

    move-result-object v1

    iget v2, p0, Lcom/amap/api/mapcore2d/co;->h:F

    float-to-int v2, v2

    iget v3, p0, Lcom/amap/api/mapcore2d/co;->i:F

    float-to-int v3, v3

    invoke-interface {v1, v2, v3}, Lcom/amap/api/mapcore2d/br;->a(II)Lcom/amap/api/mapcore2d/ae;

    move-result-object v1

    iget-object v2, p0, Lcom/amap/api/mapcore2d/co;->g:Lcom/amap/api/mapcore2d/b;

    invoke-virtual {v2}, Lcom/amap/api/mapcore2d/b;->a()Lcom/amap/api/mapcore2d/bl;

    move-result-object v2

    iget-object v2, v2, Lcom/amap/api/mapcore2d/bl;->h:Lcom/amap/api/mapcore2d/bh;

    iget-object v3, p0, Lcom/amap/api/mapcore2d/co;->g:Lcom/amap/api/mapcore2d/b;

    invoke-virtual {v3}, Lcom/amap/api/mapcore2d/b;->a()Lcom/amap/api/mapcore2d/bl;

    move-result-object v3

    iget-object v3, v3, Lcom/amap/api/mapcore2d/bl;->h:Lcom/amap/api/mapcore2d/bh;

    invoke-virtual {v3, v1}, Lcom/amap/api/mapcore2d/bh;->a(Lcom/amap/api/mapcore2d/ae;)Lcom/amap/api/mapcore2d/ae;

    move-result-object v1

    iput-object v1, v2, Lcom/amap/api/mapcore2d/bh;->i:Lcom/amap/api/mapcore2d/ae;

    iget-object v1, p0, Lcom/amap/api/mapcore2d/co;->g:Lcom/amap/api/mapcore2d/b;

    invoke-virtual {v1}, Lcom/amap/api/mapcore2d/b;->a()Lcom/amap/api/mapcore2d/bl;

    move-result-object v1

    iget-object v1, v1, Lcom/amap/api/mapcore2d/bl;->h:Lcom/amap/api/mapcore2d/bh;

    invoke-virtual {v1, v0}, Lcom/amap/api/mapcore2d/bh;->a(Landroid/graphics/Point;)V

    iget-object v0, p0, Lcom/amap/api/mapcore2d/co;->g:Lcom/amap/api/mapcore2d/b;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/b;->a()Lcom/amap/api/mapcore2d/bl;

    move-result-object v0

    iget-object v0, v0, Lcom/amap/api/mapcore2d/bl;->b:Lcom/amap/api/mapcore2d/bl$d;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/amap/api/mapcore2d/bl$d;->a(ZZ)V

    :cond_2
    iget-object v0, p0, Lcom/amap/api/mapcore2d/co;->g:Lcom/amap/api/mapcore2d/b;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/b;->D()Lcom/amap/api/mapcore2d/bb;

    move-result-object v0

    iget v1, p0, Lcom/amap/api/mapcore2d/co;->d:I

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/bb;->c(I)I

    iget-object v0, p0, Lcom/amap/api/mapcore2d/co;->f:Landroid/view/animation/Animation$AnimationListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/animation/Animation$AnimationListener;->onAnimationEnd(Landroid/view/animation/Animation;)V

    iget-boolean v0, p0, Lcom/amap/api/mapcore2d/co;->e:Z

    if-ne v0, v4, :cond_3

    new-instance v0, Landroid/graphics/Point;

    iget-object v1, p0, Lcom/amap/api/mapcore2d/co;->g:Lcom/amap/api/mapcore2d/b;

    invoke-virtual {v1}, Lcom/amap/api/mapcore2d/b;->a()Lcom/amap/api/mapcore2d/bl;

    move-result-object v1

    iget-object v1, v1, Lcom/amap/api/mapcore2d/bl;->b:Lcom/amap/api/mapcore2d/bl$d;

    invoke-virtual {v1}, Lcom/amap/api/mapcore2d/bl$d;->c()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lcom/amap/api/mapcore2d/co;->g:Lcom/amap/api/mapcore2d/b;

    invoke-virtual {v2}, Lcom/amap/api/mapcore2d/b;->a()Lcom/amap/api/mapcore2d/bl;

    move-result-object v2

    iget-object v2, v2, Lcom/amap/api/mapcore2d/bl;->b:Lcom/amap/api/mapcore2d/bl$d;

    invoke-virtual {v2}, Lcom/amap/api/mapcore2d/bl$d;->d()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    iget-object v1, p0, Lcom/amap/api/mapcore2d/co;->g:Lcom/amap/api/mapcore2d/b;

    invoke-virtual {v1}, Lcom/amap/api/mapcore2d/b;->s()Lcom/amap/api/mapcore2d/br;

    move-result-object v1

    iget-object v2, p0, Lcom/amap/api/mapcore2d/co;->g:Lcom/amap/api/mapcore2d/b;

    invoke-virtual {v2}, Lcom/amap/api/mapcore2d/b;->a()Lcom/amap/api/mapcore2d/bl;

    move-result-object v2

    iget-object v2, v2, Lcom/amap/api/mapcore2d/bl;->b:Lcom/amap/api/mapcore2d/bl$d;

    invoke-virtual {v2}, Lcom/amap/api/mapcore2d/bl$d;->c()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iget-object v3, p0, Lcom/amap/api/mapcore2d/co;->g:Lcom/amap/api/mapcore2d/b;

    invoke-virtual {v3}, Lcom/amap/api/mapcore2d/b;->a()Lcom/amap/api/mapcore2d/bl;

    move-result-object v3

    iget-object v3, v3, Lcom/amap/api/mapcore2d/bl;->b:Lcom/amap/api/mapcore2d/bl$d;

    invoke-virtual {v3}, Lcom/amap/api/mapcore2d/bl$d;->d()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    invoke-interface {v1, v2, v3}, Lcom/amap/api/mapcore2d/br;->a(II)Lcom/amap/api/mapcore2d/ae;

    move-result-object v1

    iget-object v2, p0, Lcom/amap/api/mapcore2d/co;->g:Lcom/amap/api/mapcore2d/b;

    invoke-virtual {v2}, Lcom/amap/api/mapcore2d/b;->a()Lcom/amap/api/mapcore2d/bl;

    move-result-object v2

    iget-object v2, v2, Lcom/amap/api/mapcore2d/bl;->h:Lcom/amap/api/mapcore2d/bh;

    iget-object v3, p0, Lcom/amap/api/mapcore2d/co;->g:Lcom/amap/api/mapcore2d/b;

    invoke-virtual {v3}, Lcom/amap/api/mapcore2d/b;->a()Lcom/amap/api/mapcore2d/bl;

    move-result-object v3

    iget-object v3, v3, Lcom/amap/api/mapcore2d/bl;->h:Lcom/amap/api/mapcore2d/bh;

    invoke-virtual {v3, v1}, Lcom/amap/api/mapcore2d/bh;->a(Lcom/amap/api/mapcore2d/ae;)Lcom/amap/api/mapcore2d/ae;

    move-result-object v1

    iput-object v1, v2, Lcom/amap/api/mapcore2d/bh;->i:Lcom/amap/api/mapcore2d/ae;

    iget-object v1, p0, Lcom/amap/api/mapcore2d/co;->g:Lcom/amap/api/mapcore2d/b;

    invoke-virtual {v1}, Lcom/amap/api/mapcore2d/b;->a()Lcom/amap/api/mapcore2d/bl;

    move-result-object v1

    iget-object v1, v1, Lcom/amap/api/mapcore2d/bl;->h:Lcom/amap/api/mapcore2d/bh;

    invoke-virtual {v1, v0}, Lcom/amap/api/mapcore2d/bh;->a(Landroid/graphics/Point;)V

    iget-object v0, p0, Lcom/amap/api/mapcore2d/co;->g:Lcom/amap/api/mapcore2d/b;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/b;->a()Lcom/amap/api/mapcore2d/bl;

    move-result-object v0

    iget-object v0, v0, Lcom/amap/api/mapcore2d/bl;->b:Lcom/amap/api/mapcore2d/bl$d;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/amap/api/mapcore2d/bl$d;->a(ZZ)V

    :cond_3
    iget-object v0, p0, Lcom/amap/api/mapcore2d/co;->g:Lcom/amap/api/mapcore2d/b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/b;->e(I)V

    const/high16 v0, 0x3f800000    # 1.0f

    sput v0, Lcom/amap/api/mapcore2d/co;->c:F

    const/high16 v0, 0x3f800000    # 1.0f

    sput v0, Lcom/amap/api/mapcore2d/bm;->j:F

    iget-object v0, p0, Lcom/amap/api/mapcore2d/co;->g:Lcom/amap/api/mapcore2d/b;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/b;->a()Lcom/amap/api/mapcore2d/bl;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/bl;->a(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "ZoomCtlAnim"

    const-string/jumbo v2, "onStop"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore2d/cy;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
