.class Lcom/amap/api/mapcore2d/bs;
.super Ljava/lang/Object;
.source "ProjectionDelegateImp.java"

# interfaces
.implements Lcom/amap/api/mapcore2d/aq;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/amap/api/mapcore2d/ag;


# direct methods
.method public constructor <init>(Lcom/amap/api/mapcore2d/ag;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "ProjectionDelegateImp"

    iput-object v0, p0, Lcom/amap/api/mapcore2d/bs;->a:Ljava/lang/String;

    iput-object p1, p0, Lcom/amap/api/mapcore2d/bs;->b:Lcom/amap/api/mapcore2d/ag;

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Point;)Lcom/amap/api/maps2d/model/LatLng;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Lcom/amap/api/mapcore2d/aa;

    invoke-direct {v0}, Lcom/amap/api/mapcore2d/aa;-><init>()V

    iget-object v1, p0, Lcom/amap/api/mapcore2d/bs;->b:Lcom/amap/api/mapcore2d/ag;

    iget v2, p1, Landroid/graphics/Point;->x:I

    iget v3, p1, Landroid/graphics/Point;->y:I

    invoke-interface {v1, v2, v3, v0}, Lcom/amap/api/mapcore2d/ag;->a(IILcom/amap/api/mapcore2d/aa;)V

    new-instance v1, Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v2, v0, Lcom/amap/api/mapcore2d/aa;->b:D

    iget-wide v4, v0, Lcom/amap/api/mapcore2d/aa;->a:D

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/amap/api/maps2d/model/LatLng;-><init>(DD)V

    return-object v1
.end method

.method public a()Lcom/amap/api/maps2d/model/VisibleRegion;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v5, 0x0

    const-string/jumbo v6, "getVisibleRegion"

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bs;->b:Lcom/amap/api/mapcore2d/ag;

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/ag;->c()I

    move-result v0

    iget-object v1, p0, Lcom/amap/api/mapcore2d/bs;->b:Lcom/amap/api/mapcore2d/ag;

    invoke-interface {v1}, Lcom/amap/api/mapcore2d/ag;->d()I

    move-result v2

    new-instance v1, Landroid/graphics/Point;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v1, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {p0, v1}, Lcom/amap/api/mapcore2d/bs;->a(Landroid/graphics/Point;)Lcom/amap/api/maps2d/model/LatLng;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    :try_start_1
    new-instance v1, Landroid/graphics/Point;

    const/4 v4, 0x0

    invoke-direct {v1, v0, v4}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {p0, v1}, Lcom/amap/api/mapcore2d/bs;->a(Landroid/graphics/Point;)Lcom/amap/api/maps2d/model/LatLng;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v4

    :try_start_2
    new-instance v1, Landroid/graphics/Point;

    const/4 v7, 0x0

    invoke-direct {v1, v7, v2}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {p0, v1}, Lcom/amap/api/mapcore2d/bs;->a(Landroid/graphics/Point;)Lcom/amap/api/maps2d/model/LatLng;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v1

    :try_start_3
    new-instance v7, Landroid/graphics/Point;

    invoke-direct {v7, v0, v2}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {p0, v7}, Lcom/amap/api/mapcore2d/bs;->a(Landroid/graphics/Point;)Lcom/amap/api/maps2d/model/LatLng;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v2

    :try_start_4
    invoke-static {}, Lcom/amap/api/maps2d/model/LatLngBounds;->builder()Lcom/amap/api/maps2d/model/LatLngBounds$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/amap/api/maps2d/model/LatLngBounds$Builder;->include(Lcom/amap/api/maps2d/model/LatLng;)Lcom/amap/api/maps2d/model/LatLngBounds$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/amap/api/maps2d/model/LatLngBounds$Builder;->include(Lcom/amap/api/maps2d/model/LatLng;)Lcom/amap/api/maps2d/model/LatLngBounds$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/amap/api/maps2d/model/LatLngBounds$Builder;->include(Lcom/amap/api/maps2d/model/LatLng;)Lcom/amap/api/maps2d/model/LatLngBounds$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/amap/api/maps2d/model/LatLngBounds$Builder;->include(Lcom/amap/api/maps2d/model/LatLng;)Lcom/amap/api/maps2d/model/LatLngBounds$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/maps2d/model/LatLngBounds$Builder;->build()Lcom/amap/api/maps2d/model/LatLngBounds;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_4

    move-result-object v5

    :goto_0
    new-instance v0, Lcom/amap/api/maps2d/model/VisibleRegion;

    invoke-direct/range {v0 .. v5}, Lcom/amap/api/maps2d/model/VisibleRegion;-><init>(Lcom/amap/api/maps2d/model/LatLng;Lcom/amap/api/maps2d/model/LatLng;Lcom/amap/api/maps2d/model/LatLng;Lcom/amap/api/maps2d/model/LatLng;Lcom/amap/api/maps2d/model/LatLngBounds;)V

    return-object v0

    :catch_0
    move-exception v0

    move-object v2, v5

    move-object v1, v5

    move-object v4, v5

    move-object v3, v5

    :goto_1
    iget-object v7, p0, Lcom/amap/api/mapcore2d/bs;->a:Ljava/lang/String;

    invoke-static {v0, v7, v6}, Lcom/amap/api/mapcore2d/cy;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v2, v5

    move-object v1, v5

    move-object v4, v5

    goto :goto_1

    :catch_2
    move-exception v0

    move-object v2, v5

    move-object v1, v5

    goto :goto_1

    :catch_3
    move-exception v0

    move-object v2, v5

    goto :goto_1

    :catch_4
    move-exception v0

    goto :goto_1
.end method
