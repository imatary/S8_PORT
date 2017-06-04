.class Lcom/amap/api/mapcore2d/a;
.super Ljava/lang/Object;
.source "AMapCallback.java"


# instance fields
.field private a:Lcom/amap/api/mapcore2d/b;

.field private b:I


# direct methods
.method public constructor <init>(Lcom/amap/api/mapcore2d/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amap/api/mapcore2d/a;->a:Lcom/amap/api/mapcore2d/b;

    return-void
.end method


# virtual methods
.method protected a(Lcom/amap/api/mapcore2d/u;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-wide v6, 0x412e848000000000L    # 1000000.0

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/a;->a:Lcom/amap/api/mapcore2d/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore2d/a;->a:Lcom/amap/api/mapcore2d/b;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/b;->D()Lcom/amap/api/mapcore2d/bb;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore2d/a;->a:Lcom/amap/api/mapcore2d/b;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/b;->f()F

    move-result v0

    float-to-int v0, v0

    iget-object v1, p1, Lcom/amap/api/mapcore2d/u;->a:Lcom/amap/api/mapcore2d/u$a;

    sget-object v2, Lcom/amap/api/mapcore2d/u$a;->h:Lcom/amap/api/mapcore2d/u$a;

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/amap/api/mapcore2d/a;->a:Lcom/amap/api/mapcore2d/b;

    iget-object v1, v1, Lcom/amap/api/mapcore2d/b;->a:Lcom/amap/api/mapcore2d/bb;

    iget v2, p1, Lcom/amap/api/mapcore2d/u;->b:F

    float-to-int v2, v2

    iget v3, p1, Lcom/amap/api/mapcore2d/u;->c:F

    float-to-int v3, v3

    invoke-virtual {v1, v2, v3}, Lcom/amap/api/mapcore2d/bb;->c(II)V

    iget-object v1, p0, Lcom/amap/api/mapcore2d/a;->a:Lcom/amap/api/mapcore2d/b;

    invoke-virtual {v1}, Lcom/amap/api/mapcore2d/b;->postInvalidate()V

    :goto_1
    iget v1, p0, Lcom/amap/api/mapcore2d/a;->b:I

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore2d/a;->a:Lcom/amap/api/mapcore2d/b;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/b;->q()Lcom/amap/api/mapcore2d/au;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/au;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore2d/a;->a:Lcom/amap/api/mapcore2d/b;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/b;->L()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "AMapCallback"

    const-string/jumbo v2, "runCameraUpdate"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore2d/cy;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    :try_start_1
    iget-object v1, p1, Lcom/amap/api/mapcore2d/u;->a:Lcom/amap/api/mapcore2d/u$a;

    sget-object v2, Lcom/amap/api/mapcore2d/u$a;->b:Lcom/amap/api/mapcore2d/u$a;

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcom/amap/api/mapcore2d/a;->a:Lcom/amap/api/mapcore2d/b;

    invoke-virtual {v1}, Lcom/amap/api/mapcore2d/b;->D()Lcom/amap/api/mapcore2d/bb;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amap/api/mapcore2d/bb;->c()Z

    goto :goto_1

    :cond_3
    iget-object v1, p1, Lcom/amap/api/mapcore2d/u;->a:Lcom/amap/api/mapcore2d/u$a;

    sget-object v2, Lcom/amap/api/mapcore2d/u$a;->e:Lcom/amap/api/mapcore2d/u$a;

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Lcom/amap/api/mapcore2d/a;->a:Lcom/amap/api/mapcore2d/b;

    invoke-virtual {v1}, Lcom/amap/api/mapcore2d/b;->D()Lcom/amap/api/mapcore2d/bb;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amap/api/mapcore2d/bb;->d()Z

    goto :goto_1

    :cond_4
    iget-object v1, p1, Lcom/amap/api/mapcore2d/u;->a:Lcom/amap/api/mapcore2d/u$a;

    sget-object v2, Lcom/amap/api/mapcore2d/u$a;->f:Lcom/amap/api/mapcore2d/u$a;

    if-ne v1, v2, :cond_5

    iget v1, p1, Lcom/amap/api/mapcore2d/u;->d:F

    float-to-int v1, v1

    iget-object v2, p0, Lcom/amap/api/mapcore2d/a;->a:Lcom/amap/api/mapcore2d/b;

    invoke-virtual {v2}, Lcom/amap/api/mapcore2d/b;->D()Lcom/amap/api/mapcore2d/bb;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/amap/api/mapcore2d/bb;->c(I)I

    goto :goto_1

    :cond_5
    iget-object v1, p1, Lcom/amap/api/mapcore2d/u;->a:Lcom/amap/api/mapcore2d/u$a;

    sget-object v2, Lcom/amap/api/mapcore2d/u$a;->g:Lcom/amap/api/mapcore2d/u$a;

    if-ne v1, v2, :cond_7

    iget v1, p1, Lcom/amap/api/mapcore2d/u;->e:F

    iget-object v2, p0, Lcom/amap/api/mapcore2d/a;->a:Lcom/amap/api/mapcore2d/b;

    int-to-float v3, v0

    add-float/2addr v1, v3

    float-to-int v1, v1

    invoke-virtual {v2, v1}, Lcom/amap/api/mapcore2d/b;->a(I)I

    move-result v1

    iget-object v2, p1, Lcom/amap/api/mapcore2d/u;->h:Landroid/graphics/Point;

    sub-int v3, v1, v0

    int-to-float v3, v3

    if-eqz v2, :cond_6

    iget-object v1, p0, Lcom/amap/api/mapcore2d/a;->a:Lcom/amap/api/mapcore2d/b;

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v2, v4}, Lcom/amap/api/mapcore2d/b;->a(FLandroid/graphics/Point;Z)V

    goto :goto_1

    :cond_6
    iget-object v2, p0, Lcom/amap/api/mapcore2d/a;->a:Lcom/amap/api/mapcore2d/b;

    invoke-virtual {v2}, Lcom/amap/api/mapcore2d/b;->D()Lcom/amap/api/mapcore2d/bb;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/amap/api/mapcore2d/bb;->c(I)I

    goto :goto_1

    :cond_7
    iget-object v1, p1, Lcom/amap/api/mapcore2d/u;->a:Lcom/amap/api/mapcore2d/u$a;

    sget-object v2, Lcom/amap/api/mapcore2d/u$a;->i:Lcom/amap/api/mapcore2d/u$a;

    if-ne v1, v2, :cond_8

    iget-object v1, p1, Lcom/amap/api/mapcore2d/u;->f:Lcom/amap/api/maps2d/model/CameraPosition;

    iget-object v2, v1, Lcom/amap/api/maps2d/model/CameraPosition;->target:Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v2, v2, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    mul-double/2addr v2, v6

    double-to-int v2, v2

    iget-object v3, v1, Lcom/amap/api/maps2d/model/CameraPosition;->target:Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v4, v3, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    mul-double/2addr v4, v6

    double-to-int v3, v4

    iget-object v4, p0, Lcom/amap/api/mapcore2d/a;->a:Lcom/amap/api/mapcore2d/b;

    invoke-virtual {v4}, Lcom/amap/api/mapcore2d/b;->D()Lcom/amap/api/mapcore2d/bb;

    move-result-object v4

    new-instance v5, Lcom/amap/api/mapcore2d/ae;

    invoke-direct {v5, v2, v3}, Lcom/amap/api/mapcore2d/ae;-><init>(II)V

    iget v1, v1, Lcom/amap/api/maps2d/model/CameraPosition;->zoom:F

    float-to-int v1, v1

    invoke-virtual {v4, v5, v1}, Lcom/amap/api/mapcore2d/bb;->a(Lcom/amap/api/mapcore2d/ae;I)V

    goto/16 :goto_1

    :cond_8
    iget-object v1, p1, Lcom/amap/api/mapcore2d/u;->a:Lcom/amap/api/mapcore2d/u$a;

    sget-object v2, Lcom/amap/api/mapcore2d/u$a;->c:Lcom/amap/api/mapcore2d/u$a;

    if-ne v1, v2, :cond_9

    iget-object v1, p1, Lcom/amap/api/mapcore2d/u;->f:Lcom/amap/api/maps2d/model/CameraPosition;

    iget-object v2, v1, Lcom/amap/api/maps2d/model/CameraPosition;->target:Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v2, v2, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    mul-double/2addr v2, v6

    double-to-int v2, v2

    iget-object v1, v1, Lcom/amap/api/maps2d/model/CameraPosition;->target:Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v4, v1, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    mul-double/2addr v4, v6

    double-to-int v1, v4

    iget-object v3, p0, Lcom/amap/api/mapcore2d/a;->a:Lcom/amap/api/mapcore2d/b;

    invoke-virtual {v3}, Lcom/amap/api/mapcore2d/b;->D()Lcom/amap/api/mapcore2d/bb;

    move-result-object v3

    new-instance v4, Lcom/amap/api/mapcore2d/ae;

    invoke-direct {v4, v2, v1}, Lcom/amap/api/mapcore2d/ae;-><init>(II)V

    invoke-virtual {v3, v4}, Lcom/amap/api/mapcore2d/bb;->a(Lcom/amap/api/mapcore2d/ae;)V

    invoke-static {}, Lcom/amap/api/mapcore2d/t;->a()Lcom/amap/api/mapcore2d/t;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amap/api/mapcore2d/t;->b()V

    goto/16 :goto_1

    :cond_9
    iget-object v1, p1, Lcom/amap/api/mapcore2d/u;->a:Lcom/amap/api/mapcore2d/u$a;

    sget-object v2, Lcom/amap/api/mapcore2d/u$a;->j:Lcom/amap/api/mapcore2d/u$a;

    if-eq v1, v2, :cond_a

    iget-object v1, p1, Lcom/amap/api/mapcore2d/u;->a:Lcom/amap/api/mapcore2d/u$a;

    sget-object v2, Lcom/amap/api/mapcore2d/u$a;->k:Lcom/amap/api/mapcore2d/u$a;

    if-ne v1, v2, :cond_b

    :cond_a
    iget-object v1, p0, Lcom/amap/api/mapcore2d/a;->a:Lcom/amap/api/mapcore2d/b;

    const/4 v2, 0x0

    const-wide/16 v4, -0x1

    invoke-virtual {v1, p1, v2, v4, v5}, Lcom/amap/api/mapcore2d/b;->a(Lcom/amap/api/mapcore2d/u;ZJ)V

    goto/16 :goto_1

    :cond_b
    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/amap/api/mapcore2d/u;->i:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method
