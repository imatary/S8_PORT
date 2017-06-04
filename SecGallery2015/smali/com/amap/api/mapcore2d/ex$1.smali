.class Lcom/amap/api/mapcore2d/ex$1;
.super Lcom/amap/api/mapcore2d/ec;
.source "NetManger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/mapcore2d/ex;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/amap/api/mapcore2d/ey;

.field final synthetic c:Lcom/amap/api/mapcore2d/ez;

.field final synthetic d:Lcom/amap/api/mapcore2d/ex;


# virtual methods
.method public a()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ex$1;->d:Lcom/amap/api/mapcore2d/ex;

    iget-object v1, p0, Lcom/amap/api/mapcore2d/ex$1;->b:Lcom/amap/api/mapcore2d/ey;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore2d/ex;->a(Lcom/amap/api/mapcore2d/ex;Lcom/amap/api/mapcore2d/ey;Z)Lcom/amap/api/mapcore2d/fa;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/mapcore2d/ex$1;->d:Lcom/amap/api/mapcore2d/ex;

    iget-object v2, p0, Lcom/amap/api/mapcore2d/ex$1;->c:Lcom/amap/api/mapcore2d/ez;

    invoke-static {v1, v0, v2}, Lcom/amap/api/mapcore2d/ex;->a(Lcom/amap/api/mapcore2d/ex;Lcom/amap/api/mapcore2d/fa;Lcom/amap/api/mapcore2d/ez;)V
    :try_end_0
    .catch Lcom/amap/api/mapcore2d/cz; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/amap/api/mapcore2d/ex$1;->d:Lcom/amap/api/mapcore2d/ex;

    iget-object v2, p0, Lcom/amap/api/mapcore2d/ex$1;->c:Lcom/amap/api/mapcore2d/ez;

    invoke-static {v1, v0, v2}, Lcom/amap/api/mapcore2d/ex;->a(Lcom/amap/api/mapcore2d/ex;Lcom/amap/api/mapcore2d/cz;Lcom/amap/api/mapcore2d/ez;)V

    goto :goto_0
.end method
