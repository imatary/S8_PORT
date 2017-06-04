.class Lcom/amap/api/mapcore2d/be;
.super Landroid/view/View;
.source "MapOverlayImageView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/mapcore2d/be$a;
    }
.end annotation


# instance fields
.field a:Lcom/amap/api/mapcore2d/b;

.field b:Lcom/amap/api/mapcore2d/be$a;

.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/api/mapcore2d/as;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/api/mapcore2d/ak;",
            ">;"
        }
    .end annotation
.end field

.field private volatile e:I

.field private f:Landroid/os/Handler;

.field private g:Ljava/lang/Runnable;

.field private h:Lcom/amap/api/mapcore2d/an;

.field private i:Lcom/amap/api/mapcore2d/ak;

.field private j:Lcom/amap/api/mapcore2d/ak;

.field private k:F

.field private l:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/amap/api/mapcore2d/b;)V
    .locals 2

    const/16 v1, 0x8

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/be;->c:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/be;->d:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput v0, p0, Lcom/amap/api/mapcore2d/be;->e:I

    new-instance v0, Lcom/amap/api/mapcore2d/be$a;

    invoke-direct {v0}, Lcom/amap/api/mapcore2d/be$a;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/be;->b:Lcom/amap/api/mapcore2d/be$a;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/be;->f:Landroid/os/Handler;

    new-instance v0, Lcom/amap/api/mapcore2d/bf;

    invoke-direct {v0, p0}, Lcom/amap/api/mapcore2d/bf;-><init>(Lcom/amap/api/mapcore2d/be;)V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/be;->g:Ljava/lang/Runnable;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore2d/be;->j:Lcom/amap/api/mapcore2d/ak;

    const/4 v0, 0x0

    iput v0, p0, Lcom/amap/api/mapcore2d/be;->k:F

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/be;->l:Ljava/util/concurrent/CopyOnWriteArrayList;

    iput-object p3, p0, Lcom/amap/api/mapcore2d/be;->a:Lcom/amap/api/mapcore2d/b;

    return-void
.end method

.method private a(Ljava/util/Iterator;Landroid/graphics/Rect;Lcom/amap/api/mapcore2d/an;)Lcom/amap/api/mapcore2d/as;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<",
            "Lcom/amap/api/mapcore2d/as;",
            ">;",
            "Landroid/graphics/Rect;",
            "Lcom/amap/api/mapcore2d/an;",
            ")",
            "Lcom/amap/api/mapcore2d/as;"
        }
    .end annotation

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore2d/as;

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/as;->t()Lcom/amap/api/maps2d/model/LatLng;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v1, p0, Lcom/amap/api/mapcore2d/be;->a:Lcom/amap/api/mapcore2d/b;

    iget-wide v2, v4, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    iget-wide v4, v4, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    move-object v6, p3

    invoke-virtual/range {v1 .. v6}, Lcom/amap/api/mapcore2d/b;->b(DDLcom/amap/api/mapcore2d/an;)V

    iget v1, p3, Lcom/amap/api/mapcore2d/an;->a:I

    iget v2, p3, Lcom/amap/api/mapcore2d/an;->b:I

    invoke-virtual {p0, p2, v1, v2}, Lcom/amap/api/mapcore2d/be;->a(Landroid/graphics/Rect;II)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/amap/api/mapcore2d/be;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore2d/be;->d:Ljava/util/ArrayList;

    return-object v0
.end method

.method private b(Ljava/util/Iterator;Landroid/graphics/Rect;Lcom/amap/api/mapcore2d/an;)Lcom/amap/api/mapcore2d/ak;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<",
            "Lcom/amap/api/mapcore2d/ak;",
            ">;",
            "Landroid/graphics/Rect;",
            "Lcom/amap/api/mapcore2d/an;",
            ")",
            "Lcom/amap/api/mapcore2d/ak;"
        }
    .end annotation

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore2d/ak;

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/ak;->c()Lcom/amap/api/maps2d/model/LatLng;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v1, p0, Lcom/amap/api/mapcore2d/be;->a:Lcom/amap/api/mapcore2d/b;

    iget-wide v2, v4, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    iget-wide v4, v4, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    move-object v6, p3

    invoke-virtual/range {v1 .. v6}, Lcom/amap/api/mapcore2d/b;->b(DDLcom/amap/api/mapcore2d/an;)V

    iget v1, p3, Lcom/amap/api/mapcore2d/an;->a:I

    iget v2, p3, Lcom/amap/api/mapcore2d/an;->b:I

    invoke-virtual {p0, p2, v1, v2}, Lcom/amap/api/mapcore2d/be;->a(Landroid/graphics/Rect;II)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lcom/amap/api/mapcore2d/be;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore2d/be;->c:Ljava/util/ArrayList;

    return-object v0
.end method

.method private h()I
    .locals 2

    iget v0, p0, Lcom/amap/api/mapcore2d/be;->e:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/amap/api/mapcore2d/be;->e:I

    return v0
.end method

.method private i()V
    .locals 6

    const-string/jumbo v2, "redrawInfoWindow"

    iget-object v0, p0, Lcom/amap/api/mapcore2d/be;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore2d/ak;

    iget-object v1, p0, Lcom/amap/api/mapcore2d/be;->i:Lcom/amap/api/mapcore2d/ak;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/amap/api/mapcore2d/be;->i:Lcom/amap/api/mapcore2d/ak;

    invoke-interface {v1}, Lcom/amap/api/mapcore2d/ak;->d()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/ak;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/amap/api/mapcore2d/be;->i:Lcom/amap/api/mapcore2d/ak;

    invoke-interface {v1}, Lcom/amap/api/mapcore2d/ak;->q()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    return-void

    :catch_0
    move-exception v1

    const-string/jumbo v4, "MapOverlayImageView"

    invoke-static {v1, v4, v2}, Lcom/amap/api/mapcore2d/cy;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-interface {v0}, Lcom/amap/api/mapcore2d/ak;->b()Landroid/graphics/Rect;

    move-result-object v1

    new-instance v4, Lcom/amap/api/mapcore2d/an;

    iget v5, v1, Landroid/graphics/Rect;->left:I

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/ak;->n()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v5

    iget v1, v1, Landroid/graphics/Rect;->top:I

    invoke-direct {v4, v0, v1}, Lcom/amap/api/mapcore2d/an;-><init>(II)V

    iput-object v4, p0, Lcom/amap/api/mapcore2d/be;->h:Lcom/amap/api/mapcore2d/an;

    iget-object v0, p0, Lcom/amap/api/mapcore2d/be;->a:Lcom/amap/api/mapcore2d/b;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/b;->u()V

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized a(Landroid/view/MotionEvent;)Lcom/amap/api/mapcore2d/ak;
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/be;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    iget-object v0, p0, Lcom/amap/api/mapcore2d/be;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore2d/ak;

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/ak;->b()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p0, v2, v3, v4}, Lcom/amap/api/mapcore2d/be;->a(Landroid/graphics/Rect;II)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_0

    :goto_1
    monitor-exit p0

    return-object v0

    :cond_0
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Ljava/lang/String;)Lcom/amap/api/mapcore2d/ak;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/be;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore2d/ak;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/ak;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a()Lcom/amap/api/mapcore2d/b;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore2d/be;->a:Lcom/amap/api/mapcore2d/b;

    return-object v0
.end method

.method public declared-synchronized a(Landroid/graphics/Canvas;)V
    .locals 8

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/amap/api/mapcore2d/be;->i()V

    new-instance v2, Landroid/graphics/Rect;

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/amap/api/mapcore2d/be;->a:Lcom/amap/api/mapcore2d/b;

    invoke-virtual {v3}, Lcom/amap/api/mapcore2d/b;->c()I

    move-result v3

    iget-object v4, p0, Lcom/amap/api/mapcore2d/be;->a:Lcom/amap/api/mapcore2d/b;

    invoke-virtual {v4}, Lcom/amap/api/mapcore2d/b;->d()I

    move-result v4

    invoke-direct {v2, v0, v1, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v3, Lcom/amap/api/mapcore2d/an;

    invoke-direct {v3}, Lcom/amap/api/mapcore2d/an;-><init>()V

    iget-object v0, p0, Lcom/amap/api/mapcore2d/be;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    iget-object v0, p0, Lcom/amap/api/mapcore2d/be;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    invoke-direct {p0, v4, v2, v3}, Lcom/amap/api/mapcore2d/be;->b(Ljava/util/Iterator;Landroid/graphics/Rect;Lcom/amap/api/mapcore2d/an;)Lcom/amap/api/mapcore2d/ak;

    move-result-object v1

    invoke-direct {p0, v5, v2, v3}, Lcom/amap/api/mapcore2d/be;->a(Ljava/util/Iterator;Landroid/graphics/Rect;Lcom/amap/api/mapcore2d/an;)Lcom/amap/api/mapcore2d/as;

    move-result-object v0

    :goto_0
    if-nez v1, :cond_0

    if-eqz v0, :cond_5

    :cond_0
    if-nez v1, :cond_1

    invoke-interface {v0, p1}, Lcom/amap/api/mapcore2d/as;->a(Landroid/graphics/Canvas;)V

    invoke-direct {p0, v5, v2, v3}, Lcom/amap/api/mapcore2d/be;->a(Ljava/util/Iterator;Landroid/graphics/Rect;Lcom/amap/api/mapcore2d/an;)Lcom/amap/api/mapcore2d/as;

    move-result-object v0

    goto :goto_0

    :cond_1
    if-nez v0, :cond_2

    iget-object v6, p0, Lcom/amap/api/mapcore2d/be;->a:Lcom/amap/api/mapcore2d/b;

    invoke-interface {v1, p1, v6}, Lcom/amap/api/mapcore2d/ak;->a(Landroid/graphics/Canvas;Lcom/amap/api/mapcore2d/ag;)V

    invoke-direct {p0, v4, v2, v3}, Lcom/amap/api/mapcore2d/be;->b(Ljava/util/Iterator;Landroid/graphics/Rect;Lcom/amap/api/mapcore2d/an;)Lcom/amap/api/mapcore2d/ak;

    move-result-object v1

    goto :goto_0

    :cond_2
    invoke-interface {v1}, Lcom/amap/api/mapcore2d/ak;->r()F

    move-result v6

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/as;->r()F

    move-result v7

    cmpg-float v6, v6, v7

    if-ltz v6, :cond_3

    invoke-interface {v1}, Lcom/amap/api/mapcore2d/ak;->r()F

    move-result v6

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/as;->r()F

    move-result v7

    cmpl-float v6, v6, v7

    if-nez v6, :cond_4

    invoke-interface {v1}, Lcom/amap/api/mapcore2d/ak;->v()I

    move-result v6

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/as;->v()I

    move-result v7

    if-ge v6, v7, :cond_4

    :cond_3
    iget-object v6, p0, Lcom/amap/api/mapcore2d/be;->a:Lcom/amap/api/mapcore2d/b;

    invoke-interface {v1, p1, v6}, Lcom/amap/api/mapcore2d/ak;->a(Landroid/graphics/Canvas;Lcom/amap/api/mapcore2d/ag;)V

    invoke-direct {p0, v4, v2, v3}, Lcom/amap/api/mapcore2d/be;->b(Ljava/util/Iterator;Landroid/graphics/Rect;Lcom/amap/api/mapcore2d/an;)Lcom/amap/api/mapcore2d/ak;

    move-result-object v1

    goto :goto_0

    :cond_4
    invoke-interface {v0, p1}, Lcom/amap/api/mapcore2d/as;->a(Landroid/graphics/Canvas;)V

    invoke-direct {p0, v5, v2, v3}, Lcom/amap/api/mapcore2d/be;->a(Ljava/util/Iterator;Landroid/graphics/Rect;Lcom/amap/api/mapcore2d/an;)Lcom/amap/api/mapcore2d/as;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    goto :goto_0

    :cond_5
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Lcom/amap/api/mapcore2d/ak;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore2d/be;->e(Lcom/amap/api/mapcore2d/ak;)V

    invoke-direct {p0}, Lcom/amap/api/mapcore2d/be;->h()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/amap/api/mapcore2d/ak;->b(I)V

    iget-object v0, p0, Lcom/amap/api/mapcore2d/be;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/amap/api/mapcore2d/be;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/be;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Landroid/graphics/Rect;II)Z
    .locals 1

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    return v0
.end method

.method protected b()I
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore2d/be;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public declared-synchronized b(Landroid/view/MotionEvent;)Z
    .locals 6

    monitor-enter p0

    const/4 v2, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/be;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v3, v0

    :goto_0
    if-ltz v3, :cond_1

    iget-object v0, p0, Lcom/amap/api/mapcore2d/be;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore2d/ak;

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/ak;->b()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {p0, v4, v1, v5}, Lcom/amap/api/mapcore2d/be;->a(Landroid/graphics/Rect;II)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v2, Lcom/amap/api/mapcore2d/an;

    iget v3, v4, Landroid/graphics/Rect;->left:I

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/ak;->n()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v3, v5

    iget v4, v4, Landroid/graphics/Rect;->top:I

    invoke-direct {v2, v3, v4}, Lcom/amap/api/mapcore2d/an;-><init>(II)V

    iput-object v2, p0, Lcom/amap/api/mapcore2d/be;->h:Lcom/amap/api/mapcore2d/an;

    iput-object v0, p0, Lcom/amap/api/mapcore2d/be;->i:Lcom/amap/api/mapcore2d/ak;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v1

    :goto_1
    monitor-exit p0

    return v0

    :cond_0
    add-int/lit8 v0, v3, -0x1

    move v3, v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    move v0, v2

    goto :goto_1
.end method

.method public declared-synchronized b(Lcom/amap/api/mapcore2d/ak;)Z
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore2d/be;->e(Lcom/amap/api/mapcore2d/ak;)V

    iget-object v0, p0, Lcom/amap/api/mapcore2d/be;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized c()V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string/jumbo v1, "clear"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, Lcom/amap/api/mapcore2d/be;->d:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/mapcore2d/be;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore2d/ak;

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/ak;->l()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v2, "MapOverlayImageView"

    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/cy;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_0
    :goto_1
    monitor-exit p0

    return-void

    :cond_1
    :try_start_3
    iget-object v0, p0, Lcom/amap/api/mapcore2d/be;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_2
    iget-object v0, p0, Lcom/amap/api/mapcore2d/be;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore2d/be;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized c(Lcom/amap/api/mapcore2d/ak;)V
    .locals 2

    const/high16 v1, 0x4f000000

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/be;->j:Lcom/amap/api/mapcore2d/ak;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, p1, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/amap/api/mapcore2d/be;->j:Lcom/amap/api/mapcore2d/ak;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/mapcore2d/be;->j:Lcom/amap/api/mapcore2d/ak;

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/ak;->r()F

    move-result v0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/mapcore2d/be;->j:Lcom/amap/api/mapcore2d/ak;

    iget v1, p0, Lcom/amap/api/mapcore2d/be;->k:F

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore2d/ak;->b(F)V

    :cond_1
    invoke-interface {p1}, Lcom/amap/api/mapcore2d/ak;->r()F

    move-result v0

    iput v0, p0, Lcom/amap/api/mapcore2d/be;->k:F

    iput-object p1, p0, Lcom/amap/api/mapcore2d/be;->j:Lcom/amap/api/mapcore2d/ak;

    const/high16 v0, 0x4f000000

    invoke-interface {p1, v0}, Lcom/amap/api/mapcore2d/ak;->b(F)V

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/be;->d()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method d()V
    .locals 4

    iget-object v0, p0, Lcom/amap/api/mapcore2d/be;->f:Landroid/os/Handler;

    iget-object v1, p0, Lcom/amap/api/mapcore2d/be;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/amap/api/mapcore2d/be;->f:Landroid/os/Handler;

    iget-object v1, p0, Lcom/amap/api/mapcore2d/be;->g:Ljava/lang/Runnable;

    const-wide/16 v2, 0x5

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public d(Lcom/amap/api/mapcore2d/ak;)V
    .locals 5

    const-string/jumbo v1, "showInfoWindow"

    iget-object v0, p0, Lcom/amap/api/mapcore2d/be;->h:Lcom/amap/api/mapcore2d/an;

    if-nez v0, :cond_0

    new-instance v0, Lcom/amap/api/mapcore2d/an;

    invoke-direct {v0}, Lcom/amap/api/mapcore2d/an;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/be;->h:Lcom/amap/api/mapcore2d/an;

    :cond_0
    invoke-interface {p1}, Lcom/amap/api/mapcore2d/ak;->b()Landroid/graphics/Rect;

    move-result-object v0

    new-instance v2, Lcom/amap/api/mapcore2d/an;

    iget v3, v0, Landroid/graphics/Rect;->left:I

    invoke-interface {p1}, Lcom/amap/api/mapcore2d/ak;->n()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    iget v0, v0, Landroid/graphics/Rect;->top:I

    invoke-direct {v2, v3, v0}, Lcom/amap/api/mapcore2d/an;-><init>(II)V

    iput-object v2, p0, Lcom/amap/api/mapcore2d/be;->h:Lcom/amap/api/mapcore2d/an;

    iput-object p1, p0, Lcom/amap/api/mapcore2d/be;->i:Lcom/amap/api/mapcore2d/ak;

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/be;->a:Lcom/amap/api/mapcore2d/b;

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/be;->e()Lcom/amap/api/mapcore2d/ak;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/amap/api/mapcore2d/b;->a(Lcom/amap/api/mapcore2d/ak;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v2, "MapOverlayImageView"

    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/cy;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public e()Lcom/amap/api/mapcore2d/ak;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore2d/be;->i:Lcom/amap/api/mapcore2d/ak;

    return-object v0
.end method

.method public e(Lcom/amap/api/mapcore2d/ak;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore2d/be;->f(Lcom/amap/api/mapcore2d/ak;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore2d/be;->a:Lcom/amap/api/mapcore2d/b;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/b;->t()V

    :cond_0
    return-void
.end method

.method public f()V
    .locals 4

    const-string/jumbo v1, "destory"

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/be;->f:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore2d/be;->f:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/be;->c()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v2, "MapOverlayImageView"

    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/cy;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "amapApi"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "MapOverlayImageView clear erro"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public f(Lcom/amap/api/mapcore2d/ak;)Z
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore2d/be;->a:Lcom/amap/api/mapcore2d/b;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore2d/b;->b(Lcom/amap/api/mapcore2d/ak;)Z

    move-result v0

    return v0
.end method
