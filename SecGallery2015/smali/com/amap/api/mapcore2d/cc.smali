.class Lcom/amap/api/mapcore2d/cc;
.super Landroid/view/View;
.source "TileOverlayView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/mapcore2d/cc$1;,
        Lcom/amap/api/mapcore2d/cc$a;
    }
.end annotation


# instance fields
.field a:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/amap/api/mapcore2d/ag;

.field private c:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/amap/api/mapcore2d/at;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/amap/api/mapcore2d/cc$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/amap/api/mapcore2d/ag;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/cc;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v0, Lcom/amap/api/mapcore2d/cc$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/amap/api/mapcore2d/cc$a;-><init>(Lcom/amap/api/mapcore2d/cc;Lcom/amap/api/mapcore2d/cc$1;)V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/cc;->d:Lcom/amap/api/mapcore2d/cc$a;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/cc;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    iput-object p2, p0, Lcom/amap/api/mapcore2d/cc;->b:Lcom/amap/api/mapcore2d/ag;

    return-void
.end method


# virtual methods
.method protected a(Landroid/graphics/Canvas;)V
    .locals 3

    iget-object v0, p0, Lcom/amap/api/mapcore2d/cc;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore2d/at;

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/at;->e()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0, p1}, Lcom/amap/api/mapcore2d/at;->a(Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public a(Z)V
    .locals 3

    iget-object v0, p0, Lcom/amap/api/mapcore2d/cc;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore2d/at;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/at;->e()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0, p1}, Lcom/amap/api/mapcore2d/at;->b(Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected b()Z
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore2d/cc;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
