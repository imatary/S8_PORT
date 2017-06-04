.class Lcom/amap/api/mapcore2d/cg;
.super Lcom/amap/api/mapcore2d/h;
.source "TransAnim.java"


# instance fields
.field private c:Lcom/amap/api/mapcore2d/ae;

.field private d:Lcom/amap/api/mapcore2d/ae;

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:Lcom/amap/api/mapcore2d/ch;


# direct methods
.method public constructor <init>(IILcom/amap/api/mapcore2d/ae;Lcom/amap/api/mapcore2d/ae;ILcom/amap/api/mapcore2d/ch;)V
    .locals 4

    invoke-direct {p0, p1, p2}, Lcom/amap/api/mapcore2d/h;-><init>(II)V

    iput-object p3, p0, Lcom/amap/api/mapcore2d/cg;->c:Lcom/amap/api/mapcore2d/ae;

    iput-object p4, p0, Lcom/amap/api/mapcore2d/cg;->d:Lcom/amap/api/mapcore2d/ae;

    iget-object v0, p0, Lcom/amap/api/mapcore2d/cg;->c:Lcom/amap/api/mapcore2d/ae;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/ae;->e()D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lcom/amap/api/mapcore2d/cg;->e:I

    iget-object v0, p0, Lcom/amap/api/mapcore2d/cg;->c:Lcom/amap/api/mapcore2d/ae;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/ae;->f()D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lcom/amap/api/mapcore2d/cg;->f:I

    iput-object p6, p0, Lcom/amap/api/mapcore2d/cg;->l:Lcom/amap/api/mapcore2d/ch;

    invoke-virtual {p4}, Lcom/amap/api/mapcore2d/ae;->e()D

    move-result-wide v0

    iget-object v2, p0, Lcom/amap/api/mapcore2d/cg;->c:Lcom/amap/api/mapcore2d/ae;

    invoke-virtual {v2}, Lcom/amap/api/mapcore2d/ae;->e()D

    move-result-wide v2

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lcom/amap/api/mapcore2d/cg;->i:I

    invoke-virtual {p4}, Lcom/amap/api/mapcore2d/ae;->f()D

    move-result-wide v0

    iget-object v2, p0, Lcom/amap/api/mapcore2d/cg;->c:Lcom/amap/api/mapcore2d/ae;

    invoke-virtual {v2}, Lcom/amap/api/mapcore2d/ae;->f()D

    move-result-wide v2

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lcom/amap/api/mapcore2d/cg;->j:I

    invoke-direct {p0, p5}, Lcom/amap/api/mapcore2d/cg;->a(I)V

    return-void
.end method

.method private a(III)I
    .locals 2

    const/4 v1, 0x0

    if-le p2, p1, :cond_0

    add-int v0, p1, p3

    if-lt v0, p2, :cond_1

    iput v1, p0, Lcom/amap/api/mapcore2d/cg;->k:I

    :goto_0
    return p2

    :cond_0
    sub-int v0, p1, p3

    if-gt v0, p2, :cond_1

    iput v1, p0, Lcom/amap/api/mapcore2d/cg;->k:I

    goto :goto_0

    :cond_1
    move p2, v0

    goto :goto_0
.end method

.method private a(I)V
    .locals 2

    const/4 v0, 0x2

    div-int/lit8 v1, p1, 0xa

    div-int/lit8 v1, v1, 0xa

    if-ge v1, v0, :cond_0

    :goto_0
    iget v1, p0, Lcom/amap/api/mapcore2d/cg;->i:I

    div-int/2addr v1, v0

    iput v1, p0, Lcom/amap/api/mapcore2d/cg;->g:I

    iget v1, p0, Lcom/amap/api/mapcore2d/cg;->j:I

    div-int v0, v1, v0

    iput v0, p0, Lcom/amap/api/mapcore2d/cg;->h:I

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method protected a()V
    .locals 9

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/amap/api/mapcore2d/cg;->d:Lcom/amap/api/mapcore2d/ae;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/ae;->e()D

    move-result-wide v0

    double-to-int v0, v0

    iget-object v1, p0, Lcom/amap/api/mapcore2d/cg;->d:Lcom/amap/api/mapcore2d/ae;

    invoke-virtual {v1}, Lcom/amap/api/mapcore2d/ae;->f()D

    move-result-wide v2

    double-to-int v7, v2

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/cg;->e()Z

    move-result v1

    if-nez v1, :cond_1

    iput v0, p0, Lcom/amap/api/mapcore2d/cg;->e:I

    iput v7, p0, Lcom/amap/api/mapcore2d/cg;->f:I

    iget-object v0, p0, Lcom/amap/api/mapcore2d/cg;->l:Lcom/amap/api/mapcore2d/ch;

    new-instance v1, Lcom/amap/api/mapcore2d/ae;

    iget v2, p0, Lcom/amap/api/mapcore2d/cg;->f:I

    int-to-double v2, v2

    iget v4, p0, Lcom/amap/api/mapcore2d/cg;->e:I

    int-to-double v4, v4

    invoke-direct/range {v1 .. v6}, Lcom/amap/api/mapcore2d/ae;-><init>(DDZ)V

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore2d/ch;->a(Lcom/amap/api/mapcore2d/ae;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v1, p0, Lcom/amap/api/mapcore2d/cg;->k:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/amap/api/mapcore2d/cg;->k:I

    iget v1, p0, Lcom/amap/api/mapcore2d/cg;->e:I

    iget v2, p0, Lcom/amap/api/mapcore2d/cg;->g:I

    invoke-direct {p0, v1, v0, v2}, Lcom/amap/api/mapcore2d/cg;->a(III)I

    move-result v1

    iput v1, p0, Lcom/amap/api/mapcore2d/cg;->e:I

    iget v1, p0, Lcom/amap/api/mapcore2d/cg;->f:I

    iget v2, p0, Lcom/amap/api/mapcore2d/cg;->h:I

    invoke-direct {p0, v1, v7, v2}, Lcom/amap/api/mapcore2d/cg;->a(III)I

    move-result v1

    iput v1, p0, Lcom/amap/api/mapcore2d/cg;->f:I

    iget-object v8, p0, Lcom/amap/api/mapcore2d/cg;->l:Lcom/amap/api/mapcore2d/ch;

    new-instance v1, Lcom/amap/api/mapcore2d/ae;

    iget v2, p0, Lcom/amap/api/mapcore2d/cg;->f:I

    int-to-double v2, v2

    iget v4, p0, Lcom/amap/api/mapcore2d/cg;->e:I

    int-to-double v4, v4

    invoke-direct/range {v1 .. v6}, Lcom/amap/api/mapcore2d/ae;-><init>(DDZ)V

    invoke-interface {v8, v1}, Lcom/amap/api/mapcore2d/ch;->a(Lcom/amap/api/mapcore2d/ae;)V

    iget v1, p0, Lcom/amap/api/mapcore2d/cg;->e:I

    if-ne v1, v0, :cond_0

    iget v0, p0, Lcom/amap/api/mapcore2d/cg;->f:I

    if-ne v0, v7, :cond_0

    invoke-virtual {p0, v6}, Lcom/amap/api/mapcore2d/cg;->a(Z)V

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/cg;->f()V

    goto :goto_0
.end method

.method protected b()V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore2d/cg;->l:Lcom/amap/api/mapcore2d/ch;

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/ch;->b()V

    invoke-static {}, Lcom/amap/api/mapcore2d/t;->a()Lcom/amap/api/mapcore2d/t;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/t;->b()V

    return-void
.end method

.method protected f()V
    .locals 1

    invoke-static {}, Lcom/amap/api/mapcore2d/bv;->a()Lcom/amap/api/mapcore2d/bv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/bv;->b()V

    return-void
.end method
