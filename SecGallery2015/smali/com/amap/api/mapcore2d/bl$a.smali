.class public Lcom/amap/api/mapcore2d/bl$a;
.super Ljava/lang/Object;
.source "Mediator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/mapcore2d/bl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public a:Lcom/amap/api/mapcore2d/bw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amap/api/mapcore2d/bw",
            "<",
            "Lcom/amap/api/mapcore2d/aw;",
            ">;"
        }
    .end annotation
.end field

.field public b:Z

.field public c:Z

.field d:Ljava/lang/String;

.field e:Ljava/lang/String;

.field f:Ljava/lang/String;

.field g:Ljava/lang/String;

.field h:Ljava/lang/String;

.field final synthetic i:Lcom/amap/api/mapcore2d/bl;

.field private j:Z

.field private k:Z

.field private l:Landroid/content/Context;

.field private m:I

.field private n:I

.field private o:Z


# direct methods
.method private constructor <init>(Lcom/amap/api/mapcore2d/bl;Landroid/content/Context;)V
    .locals 5

    const/4 v4, 0x5

    const/4 v3, 0x1

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/amap/api/mapcore2d/bl$a;->i:Lcom/amap/api/mapcore2d/bl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/amap/api/mapcore2d/bl$a;->j:Z

    iput-boolean v3, p0, Lcom/amap/api/mapcore2d/bl$a;->k:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore2d/bl$a;->a:Lcom/amap/api/mapcore2d/bw;

    iput-boolean v1, p0, Lcom/amap/api/mapcore2d/bl$a;->b:Z

    iput-boolean v1, p0, Lcom/amap/api/mapcore2d/bl$a;->c:Z

    const-string/jumbo v0, "zh_cn"

    iput-object v0, p0, Lcom/amap/api/mapcore2d/bl$a;->d:Ljava/lang/String;

    iput v1, p0, Lcom/amap/api/mapcore2d/bl$a;->m:I

    iput v1, p0, Lcom/amap/api/mapcore2d/bl$a;->n:I

    const-string/jumbo v0, "SatelliteMap3"

    iput-object v0, p0, Lcom/amap/api/mapcore2d/bl$a;->f:Ljava/lang/String;

    const-string/jumbo v0, "GridTmc3"

    iput-object v0, p0, Lcom/amap/api/mapcore2d/bl$a;->g:Ljava/lang/String;

    const-string/jumbo v0, "SateliteTmc3"

    iput-object v0, p0, Lcom/amap/api/mapcore2d/bl$a;->h:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/amap/api/mapcore2d/bl$a;->o:Z

    if-nez p2, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-object p2, p0, Lcom/amap/api/mapcore2d/bl$a;->l:Landroid/content/Context;

    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    const-string/jumbo v0, "window"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    sget v2, Lcom/amap/api/mapcore2d/y;->i:I

    div-int/2addr v0, v2

    invoke-direct {p0}, Lcom/amap/api/mapcore2d/bl$a;->c()I

    move-result v2

    add-int/2addr v0, v2

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    sget v2, Lcom/amap/api/mapcore2d/y;->i:I

    div-int/2addr v1, v2

    invoke-direct {p0}, Lcom/amap/api/mapcore2d/bl$a;->c()I

    move-result v2

    add-int/2addr v1, v2

    mul-int v2, v0, v1

    add-int/2addr v0, v2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/amap/api/mapcore2d/bl$a;->m:I

    iget v0, p0, Lcom/amap/api/mapcore2d/bl$a;->m:I

    div-int/lit8 v0, v0, 0x8

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/amap/api/mapcore2d/bl$a;->n:I

    iget v0, p0, Lcom/amap/api/mapcore2d/bl$a;->n:I

    if-nez v0, :cond_2

    iput v3, p0, Lcom/amap/api/mapcore2d/bl$a;->n:I

    :cond_1
    :goto_1
    const-string/jumbo v0, "zh_cn"

    invoke-direct {p0, p2, v0}, Lcom/amap/api/mapcore2d/bl$a;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/amap/api/mapcore2d/bl$a;->n:I

    if-le v0, v4, :cond_1

    iput v4, p0, Lcom/amap/api/mapcore2d/bl$a;->n:I

    goto :goto_1
.end method

.method synthetic constructor <init>(Lcom/amap/api/mapcore2d/bl;Landroid/content/Context;Lcom/amap/api/mapcore2d/bl$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/amap/api/mapcore2d/bl$a;-><init>(Lcom/amap/api/mapcore2d/bl;Landroid/content/Context;)V

    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/amap/api/mapcore2d/bl$a;->a:Lcom/amap/api/mapcore2d/bw;

    if-nez v0, :cond_0

    new-instance v0, Lcom/amap/api/mapcore2d/bw;

    invoke-direct {v0}, Lcom/amap/api/mapcore2d/bw;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/bl$a;->a:Lcom/amap/api/mapcore2d/bw;

    :cond_0
    sget-object v0, Lcom/amap/api/mapcore2d/y;->g:Ljava/lang/String;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/amap/api/mapcore2d/y;->g:Ljava/lang/String;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_1
    const-string/jumbo v0, "zh_cn"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "GridMapV3"

    iput-object v0, p0, Lcom/amap/api/mapcore2d/bl$a;->e:Ljava/lang/String;

    :cond_2
    :goto_0
    new-instance v0, Lcom/amap/api/mapcore2d/aw;

    invoke-direct {v0}, Lcom/amap/api/mapcore2d/aw;-><init>()V

    new-instance v1, Lcom/amap/api/mapcore2d/bl$a$1;

    invoke-direct {v1, p0}, Lcom/amap/api/mapcore2d/bl$a$1;-><init>(Lcom/amap/api/mapcore2d/bl$a;)V

    iput-object v1, v0, Lcom/amap/api/mapcore2d/aw;->j:Lcom/amap/api/mapcore2d/ck;

    iget-object v1, p0, Lcom/amap/api/mapcore2d/bl$a;->e:Ljava/lang/String;

    iput-object v1, v0, Lcom/amap/api/mapcore2d/aw;->a:Ljava/lang/String;

    iput-boolean v2, v0, Lcom/amap/api/mapcore2d/aw;->e:Z

    iput-boolean v2, v0, Lcom/amap/api/mapcore2d/aw;->d:Z

    iput-boolean v2, v0, Lcom/amap/api/mapcore2d/aw;->f:Z

    iput-boolean v2, v0, Lcom/amap/api/mapcore2d/aw;->g:Z

    sget v1, Lcom/amap/api/mapcore2d/y;->c:I

    iput v1, v0, Lcom/amap/api/mapcore2d/aw;->b:I

    sget v1, Lcom/amap/api/mapcore2d/y;->d:I

    iput v1, v0, Lcom/amap/api/mapcore2d/aw;->c:I

    invoke-virtual {p0, v0, p1}, Lcom/amap/api/mapcore2d/bl$a;->a(Lcom/amap/api/mapcore2d/aw;Landroid/content/Context;)Z

    return-void

    :cond_3
    const-string/jumbo v0, "en"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "GridMapEnV3"

    iput-object v0, p0, Lcom/amap/api/mapcore2d/bl$a;->e:Ljava/lang/String;

    goto :goto_0

    :cond_4
    sget-object v0, Lcom/amap/api/mapcore2d/y;->g:Ljava/lang/String;

    iput-object v0, p0, Lcom/amap/api/mapcore2d/bl$a;->e:Ljava/lang/String;

    goto :goto_0
.end method

.method private a(Landroid/graphics/Canvas;)V
    .locals 4

    iget-object v0, p0, Lcom/amap/api/mapcore2d/bl$a;->a:Lcom/amap/api/mapcore2d/bw;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/bw;->size()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_2

    iget-object v0, p0, Lcom/amap/api/mapcore2d/bl$a;->a:Lcom/amap/api/mapcore2d/bw;

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/bw;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore2d/aw;

    if-nez v0, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    iget-boolean v3, v0, Lcom/amap/api/mapcore2d/aw;->f:Z

    if-eqz v3, :cond_0

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore2d/aw;->a(Landroid/graphics/Canvas;)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method static synthetic a(Lcom/amap/api/mapcore2d/bl$a;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/mapcore2d/bl$a;->o:Z

    return v0
.end method

.method private b(Landroid/graphics/Canvas;)V
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/mapcore2d/bl$a;->k:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore2d/bl$a;->i:Lcom/amap/api/mapcore2d/bl;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/bl;->f:Lcom/amap/api/mapcore2d/ac;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore2d/ac;->a(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method private c()I
    .locals 2

    sget v0, Lcom/amap/api/mapcore2d/y;->i:I

    const/16 v1, 0x200

    if-ne v0, v1, :cond_0

    const/4 v0, 0x4

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x3

    goto :goto_0
.end method

.method private c(Landroid/graphics/Canvas;)V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore2d/bl$a;->i:Lcom/amap/api/mapcore2d/bl;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/bl;->g:Lcom/amap/api/mapcore2d/b;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/b;->i:Lcom/amap/api/mapcore2d/be;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore2d/be;->a(Landroid/graphics/Canvas;)V

    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v5, 0x1

    const-string/jumbo v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-ne v0, v5, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bl$a;->a:Lcom/amap/api/mapcore2d/bw;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/bw;->size()I

    move-result v3

    move v1, v2

    :goto_0
    if-ge v1, v3, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore2d/bl$a;->a:Lcom/amap/api/mapcore2d/bw;

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/bw;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore2d/aw;

    if-nez v0, :cond_3

    :cond_2
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_3
    iget-object v4, v0, Lcom/amap/api/mapcore2d/aw;->a:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-boolean v4, v0, Lcom/amap/api/mapcore2d/aw;->e:Z

    if-ne v4, v5, :cond_2

    iget-boolean v4, v0, Lcom/amap/api/mapcore2d/aw;->f:Z

    if-ne v4, v5, :cond_2

    iput-boolean v2, v0, Lcom/amap/api/mapcore2d/aw;->f:Z

    goto :goto_1
.end method

.method private d()V
    .locals 3

    iget-object v0, p0, Lcom/amap/api/mapcore2d/bl$a;->a:Lcom/amap/api/mapcore2d/bw;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/bw;->size()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    iget-object v0, p0, Lcom/amap/api/mapcore2d/bl$a;->a:Lcom/amap/api/mapcore2d/bw;

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/bw;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore2d/aw;

    if-nez v0, :cond_0

    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    iput v1, v0, Lcom/amap/api/mapcore2d/aw;->k:I

    goto :goto_1

    :cond_1
    return-void
.end method

.method private d(Ljava/lang/String;)Z
    .locals 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/amap/api/mapcore2d/bl$a;->a:Lcom/amap/api/mapcore2d/bw;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bl$a;->a:Lcom/amap/api/mapcore2d/bw;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/bw;->size()I

    move-result v4

    move v3, v1

    :goto_1
    if-ge v3, v4, :cond_3

    iget-object v0, p0, Lcom/amap/api/mapcore2d/bl$a;->a:Lcom/amap/api/mapcore2d/bw;

    invoke-virtual {v0, v3}, Lcom/amap/api/mapcore2d/bw;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore2d/aw;

    if-nez v0, :cond_2

    :cond_1
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :cond_2
    iget-object v0, v0, Lcom/amap/api/mapcore2d/aw;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-ne v0, v2, :cond_1

    move v0, v2

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/amap/api/mapcore2d/bl$a;->i:Lcom/amap/api/mapcore2d/bl;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/bl;->d:Lcom/amap/api/mapcore2d/bl$a;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/bl$a;->a:Lcom/amap/api/mapcore2d/bw;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bl$a;->i:Lcom/amap/api/mapcore2d/bl;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/bl;->d:Lcom/amap/api/mapcore2d/bl$a;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/bl$a;->a:Lcom/amap/api/mapcore2d/bw;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/bw;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore2d/aw;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/aw;->a()V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bl$a;->i:Lcom/amap/api/mapcore2d/bl;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/bl;->d:Lcom/amap/api/mapcore2d/bl$a;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/bl$a;->a:Lcom/amap/api/mapcore2d/bw;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/bw;->clear()V

    iget-object v0, p0, Lcom/amap/api/mapcore2d/bl$a;->i:Lcom/amap/api/mapcore2d/bl;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/bl;->d:Lcom/amap/api/mapcore2d/bl$a;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/amap/api/mapcore2d/bl$a;->a:Lcom/amap/api/mapcore2d/bw;

    goto :goto_0
.end method

.method public a(Landroid/graphics/Canvas;Landroid/graphics/Matrix;FF)V
    .locals 2

    iget-boolean v0, p0, Lcom/amap/api/mapcore2d/bl$a;->j:Z

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p1, p3, p4}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    invoke-direct {p0, p1}, Lcom/amap/api/mapcore2d/bl$a;->a(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/amap/api/mapcore2d/bl$a;->i:Lcom/amap/api/mapcore2d/bl;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/bl;->g:Lcom/amap/api/mapcore2d/b;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/b;->h:Lcom/amap/api/mapcore2d/cc;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/cc;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/amap/api/mapcore2d/bl$a;->b(Landroid/graphics/Canvas;)V

    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bl$a;->i:Lcom/amap/api/mapcore2d/bl;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/bl;->g:Lcom/amap/api/mapcore2d/b;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/b;->h:Lcom/amap/api/mapcore2d/cc;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore2d/cc;->a(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    iget-object v0, p0, Lcom/amap/api/mapcore2d/bl$a;->i:Lcom/amap/api/mapcore2d/bl;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/bl;->g:Lcom/amap/api/mapcore2d/b;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/b;->h:Lcom/amap/api/mapcore2d/cc;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/cc;->b()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lcom/amap/api/mapcore2d/bl$a;->b(Landroid/graphics/Canvas;)V

    :cond_1
    iget-boolean v0, p0, Lcom/amap/api/mapcore2d/bl$a;->b:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/amap/api/mapcore2d/bl$a;->c:Z

    if-nez v0, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore2d/bl$a;->a(Z)V

    iget-object v0, p0, Lcom/amap/api/mapcore2d/bl$a;->i:Lcom/amap/api/mapcore2d/bl;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/bl;->b:Lcom/amap/api/mapcore2d/bl$d;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/bl$d;->a(Lcom/amap/api/mapcore2d/bl$d;)Lcom/amap/api/mapcore2d/b;

    move-result-object v0

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/b;->b(Landroid/graphics/Matrix;)Z

    iget-object v0, p0, Lcom/amap/api/mapcore2d/bl$a;->i:Lcom/amap/api/mapcore2d/bl;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/bl;->b:Lcom/amap/api/mapcore2d/bl$d;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/bl$d;->a(Lcom/amap/api/mapcore2d/bl$d;)Lcom/amap/api/mapcore2d/b;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/b;->c(F)Z

    iget-object v0, p0, Lcom/amap/api/mapcore2d/bl$a;->i:Lcom/amap/api/mapcore2d/bl;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/bl;->b:Lcom/amap/api/mapcore2d/bl$d;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/bl$d;->a(Lcom/amap/api/mapcore2d/bl$d;)Lcom/amap/api/mapcore2d/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/b;->I()V

    :cond_2
    :goto_0
    invoke-direct {p0, p1}, Lcom/amap/api/mapcore2d/bl$a;->c(Landroid/graphics/Canvas;)V

    return-void

    :cond_3
    invoke-direct {p0, p1}, Lcom/amap/api/mapcore2d/bl$a;->a(Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1}, Lcom/amap/api/mapcore2d/bl$a;->b(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/amap/api/mapcore2d/bl$a;->i:Lcom/amap/api/mapcore2d/bl;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/bl;->g:Lcom/amap/api/mapcore2d/b;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/b;->h:Lcom/amap/api/mapcore2d/cc;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore2d/cc;->a(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/amap/api/mapcore2d/bl$a;->j:Z

    return-void
.end method

.method public a(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public a(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method a(Lcom/amap/api/mapcore2d/aw;Landroid/content/Context;)Z
    .locals 8

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v6

    :cond_1
    iget-object v0, p1, Lcom/amap/api/mapcore2d/aw;->a:Ljava/lang/String;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eq v0, v7, :cond_0

    iget-object v0, p1, Lcom/amap/api/mapcore2d/aw;->a:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/amap/api/mapcore2d/bl$a;->d(Ljava/lang/String;)Z

    move-result v0

    if-eq v0, v7, :cond_0

    new-instance v0, Lcom/amap/api/mapcore2d/bw;

    invoke-direct {v0}, Lcom/amap/api/mapcore2d/bw;-><init>()V

    iput-object v0, p1, Lcom/amap/api/mapcore2d/aw;->o:Lcom/amap/api/mapcore2d/bw;

    new-instance v0, Lcom/amap/api/mapcore2d/q;

    iget v1, p0, Lcom/amap/api/mapcore2d/bl$a;->m:I

    iget v2, p0, Lcom/amap/api/mapcore2d/bl$a;->n:I

    iget-boolean v3, p1, Lcom/amap/api/mapcore2d/aw;->h:Z

    iget-wide v4, p1, Lcom/amap/api/mapcore2d/aw;->i:J

    invoke-direct/range {v0 .. v5}, Lcom/amap/api/mapcore2d/q;-><init>(IIZJ)V

    iput-object v0, p1, Lcom/amap/api/mapcore2d/aw;->m:Lcom/amap/api/mapcore2d/q;

    new-instance v0, Lcom/amap/api/mapcore2d/r;

    iget-object v1, p0, Lcom/amap/api/mapcore2d/bl$a;->i:Lcom/amap/api/mapcore2d/bl;

    iget-object v1, v1, Lcom/amap/api/mapcore2d/bl;->b:Lcom/amap/api/mapcore2d/bl$d;

    invoke-static {v1}, Lcom/amap/api/mapcore2d/bl$d;->a(Lcom/amap/api/mapcore2d/bl$d;)Lcom/amap/api/mapcore2d/b;

    move-result-object v1

    iget-boolean v1, v1, Lcom/amap/api/mapcore2d/b;->c:Z

    invoke-direct {v0, p2, v1, p1}, Lcom/amap/api/mapcore2d/r;-><init>(Landroid/content/Context;ZLcom/amap/api/mapcore2d/aw;)V

    iput-object v0, p1, Lcom/amap/api/mapcore2d/aw;->n:Lcom/amap/api/mapcore2d/r;

    iget-object v0, p1, Lcom/amap/api/mapcore2d/aw;->n:Lcom/amap/api/mapcore2d/r;

    iget-object v1, p1, Lcom/amap/api/mapcore2d/aw;->m:Lcom/amap/api/mapcore2d/q;

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/r;->a(Lcom/amap/api/mapcore2d/q;)V

    iget-object v0, p0, Lcom/amap/api/mapcore2d/bl$a;->a:Lcom/amap/api/mapcore2d/bw;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/bw;->size()I

    move-result v0

    iget-boolean v1, p1, Lcom/amap/api/mapcore2d/aw;->e:Z

    if-eqz v1, :cond_2

    if-nez v0, :cond_4

    :cond_2
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bl$a;->a:Lcom/amap/api/mapcore2d/bw;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore2d/bw;->add(Ljava/lang/Object;)Z

    move-result v0

    :goto_1
    invoke-direct {p0}, Lcom/amap/api/mapcore2d/bl$a;->d()V

    iget-boolean v1, p1, Lcom/amap/api/mapcore2d/aw;->f:Z

    if-ne v1, v7, :cond_3

    iget-object v1, p1, Lcom/amap/api/mapcore2d/aw;->a:Ljava/lang/String;

    invoke-virtual {p0, v1, v7}, Lcom/amap/api/mapcore2d/bl$a;->a(Ljava/lang/String;Z)Z

    :cond_3
    move v6, v0

    goto :goto_0

    :cond_4
    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_2
    if-ltz v1, :cond_7

    iget-object v0, p0, Lcom/amap/api/mapcore2d/bl$a;->a:Lcom/amap/api/mapcore2d/bw;

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/bw;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore2d/aw;

    if-nez v0, :cond_6

    :cond_5
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_2

    :cond_6
    iget-boolean v0, v0, Lcom/amap/api/mapcore2d/aw;->e:Z

    if-ne v0, v7, :cond_5

    iget-object v0, p0, Lcom/amap/api/mapcore2d/bl$a;->a:Lcom/amap/api/mapcore2d/bw;

    invoke-virtual {v0, v1, p1}, Lcom/amap/api/mapcore2d/bw;->add(ILjava/lang/Object;)V

    move v0, v6

    goto :goto_1

    :cond_7
    move v0, v6

    goto :goto_1
.end method

.method a(Ljava/lang/String;Z)Z
    .locals 6

    const/4 v2, 0x1

    const/4 v1, 0x0

    const-string/jumbo v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-ne v0, v2, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bl$a;->a:Lcom/amap/api/mapcore2d/bw;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/bw;->size()I

    move-result v4

    move v3, v1

    :goto_1
    if-ge v3, v4, :cond_5

    iget-object v0, p0, Lcom/amap/api/mapcore2d/bl$a;->a:Lcom/amap/api/mapcore2d/bw;

    invoke-virtual {v0, v3}, Lcom/amap/api/mapcore2d/bw;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore2d/aw;

    if-nez v0, :cond_2

    :cond_1
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :cond_2
    iget-object v5, v0, Lcom/amap/api/mapcore2d/aw;->a:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-ne v5, v2, :cond_1

    iput-boolean p2, v0, Lcom/amap/api/mapcore2d/aw;->f:Z

    iget-boolean v5, v0, Lcom/amap/api/mapcore2d/aw;->e:Z

    if-nez v5, :cond_3

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/aw;->a()V

    move v0, v2

    goto :goto_0

    :cond_3
    if-ne p2, v2, :cond_1

    iget v3, v0, Lcom/amap/api/mapcore2d/aw;->b:I

    iget v4, v0, Lcom/amap/api/mapcore2d/aw;->c:I

    if-le v3, v4, :cond_4

    iget-object v3, p0, Lcom/amap/api/mapcore2d/bl$a;->i:Lcom/amap/api/mapcore2d/bl;

    iget-object v3, v3, Lcom/amap/api/mapcore2d/bl;->b:Lcom/amap/api/mapcore2d/bl$d;

    iget v4, v0, Lcom/amap/api/mapcore2d/aw;->b:I

    invoke-virtual {v3, v4}, Lcom/amap/api/mapcore2d/bl$d;->b(I)V

    iget-object v3, p0, Lcom/amap/api/mapcore2d/bl$a;->i:Lcom/amap/api/mapcore2d/bl;

    iget-object v3, v3, Lcom/amap/api/mapcore2d/bl;->b:Lcom/amap/api/mapcore2d/bl$d;

    iget v0, v0, Lcom/amap/api/mapcore2d/aw;->c:I

    invoke-virtual {v3, v0}, Lcom/amap/api/mapcore2d/bl$d;->c(I)V

    :cond_4
    invoke-direct {p0, p1}, Lcom/amap/api/mapcore2d/bl$a;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/amap/api/mapcore2d/bl$a;->i:Lcom/amap/api/mapcore2d/bl;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/bl;->b:Lcom/amap/api/mapcore2d/bl$d;

    invoke-virtual {v0, v1, v1}, Lcom/amap/api/mapcore2d/bl$d;->a(ZZ)V

    move v0, v2

    goto :goto_0

    :cond_5
    move v0, v1

    goto :goto_0
.end method

.method b(Ljava/lang/String;)Lcom/amap/api/mapcore2d/aw;
    .locals 6

    const/4 v1, 0x0

    const/4 v5, 0x1

    const-string/jumbo v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eq v0, v5, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore2d/bl$a;->a:Lcom/amap/api/mapcore2d/bw;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore2d/bl$a;->a:Lcom/amap/api/mapcore2d/bw;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/bw;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bl$a;->a:Lcom/amap/api/mapcore2d/bw;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/bw;->size()I

    move-result v3

    const/4 v0, 0x0

    move v2, v0

    :goto_1
    if-ge v2, v3, :cond_4

    iget-object v0, p0, Lcom/amap/api/mapcore2d/bl$a;->a:Lcom/amap/api/mapcore2d/bw;

    invoke-virtual {v0, v2}, Lcom/amap/api/mapcore2d/bw;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore2d/aw;

    if-nez v0, :cond_3

    :cond_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_3
    iget-object v4, v0, Lcom/amap/api/mapcore2d/aw;->a:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-ne v4, v5, :cond_2

    goto :goto_0

    :cond_4
    move-object v0, v1

    goto :goto_0
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore2d/bl$a;->i:Lcom/amap/api/mapcore2d/bl;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/bl;->b:Lcom/amap/api/mapcore2d/bl$d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore2d/bl$a;->i:Lcom/amap/api/mapcore2d/bl;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/bl;->b:Lcom/amap/api/mapcore2d/bl$d;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/bl$d;->a(Lcom/amap/api/mapcore2d/bl$d;)Lcom/amap/api/mapcore2d/b;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bl$a;->i:Lcom/amap/api/mapcore2d/bl;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/bl;->b:Lcom/amap/api/mapcore2d/bl$d;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/bl$d;->a(Lcom/amap/api/mapcore2d/bl$d;)Lcom/amap/api/mapcore2d/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/b;->postInvalidate()V

    goto :goto_0
.end method

.method public b(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/amap/api/mapcore2d/bl$a;->k:Z

    return-void
.end method

.method public b(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected b(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
