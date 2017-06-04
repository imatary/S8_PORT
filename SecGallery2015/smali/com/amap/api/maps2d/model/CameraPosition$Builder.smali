.class public final Lcom/amap/api/maps2d/model/CameraPosition$Builder;
.super Ljava/lang/Object;
.source "CameraPosition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/maps2d/model/CameraPosition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private a:Lcom/amap/api/maps2d/model/LatLng;

.field private b:F

.field private c:F

.field private d:F


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bearing(F)Lcom/amap/api/maps2d/model/CameraPosition$Builder;
    .locals 0

    iput p1, p0, Lcom/amap/api/maps2d/model/CameraPosition$Builder;->d:F

    return-object p0
.end method

.method public build()Lcom/amap/api/maps2d/model/CameraPosition;
    .locals 5

    iget-object v0, p0, Lcom/amap/api/maps2d/model/CameraPosition$Builder;->a:Lcom/amap/api/maps2d/model/LatLng;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/cp;->a(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/amap/api/maps2d/model/CameraPosition;

    iget-object v1, p0, Lcom/amap/api/maps2d/model/CameraPosition$Builder;->a:Lcom/amap/api/maps2d/model/LatLng;

    iget v2, p0, Lcom/amap/api/maps2d/model/CameraPosition$Builder;->b:F

    iget v3, p0, Lcom/amap/api/maps2d/model/CameraPosition$Builder;->c:F

    iget v4, p0, Lcom/amap/api/maps2d/model/CameraPosition$Builder;->d:F

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/amap/api/maps2d/model/CameraPosition;-><init>(Lcom/amap/api/maps2d/model/LatLng;FFF)V

    return-object v0
.end method

.method public target(Lcom/amap/api/maps2d/model/LatLng;)Lcom/amap/api/maps2d/model/CameraPosition$Builder;
    .locals 0

    iput-object p1, p0, Lcom/amap/api/maps2d/model/CameraPosition$Builder;->a:Lcom/amap/api/maps2d/model/LatLng;

    return-object p0
.end method

.method public tilt(F)Lcom/amap/api/maps2d/model/CameraPosition$Builder;
    .locals 0

    iput p1, p0, Lcom/amap/api/maps2d/model/CameraPosition$Builder;->c:F

    return-object p0
.end method

.method public zoom(F)Lcom/amap/api/maps2d/model/CameraPosition$Builder;
    .locals 0

    iput p1, p0, Lcom/amap/api/maps2d/model/CameraPosition$Builder;->b:F

    return-object p0
.end method
