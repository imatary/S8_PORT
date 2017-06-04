.class public final Lcom/amap/api/maps2d/CameraUpdateFactory;
.super Ljava/lang/Object;
.source "CameraUpdateFactory.java"


# direct methods
.method public static newCameraPosition(Lcom/amap/api/maps2d/model/CameraPosition;)Lcom/amap/api/maps2d/CameraUpdate;
    .locals 2

    new-instance v0, Lcom/amap/api/maps2d/CameraUpdate;

    invoke-static {p0}, Lcom/amap/api/mapcore2d/u;->a(Lcom/amap/api/maps2d/model/CameraPosition;)Lcom/amap/api/mapcore2d/u;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amap/api/maps2d/CameraUpdate;-><init>(Lcom/amap/api/mapcore2d/u;)V

    return-object v0
.end method

.method public static newLatLng(Lcom/amap/api/maps2d/model/LatLng;)Lcom/amap/api/maps2d/CameraUpdate;
    .locals 2

    new-instance v0, Lcom/amap/api/maps2d/CameraUpdate;

    invoke-static {p0}, Lcom/amap/api/mapcore2d/u;->b(Lcom/amap/api/maps2d/model/LatLng;)Lcom/amap/api/mapcore2d/u;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amap/api/maps2d/CameraUpdate;-><init>(Lcom/amap/api/mapcore2d/u;)V

    return-object v0
.end method

.method public static newLatLngBounds(Lcom/amap/api/maps2d/model/LatLngBounds;I)Lcom/amap/api/maps2d/CameraUpdate;
    .locals 2

    new-instance v0, Lcom/amap/api/maps2d/CameraUpdate;

    invoke-static {p0, p1}, Lcom/amap/api/mapcore2d/u;->a(Lcom/amap/api/maps2d/model/LatLngBounds;I)Lcom/amap/api/mapcore2d/u;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amap/api/maps2d/CameraUpdate;-><init>(Lcom/amap/api/mapcore2d/u;)V

    return-object v0
.end method
