.class Lcom/amap/api/mapcore2d/bb$b;
.super Ljava/lang/Object;
.source "MapController.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/mapcore2d/bb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/mapcore2d/bb;

.field private b:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Landroid/view/animation/Animation;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/amap/api/mapcore2d/co;


# direct methods
.method private constructor <init>(Lcom/amap/api/mapcore2d/bb;)V
    .locals 1

    iput-object p1, p0, Lcom/amap/api/mapcore2d/bb$b;->a:Lcom/amap/api/mapcore2d/bb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/bb$b;->b:Ljava/util/LinkedList;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore2d/bb$b;->c:Lcom/amap/api/mapcore2d/co;

    return-void
.end method

.method synthetic constructor <init>(Lcom/amap/api/mapcore2d/bb;Lcom/amap/api/mapcore2d/bb$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/amap/api/mapcore2d/bb$b;-><init>(Lcom/amap/api/mapcore2d/bb;)V

    return-void
.end method

.method private a(IIIZ)V
    .locals 4

    iget-object v0, p0, Lcom/amap/api/mapcore2d/bb$b;->c:Lcom/amap/api/mapcore2d/co;

    if-nez v0, :cond_0

    new-instance v0, Lcom/amap/api/mapcore2d/co;

    iget-object v1, p0, Lcom/amap/api/mapcore2d/bb$b;->a:Lcom/amap/api/mapcore2d/bb;

    invoke-static {v1}, Lcom/amap/api/mapcore2d/bb;->a(Lcom/amap/api/mapcore2d/bb;)Lcom/amap/api/mapcore2d/bl;

    move-result-object v1

    iget-object v1, v1, Lcom/amap/api/mapcore2d/bl;->b:Lcom/amap/api/mapcore2d/bl$d;

    invoke-virtual {v1}, Lcom/amap/api/mapcore2d/bl$d;->g()Lcom/amap/api/mapcore2d/b;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/amap/api/mapcore2d/co;-><init>(Lcom/amap/api/mapcore2d/b;Landroid/view/animation/Animation$AnimationListener;)V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/bb$b;->c:Lcom/amap/api/mapcore2d/co;

    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bb$b;->c:Lcom/amap/api/mapcore2d/co;

    iput-boolean p4, v0, Lcom/amap/api/mapcore2d/co;->e:Z

    iget-object v0, p0, Lcom/amap/api/mapcore2d/bb$b;->c:Lcom/amap/api/mapcore2d/co;

    iput p1, v0, Lcom/amap/api/mapcore2d/co;->d:I

    iget-object v0, p0, Lcom/amap/api/mapcore2d/bb$b;->c:Lcom/amap/api/mapcore2d/co;

    const/4 v1, 0x0

    int-to-float v2, p2

    int-to-float v3, p3

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/amap/api/mapcore2d/co;->a(IZFF)V

    return-void
.end method

.method private b(IIIZ)V
    .locals 5

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/amap/api/mapcore2d/bb$b;->c:Lcom/amap/api/mapcore2d/co;

    if-nez v0, :cond_0

    new-instance v0, Lcom/amap/api/mapcore2d/co;

    iget-object v1, p0, Lcom/amap/api/mapcore2d/bb$b;->a:Lcom/amap/api/mapcore2d/bb;

    invoke-static {v1}, Lcom/amap/api/mapcore2d/bb;->a(Lcom/amap/api/mapcore2d/bb;)Lcom/amap/api/mapcore2d/bl;

    move-result-object v1

    iget-object v1, v1, Lcom/amap/api/mapcore2d/bl;->b:Lcom/amap/api/mapcore2d/bl$d;

    invoke-virtual {v1}, Lcom/amap/api/mapcore2d/bl$d;->g()Lcom/amap/api/mapcore2d/b;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/amap/api/mapcore2d/co;-><init>(Lcom/amap/api/mapcore2d/b;Landroid/view/animation/Animation$AnimationListener;)V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/bb$b;->c:Lcom/amap/api/mapcore2d/co;

    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bb$b;->c:Lcom/amap/api/mapcore2d/co;

    iput p1, v0, Lcom/amap/api/mapcore2d/co;->d:I

    iget-object v0, p0, Lcom/amap/api/mapcore2d/bb$b;->c:Lcom/amap/api/mapcore2d/co;

    iput-boolean p4, v0, Lcom/amap/api/mapcore2d/co;->e:Z

    iget-object v0, p0, Lcom/amap/api/mapcore2d/bb$b;->c:Lcom/amap/api/mapcore2d/co;

    iget-boolean v0, v0, Lcom/amap/api/mapcore2d/co;->e:Z

    if-ne v0, v4, :cond_1

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, p2, p3}, Landroid/graphics/Point;-><init>(II)V

    iget-object v1, p0, Lcom/amap/api/mapcore2d/bb$b;->a:Lcom/amap/api/mapcore2d/bb;

    invoke-static {v1}, Lcom/amap/api/mapcore2d/bb;->a(Lcom/amap/api/mapcore2d/bb;)Lcom/amap/api/mapcore2d/bl;

    move-result-object v1

    iget-object v1, v1, Lcom/amap/api/mapcore2d/bl;->b:Lcom/amap/api/mapcore2d/bl$d;

    invoke-virtual {v1}, Lcom/amap/api/mapcore2d/bl$d;->g()Lcom/amap/api/mapcore2d/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amap/api/mapcore2d/b;->s()Lcom/amap/api/mapcore2d/br;

    move-result-object v1

    invoke-interface {v1, p2, p3}, Lcom/amap/api/mapcore2d/br;->a(II)Lcom/amap/api/mapcore2d/ae;

    move-result-object v1

    iget-object v2, p0, Lcom/amap/api/mapcore2d/bb$b;->a:Lcom/amap/api/mapcore2d/bb;

    invoke-static {v2}, Lcom/amap/api/mapcore2d/bb;->a(Lcom/amap/api/mapcore2d/bb;)Lcom/amap/api/mapcore2d/bl;

    move-result-object v2

    iget-object v2, v2, Lcom/amap/api/mapcore2d/bl;->h:Lcom/amap/api/mapcore2d/bh;

    iget-object v3, p0, Lcom/amap/api/mapcore2d/bb$b;->a:Lcom/amap/api/mapcore2d/bb;

    invoke-static {v3}, Lcom/amap/api/mapcore2d/bb;->a(Lcom/amap/api/mapcore2d/bb;)Lcom/amap/api/mapcore2d/bl;

    move-result-object v3

    iget-object v3, v3, Lcom/amap/api/mapcore2d/bl;->h:Lcom/amap/api/mapcore2d/bh;

    invoke-virtual {v3, v1}, Lcom/amap/api/mapcore2d/bh;->a(Lcom/amap/api/mapcore2d/ae;)Lcom/amap/api/mapcore2d/ae;

    move-result-object v1

    iput-object v1, v2, Lcom/amap/api/mapcore2d/bh;->i:Lcom/amap/api/mapcore2d/ae;

    iget-object v1, p0, Lcom/amap/api/mapcore2d/bb$b;->a:Lcom/amap/api/mapcore2d/bb;

    invoke-static {v1}, Lcom/amap/api/mapcore2d/bb;->a(Lcom/amap/api/mapcore2d/bb;)Lcom/amap/api/mapcore2d/bl;

    move-result-object v1

    iget-object v1, v1, Lcom/amap/api/mapcore2d/bl;->h:Lcom/amap/api/mapcore2d/bh;

    invoke-virtual {v1, v0}, Lcom/amap/api/mapcore2d/bh;->a(Landroid/graphics/Point;)V

    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bb$b;->c:Lcom/amap/api/mapcore2d/co;

    int-to-float v1, p2

    int-to-float v2, p3

    invoke-virtual {v0, p1, v4, v1, v2}, Lcom/amap/api/mapcore2d/co;->a(IZFF)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore2d/bb$b;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    return-void
.end method

.method public a(IIIZZ)V
    .locals 0

    if-nez p4, :cond_0

    invoke-direct {p0, p3, p1, p2, p5}, Lcom/amap/api/mapcore2d/bb$b;->a(IIIZ)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p3, p1, p2, p5}, Lcom/amap/api/mapcore2d/bb$b;->b(IIIZ)V

    goto :goto_0
.end method

.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    iget-object v0, p0, Lcom/amap/api/mapcore2d/bb$b;->a:Lcom/amap/api/mapcore2d/bb;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/bb;->a(Lcom/amap/api/mapcore2d/bb;)Lcom/amap/api/mapcore2d/bl;

    move-result-object v0

    iget-object v0, v0, Lcom/amap/api/mapcore2d/bl;->b:Lcom/amap/api/mapcore2d/bl$d;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/bl$d;->g()Lcom/amap/api/mapcore2d/b;

    move-result-object v1

    iget-object v0, p0, Lcom/amap/api/mapcore2d/bb$b;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore2d/bb$b;->a:Lcom/amap/api/mapcore2d/bb;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/bb;->a(Lcom/amap/api/mapcore2d/bb;)Lcom/amap/api/mapcore2d/bl;

    move-result-object v0

    iget-object v0, v0, Lcom/amap/api/mapcore2d/bl;->d:Lcom/amap/api/mapcore2d/bl$a;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/bl$a;->b()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bb$b;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/animation/Animation;

    invoke-virtual {v1, v0}, Lcom/amap/api/mapcore2d/b;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
