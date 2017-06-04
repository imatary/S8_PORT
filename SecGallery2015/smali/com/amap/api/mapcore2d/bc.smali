.class public Lcom/amap/api/mapcore2d/bc;
.super Ljava/lang/Object;
.source "MapFragmentDelegateImp.java"

# interfaces
.implements Lcom/amap/api/mapcore2d/aj;


# static fields
.field public static volatile a:Landroid/content/Context;


# instance fields
.field private b:Lcom/amap/api/mapcore2d/ag;

.field private c:Lcom/amap/api/maps2d/AMapOptions;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amap/api/mapcore2d/bc;->b:Lcom/amap/api/mapcore2d/ag;

    if-nez v0, :cond_2

    sget-object v0, Lcom/amap/api/mapcore2d/bc;->a:Landroid/content/Context;

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/amap/api/mapcore2d/bc;->a:Landroid/content/Context;

    :cond_0
    sget-object v0, Lcom/amap/api/mapcore2d/bc;->a:Landroid/content/Context;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "Context \u4e3a null \u8bf7\u5728\u5730\u56fe\u8c03\u7528\u4e4b\u524d \u4f7f\u7528 MapsInitializer.initialize(Context paramContext) \u6765\u8bbe\u7f6eContext"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/bc;->g()V

    new-instance v0, Lcom/amap/api/mapcore2d/b;

    sget-object v1, Lcom/amap/api/mapcore2d/bc;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/amap/api/mapcore2d/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/bc;->b:Lcom/amap/api/mapcore2d/ag;

    :cond_2
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bc;->c:Lcom/amap/api/maps2d/AMapOptions;

    if-nez v0, :cond_3

    if-eqz p3, :cond_3

    const-string/jumbo v0, "MapOptions"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps2d/AMapOptions;

    iput-object v0, p0, Lcom/amap/api/mapcore2d/bc;->c:Lcom/amap/api/maps2d/AMapOptions;

    :cond_3
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bc;->c:Lcom/amap/api/maps2d/AMapOptions;

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore2d/bc;->b(Lcom/amap/api/maps2d/AMapOptions;)V

    const-string/jumbo v0, "MapFragmentDelegateImp"

    const-string/jumbo v1, "onCreateView"

    const/16 v2, 0x71

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore2d/cw;->a(Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/amap/api/mapcore2d/bc;->b:Lcom/amap/api/mapcore2d/ag;

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/ag;->e()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public a()Lcom/amap/api/mapcore2d/ag;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amap/api/mapcore2d/bc;->b:Lcom/amap/api/mapcore2d/ag;

    if-nez v0, :cond_1

    sget-object v0, Lcom/amap/api/mapcore2d/bc;->a:Landroid/content/Context;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "Context \u4e3a null \u8bf7\u5728\u5730\u56fe\u8c03\u7528\u4e4b\u524d \u4f7f\u7528 MapsInitializer.initialize(Context paramContext) \u6765\u8bbe\u7f6eContext"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/bc;->g()V

    new-instance v0, Lcom/amap/api/mapcore2d/b;

    sget-object v1, Lcom/amap/api/mapcore2d/bc;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/amap/api/mapcore2d/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/bc;->b:Lcom/amap/api/mapcore2d/ag;

    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bc;->b:Lcom/amap/api/mapcore2d/ag;

    return-object v0
.end method

.method public a(Landroid/app/Activity;Lcom/amap/api/maps2d/AMapOptions;Landroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/amap/api/mapcore2d/bc;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/amap/api/mapcore2d/bc;->c:Lcom/amap/api/maps2d/AMapOptions;

    return-void
.end method

.method public a(Landroid/content/Context;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/amap/api/mapcore2d/bc;->a:Landroid/content/Context;

    :cond_0
    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string/jumbo v0, "MapFragmentDelegateImp"

    const-string/jumbo v1, "onCreate"

    const/16 v2, 0x71

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore2d/cw;->a(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public b()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amap/api/mapcore2d/bc;->b:Lcom/amap/api/mapcore2d/ag;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore2d/bc;->b:Lcom/amap/api/mapcore2d/ag;

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/ag;->y()V

    :cond_0
    return-void
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amap/api/mapcore2d/bc;->b:Lcom/amap/api/mapcore2d/ag;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/mapcore2d/bc;->c:Lcom/amap/api/maps2d/AMapOptions;

    if-nez v0, :cond_0

    new-instance v0, Lcom/amap/api/maps2d/AMapOptions;

    invoke-direct {v0}, Lcom/amap/api/maps2d/AMapOptions;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/bc;->c:Lcom/amap/api/maps2d/AMapOptions;

    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bc;->c:Lcom/amap/api/maps2d/AMapOptions;

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/bc;->a()Lcom/amap/api/mapcore2d/ag;

    move-result-object v1

    invoke-interface {v1}, Lcom/amap/api/mapcore2d/ag;->g()Lcom/amap/api/maps2d/model/CameraPosition;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps2d/AMapOptions;->camera(Lcom/amap/api/maps2d/model/CameraPosition;)Lcom/amap/api/maps2d/AMapOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore2d/bc;->c:Lcom/amap/api/maps2d/AMapOptions;

    const-string/jumbo v0, "MapOptions"

    iget-object v1, p0, Lcom/amap/api/mapcore2d/bc;->c:Lcom/amap/api/maps2d/AMapOptions;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_1
    return-void
.end method

.method b(Lcom/amap/api/maps2d/AMapOptions;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/amap/api/mapcore2d/bc;->b:Lcom/amap/api/mapcore2d/ag;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/amap/api/maps2d/AMapOptions;->getCamera()Lcom/amap/api/maps2d/model/CameraPosition;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/amap/api/mapcore2d/bc;->b:Lcom/amap/api/mapcore2d/ag;

    iget-object v2, v0, Lcom/amap/api/maps2d/model/CameraPosition;->target:Lcom/amap/api/maps2d/model/LatLng;

    iget v3, v0, Lcom/amap/api/maps2d/model/CameraPosition;->zoom:F

    iget v4, v0, Lcom/amap/api/maps2d/model/CameraPosition;->bearing:F

    iget v0, v0, Lcom/amap/api/maps2d/model/CameraPosition;->tilt:F

    invoke-static {v2, v3, v4, v0}, Lcom/amap/api/mapcore2d/u;->a(Lcom/amap/api/maps2d/model/LatLng;FFF)Lcom/amap/api/mapcore2d/u;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/amap/api/mapcore2d/ag;->a(Lcom/amap/api/mapcore2d/u;)V

    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bc;->b:Lcom/amap/api/mapcore2d/ag;

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/ag;->q()Lcom/amap/api/mapcore2d/au;

    move-result-object v0

    invoke-virtual {p1}, Lcom/amap/api/maps2d/AMapOptions;->getScrollGesturesEnabled()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore2d/au;->e(Z)V

    invoke-virtual {p1}, Lcom/amap/api/maps2d/AMapOptions;->getZoomControlsEnabled()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore2d/au;->b(Z)V

    invoke-virtual {p1}, Lcom/amap/api/maps2d/AMapOptions;->getZoomGesturesEnabled()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore2d/au;->f(Z)V

    invoke-virtual {p1}, Lcom/amap/api/maps2d/AMapOptions;->getCompassEnabled()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore2d/au;->c(Z)V

    invoke-virtual {p1}, Lcom/amap/api/maps2d/AMapOptions;->getScaleControlsEnabled()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore2d/au;->a(Z)V

    invoke-virtual {p1}, Lcom/amap/api/maps2d/AMapOptions;->getLogoPosition()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore2d/au;->a(I)V

    iget-object v0, p0, Lcom/amap/api/mapcore2d/bc;->b:Lcom/amap/api/mapcore2d/ag;

    invoke-virtual {p1}, Lcom/amap/api/maps2d/AMapOptions;->getMapType()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore2d/ag;->b(I)V

    iget-object v0, p0, Lcom/amap/api/mapcore2d/bc;->b:Lcom/amap/api/mapcore2d/ag;

    invoke-virtual {p1}, Lcom/amap/api/maps2d/AMapOptions;->getZOrderOnTop()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore2d/ag;->a(Z)V

    :cond_1
    return-void
.end method

.method public c()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amap/api/mapcore2d/bc;->b:Lcom/amap/api/mapcore2d/ag;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore2d/bc;->b:Lcom/amap/api/mapcore2d/ag;

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/ag;->z()V

    :cond_0
    return-void
.end method

.method public d()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public e()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/bc;->a()Lcom/amap/api/mapcore2d/ag;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/bc;->a()Lcom/amap/api/mapcore2d/ag;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/ag;->k()V

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/bc;->a()Lcom/amap/api/mapcore2d/ag;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/ag;->v()V

    :cond_0
    return-void
.end method

.method public f()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string/jumbo v0, "onLowMemory"

    const-string/jumbo v1, "onLowMemory run"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method g()V
    .locals 3

    const/16 v2, 0x200

    sget-object v0, Lcom/amap/api/mapcore2d/bc;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    sput v0, Lcom/amap/api/mapcore2d/y;->k:I

    const/16 v1, 0x78

    if-gt v0, v1, :cond_0

    const/high16 v0, 0x3f000000    # 0.5f

    sput v0, Lcom/amap/api/mapcore2d/y;->a:F

    :goto_0
    return-void

    :cond_0
    const/16 v1, 0xa0

    if-gt v0, v1, :cond_1

    const v0, 0x3f19999a    # 0.6f

    sput v0, Lcom/amap/api/mapcore2d/y;->a:F

    goto :goto_0

    :cond_1
    const/16 v1, 0xf0

    if-gt v0, v1, :cond_2

    const v0, 0x3f5eb852    # 0.87f

    sput v0, Lcom/amap/api/mapcore2d/y;->a:F

    goto :goto_0

    :cond_2
    const/16 v1, 0x140

    if-gt v0, v1, :cond_3

    const/high16 v0, 0x3f800000    # 1.0f

    sput v0, Lcom/amap/api/mapcore2d/y;->a:F

    goto :goto_0

    :cond_3
    const/16 v1, 0x1e0

    if-gt v0, v1, :cond_4

    sput v2, Lcom/amap/api/mapcore2d/y;->i:I

    const/high16 v0, 0x3fc00000    # 1.5f

    sput v0, Lcom/amap/api/mapcore2d/y;->a:F

    goto :goto_0

    :cond_4
    sput v2, Lcom/amap/api/mapcore2d/y;->i:I

    const v0, 0x3fe66666    # 1.8f

    sput v0, Lcom/amap/api/mapcore2d/y;->a:F

    goto :goto_0
.end method
