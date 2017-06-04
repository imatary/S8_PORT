.class public final Lcom/amap/api/maps2d/model/CameraPosition;
.super Ljava/lang/Object;
.source "CameraPosition.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/maps2d/model/CameraPosition$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Lcom/amap/api/maps2d/model/b;


# instance fields
.field public final bearing:F

.field public final target:Lcom/amap/api/maps2d/model/LatLng;

.field public final tilt:F

.field public final zoom:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/amap/api/maps2d/model/b;

    invoke-direct {v0}, Lcom/amap/api/maps2d/model/b;-><init>()V

    sput-object v0, Lcom/amap/api/maps2d/model/CameraPosition;->CREATOR:Lcom/amap/api/maps2d/model/b;

    return-void
.end method

.method public constructor <init>(Lcom/amap/api/maps2d/model/LatLng;FFF)V
    .locals 5

    const/high16 v4, 0x43b40000    # 360.0f

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "CameraPosition \u4f4d\u7f6e\u4e0d\u80fd\u4e3anull"

    invoke-static {p1, v0}, Lcom/amap/api/mapcore2d/cp;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/amap/api/maps2d/model/CameraPosition;->target:Lcom/amap/api/maps2d/model/LatLng;

    invoke-static {p2}, Lcom/amap/api/mapcore2d/cy;->b(F)F

    move-result v0

    iput v0, p0, Lcom/amap/api/maps2d/model/CameraPosition;->zoom:F

    invoke-static {p3}, Lcom/amap/api/mapcore2d/cy;->a(F)F

    move-result v0

    iput v0, p0, Lcom/amap/api/maps2d/model/CameraPosition;->tilt:F

    float-to-double v0, p4

    const-wide/16 v2, 0x0

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_0

    rem-float v0, p4, v4

    add-float p4, v0, v4

    :cond_0
    rem-float v0, p4, v4

    iput v0, p0, Lcom/amap/api/maps2d/model/CameraPosition;->bearing:F

    return-void
.end method

.method public static builder()Lcom/amap/api/maps2d/model/CameraPosition$Builder;
    .locals 1

    new-instance v0, Lcom/amap/api/maps2d/model/CameraPosition$Builder;

    invoke-direct {v0}, Lcom/amap/api/maps2d/model/CameraPosition$Builder;-><init>()V

    return-object v0
.end method

.method public static final fromLatLngZoom(Lcom/amap/api/maps2d/model/LatLng;F)Lcom/amap/api/maps2d/model/CameraPosition;
    .locals 2

    const/4 v1, 0x0

    new-instance v0, Lcom/amap/api/maps2d/model/CameraPosition;

    invoke-direct {v0, p0, p1, v1, v1}, Lcom/amap/api/maps2d/model/CameraPosition;-><init>(Lcom/amap/api/maps2d/model/LatLng;FFF)V

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lcom/amap/api/maps2d/model/CameraPosition;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/amap/api/maps2d/model/CameraPosition;

    iget-object v2, p0, Lcom/amap/api/maps2d/model/CameraPosition;->target:Lcom/amap/api/maps2d/model/LatLng;

    iget-object v3, p1, Lcom/amap/api/maps2d/model/CameraPosition;->target:Lcom/amap/api/maps2d/model/LatLng;

    invoke-virtual {v2, v3}, Lcom/amap/api/maps2d/model/LatLng;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/amap/api/maps2d/model/CameraPosition;->zoom:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    iget v3, p1, Lcom/amap/api/maps2d/model/CameraPosition;->zoom:F

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/amap/api/maps2d/model/CameraPosition;->tilt:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    iget v3, p1, Lcom/amap/api/maps2d/model/CameraPosition;->tilt:F

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/amap/api/maps2d/model/CameraPosition;->bearing:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    iget v3, p1, Lcom/amap/api/maps2d/model/CameraPosition;->bearing:F

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    if-eq v2, v3, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "target"

    iget-object v3, p0, Lcom/amap/api/maps2d/model/CameraPosition;->target:Lcom/amap/api/maps2d/model/LatLng;

    invoke-static {v2, v3}, Lcom/amap/api/mapcore2d/cy;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "zoom"

    iget v3, p0, Lcom/amap/api/maps2d/model/CameraPosition;->zoom:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/amap/api/mapcore2d/cy;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "tilt"

    iget v3, p0, Lcom/amap/api/maps2d/model/CameraPosition;->tilt:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/amap/api/mapcore2d/cy;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "bearing"

    iget v3, p0, Lcom/amap/api/maps2d/model/CameraPosition;->bearing:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/amap/api/mapcore2d/cy;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/amap/api/mapcore2d/cy;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget v0, p0, Lcom/amap/api/maps2d/model/CameraPosition;->bearing:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget-object v0, p0, Lcom/amap/api/maps2d/model/CameraPosition;->target:Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v0, v0, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    double-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget-object v0, p0, Lcom/amap/api/maps2d/model/CameraPosition;->target:Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v0, v0, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    double-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Lcom/amap/api/maps2d/model/CameraPosition;->tilt:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Lcom/amap/api/maps2d/model/CameraPosition;->zoom:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    return-void
.end method
