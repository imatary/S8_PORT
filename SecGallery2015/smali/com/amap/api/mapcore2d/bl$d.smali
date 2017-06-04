.class public Lcom/amap/api/mapcore2d/bl$d;
.super Ljava/lang/Object;
.source "Mediator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/mapcore2d/bl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation


# instance fields
.field public a:Z

.field final synthetic b:Lcom/amap/api/mapcore2d/bl;

.field private c:Lcom/amap/api/mapcore2d/b;

.field private d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/api/mapcore2d/cl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/amap/api/mapcore2d/bl;Lcom/amap/api/mapcore2d/b;)V
    .locals 1

    iput-object p1, p0, Lcom/amap/api/mapcore2d/bl$d;->b:Lcom/amap/api/mapcore2d/bl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/mapcore2d/bl$d;->a:Z

    iput-object p2, p0, Lcom/amap/api/mapcore2d/bl$d;->c:Lcom/amap/api/mapcore2d/b;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/bl$d;->d:Ljava/util/ArrayList;

    return-void
.end method

.method synthetic constructor <init>(Lcom/amap/api/mapcore2d/bl;Lcom/amap/api/mapcore2d/b;Lcom/amap/api/mapcore2d/bl$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/amap/api/mapcore2d/bl$d;-><init>(Lcom/amap/api/mapcore2d/bl;Lcom/amap/api/mapcore2d/b;)V

    return-void
.end method

.method static synthetic a(Lcom/amap/api/mapcore2d/bl$d;)Lcom/amap/api/mapcore2d/b;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore2d/bl$d;->c:Lcom/amap/api/mapcore2d/b;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 3

    const-string/jumbo v1, "getMaxZoomLevel"

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bl$d;->b:Lcom/amap/api/mapcore2d/bl;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/bl;->h:Lcom/amap/api/mapcore2d/bh;

    iget v0, v0, Lcom/amap/api/mapcore2d/bh;->f:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const-string/jumbo v2, "Mediator"

    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/cy;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(I)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/amap/api/mapcore2d/bl$d;->b:Lcom/amap/api/mapcore2d/bl;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/bl;->h:Lcom/amap/api/mapcore2d/bh;

    iget v0, v0, Lcom/amap/api/mapcore2d/bh;->g:I

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore2d/bl$d;->b:Lcom/amap/api/mapcore2d/bl;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/bl;->h:Lcom/amap/api/mapcore2d/bh;

    iput p1, v0, Lcom/amap/api/mapcore2d/bh;->g:I

    iget-object v0, p0, Lcom/amap/api/mapcore2d/bl$d;->b:Lcom/amap/api/mapcore2d/bl;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/bl;->g:Lcom/amap/api/mapcore2d/b;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/b;->b:[I

    const/4 v1, 0x1

    aput p1, v0, v1

    iget-object v0, p0, Lcom/amap/api/mapcore2d/bl$d;->b:Lcom/amap/api/mapcore2d/bl;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/bl;->g:Lcom/amap/api/mapcore2d/b;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/b;->e:Lcom/amap/api/mapcore2d/cn;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/cn;->a(F)V

    :cond_0
    invoke-virtual {p0, v2, v2}, Lcom/amap/api/mapcore2d/bl$d;->a(ZZ)V

    return-void
.end method

.method public a(II)V
    .locals 2

    sget v0, Lcom/amap/api/mapcore2d/y;->m:I

    if-ne p1, v0, :cond_0

    sget v0, Lcom/amap/api/mapcore2d/y;->n:I

    if-eq p2, v0, :cond_1

    :cond_0
    sput p1, Lcom/amap/api/mapcore2d/y;->m:I

    sput p2, Lcom/amap/api/mapcore2d/y;->n:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/amap/api/mapcore2d/bl$d;->a(ZZ)V

    :cond_1
    return-void
.end method

.method public a(Lcom/amap/api/mapcore2d/ae;)V
    .locals 3

    const/4 v2, 0x0

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-boolean v0, Lcom/amap/api/mapcore2d/y;->p:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/amap/api/mapcore2d/bl$d;->b:Lcom/amap/api/mapcore2d/bl;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/bl;->h:Lcom/amap/api/mapcore2d/bh;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore2d/bh;->a(Lcom/amap/api/mapcore2d/ae;)Lcom/amap/api/mapcore2d/ae;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/mapcore2d/bl$d;->b:Lcom/amap/api/mapcore2d/bl;

    iget-object v1, v1, Lcom/amap/api/mapcore2d/bl;->h:Lcom/amap/api/mapcore2d/bh;

    iput-object v0, v1, Lcom/amap/api/mapcore2d/bh;->i:Lcom/amap/api/mapcore2d/ae;

    :cond_1
    invoke-virtual {p0, v2, v2}, Lcom/amap/api/mapcore2d/bl$d;->a(ZZ)V

    goto :goto_0
.end method

.method public a(Lcom/amap/api/mapcore2d/cl;)V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore2d/bl$d;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(ZZ)V
    .locals 2

    iget-object v0, p0, Lcom/amap/api/mapcore2d/bl$d;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore2d/cl;

    invoke-interface {v0, p1, p2}, Lcom/amap/api/mapcore2d/cl;->a(ZZ)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bl$d;->b:Lcom/amap/api/mapcore2d/bl;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/bl;->g:Lcom/amap/api/mapcore2d/b;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/mapcore2d/bl$d;->b:Lcom/amap/api/mapcore2d/bl;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/bl;->g:Lcom/amap/api/mapcore2d/b;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/b;->h:Lcom/amap/api/mapcore2d/cc;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/mapcore2d/bl$d;->b:Lcom/amap/api/mapcore2d/bl;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/bl;->g:Lcom/amap/api/mapcore2d/b;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/b;->h:Lcom/amap/api/mapcore2d/cc;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/cc;->a(Z)V

    iget-object v0, p0, Lcom/amap/api/mapcore2d/bl$d;->b:Lcom/amap/api/mapcore2d/bl;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/bl;->g:Lcom/amap/api/mapcore2d/b;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/b;->postInvalidate()V

    :cond_1
    return-void
.end method

.method public b()I
    .locals 3

    const-string/jumbo v1, "getMinZoomLevel"

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bl$d;->b:Lcom/amap/api/mapcore2d/bl;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/bl;->h:Lcom/amap/api/mapcore2d/bh;

    iget v0, v0, Lcom/amap/api/mapcore2d/bh;->e:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const-string/jumbo v2, "Mediator"

    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/cy;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(I)V
    .locals 3

    const-string/jumbo v1, "setMaxZoomLevel"

    if-gtz p1, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bl$d;->b:Lcom/amap/api/mapcore2d/bl;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/bl;->h:Lcom/amap/api/mapcore2d/bh;

    sput p1, Lcom/amap/api/mapcore2d/y;->c:I

    iput p1, v0, Lcom/amap/api/mapcore2d/bh;->f:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v2, "Mediator"

    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/cy;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public b(Lcom/amap/api/mapcore2d/ae;)V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/amap/api/mapcore2d/bl$d;->b:Lcom/amap/api/mapcore2d/bl;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/bl;->b:Lcom/amap/api/mapcore2d/bl$d;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/bl$d;->f()Lcom/amap/api/mapcore2d/ae;

    move-result-object v0

    if-eqz p1, :cond_1

    invoke-virtual {p1, v0}, Lcom/amap/api/mapcore2d/ae;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/amap/api/mapcore2d/y;->p:Z

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore2d/bl$d;->b:Lcom/amap/api/mapcore2d/bl;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/bl;->h:Lcom/amap/api/mapcore2d/bh;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore2d/bh;->a(Lcom/amap/api/mapcore2d/ae;)Lcom/amap/api/mapcore2d/ae;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/mapcore2d/bl$d;->b:Lcom/amap/api/mapcore2d/bl;

    iget-object v1, v1, Lcom/amap/api/mapcore2d/bl;->h:Lcom/amap/api/mapcore2d/bh;

    iput-object v0, v1, Lcom/amap/api/mapcore2d/bh;->i:Lcom/amap/api/mapcore2d/ae;

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/amap/api/mapcore2d/bl$d;->a(ZZ)V

    :cond_1
    return-void
.end method

.method public c()I
    .locals 1

    sget v0, Lcom/amap/api/mapcore2d/y;->m:I

    return v0
.end method

.method public c(I)V
    .locals 3

    const-string/jumbo v1, "setMinZoomLevel"

    if-gtz p1, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bl$d;->b:Lcom/amap/api/mapcore2d/bl;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/bl;->h:Lcom/amap/api/mapcore2d/bh;

    sput p1, Lcom/amap/api/mapcore2d/y;->d:I

    iput p1, v0, Lcom/amap/api/mapcore2d/bh;->e:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v2, "Mediator"

    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/cy;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public d()I
    .locals 1

    sget v0, Lcom/amap/api/mapcore2d/y;->n:I

    return v0
.end method

.method public e()I
    .locals 3

    const-string/jumbo v1, "getZoomLevel"

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bl$d;->b:Lcom/amap/api/mapcore2d/bl;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/bl;->h:Lcom/amap/api/mapcore2d/bh;

    iget v0, v0, Lcom/amap/api/mapcore2d/bh;->g:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const-string/jumbo v2, "Mediator"

    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/cy;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f()Lcom/amap/api/mapcore2d/ae;
    .locals 2

    iget-object v0, p0, Lcom/amap/api/mapcore2d/bl$d;->b:Lcom/amap/api/mapcore2d/bl;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/bl;->h:Lcom/amap/api/mapcore2d/bh;

    iget-object v1, p0, Lcom/amap/api/mapcore2d/bl$d;->b:Lcom/amap/api/mapcore2d/bl;

    iget-object v1, v1, Lcom/amap/api/mapcore2d/bl;->h:Lcom/amap/api/mapcore2d/bh;

    iget-object v1, v1, Lcom/amap/api/mapcore2d/bh;->i:Lcom/amap/api/mapcore2d/ae;

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore2d/bh;->b(Lcom/amap/api/mapcore2d/ae;)Lcom/amap/api/mapcore2d/ae;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/mapcore2d/bl$d;->b:Lcom/amap/api/mapcore2d/bl;

    iget-object v1, v1, Lcom/amap/api/mapcore2d/bl;->c:Lcom/amap/api/mapcore2d/bl$b;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/amap/api/mapcore2d/bl$d;->b:Lcom/amap/api/mapcore2d/bl;

    iget-object v1, v1, Lcom/amap/api/mapcore2d/bl;->c:Lcom/amap/api/mapcore2d/bl$b;

    iget-boolean v1, v1, Lcom/amap/api/mapcore2d/bl$b;->a:Z

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore2d/bl$d;->b:Lcom/amap/api/mapcore2d/bl;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/bl;->h:Lcom/amap/api/mapcore2d/bh;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/bh;->j:Lcom/amap/api/mapcore2d/ae;

    :cond_0
    return-object v0
.end method

.method public g()Lcom/amap/api/mapcore2d/b;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore2d/bl$d;->c:Lcom/amap/api/mapcore2d/b;

    return-object v0
.end method
