.class public Lcom/amap/api/mapcore2d/u;
.super Ljava/lang/Object;
.source "CameraUpdateFactoryDelegate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/mapcore2d/u$a;
    }
.end annotation


# instance fields
.field a:Lcom/amap/api/mapcore2d/u$a;

.field b:F

.field c:F

.field d:F

.field e:F

.field f:Lcom/amap/api/maps2d/model/CameraPosition;

.field g:Lcom/amap/api/maps2d/model/LatLngBounds;

.field h:Landroid/graphics/Point;

.field i:Z

.field private j:F

.field private k:F

.field private l:I

.field private o:Lcom/amap/api/mapcore2d/an;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/amap/api/mapcore2d/u$a;->a:Lcom/amap/api/mapcore2d/u$a;

    iput-object v0, p0, Lcom/amap/api/mapcore2d/u;->a:Lcom/amap/api/mapcore2d/u$a;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore2d/u;->h:Landroid/graphics/Point;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/mapcore2d/u;->i:Z

    return-void
.end method

.method public static a()Lcom/amap/api/mapcore2d/u;
    .locals 1

    new-instance v0, Lcom/amap/api/mapcore2d/u;

    invoke-direct {v0}, Lcom/amap/api/mapcore2d/u;-><init>()V

    return-object v0
.end method

.method static a(Lcom/amap/api/mapcore2d/an;FFF)Lcom/amap/api/mapcore2d/u;
    .locals 2

    invoke-static {}, Lcom/amap/api/mapcore2d/u;->a()Lcom/amap/api/mapcore2d/u;

    move-result-object v0

    sget-object v1, Lcom/amap/api/mapcore2d/u$a;->l:Lcom/amap/api/mapcore2d/u$a;

    iput-object v1, v0, Lcom/amap/api/mapcore2d/u;->a:Lcom/amap/api/mapcore2d/u$a;

    iput-object p0, v0, Lcom/amap/api/mapcore2d/u;->o:Lcom/amap/api/mapcore2d/an;

    iput p1, v0, Lcom/amap/api/mapcore2d/u;->d:F

    iput p2, v0, Lcom/amap/api/mapcore2d/u;->k:F

    iput p3, v0, Lcom/amap/api/mapcore2d/u;->j:F

    return-object v0
.end method

.method public static a(Lcom/amap/api/maps2d/model/CameraPosition;)Lcom/amap/api/mapcore2d/u;
    .locals 2

    invoke-static {}, Lcom/amap/api/mapcore2d/u;->a()Lcom/amap/api/mapcore2d/u;

    move-result-object v0

    sget-object v1, Lcom/amap/api/mapcore2d/u$a;->i:Lcom/amap/api/mapcore2d/u$a;

    iput-object v1, v0, Lcom/amap/api/mapcore2d/u;->a:Lcom/amap/api/mapcore2d/u$a;

    iput-object p0, v0, Lcom/amap/api/mapcore2d/u;->f:Lcom/amap/api/maps2d/model/CameraPosition;

    return-object v0
.end method

.method public static a(Lcom/amap/api/maps2d/model/LatLng;F)Lcom/amap/api/mapcore2d/u;
    .locals 1

    invoke-static {}, Lcom/amap/api/maps2d/model/CameraPosition;->builder()Lcom/amap/api/maps2d/model/CameraPosition$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/amap/api/maps2d/model/CameraPosition$Builder;->target(Lcom/amap/api/maps2d/model/LatLng;)Lcom/amap/api/maps2d/model/CameraPosition$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amap/api/maps2d/model/CameraPosition$Builder;->zoom(F)Lcom/amap/api/maps2d/model/CameraPosition$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/maps2d/model/CameraPosition$Builder;->build()Lcom/amap/api/maps2d/model/CameraPosition;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/mapcore2d/u;->a(Lcom/amap/api/maps2d/model/CameraPosition;)Lcom/amap/api/mapcore2d/u;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/amap/api/maps2d/model/LatLng;FFF)Lcom/amap/api/mapcore2d/u;
    .locals 1

    invoke-static {}, Lcom/amap/api/maps2d/model/CameraPosition;->builder()Lcom/amap/api/maps2d/model/CameraPosition$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/amap/api/maps2d/model/CameraPosition$Builder;->target(Lcom/amap/api/maps2d/model/LatLng;)Lcom/amap/api/maps2d/model/CameraPosition$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amap/api/maps2d/model/CameraPosition$Builder;->zoom(F)Lcom/amap/api/maps2d/model/CameraPosition$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/amap/api/maps2d/model/CameraPosition$Builder;->bearing(F)Lcom/amap/api/maps2d/model/CameraPosition$Builder;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/amap/api/maps2d/model/CameraPosition$Builder;->tilt(F)Lcom/amap/api/maps2d/model/CameraPosition$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/maps2d/model/CameraPosition$Builder;->build()Lcom/amap/api/maps2d/model/CameraPosition;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/mapcore2d/u;->a(Lcom/amap/api/maps2d/model/CameraPosition;)Lcom/amap/api/mapcore2d/u;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/amap/api/maps2d/model/LatLngBounds;I)Lcom/amap/api/mapcore2d/u;
    .locals 2

    invoke-static {}, Lcom/amap/api/mapcore2d/u;->a()Lcom/amap/api/mapcore2d/u;

    move-result-object v0

    sget-object v1, Lcom/amap/api/mapcore2d/u$a;->j:Lcom/amap/api/mapcore2d/u$a;

    iput-object v1, v0, Lcom/amap/api/mapcore2d/u;->a:Lcom/amap/api/mapcore2d/u$a;

    iput-object p0, v0, Lcom/amap/api/mapcore2d/u;->g:Lcom/amap/api/maps2d/model/LatLngBounds;

    iput p1, v0, Lcom/amap/api/mapcore2d/u;->l:I

    return-object v0
.end method

.method public static b()Lcom/amap/api/mapcore2d/u;
    .locals 2

    invoke-static {}, Lcom/amap/api/mapcore2d/u;->a()Lcom/amap/api/mapcore2d/u;

    move-result-object v0

    sget-object v1, Lcom/amap/api/mapcore2d/u$a;->b:Lcom/amap/api/mapcore2d/u$a;

    iput-object v1, v0, Lcom/amap/api/mapcore2d/u;->a:Lcom/amap/api/mapcore2d/u$a;

    return-object v0
.end method

.method public static b(Lcom/amap/api/maps2d/model/LatLng;)Lcom/amap/api/mapcore2d/u;
    .locals 1

    invoke-static {}, Lcom/amap/api/maps2d/model/CameraPosition;->builder()Lcom/amap/api/maps2d/model/CameraPosition$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/amap/api/maps2d/model/CameraPosition$Builder;->target(Lcom/amap/api/maps2d/model/LatLng;)Lcom/amap/api/maps2d/model/CameraPosition$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/maps2d/model/CameraPosition$Builder;->build()Lcom/amap/api/maps2d/model/CameraPosition;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/mapcore2d/u;->a(Lcom/amap/api/maps2d/model/CameraPosition;)Lcom/amap/api/mapcore2d/u;

    move-result-object v0

    return-object v0
.end method

.method public static c()Lcom/amap/api/mapcore2d/u;
    .locals 2

    invoke-static {}, Lcom/amap/api/mapcore2d/u;->a()Lcom/amap/api/mapcore2d/u;

    move-result-object v0

    sget-object v1, Lcom/amap/api/mapcore2d/u$a;->e:Lcom/amap/api/mapcore2d/u$a;

    iput-object v1, v0, Lcom/amap/api/mapcore2d/u;->a:Lcom/amap/api/mapcore2d/u$a;

    return-object v0
.end method
