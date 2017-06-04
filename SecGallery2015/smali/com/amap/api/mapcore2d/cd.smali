.class Lcom/amap/api/mapcore2d/cd;
.super Lcom/amap/api/mapcore2d/j;
.source "TileServer.java"

# interfaces
.implements Lcom/amap/api/mapcore2d/cl;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amap/api/mapcore2d/j",
        "<",
        "Lcom/amap/api/mapcore2d/n$a;",
        "Lcom/amap/api/mapcore2d/n$a;",
        ">;",
        "Lcom/amap/api/mapcore2d/cl;"
    }
.end annotation


# instance fields
.field private d:Landroid/content/Context;

.field private e:Lcom/amap/api/mapcore2d/av;


# direct methods
.method public constructor <init>(Lcom/amap/api/mapcore2d/bl;Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/amap/api/mapcore2d/j;-><init>(Lcom/amap/api/mapcore2d/bl;Landroid/content/Context;)V

    new-instance v0, Lcom/amap/api/mapcore2d/av;

    invoke-direct {v0}, Lcom/amap/api/mapcore2d/av;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/cd;->e:Lcom/amap/api/mapcore2d/av;

    iput-object p2, p0, Lcom/amap/api/mapcore2d/cd;->d:Landroid/content/Context;

    new-instance v0, Lcom/amap/api/mapcore2d/ca;

    invoke-direct {v0}, Lcom/amap/api/mapcore2d/ca;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/cd;->a:Lcom/amap/api/mapcore2d/bx;

    iget-object v0, p1, Lcom/amap/api/mapcore2d/bl;->b:Lcom/amap/api/mapcore2d/bl$d;

    invoke-virtual {v0, p0}, Lcom/amap/api/mapcore2d/bl$d;->a(Lcom/amap/api/mapcore2d/cl;)V

    return-void
.end method

.method private a(Ljava/util/ArrayList;Lcom/amap/api/mapcore2d/aw;IZ)Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/api/mapcore2d/n$a;",
            ">;",
            "Lcom/amap/api/mapcore2d/aw;",
            "IZ)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/api/mapcore2d/n$a;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-boolean v1, p2, Lcom/amap/api/mapcore2d/aw;->f:Z

    if-eqz v1, :cond_0

    iget-object v1, p2, Lcom/amap/api/mapcore2d/aw;->o:Lcom/amap/api/mapcore2d/bw;

    if-eqz v1, :cond_0

    iget-object v1, p2, Lcom/amap/api/mapcore2d/aw;->o:Lcom/amap/api/mapcore2d/bw;

    invoke-virtual {v1}, Lcom/amap/api/mapcore2d/bw;->clear()V

    iget v1, p2, Lcom/amap/api/mapcore2d/aw;->b:I

    if-gt p3, v1, :cond_0

    iget v1, p2, Lcom/amap/api/mapcore2d/aw;->c:I

    if-lt p3, v1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    move v2, v0

    :goto_1
    if-ge v2, v3, :cond_5

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore2d/n$a;

    if-nez v0, :cond_3

    :cond_2
    :goto_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, v0, Lcom/amap/api/mapcore2d/n$a;->b:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lcom/amap/api/mapcore2d/n$a;->c:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lcom/amap/api/mapcore2d/n$a;->d:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v5, p2, Lcom/amap/api/mapcore2d/aw;->m:Lcom/amap/api/mapcore2d/q;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/amap/api/mapcore2d/q;->a(Ljava/lang/String;)I

    move-result v4

    new-instance v5, Lcom/amap/api/mapcore2d/n$a;

    iget v6, v0, Lcom/amap/api/mapcore2d/n$a;->b:I

    iget v7, v0, Lcom/amap/api/mapcore2d/n$a;->c:I

    iget v8, v0, Lcom/amap/api/mapcore2d/n$a;->d:I

    iget v9, p2, Lcom/amap/api/mapcore2d/aw;->k:I

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/amap/api/mapcore2d/n$a;-><init>(IIII)V

    iput v4, v5, Lcom/amap/api/mapcore2d/n$a;->g:I

    iget-object v0, v0, Lcom/amap/api/mapcore2d/n$a;->f:Landroid/graphics/PointF;

    iput-object v0, v5, Lcom/amap/api/mapcore2d/n$a;->f:Landroid/graphics/PointF;

    iget-object v0, p2, Lcom/amap/api/mapcore2d/aw;->o:Lcom/amap/api/mapcore2d/bw;

    invoke-virtual {v0, v5}, Lcom/amap/api/mapcore2d/bw;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, v5}, Lcom/amap/api/mapcore2d/cd;->a(Lcom/amap/api/mapcore2d/n$a;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-nez p4, :cond_2

    iget-object v0, p0, Lcom/amap/api/mapcore2d/cd;->e:Lcom/amap/api/mapcore2d/av;

    invoke-virtual {v0, v5}, Lcom/amap/api/mapcore2d/av;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p2, Lcom/amap/api/mapcore2d/aw;->g:Z

    if-nez v0, :cond_4

    const/4 v0, -0x1

    iput v0, v5, Lcom/amap/api/mapcore2d/n$a;->a:I

    :cond_4
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    move-object v0, v1

    goto/16 :goto_0
.end method

.method private a(Ljava/util/ArrayList;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/api/mapcore2d/n$a;",
            ">;Z)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/amap/api/mapcore2d/cd;->a:Lcom/amap/api/mapcore2d/bx;

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore2d/cd;->a:Lcom/amap/api/mapcore2d/bx;

    invoke-virtual {v0, p1, p2}, Lcom/amap/api/mapcore2d/bx;->a(Ljava/util/List;Z)V

    goto :goto_0
.end method

.method private a(Lcom/amap/api/mapcore2d/n$a;)Z
    .locals 1

    if-eqz p1, :cond_0

    iget v0, p1, Lcom/amap/api/mapcore2d/n$a;->g:I

    if-gez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/api/mapcore2d/n$a;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore2d/cd;->e:Lcom/amap/api/mapcore2d/av;

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    iget-object v3, p0, Lcom/amap/api/mapcore2d/cd;->e:Lcom/amap/api/mapcore2d/av;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore2d/n$a;

    invoke-virtual {v3, v0}, Lcom/amap/api/mapcore2d/av;->a(Lcom/amap/api/mapcore2d/n$a;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method private i()Z
    .locals 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/amap/api/mapcore2d/cd;->b:Lcom/amap/api/mapcore2d/bl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore2d/cd;->b:Lcom/amap/api/mapcore2d/bl;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/bl;->d:Lcom/amap/api/mapcore2d/bl$a;

    if-nez v0, :cond_1

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore2d/cd;->b:Lcom/amap/api/mapcore2d/bl;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/bl;->d:Lcom/amap/api/mapcore2d/bl$a;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/bl$a;->a:Lcom/amap/api/mapcore2d/bw;

    if-nez v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/amap/api/mapcore2d/cd;->b:Lcom/amap/api/mapcore2d/bl;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/bl;->d:Lcom/amap/api/mapcore2d/bl$a;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/bl$a;->a:Lcom/amap/api/mapcore2d/bw;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/bw;->size()I

    move-result v4

    if-gtz v4, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    move v3, v1

    :goto_1
    if-ge v3, v4, :cond_6

    iget-object v0, p0, Lcom/amap/api/mapcore2d/cd;->b:Lcom/amap/api/mapcore2d/bl;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/bl;->d:Lcom/amap/api/mapcore2d/bl$a;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/bl$a;->a:Lcom/amap/api/mapcore2d/bw;

    invoke-virtual {v0, v3}, Lcom/amap/api/mapcore2d/bw;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore2d/aw;

    if-nez v0, :cond_5

    :cond_4
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :cond_5
    iget-boolean v0, v0, Lcom/amap/api/mapcore2d/aw;->f:Z

    if-ne v0, v2, :cond_4

    move v0, v2

    goto :goto_0

    :cond_6
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method protected a(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/api/mapcore2d/n$a;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/api/mapcore2d/n$a;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/maps2d/AMapException;
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore2d/cd;->b:Lcom/amap/api/mapcore2d/bl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore2d/cd;->b:Lcom/amap/api/mapcore2d/bl;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/bl;->d:Lcom/amap/api/mapcore2d/bl$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore2d/cd;->b:Lcom/amap/api/mapcore2d/bl;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/bl;->d:Lcom/amap/api/mapcore2d/bl$a;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/bl$a;->a:Lcom/amap/api/mapcore2d/bw;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore2d/cd;->b:Lcom/amap/api/mapcore2d/bl;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/bl;->d:Lcom/amap/api/mapcore2d/bl$a;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/bl$a;->a:Lcom/amap/api/mapcore2d/bw;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/bw;->size()I

    move-result v2

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore2d/n$a;

    iget v0, v0, Lcom/amap/api/mapcore2d/n$a;->e:I

    if-ge v0, v2, :cond_0

    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore2d/cd;->a(Ljava/util/List;)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore2d/cd;->b:Lcom/amap/api/mapcore2d/bl;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/bl;->d:Lcom/amap/api/mapcore2d/bl$a;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/bl$a;->a:Lcom/amap/api/mapcore2d/bw;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/bw;->size()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore2d/n$a;

    iget v0, v0, Lcom/amap/api/mapcore2d/n$a;->e:I

    iget-object v2, p0, Lcom/amap/api/mapcore2d/cd;->b:Lcom/amap/api/mapcore2d/bl;

    iget-object v2, v2, Lcom/amap/api/mapcore2d/bl;->d:Lcom/amap/api/mapcore2d/bl$a;

    iget-object v2, v2, Lcom/amap/api/mapcore2d/bl$a;->a:Lcom/amap/api/mapcore2d/bw;

    invoke-virtual {v2, v0}, Lcom/amap/api/mapcore2d/bw;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore2d/aw;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/aw;->j:Lcom/amap/api/mapcore2d/ck;

    if-eqz v0, :cond_4

    new-instance v2, Lcom/amap/api/mapcore2d/ce;

    iget-object v0, p0, Lcom/amap/api/mapcore2d/cd;->d:Landroid/content/Context;

    invoke-direct {v2, v0, p1}, Lcom/amap/api/mapcore2d/ce;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/amap/api/mapcore2d/cd;->b:Lcom/amap/api/mapcore2d/bl;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/bl;->d:Lcom/amap/api/mapcore2d/bl$a;

    iget-object v3, v0, Lcom/amap/api/mapcore2d/bl$a;->a:Lcom/amap/api/mapcore2d/bw;

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore2d/n$a;

    iget v0, v0, Lcom/amap/api/mapcore2d/n$a;->e:I

    invoke-virtual {v3, v0}, Lcom/amap/api/mapcore2d/bw;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore2d/aw;

    invoke-virtual {v2, v0}, Lcom/amap/api/mapcore2d/ce;->a(Lcom/amap/api/mapcore2d/aw;)V

    invoke-virtual {v2}, Lcom/amap/api/mapcore2d/ce;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Lcom/amap/api/mapcore2d/ce;->a(Lcom/amap/api/mapcore2d/aw;)V

    :goto_1
    invoke-direct {p0, p1}, Lcom/amap/api/mapcore2d/cd;->c(Ljava/util/ArrayList;)V

    iget-object v1, p0, Lcom/amap/api/mapcore2d/cd;->b:Lcom/amap/api/mapcore2d/bl;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/amap/api/mapcore2d/cd;->b:Lcom/amap/api/mapcore2d/bl;

    iget-object v1, v1, Lcom/amap/api/mapcore2d/bl;->d:Lcom/amap/api/mapcore2d/bl$a;

    if-nez v1, :cond_3

    :cond_2
    move-object v1, v0

    goto/16 :goto_0

    :cond_3
    iget-object v1, p0, Lcom/amap/api/mapcore2d/cd;->b:Lcom/amap/api/mapcore2d/bl;

    iget-object v1, v1, Lcom/amap/api/mapcore2d/bl;->d:Lcom/amap/api/mapcore2d/bl$a;

    invoke-virtual {v1}, Lcom/amap/api/mapcore2d/bl$a;->b()V

    move-object v1, v0

    goto/16 :goto_0

    :cond_4
    move-object v0, v1

    goto :goto_1
.end method

.method public a()V
    .locals 1

    invoke-super {p0}, Lcom/amap/api/mapcore2d/j;->a()V

    iget-object v0, p0, Lcom/amap/api/mapcore2d/cd;->e:Lcom/amap/api/mapcore2d/av;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/av;->clear()V

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/mapcore2d/n$a;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    iget-object v3, p0, Lcom/amap/api/mapcore2d/cd;->e:Lcom/amap/api/mapcore2d/av;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore2d/n$a;

    invoke-virtual {v3, v0}, Lcom/amap/api/mapcore2d/av;->b(Lcom/amap/api/mapcore2d/n$a;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v1, -0x1

    add-int/lit8 v1, v2, -0x1

    :goto_1
    add-int/lit8 v0, v0, 0x1

    move v2, v1

    move v1, v0

    goto :goto_0

    :cond_2
    move v0, v1

    move v1, v2

    goto :goto_1
.end method

.method public a(ZZ)V
    .locals 8

    const/4 v4, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/amap/api/mapcore2d/cd;->i()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore2d/cd;->b:Lcom/amap/api/mapcore2d/bl;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/bl;->h:Lcom/amap/api/mapcore2d/bh;

    iget-object v2, p0, Lcom/amap/api/mapcore2d/cd;->b:Lcom/amap/api/mapcore2d/bl;

    iget-object v2, v2, Lcom/amap/api/mapcore2d/bl;->h:Lcom/amap/api/mapcore2d/bh;

    iget-object v2, v2, Lcom/amap/api/mapcore2d/bh;->i:Lcom/amap/api/mapcore2d/ae;

    iget-object v3, p0, Lcom/amap/api/mapcore2d/cd;->b:Lcom/amap/api/mapcore2d/bl;

    iget-object v3, v3, Lcom/amap/api/mapcore2d/bl;->h:Lcom/amap/api/mapcore2d/bh;

    iget v3, v3, Lcom/amap/api/mapcore2d/bh;->g:I

    iget-object v5, p0, Lcom/amap/api/mapcore2d/cd;->b:Lcom/amap/api/mapcore2d/bl;

    iget-object v5, v5, Lcom/amap/api/mapcore2d/bl;->b:Lcom/amap/api/mapcore2d/bl$d;

    invoke-virtual {v5}, Lcom/amap/api/mapcore2d/bl$d;->c()I

    move-result v5

    iget-object v6, p0, Lcom/amap/api/mapcore2d/cd;->b:Lcom/amap/api/mapcore2d/bl;

    iget-object v6, v6, Lcom/amap/api/mapcore2d/bl;->b:Lcom/amap/api/mapcore2d/bl$d;

    invoke-virtual {v6}, Lcom/amap/api/mapcore2d/bl$d;->d()I

    move-result v6

    invoke-virtual {v0, v2, v3, v5, v6}, Lcom/amap/api/mapcore2d/bh;->a(Lcom/amap/api/mapcore2d/ae;III)Ljava/util/ArrayList;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore2d/cd;->b:Lcom/amap/api/mapcore2d/bl;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/bl;->d:Lcom/amap/api/mapcore2d/bl$a;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/bl$a;->a:Lcom/amap/api/mapcore2d/bw;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/bw;->size()I

    move-result v6

    move v3, v1

    move v2, v4

    :goto_1
    if-ge v3, v6, :cond_2

    iget-object v0, p0, Lcom/amap/api/mapcore2d/cd;->b:Lcom/amap/api/mapcore2d/bl;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/bl;->d:Lcom/amap/api/mapcore2d/bl$a;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/bl$a;->a:Lcom/amap/api/mapcore2d/bw;

    invoke-virtual {v0, v3}, Lcom/amap/api/mapcore2d/bw;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore2d/aw;

    iget-object v7, p0, Lcom/amap/api/mapcore2d/cd;->b:Lcom/amap/api/mapcore2d/bl;

    iget-object v7, v7, Lcom/amap/api/mapcore2d/bl;->b:Lcom/amap/api/mapcore2d/bl$d;

    invoke-virtual {v7}, Lcom/amap/api/mapcore2d/bl$d;->e()I

    move-result v7

    invoke-direct {p0, v5, v0, v7, p2}, Lcom/amap/api/mapcore2d/cd;->a(Ljava/util/ArrayList;Lcom/amap/api/mapcore2d/aw;IZ)Ljava/util/ArrayList;

    move-result-object v7

    if-eqz v7, :cond_3

    invoke-direct {p0, v7, v2}, Lcom/amap/api/mapcore2d/cd;->a(Ljava/util/ArrayList;Z)V

    if-ne v2, v4, :cond_4

    move v0, v1

    :goto_2
    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    :goto_3
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v0

    goto :goto_1

    :cond_2
    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/amap/api/mapcore2d/cd;->b:Lcom/amap/api/mapcore2d/bl;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/bl;->b:Lcom/amap/api/mapcore2d/bl$d;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/bl$d;->g()Lcom/amap/api/mapcore2d/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/b;->invalidate()V

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_3

    :cond_4
    move v0, v2

    goto :goto_2
.end method

.method protected b(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/api/mapcore2d/n$a;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/api/mapcore2d/n$a;",
            ">;"
        }
    .end annotation

    const/4 v7, 0x0

    const/4 v5, 0x0

    if-nez p1, :cond_1

    move-object v3, v5

    :cond_0
    :goto_0
    return-object v3

    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_2

    move-object v3, v5

    goto :goto_0

    :cond_2
    move v2, v7

    move-object v3, v5

    :goto_1
    if-ge v2, v4, :cond_0

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore2d/n$a;

    if-nez v0, :cond_3

    move v0, v2

    move-object v1, v3

    move v2, v4

    :goto_2
    add-int/lit8 v0, v0, 0x1

    move-object v3, v1

    move v4, v2

    move v2, v0

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/amap/api/mapcore2d/cd;->b:Lcom/amap/api/mapcore2d/bl;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/amap/api/mapcore2d/cd;->b:Lcom/amap/api/mapcore2d/bl;

    iget-object v1, v1, Lcom/amap/api/mapcore2d/bl;->d:Lcom/amap/api/mapcore2d/bl$a;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/amap/api/mapcore2d/cd;->b:Lcom/amap/api/mapcore2d/bl;

    iget-object v1, v1, Lcom/amap/api/mapcore2d/bl;->d:Lcom/amap/api/mapcore2d/bl$a;

    iget-object v1, v1, Lcom/amap/api/mapcore2d/bl$a;->a:Lcom/amap/api/mapcore2d/bw;

    if-nez v1, :cond_5

    :cond_4
    move-object v3, v5

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/amap/api/mapcore2d/cd;->b:Lcom/amap/api/mapcore2d/bl;

    iget-object v1, v1, Lcom/amap/api/mapcore2d/bl;->d:Lcom/amap/api/mapcore2d/bl$a;

    iget-object v1, v1, Lcom/amap/api/mapcore2d/bl$a;->a:Lcom/amap/api/mapcore2d/bw;

    invoke-virtual {v1}, Lcom/amap/api/mapcore2d/bw;->size()I

    move-result v1

    iget v6, v0, Lcom/amap/api/mapcore2d/n$a;->e:I

    if-lt v6, v1, :cond_6

    move v0, v2

    move-object v1, v3

    move v2, v4

    goto :goto_2

    :cond_6
    iget-object v1, p0, Lcom/amap/api/mapcore2d/cd;->b:Lcom/amap/api/mapcore2d/bl;

    iget-object v1, v1, Lcom/amap/api/mapcore2d/bl;->d:Lcom/amap/api/mapcore2d/bl$a;

    iget-object v1, v1, Lcom/amap/api/mapcore2d/bl$a;->a:Lcom/amap/api/mapcore2d/bw;

    iget v6, v0, Lcom/amap/api/mapcore2d/n$a;->e:I

    invoke-virtual {v1, v6}, Lcom/amap/api/mapcore2d/bw;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amap/api/mapcore2d/aw;

    iget-boolean v1, v1, Lcom/amap/api/mapcore2d/aw;->g:Z

    if-nez v1, :cond_7

    move v0, v2

    move-object v1, v3

    move v2, v4

    goto :goto_2

    :cond_7
    iget-object v1, p0, Lcom/amap/api/mapcore2d/cd;->b:Lcom/amap/api/mapcore2d/bl;

    iget-object v1, v1, Lcom/amap/api/mapcore2d/bl;->d:Lcom/amap/api/mapcore2d/bl$a;

    iget-object v1, v1, Lcom/amap/api/mapcore2d/bl$a;->a:Lcom/amap/api/mapcore2d/bw;

    iget v6, v0, Lcom/amap/api/mapcore2d/n$a;->e:I

    invoke-virtual {v1, v6}, Lcom/amap/api/mapcore2d/bw;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amap/api/mapcore2d/aw;

    iget-object v1, v1, Lcom/amap/api/mapcore2d/aw;->n:Lcom/amap/api/mapcore2d/r;

    invoke-virtual {v1, v0}, Lcom/amap/api/mapcore2d/r;->a(Lcom/amap/api/mapcore2d/n$a;)I

    move-result v8

    if-ltz v8, :cond_c

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v4, v4, -0x1

    add-int/lit8 v2, v2, -0x1

    iget-object v1, p0, Lcom/amap/api/mapcore2d/cd;->b:Lcom/amap/api/mapcore2d/bl;

    iget-object v1, v1, Lcom/amap/api/mapcore2d/bl;->d:Lcom/amap/api/mapcore2d/bl$a;

    iget-object v1, v1, Lcom/amap/api/mapcore2d/bl$a;->a:Lcom/amap/api/mapcore2d/bw;

    iget v6, v0, Lcom/amap/api/mapcore2d/n$a;->e:I

    invoke-virtual {v1, v6}, Lcom/amap/api/mapcore2d/bw;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amap/api/mapcore2d/aw;

    iget-object v9, v1, Lcom/amap/api/mapcore2d/aw;->o:Lcom/amap/api/mapcore2d/bw;

    if-nez v9, :cond_8

    move v0, v2

    move-object v1, v3

    move v2, v4

    goto :goto_2

    :cond_8
    invoke-virtual {v9}, Lcom/amap/api/mapcore2d/bw;->size()I

    move-result v10

    move v6, v7

    :goto_3
    if-ge v6, v10, :cond_b

    invoke-virtual {v9, v6}, Lcom/amap/api/mapcore2d/bw;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amap/api/mapcore2d/n$a;

    if-nez v1, :cond_a

    :cond_9
    add-int/lit8 v1, v6, 0x1

    move v6, v1

    goto :goto_3

    :cond_a
    invoke-virtual {v1, v0}, Lcom/amap/api/mapcore2d/n$a;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9

    iput v8, v1, Lcom/amap/api/mapcore2d/n$a;->g:I

    iget-object v0, p0, Lcom/amap/api/mapcore2d/cd;->b:Lcom/amap/api/mapcore2d/bl;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/bl;->d:Lcom/amap/api/mapcore2d/bl$a;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/bl$a;->b()V

    :cond_b
    move v0, v2

    move-object v1, v3

    move v2, v4

    goto/16 :goto_2

    :cond_c
    if-nez v3, :cond_d

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_4
    new-instance v3, Lcom/amap/api/mapcore2d/n$a;

    invoke-direct {v3, v0}, Lcom/amap/api/mapcore2d/n$a;-><init>(Lcom/amap/api/mapcore2d/n$a;)V

    const/4 v0, -0x1

    iput v0, v3, Lcom/amap/api/mapcore2d/n$a;->a:I

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v0, v2

    move v2, v4

    goto/16 :goto_2

    :cond_d
    move-object v1, v3

    goto :goto_4
.end method

.method protected e()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method protected f()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public g()V
    .locals 0

    return-void
.end method

.method public h()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/amap/api/mapcore2d/cd;->a(ZZ)V

    return-void
.end method
