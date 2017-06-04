.class abstract Lcom/amap/api/mapcore2d/j;
.super Lcom/amap/api/mapcore2d/bi;
.source "AsyncServer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/amap/api/mapcore2d/bi;"
    }
.end annotation


# instance fields
.field protected a:Lcom/amap/api/mapcore2d/bx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amap/api/mapcore2d/bx",
            "<TT;>;"
        }
    .end annotation
.end field

.field private volatile d:Z

.field private e:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Thread;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/lang/Runnable;

.field private g:Ljava/lang/Runnable;

.field private h:Lcom/amap/api/mapcore2d/bz;


# direct methods
.method public constructor <init>(Lcom/amap/api/mapcore2d/bl;Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0, p1, p2}, Lcom/amap/api/mapcore2d/bi;-><init>(Lcom/amap/api/mapcore2d/bl;Landroid/content/Context;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/mapcore2d/j;->d:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore2d/j;->e:Ljava/util/Vector;

    new-instance v0, Lcom/amap/api/mapcore2d/k;

    invoke-direct {v0, p0}, Lcom/amap/api/mapcore2d/k;-><init>(Lcom/amap/api/mapcore2d/j;)V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/j;->f:Ljava/lang/Runnable;

    new-instance v0, Lcom/amap/api/mapcore2d/l;

    invoke-direct {v0, p0}, Lcom/amap/api/mapcore2d/l;-><init>(Lcom/amap/api/mapcore2d/j;)V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/j;->g:Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/amap/api/mapcore2d/j;->e:Ljava/util/Vector;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/j;->e:Ljava/util/Vector;

    :cond_0
    new-instance v0, Lcom/amap/api/mapcore2d/bz;

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/j;->e()I

    move-result v1

    iget-object v2, p0, Lcom/amap/api/mapcore2d/j;->g:Ljava/lang/Runnable;

    iget-object v3, p0, Lcom/amap/api/mapcore2d/j;->f:Ljava/lang/Runnable;

    invoke-direct {v0, v1, v2, v3}, Lcom/amap/api/mapcore2d/bz;-><init>(ILjava/lang/Runnable;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/j;->h:Lcom/amap/api/mapcore2d/bz;

    iget-object v0, p0, Lcom/amap/api/mapcore2d/j;->h:Lcom/amap/api/mapcore2d/bz;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/bz;->a()V

    return-void
.end method

.method static synthetic a(Lcom/amap/api/mapcore2d/j;)Ljava/util/Vector;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore2d/j;->e:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic a(Lcom/amap/api/mapcore2d/j;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/amap/api/mapcore2d/j;->d:Z

    return p1
.end method

.method static synthetic b(Lcom/amap/api/mapcore2d/j;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/mapcore2d/j;->d:Z

    return v0
.end method


# virtual methods
.method protected abstract a(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<TT;>;)",
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/maps2d/AMapException;
        }
    .end annotation
.end method

.method public a()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/amap/api/mapcore2d/j;->a:Lcom/amap/api/mapcore2d/bx;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/bx;->a()V

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/j;->d()V

    iget-object v0, p0, Lcom/amap/api/mapcore2d/j;->a:Lcom/amap/api/mapcore2d/bx;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/bx;->c()V

    iput-object v1, p0, Lcom/amap/api/mapcore2d/j;->a:Lcom/amap/api/mapcore2d/bx;

    iput-object v1, p0, Lcom/amap/api/mapcore2d/j;->b:Lcom/amap/api/mapcore2d/bl;

    iput-object v1, p0, Lcom/amap/api/mapcore2d/j;->c:Landroid/content/Context;

    return-void
.end method

.method protected abstract b(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<TT;>;)",
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/maps2d/AMapException;
        }
    .end annotation
.end method

.method public b()V
    .locals 0

    invoke-super {p0}, Lcom/amap/api/mapcore2d/bi;->b()V

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/j;->d()V

    return-void
.end method

.method public c()V
    .locals 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/mapcore2d/j;->d:Z

    iget-object v0, p0, Lcom/amap/api/mapcore2d/j;->e:Ljava/util/Vector;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/j;->e:Ljava/util/Vector;

    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/j;->h:Lcom/amap/api/mapcore2d/bz;

    if-nez v0, :cond_1

    new-instance v0, Lcom/amap/api/mapcore2d/bz;

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/j;->e()I

    move-result v1

    iget-object v2, p0, Lcom/amap/api/mapcore2d/j;->g:Ljava/lang/Runnable;

    iget-object v3, p0, Lcom/amap/api/mapcore2d/j;->f:Ljava/lang/Runnable;

    invoke-direct {v0, v1, v2, v3}, Lcom/amap/api/mapcore2d/bz;-><init>(ILjava/lang/Runnable;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/j;->h:Lcom/amap/api/mapcore2d/bz;

    iget-object v0, p0, Lcom/amap/api/mapcore2d/j;->h:Lcom/amap/api/mapcore2d/bz;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/bz;->a()V

    :cond_1
    return-void
.end method

.method public d()V
    .locals 5

    const/4 v4, 0x0

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/amap/api/mapcore2d/j;->d:Z

    iget-object v0, p0, Lcom/amap/api/mapcore2d/j;->e:Ljava/util/Vector;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/mapcore2d/j;->e:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v3

    move v1, v2

    :goto_0
    if-ge v1, v3, :cond_1

    iget-object v0, p0, Lcom/amap/api/mapcore2d/j;->e:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Thread;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    iget-object v0, p0, Lcom/amap/api/mapcore2d/j;->e:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    iput-object v4, p0, Lcom/amap/api/mapcore2d/j;->e:Ljava/util/Vector;

    :cond_2
    iget-object v0, p0, Lcom/amap/api/mapcore2d/j;->h:Lcom/amap/api/mapcore2d/bz;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/amap/api/mapcore2d/j;->h:Lcom/amap/api/mapcore2d/bz;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/bz;->b()V

    iput-object v4, p0, Lcom/amap/api/mapcore2d/j;->h:Lcom/amap/api/mapcore2d/bz;

    :cond_3
    return-void
.end method

.method protected abstract e()I
.end method

.method protected abstract f()I
.end method
