.class public final Lcom/amap/api/maps2d/model/Marker;
.super Ljava/lang/Object;
.source "Marker.java"


# instance fields
.field a:Lcom/amap/api/mapcore2d/ak;


# direct methods
.method public constructor <init>(Lcom/amap/api/mapcore2d/ak;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amap/api/maps2d/model/Marker;->a:Lcom/amap/api/mapcore2d/ak;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lcom/amap/api/maps2d/model/Marker;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Marker;->a:Lcom/amap/api/mapcore2d/ak;

    check-cast p1, Lcom/amap/api/maps2d/model/Marker;

    iget-object v1, p1, Lcom/amap/api/maps2d/model/Marker;->a:Lcom/amap/api/mapcore2d/ak;

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore2d/ak;->a(Lcom/amap/api/mapcore2d/ak;)Z

    move-result v0

    goto :goto_0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/maps2d/model/Marker;->a:Lcom/amap/api/mapcore2d/ak;

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/ak;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPosition()Lcom/amap/api/maps2d/model/LatLng;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/maps2d/model/Marker;->a:Lcom/amap/api/mapcore2d/ak;

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/ak;->t()Lcom/amap/api/maps2d/model/LatLng;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/amap/api/maps2d/model/Marker;->a:Lcom/amap/api/mapcore2d/ak;

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/ak;->m()I

    move-result v0

    return v0
.end method

.method public remove()V
    .locals 3

    const-string/jumbo v1, "remove"

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/Marker;->a:Lcom/amap/api/mapcore2d/ak;

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/ak;->a()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v2, "Marker"

    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/cy;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setDraggable(Z)V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/maps2d/model/Marker;->a:Lcom/amap/api/mapcore2d/ak;

    invoke-interface {v0, p1}, Lcom/amap/api/mapcore2d/ak;->a(Z)V

    return-void
.end method

.method public setIcon(Lcom/amap/api/maps2d/model/BitmapDescriptor;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/amap/api/maps2d/model/Marker;->a:Lcom/amap/api/mapcore2d/ak;

    invoke-interface {v0, p1}, Lcom/amap/api/mapcore2d/ak;->a(Lcom/amap/api/maps2d/model/BitmapDescriptor;)V

    :cond_0
    return-void
.end method

.method public setPosition(Lcom/amap/api/maps2d/model/LatLng;)V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/maps2d/model/Marker;->a:Lcom/amap/api/mapcore2d/ak;

    invoke-interface {v0, p1}, Lcom/amap/api/mapcore2d/ak;->b(Lcom/amap/api/maps2d/model/LatLng;)V

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/maps2d/model/Marker;->a:Lcom/amap/api/mapcore2d/ak;

    invoke-interface {v0, p1}, Lcom/amap/api/mapcore2d/ak;->a(Ljava/lang/String;)V

    return-void
.end method
