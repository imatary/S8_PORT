.class final Lcom/amap/api/mapcore2d/bb;
.super Ljava/lang/Object;
.source "MapController.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/mapcore2d/bb$1;,
        Lcom/amap/api/mapcore2d/bb$b;,
        Lcom/amap/api/mapcore2d/bb$a;
    }
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:Lcom/amap/api/mapcore2d/bl;

.field private d:Z

.field private e:Lcom/amap/api/mapcore2d/bb$b;

.field private f:Lcom/amap/api/mapcore2d/bb$a;


# direct methods
.method constructor <init>(Lcom/amap/api/mapcore2d/bl;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/amap/api/mapcore2d/bb;->a:I

    iput v0, p0, Lcom/amap/api/mapcore2d/bb;->b:I

    iput-object p1, p0, Lcom/amap/api/mapcore2d/bb;->c:Lcom/amap/api/mapcore2d/bl;

    iput-boolean v0, p0, Lcom/amap/api/mapcore2d/bb;->d:Z

    new-instance v0, Lcom/amap/api/mapcore2d/bb$b;

    invoke-direct {v0, p0, v1}, Lcom/amap/api/mapcore2d/bb$b;-><init>(Lcom/amap/api/mapcore2d/bb;Lcom/amap/api/mapcore2d/bb$1;)V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/bb;->e:Lcom/amap/api/mapcore2d/bb$b;

    new-instance v0, Lcom/amap/api/mapcore2d/bb$a;

    invoke-direct {v0, p0, v1}, Lcom/amap/api/mapcore2d/bb$a;-><init>(Lcom/amap/api/mapcore2d/bb;Lcom/amap/api/mapcore2d/bb$1;)V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/bb;->f:Lcom/amap/api/mapcore2d/bb$a;

    return-void
.end method

.method private a(F)I
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    move v2, v1

    move v1, v0

    :goto_0
    int-to-float v3, v1

    cmpl-float v3, v3, p1

    if-lez v3, :cond_0

    return v2

    :cond_0
    mul-int/lit8 v2, v1, 0x2

    add-int/lit8 v1, v0, 0x1

    move v4, v1

    move v1, v2

    move v2, v0

    move v0, v4

    goto :goto_0
.end method

.method static synthetic a(Lcom/amap/api/mapcore2d/bb;)Lcom/amap/api/mapcore2d/bl;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore2d/bb;->c:Lcom/amap/api/mapcore2d/bl;

    return-object v0
.end method

.method private a(IIZZ)Z
    .locals 6

    const/4 v5, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/amap/api/mapcore2d/bb;->a(IIZZI)Z

    move-result v0

    return v0
.end method

.method private a(IIZZI)Z
    .locals 7

    const-string/jumbo v6, "zoomWithAnimation"

    iget-object v0, p0, Lcom/amap/api/mapcore2d/bb;->c:Lcom/amap/api/mapcore2d/bl;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/bl;->b:Lcom/amap/api/mapcore2d/bl$d;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/bl$d;->g()Lcom/amap/api/mapcore2d/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/b;->K()V

    const/4 v1, 0x0

    if-eqz p3, :cond_2

    iget-object v0, p0, Lcom/amap/api/mapcore2d/bb;->c:Lcom/amap/api/mapcore2d/bl;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/bl;->b:Lcom/amap/api/mapcore2d/bl$d;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/bl$d;->e()I

    move-result v0

    add-int/2addr v0, p5

    :goto_0
    iget-object v2, p0, Lcom/amap/api/mapcore2d/bb;->c:Lcom/amap/api/mapcore2d/bl;

    iget-object v2, v2, Lcom/amap/api/mapcore2d/bl;->b:Lcom/amap/api/mapcore2d/bl$d;

    invoke-virtual {v2}, Lcom/amap/api/mapcore2d/bl$d;->g()Lcom/amap/api/mapcore2d/b;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/amap/api/mapcore2d/b;->a(I)I

    move-result v3

    iget-object v0, p0, Lcom/amap/api/mapcore2d/bb;->c:Lcom/amap/api/mapcore2d/bl;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/bl;->b:Lcom/amap/api/mapcore2d/bl$d;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/bl$d;->e()I

    move-result v0

    if-eq v3, v0, :cond_0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/amap/api/mapcore2d/bb;->a(IIIZZ)V

    const/4 v0, 0x1

    move v1, v0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bb;->c:Lcom/amap/api/mapcore2d/bl;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/bl;->g:Lcom/amap/api/mapcore2d/b;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/b;->q()Lcom/amap/api/mapcore2d/au;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/au;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/mapcore2d/bb;->c:Lcom/amap/api/mapcore2d/bl;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/bl;->g:Lcom/amap/api/mapcore2d/b;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/b;->L()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    return v1

    :cond_2
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bb;->c:Lcom/amap/api/mapcore2d/bl;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/bl;->b:Lcom/amap/api/mapcore2d/bl$d;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/bl$d;->e()I

    move-result v0

    sub-int/2addr v0, p5

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v2, "MapController"

    invoke-static {v0, v2, v6}, Lcom/amap/api/mapcore2d/cy;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private b(Lcom/amap/api/mapcore2d/ae;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/amap/api/mapcore2d/bb;->c:Lcom/amap/api/mapcore2d/bl;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/amap/api/mapcore2d/bb;->c:Lcom/amap/api/mapcore2d/bl;

    iget-object v1, v1, Lcom/amap/api/mapcore2d/bl;->b:Lcom/amap/api/mapcore2d/bl$d;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/amap/api/mapcore2d/bb;->c:Lcom/amap/api/mapcore2d/bl;

    iget-object v1, v1, Lcom/amap/api/mapcore2d/bl;->b:Lcom/amap/api/mapcore2d/bl$d;

    invoke-virtual {v1}, Lcom/amap/api/mapcore2d/bl$d;->f()Lcom/amap/api/mapcore2d/ae;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/amap/api/mapcore2d/ae;->b()I

    move-result v2

    invoke-virtual {v1}, Lcom/amap/api/mapcore2d/ae;->b()I

    move-result v3

    if-ne v2, v3, :cond_2

    invoke-virtual {p1}, Lcom/amap/api/mapcore2d/ae;->a()I

    move-result v2

    invoke-virtual {v1}, Lcom/amap/api/mapcore2d/ae;->a()I

    move-result v1

    if-eq v2, v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private c(Lcom/amap/api/mapcore2d/ae;)V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore2d/bb;->c:Lcom/amap/api/mapcore2d/bl;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/bl;->g:Lcom/amap/api/mapcore2d/b;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/b;->K()V

    iget-object v0, p0, Lcom/amap/api/mapcore2d/bb;->c:Lcom/amap/api/mapcore2d/bl;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/bl;->b:Lcom/amap/api/mapcore2d/bl$d;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore2d/bl$d;->a(Lcom/amap/api/mapcore2d/ae;)V

    return-void
.end method

.method private f(I)I
    .locals 4

    const-string/jumbo v1, "setZoom"

    iget-object v0, p0, Lcom/amap/api/mapcore2d/bb;->c:Lcom/amap/api/mapcore2d/bl;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/bl;->b:Lcom/amap/api/mapcore2d/bl$d;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/bl$d;->g()Lcom/amap/api/mapcore2d/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/b;->K()V

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore2d/b;->a(I)I

    move-result v2

    iget-object v0, p0, Lcom/amap/api/mapcore2d/bb;->c:Lcom/amap/api/mapcore2d/bl;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/bl;->b:Lcom/amap/api/mapcore2d/bl$d;

    invoke-virtual {v0, v2}, Lcom/amap/api/mapcore2d/bl$d;->a(I)V

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bb;->c:Lcom/amap/api/mapcore2d/bl;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/bl;->g:Lcom/amap/api/mapcore2d/b;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/b;->q()Lcom/amap/api/mapcore2d/au;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/au;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore2d/bb;->c:Lcom/amap/api/mapcore2d/bl;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/bl;->g:Lcom/amap/api/mapcore2d/b;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/b;->L()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return v2

    :catch_0
    move-exception v0

    const-string/jumbo v3, "MapController"

    invoke-static {v0, v3, v1}, Lcom/amap/api/mapcore2d/cy;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private g(I)Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/amap/api/mapcore2d/bb;->c:Lcom/amap/api/mapcore2d/bl;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/amap/api/mapcore2d/bb;->c:Lcom/amap/api/mapcore2d/bl;

    iget-object v1, v1, Lcom/amap/api/mapcore2d/bl;->b:Lcom/amap/api/mapcore2d/bl$d;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/amap/api/mapcore2d/bb;->c:Lcom/amap/api/mapcore2d/bl;

    iget-object v1, v1, Lcom/amap/api/mapcore2d/bl;->b:Lcom/amap/api/mapcore2d/bl$d;

    invoke-virtual {v1}, Lcom/amap/api/mapcore2d/bl$d;->e()I

    move-result v1

    if-eq p1, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/amap/api/mapcore2d/bb;->a:I

    return v0
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/amap/api/mapcore2d/bb;->a:I

    return-void
.end method

.method public a(II)V
    .locals 11

    const/high16 v10, 0x3f800000    # 1.0f

    const-string/jumbo v4, "zoomToSpan"

    if-lez p1, :cond_0

    if-gtz p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bb;->c:Lcom/amap/api/mapcore2d/bl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore2d/bb;->c:Lcom/amap/api/mapcore2d/bl;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/bl;->b:Lcom/amap/api/mapcore2d/bl$d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore2d/bb;->c:Lcom/amap/api/mapcore2d/bl;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/bl;->a:Lcom/amap/api/mapcore2d/bl$e;

    if-eqz v0, :cond_0

    const/4 v3, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bb;->c:Lcom/amap/api/mapcore2d/bl;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/bl;->b:Lcom/amap/api/mapcore2d/bl$d;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/bl$d;->b()I

    move-result v0

    iget-object v1, p0, Lcom/amap/api/mapcore2d/bb;->c:Lcom/amap/api/mapcore2d/bl;

    iget-object v1, v1, Lcom/amap/api/mapcore2d/bl;->b:Lcom/amap/api/mapcore2d/bl$d;

    invoke-virtual {v1}, Lcom/amap/api/mapcore2d/bl$d;->a()I

    move-result v1

    iget-object v2, p0, Lcom/amap/api/mapcore2d/bb;->c:Lcom/amap/api/mapcore2d/bl;

    iget-object v2, v2, Lcom/amap/api/mapcore2d/bl;->b:Lcom/amap/api/mapcore2d/bl$d;

    invoke-virtual {v2}, Lcom/amap/api/mapcore2d/bl$d;->e()I

    move-result v2

    iget-object v5, p0, Lcom/amap/api/mapcore2d/bb;->c:Lcom/amap/api/mapcore2d/bl;

    iget-object v5, v5, Lcom/amap/api/mapcore2d/bl;->a:Lcom/amap/api/mapcore2d/bl$e;

    invoke-virtual {v5}, Lcom/amap/api/mapcore2d/bl$e;->b()I

    move-result v5

    iget-object v6, p0, Lcom/amap/api/mapcore2d/bb;->c:Lcom/amap/api/mapcore2d/bl;

    iget-object v6, v6, Lcom/amap/api/mapcore2d/bl;->a:Lcom/amap/api/mapcore2d/bl$e;

    invoke-virtual {v6}, Lcom/amap/api/mapcore2d/bl$e;->a()I

    move-result v6

    if-nez v5, :cond_3

    if-nez v6, :cond_3

    iput p1, p0, Lcom/amap/api/mapcore2d/bb;->a:I

    iput p2, p0, Lcom/amap/api/mapcore2d/bb;->b:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v1, v0

    move v0, v3

    :goto_1
    const-string/jumbo v2, "MapController"

    invoke-static {v1, v2, v4}, Lcom/amap/api/mapcore2d/cy;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_2
    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore2d/bb;->c(I)I

    goto :goto_0

    :cond_3
    int-to-float v3, p1

    int-to-float v6, v6

    div-float/2addr v3, v6

    int-to-float v6, p2

    int-to-float v5, v5

    div-float v5, v6, v5

    :try_start_1
    invoke-static {v3, v5}, Ljava/lang/Math;->max(FF)F

    move-result v3

    cmpl-float v5, v3, v10

    if-lez v5, :cond_4

    invoke-direct {p0, v3}, Lcom/amap/api/mapcore2d/bb;->a(F)I

    move-result v1

    sub-int v1, v2, v1

    if-le v1, v0, :cond_2

    move v0, v1

    goto :goto_2

    :cond_4
    float-to-double v6, v3

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    cmpg-double v0, v6, v8

    if-gez v0, :cond_5

    div-float v0, v10, v3

    invoke-direct {p0, v0}, Lcom/amap/api/mapcore2d/bb;->a(F)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    add-int/2addr v0, v2

    add-int/lit8 v0, v0, -0x1

    if-lt v0, v1, :cond_2

    move v0, v1

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v1, v0

    move v0, v2

    goto :goto_1

    :cond_5
    move v0, v2

    goto :goto_2
.end method

.method public a(IIIZZ)V
    .locals 6

    iget-object v0, p0, Lcom/amap/api/mapcore2d/bb;->e:Lcom/amap/api/mapcore2d/bb$b;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/amap/api/mapcore2d/bb$b;->a(IIIZZ)V

    return-void
.end method

.method public a(Lcom/amap/api/mapcore2d/ae;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/amap/api/mapcore2d/bb;->b(Lcom/amap/api/mapcore2d/ae;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/amap/api/mapcore2d/bb;->c(Lcom/amap/api/mapcore2d/ae;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/amap/api/mapcore2d/ae;I)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/amap/api/mapcore2d/bb;->b(Lcom/amap/api/mapcore2d/ae;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p2}, Lcom/amap/api/mapcore2d/bb;->g(I)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/amap/api/mapcore2d/bb;->c(Lcom/amap/api/mapcore2d/ae;)V

    invoke-direct {p0, p2}, Lcom/amap/api/mapcore2d/bb;->f(I)I

    invoke-static {}, Lcom/amap/api/mapcore2d/t;->a()Lcom/amap/api/mapcore2d/t;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/t;->b()V

    goto :goto_0
.end method

.method public a(Z)V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore2d/bb;->e:Lcom/amap/api/mapcore2d/bb$b;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/bb$b;->a()V

    iget-object v0, p0, Lcom/amap/api/mapcore2d/bb;->f:Lcom/amap/api/mapcore2d/bb$a;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/bb$a;->a()V

    return-void
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/amap/api/mapcore2d/bb;->b:I

    return v0
.end method

.method public b(I)V
    .locals 0

    iput p1, p0, Lcom/amap/api/mapcore2d/bb;->b:I

    return-void
.end method

.method public b(Lcom/amap/api/mapcore2d/ae;I)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/amap/api/mapcore2d/bb;->f:Lcom/amap/api/mapcore2d/bb$a;

    invoke-virtual {v0, p1, v1, v1, p2}, Lcom/amap/api/mapcore2d/bb$a;->a(Lcom/amap/api/mapcore2d/ae;Landroid/os/Message;Ljava/lang/Runnable;I)V

    return-void
.end method

.method public b(II)Z
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0, v0}, Lcom/amap/api/mapcore2d/bb;->a(IIZZ)Z

    move-result v0

    return v0
.end method

.method public c(I)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/amap/api/mapcore2d/bb;->g(I)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return p1

    :cond_0
    invoke-direct {p0, p1}, Lcom/amap/api/mapcore2d/bb;->f(I)I

    invoke-static {}, Lcom/amap/api/mapcore2d/t;->a()Lcom/amap/api/mapcore2d/t;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/t;->b()V

    goto :goto_0
.end method

.method public c(II)V
    .locals 5

    const/4 v2, 0x0

    const/4 v4, 0x0

    iget-boolean v0, p0, Lcom/amap/api/mapcore2d/bb;->d:Z

    if-eqz v0, :cond_1

    iput-boolean v4, p0, Lcom/amap/api/mapcore2d/bb;->d:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez p1, :cond_2

    if-eqz p2, :cond_0

    :cond_2
    sget-boolean v0, Lcom/amap/api/mapcore2d/y;->p:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, v2, v2}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v1, Landroid/graphics/PointF;

    int-to-float v2, p1

    int-to-float v3, p2

    invoke-direct {v1, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    iget-object v2, p0, Lcom/amap/api/mapcore2d/bb;->c:Lcom/amap/api/mapcore2d/bl;

    iget-object v2, v2, Lcom/amap/api/mapcore2d/bl;->h:Lcom/amap/api/mapcore2d/bh;

    iget-object v3, p0, Lcom/amap/api/mapcore2d/bb;->c:Lcom/amap/api/mapcore2d/bl;

    iget-object v3, v3, Lcom/amap/api/mapcore2d/bl;->b:Lcom/amap/api/mapcore2d/bl$d;

    invoke-virtual {v3}, Lcom/amap/api/mapcore2d/bl$d;->e()I

    move-result v3

    invoke-virtual {v2, v0, v1, v3}, Lcom/amap/api/mapcore2d/bh;->a(Landroid/graphics/PointF;Landroid/graphics/PointF;I)V

    :cond_3
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bb;->c:Lcom/amap/api/mapcore2d/bl;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/bl;->b:Lcom/amap/api/mapcore2d/bl$d;

    invoke-virtual {v0, v4, v4}, Lcom/amap/api/mapcore2d/bl$d;->a(ZZ)V

    goto :goto_0
.end method

.method public c()Z
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore2d/bb;->d(I)Z

    move-result v0

    return v0
.end method

.method public d()Z
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore2d/bb;->e(I)Z

    move-result v0

    return v0
.end method

.method d(I)Z
    .locals 6

    iget-object v0, p0, Lcom/amap/api/mapcore2d/bb;->c:Lcom/amap/api/mapcore2d/bl;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/bl;->b:Lcom/amap/api/mapcore2d/bl$d;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/bl$d;->c()I

    move-result v0

    div-int/lit8 v1, v0, 0x2

    iget-object v0, p0, Lcom/amap/api/mapcore2d/bb;->c:Lcom/amap/api/mapcore2d/bl;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/bl;->b:Lcom/amap/api/mapcore2d/bl$d;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/bl$d;->d()I

    move-result v0

    div-int/lit8 v2, v0, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object v0, p0

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/amap/api/mapcore2d/bb;->a(IIZZI)Z

    move-result v0

    return v0
.end method

.method public e()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/mapcore2d/bb;->d:Z

    return-void
.end method

.method e(I)Z
    .locals 6

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/amap/api/mapcore2d/bb;->c:Lcom/amap/api/mapcore2d/bl;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/bl;->b:Lcom/amap/api/mapcore2d/bl$d;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/bl$d;->c()I

    move-result v0

    div-int/lit8 v1, v0, 0x2

    iget-object v0, p0, Lcom/amap/api/mapcore2d/bb;->c:Lcom/amap/api/mapcore2d/bl;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/bl;->b:Lcom/amap/api/mapcore2d/bl$d;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/bl$d;->d()I

    move-result v0

    div-int/lit8 v2, v0, 0x2

    move-object v0, p0

    move v4, v3

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/amap/api/mapcore2d/bb;->a(IIZZI)Z

    move-result v0

    return v0
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 4

    const/16 v3, 0xa

    const/16 v2, -0xa

    const/4 v1, 0x0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v0, 0x1

    packed-switch p2, :pswitch_data_0

    move v0, v1

    :goto_1
    move v1, v0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0, v2, v1}, Lcom/amap/api/mapcore2d/bb;->c(II)V

    goto :goto_1

    :pswitch_1
    invoke-virtual {p0, v3, v1}, Lcom/amap/api/mapcore2d/bb;->c(II)V

    goto :goto_1

    :pswitch_2
    invoke-virtual {p0, v1, v2}, Lcom/amap/api/mapcore2d/bb;->c(II)V

    goto :goto_1

    :pswitch_3
    invoke-virtual {p0, v1, v3}, Lcom/amap/api/mapcore2d/bb;->c(II)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
