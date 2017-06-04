.class Lcom/amap/api/mapcore2d/bb$a;
.super Ljava/lang/Object;
.source "MapController.java"

# interfaces
.implements Lcom/amap/api/mapcore2d/ch;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/mapcore2d/bb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/mapcore2d/bb;

.field private b:Lcom/amap/api/mapcore2d/cg;

.field private c:Landroid/os/Message;

.field private d:Ljava/lang/Runnable;


# direct methods
.method private constructor <init>(Lcom/amap/api/mapcore2d/bb;)V
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/amap/api/mapcore2d/bb$a;->a:Lcom/amap/api/mapcore2d/bb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/bb$a;->b:Lcom/amap/api/mapcore2d/cg;

    iput-object v0, p0, Lcom/amap/api/mapcore2d/bb$a;->c:Landroid/os/Message;

    iput-object v0, p0, Lcom/amap/api/mapcore2d/bb$a;->d:Ljava/lang/Runnable;

    return-void
.end method

.method synthetic constructor <init>(Lcom/amap/api/mapcore2d/bb;Lcom/amap/api/mapcore2d/bb$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/amap/api/mapcore2d/bb$a;-><init>(Lcom/amap/api/mapcore2d/bb;)V

    return-void
.end method

.method private a(Lcom/amap/api/mapcore2d/ae;I)Lcom/amap/api/mapcore2d/cg;
    .locals 7

    const/16 v1, 0x1f4

    if-ge p2, v1, :cond_0

    :goto_0
    new-instance v0, Lcom/amap/api/mapcore2d/cg;

    const/16 v2, 0xa

    iget-object v3, p0, Lcom/amap/api/mapcore2d/bb$a;->a:Lcom/amap/api/mapcore2d/bb;

    invoke-static {v3}, Lcom/amap/api/mapcore2d/bb;->a(Lcom/amap/api/mapcore2d/bb;)Lcom/amap/api/mapcore2d/bl;

    move-result-object v3

    iget-object v3, v3, Lcom/amap/api/mapcore2d/bl;->h:Lcom/amap/api/mapcore2d/bh;

    iget-object v3, v3, Lcom/amap/api/mapcore2d/bh;->i:Lcom/amap/api/mapcore2d/ae;

    move-object v4, p1

    move v5, p2

    move-object v6, p0

    invoke-direct/range {v0 .. v6}, Lcom/amap/api/mapcore2d/cg;-><init>(IILcom/amap/api/mapcore2d/ae;Lcom/amap/api/mapcore2d/ae;ILcom/amap/api/mapcore2d/ch;)V

    return-object v0

    :cond_0
    move v1, p2

    goto :goto_0
.end method

.method private c()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore2d/bb$a;->b:Lcom/amap/api/mapcore2d/cg;

    iput-object v0, p0, Lcom/amap/api/mapcore2d/bb$a;->c:Landroid/os/Message;

    iput-object v0, p0, Lcom/amap/api/mapcore2d/bb$a;->d:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore2d/bb$a;->b:Lcom/amap/api/mapcore2d/cg;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore2d/bb$a;->b:Lcom/amap/api/mapcore2d/cg;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/cg;->d()V

    :cond_0
    return-void
.end method

.method public a(Lcom/amap/api/mapcore2d/ae;)V
    .locals 4

    const-wide/high16 v2, -0x8000000000000000L

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/amap/api/mapcore2d/ae;->d()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/amap/api/mapcore2d/ae;->c()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bb$a;->a:Lcom/amap/api/mapcore2d/bb;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/bb;->a(Lcom/amap/api/mapcore2d/bb;)Lcom/amap/api/mapcore2d/bl;

    move-result-object v0

    iget-object v0, v0, Lcom/amap/api/mapcore2d/bl;->h:Lcom/amap/api/mapcore2d/bh;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore2d/bh;->b(Lcom/amap/api/mapcore2d/ae;)Lcom/amap/api/mapcore2d/ae;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/mapcore2d/bb$a;->a:Lcom/amap/api/mapcore2d/bb;

    invoke-virtual {v1, v0}, Lcom/amap/api/mapcore2d/bb;->a(Lcom/amap/api/mapcore2d/ae;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bb$a;->a:Lcom/amap/api/mapcore2d/bb;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore2d/bb;->a(Lcom/amap/api/mapcore2d/ae;)V

    goto :goto_0
.end method

.method public a(Lcom/amap/api/mapcore2d/ae;Landroid/os/Message;Ljava/lang/Runnable;I)V
    .locals 2

    iget-object v0, p0, Lcom/amap/api/mapcore2d/bb$a;->a:Lcom/amap/api/mapcore2d/bb;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/bb;->a(Lcom/amap/api/mapcore2d/bb;)Lcom/amap/api/mapcore2d/bl;

    move-result-object v0

    iget-object v0, v0, Lcom/amap/api/mapcore2d/bl;->c:Lcom/amap/api/mapcore2d/bl$b;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/amap/api/mapcore2d/bl$b;->a:Z

    iget-object v0, p0, Lcom/amap/api/mapcore2d/bb$a;->a:Lcom/amap/api/mapcore2d/bb;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/bb;->a(Lcom/amap/api/mapcore2d/bb;)Lcom/amap/api/mapcore2d/bl;

    move-result-object v0

    iget-object v0, v0, Lcom/amap/api/mapcore2d/bl;->h:Lcom/amap/api/mapcore2d/bh;

    invoke-virtual {p1}, Lcom/amap/api/mapcore2d/ae;->g()Lcom/amap/api/mapcore2d/ae;

    move-result-object v1

    iput-object v1, v0, Lcom/amap/api/mapcore2d/bh;->j:Lcom/amap/api/mapcore2d/ae;

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/bb$a;->a()V

    invoke-direct {p0, p1, p4}, Lcom/amap/api/mapcore2d/bb$a;->a(Lcom/amap/api/mapcore2d/ae;I)Lcom/amap/api/mapcore2d/cg;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore2d/bb$a;->b:Lcom/amap/api/mapcore2d/cg;

    iput-object p2, p0, Lcom/amap/api/mapcore2d/bb$a;->c:Landroid/os/Message;

    iput-object p3, p0, Lcom/amap/api/mapcore2d/bb$a;->d:Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/amap/api/mapcore2d/bb$a;->b:Lcom/amap/api/mapcore2d/cg;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/cg;->c()V

    return-void
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lcom/amap/api/mapcore2d/bb$a;->c:Landroid/os/Message;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore2d/bb$a;->c:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->getTarget()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/mapcore2d/bb$a;->c:Landroid/os/Message;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bb$a;->d:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/mapcore2d/bb$a;->d:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_1
    invoke-direct {p0}, Lcom/amap/api/mapcore2d/bb$a;->c()V

    iget-object v0, p0, Lcom/amap/api/mapcore2d/bb$a;->a:Lcom/amap/api/mapcore2d/bb;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/bb;->a(Lcom/amap/api/mapcore2d/bb;)Lcom/amap/api/mapcore2d/bl;

    move-result-object v0

    iget-object v0, v0, Lcom/amap/api/mapcore2d/bl;->c:Lcom/amap/api/mapcore2d/bl$b;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/mapcore2d/bb$a;->a:Lcom/amap/api/mapcore2d/bb;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/bb;->a(Lcom/amap/api/mapcore2d/bb;)Lcom/amap/api/mapcore2d/bl;

    move-result-object v0

    iget-object v0, v0, Lcom/amap/api/mapcore2d/bl;->c:Lcom/amap/api/mapcore2d/bl$b;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/amap/api/mapcore2d/bl$b;->a:Z

    :cond_2
    return-void
.end method
