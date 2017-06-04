.class Lcom/amap/api/mapcore2d/ce;
.super Lcom/amap/api/mapcore2d/bt;
.source "TileServerHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amap/api/mapcore2d/bt",
        "<",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/amap/api/mapcore2d/n$a;",
        ">;",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/amap/api/mapcore2d/n$a;",
        ">;>;"
    }
.end annotation


# instance fields
.field private e:Landroid/content/Context;

.field private f:Lcom/amap/api/mapcore2d/aw;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/api/mapcore2d/n$a;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p2}, Lcom/amap/api/mapcore2d/bt;-><init>(Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore2d/ce;->f:Lcom/amap/api/mapcore2d/aw;

    iput-object p1, p0, Lcom/amap/api/mapcore2d/ce;->e:Landroid/content/Context;

    iget-object v0, p0, Lcom/amap/api/mapcore2d/ce;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/dg;->a(Landroid/content/Context;)Lorg/apache/http/HttpHost;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore2d/ce;->a(Lorg/apache/http/HttpHost;)V

    const/16 v0, 0x1388

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore2d/ce;->a(I)V

    const v0, 0xc350

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore2d/ce;->b(I)V

    return-void
.end method

.method private a(Lcom/amap/api/mapcore2d/n$a;I)V
    .locals 5

    if-eqz p1, :cond_0

    if-gez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ce;->f:Lcom/amap/api/mapcore2d/aw;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore2d/ce;->f:Lcom/amap/api/mapcore2d/aw;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/aw;->o:Lcom/amap/api/mapcore2d/bw;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore2d/ce;->f:Lcom/amap/api/mapcore2d/aw;

    iget-object v2, v0, Lcom/amap/api/mapcore2d/aw;->o:Lcom/amap/api/mapcore2d/bw;

    invoke-virtual {v2}, Lcom/amap/api/mapcore2d/bw;->size()I

    move-result v3

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    if-ge v1, v3, :cond_0

    invoke-virtual {v2, v1}, Lcom/amap/api/mapcore2d/bw;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore2d/n$a;

    if-nez v0, :cond_3

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_3
    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore2d/n$a;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iput p2, v0, Lcom/amap/api/mapcore2d/n$a;->g:I

    goto :goto_0
.end method

.method private a(Landroid/graphics/Bitmap;)[B
    .locals 3

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {p1, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a([BLcom/amap/api/mapcore2d/n$a;)I
    .locals 7

    const/4 v1, 0x0

    const/4 v6, -0x1

    if-eqz p2, :cond_0

    if-nez p1, :cond_2

    :cond_0
    move v0, v6

    :cond_1
    :goto_0
    return v0

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v0, p2, Lcom/amap/api/mapcore2d/n$a;->b:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "-"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p2, Lcom/amap/api/mapcore2d/n$a;->c:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "-"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p2, Lcom/amap/api/mapcore2d/n$a;->d:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/amap/api/mapcore2d/ce;->f:Lcom/amap/api/mapcore2d/aw;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/amap/api/mapcore2d/ce;->f:Lcom/amap/api/mapcore2d/aw;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/aw;->m:Lcom/amap/api/mapcore2d/q;

    if-nez v0, :cond_4

    :cond_3
    move v0, v6

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ce;->f:Lcom/amap/api/mapcore2d/aw;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/aw;->m:Lcom/amap/api/mapcore2d/q;

    const/4 v3, 0x0

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v2, p1

    move-object v4, v1

    invoke-virtual/range {v0 .. v5}, Lcom/amap/api/mapcore2d/q;->a([B[BZLjava/util/List;Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_5

    move v0, v6

    goto :goto_0

    :cond_5
    invoke-direct {p0, p2, v0}, Lcom/amap/api/mapcore2d/ce;->a(Lcom/amap/api/mapcore2d/n$a;I)V

    iget-object v1, p0, Lcom/amap/api/mapcore2d/ce;->f:Lcom/amap/api/mapcore2d/aw;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/amap/api/mapcore2d/ce;->f:Lcom/amap/api/mapcore2d/aw;

    iget-boolean v1, v1, Lcom/amap/api/mapcore2d/aw;->g:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/amap/api/mapcore2d/ce;->f:Lcom/amap/api/mapcore2d/aw;

    iget-object v1, v1, Lcom/amap/api/mapcore2d/aw;->m:Lcom/amap/api/mapcore2d/q;

    invoke-virtual {v1, v0}, Lcom/amap/api/mapcore2d/q;->a(I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/amap/api/mapcore2d/ce;->a(Landroid/graphics/Bitmap;)[B

    move-result-object v1

    iget-object v2, p0, Lcom/amap/api/mapcore2d/ce;->f:Lcom/amap/api/mapcore2d/aw;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/amap/api/mapcore2d/ce;->f:Lcom/amap/api/mapcore2d/aw;

    iget-object v2, v2, Lcom/amap/api/mapcore2d/aw;->n:Lcom/amap/api/mapcore2d/r;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/amap/api/mapcore2d/ce;->f:Lcom/amap/api/mapcore2d/aw;

    iget-object v2, v2, Lcom/amap/api/mapcore2d/aw;->n:Lcom/amap/api/mapcore2d/r;

    iget v3, p2, Lcom/amap/api/mapcore2d/n$a;->b:I

    iget v4, p2, Lcom/amap/api/mapcore2d/n$a;->c:I

    iget v5, p2, Lcom/amap/api/mapcore2d/n$a;->d:I

    invoke-virtual {v2, v1, v3, v4, v5}, Lcom/amap/api/mapcore2d/r;->a([BIII)Z

    goto :goto_0
.end method

.method protected synthetic a([B)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/maps2d/AMapException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore2d/ce;->b([B)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/amap/api/mapcore2d/aw;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/mapcore2d/ce;->f:Lcom/amap/api/mapcore2d/aw;

    return-void
.end method

.method protected b([B)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
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

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/amap/api/mapcore2d/ce;->a:Ljava/lang/Object;

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    return-object v1

    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ce;->a:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v3, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore2d/ce;->a:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore2d/n$a;

    invoke-virtual {p0, p1, v0}, Lcom/amap/api/mapcore2d/ce;->a([BLcom/amap/api/mapcore2d/n$a;)I

    move-result v4

    if-gez v4, :cond_3

    if-nez v1, :cond_2

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :cond_2
    new-instance v4, Lcom/amap/api/mapcore2d/n$a;

    invoke-direct {v4, v0}, Lcom/amap/api/mapcore2d/n$a;-><init>(Lcom/amap/api/mapcore2d/n$a;)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    move-object v0, v1

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move-object v1, v0

    goto :goto_0
.end method

.method public b()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "Accept-Encoding"

    const-string/jumbo v2, "gzip"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "User-Agent"

    const-string/jumbo v2, "AMAP SDK Android 2DMap 2.5.0"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public c()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/amap/api/mapcore2d/ce;->f:Lcom/amap/api/mapcore2d/aw;

    iget-object v1, v0, Lcom/amap/api/mapcore2d/aw;->j:Lcom/amap/api/mapcore2d/ck;

    iget-object v0, p0, Lcom/amap/api/mapcore2d/ce;->a:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore2d/n$a;

    iget v2, v0, Lcom/amap/api/mapcore2d/n$a;->b:I

    iget-object v0, p0, Lcom/amap/api/mapcore2d/ce;->a:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore2d/n$a;

    iget v3, v0, Lcom/amap/api/mapcore2d/n$a;->c:I

    iget-object v0, p0, Lcom/amap/api/mapcore2d/ce;->a:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore2d/n$a;

    iget v0, v0, Lcom/amap/api/mapcore2d/n$a;->d:I

    invoke-virtual {v1, v2, v3, v0}, Lcom/amap/api/mapcore2d/ck;->a(III)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e()Lorg/apache/http/HttpEntity;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected synthetic f()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/ce;->g()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected g()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/api/mapcore2d/n$a;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/amap/api/mapcore2d/ce;->a:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore2d/n$a;

    new-instance v3, Lcom/amap/api/mapcore2d/n$a;

    invoke-direct {v3, v0}, Lcom/amap/api/mapcore2d/n$a;-><init>(Lcom/amap/api/mapcore2d/n$a;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v1
.end method
