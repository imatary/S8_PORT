.class abstract Lcom/amap/api/mapcore2d/h;
.super Ljava/lang/Object;
.source "AnimBase.java"


# instance fields
.field protected a:I

.field protected b:I

.field private c:Landroid/os/Handler;

.field private d:I

.field private e:Z

.field private f:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(II)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore2d/h;->c:Landroid/os/Handler;

    iput v1, p0, Lcom/amap/api/mapcore2d/h;->d:I

    iput-boolean v1, p0, Lcom/amap/api/mapcore2d/h;->e:Z

    new-instance v0, Lcom/amap/api/mapcore2d/i;

    invoke-direct {v0, p0}, Lcom/amap/api/mapcore2d/i;-><init>(Lcom/amap/api/mapcore2d/h;)V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/h;->f:Ljava/lang/Runnable;

    iput p1, p0, Lcom/amap/api/mapcore2d/h;->a:I

    iput p2, p0, Lcom/amap/api/mapcore2d/h;->b:I

    return-void
.end method

.method static synthetic a(Lcom/amap/api/mapcore2d/h;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0

    iput-object p1, p0, Lcom/amap/api/mapcore2d/h;->c:Landroid/os/Handler;

    return-object p1
.end method

.method static synthetic a(Lcom/amap/api/mapcore2d/h;)V
    .locals 0

    invoke-direct {p0}, Lcom/amap/api/mapcore2d/h;->g()V

    return-void
.end method

.method static synthetic b(Lcom/amap/api/mapcore2d/h;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore2d/h;->c:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic c(Lcom/amap/api/mapcore2d/h;)V
    .locals 0

    invoke-direct {p0}, Lcom/amap/api/mapcore2d/h;->h()V

    return-void
.end method

.method private f()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/mapcore2d/h;->e:Z

    return-void
.end method

.method private g()V
    .locals 2

    iget v0, p0, Lcom/amap/api/mapcore2d/h;->d:I

    iget v1, p0, Lcom/amap/api/mapcore2d/h;->b:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/amap/api/mapcore2d/h;->d:I

    iget v0, p0, Lcom/amap/api/mapcore2d/h;->a:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/amap/api/mapcore2d/h;->d:I

    iget v1, p0, Lcom/amap/api/mapcore2d/h;->a:I

    if-le v0, v1, :cond_0

    invoke-direct {p0}, Lcom/amap/api/mapcore2d/h;->f()V

    :cond_0
    return-void
.end method

.method private h()V
    .locals 2

    iget-object v0, p0, Lcom/amap/api/mapcore2d/h;->c:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore2d/h;->c:Landroid/os/Handler;

    iget-object v1, p0, Lcom/amap/api/mapcore2d/h;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method protected abstract a()V
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/amap/api/mapcore2d/h;->e:Z

    return-void
.end method

.method protected abstract b()V
.end method

.method public c()V
    .locals 2

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/h;->e()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/h;->c:Landroid/os/Handler;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/mapcore2d/h;->e:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/amap/api/mapcore2d/h;->d:I

    :cond_0
    invoke-direct {p0}, Lcom/amap/api/mapcore2d/h;->h()V

    return-void
.end method

.method public d()V
    .locals 1

    invoke-static {}, Lcom/amap/api/mapcore2d/v;->a()Lcom/amap/api/mapcore2d/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/v;->b()V

    invoke-direct {p0}, Lcom/amap/api/mapcore2d/h;->f()V

    iget-object v0, p0, Lcom/amap/api/mapcore2d/h;->f:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public e()Z
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/mapcore2d/h;->e:Z

    return v0
.end method
