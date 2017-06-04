.class public final Lcom/amap/api/maps2d/AMap;
.super Ljava/lang/Object;
.source "AMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/maps2d/AMap$OnMapScreenShotListener;,
        Lcom/amap/api/maps2d/AMap$OnMapLoadedListener;,
        Lcom/amap/api/maps2d/AMap$OnMapTouchListener;,
        Lcom/amap/api/maps2d/AMap$OnMapClickListener;,
        Lcom/amap/api/maps2d/AMap$OnMapLongClickListener;,
        Lcom/amap/api/maps2d/AMap$OnCameraChangeListener;,
        Lcom/amap/api/maps2d/AMap$OnMarkerClickListener;,
        Lcom/amap/api/maps2d/AMap$OnMarkerDragListener;,
        Lcom/amap/api/maps2d/AMap$OnInfoWindowClickListener;,
        Lcom/amap/api/maps2d/AMap$CancelableCallback;,
        Lcom/amap/api/maps2d/AMap$OnMyLocationChangeListener;,
        Lcom/amap/api/maps2d/AMap$InfoWindowAdapter;
    }
.end annotation


# instance fields
.field private final a:Lcom/amap/api/mapcore2d/ag;

.field private b:Lcom/amap/api/maps2d/UiSettings;

.field private c:Lcom/amap/api/maps2d/Projection;


# direct methods
.method protected constructor <init>(Lcom/amap/api/mapcore2d/ag;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amap/api/maps2d/AMap;->a:Lcom/amap/api/mapcore2d/ag;

    return-void
.end method

.method private a()Lcom/amap/api/mapcore2d/ag;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/maps2d/AMap;->a:Lcom/amap/api/mapcore2d/ag;

    return-object v0
.end method


# virtual methods
.method public final addMarker(Lcom/amap/api/maps2d/model/MarkerOptions;)Lcom/amap/api/maps2d/model/Marker;
    .locals 3

    const-string/jumbo v1, "addMarker"

    :try_start_0
    invoke-direct {p0}, Lcom/amap/api/maps2d/AMap;->a()Lcom/amap/api/mapcore2d/ag;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/amap/api/mapcore2d/ag;->a(Lcom/amap/api/maps2d/model/MarkerOptions;)Lcom/amap/api/maps2d/model/Marker;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    const-string/jumbo v2, "AMap"

    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/cy;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final animateCamera(Lcom/amap/api/maps2d/CameraUpdate;)V
    .locals 3

    const-string/jumbo v1, "animateCamera"

    :try_start_0
    invoke-direct {p0}, Lcom/amap/api/maps2d/AMap;->a()Lcom/amap/api/mapcore2d/ag;

    move-result-object v0

    invoke-virtual {p1}, Lcom/amap/api/maps2d/CameraUpdate;->a()Lcom/amap/api/mapcore2d/u;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/amap/api/mapcore2d/ag;->b(Lcom/amap/api/mapcore2d/u;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v2, "AMap"

    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/cy;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final clear()V
    .locals 3

    const-string/jumbo v1, "clear"

    :try_start_0
    invoke-direct {p0}, Lcom/amap/api/maps2d/AMap;->a()Lcom/amap/api/mapcore2d/ag;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/amap/api/maps2d/AMap;->a()Lcom/amap/api/mapcore2d/ag;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/ag;->k()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v2, "AMap"

    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/cy;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1

    :catch_1
    move-exception v0

    const-string/jumbo v2, "AMap"

    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/cy;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final getCameraPosition()Lcom/amap/api/maps2d/model/CameraPosition;
    .locals 3

    const-string/jumbo v1, "getCameraPosition"

    :try_start_0
    invoke-direct {p0}, Lcom/amap/api/maps2d/AMap;->a()Lcom/amap/api/mapcore2d/ag;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/ag;->g()Lcom/amap/api/maps2d/model/CameraPosition;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    const-string/jumbo v2, "AMap"

    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/cy;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final getProjection()Lcom/amap/api/maps2d/Projection;
    .locals 3

    const-string/jumbo v1, "getProjection"

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/AMap;->c:Lcom/amap/api/maps2d/Projection;

    if-nez v0, :cond_0

    new-instance v0, Lcom/amap/api/maps2d/Projection;

    invoke-direct {p0}, Lcom/amap/api/maps2d/AMap;->a()Lcom/amap/api/mapcore2d/ag;

    move-result-object v2

    invoke-interface {v2}, Lcom/amap/api/mapcore2d/ag;->r()Lcom/amap/api/mapcore2d/aq;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/amap/api/maps2d/Projection;-><init>(Lcom/amap/api/mapcore2d/aq;)V

    iput-object v0, p0, Lcom/amap/api/maps2d/AMap;->c:Lcom/amap/api/maps2d/Projection;

    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps2d/AMap;->c:Lcom/amap/api/maps2d/Projection;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string/jumbo v2, "AMap"

    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/cy;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final getUiSettings()Lcom/amap/api/maps2d/UiSettings;
    .locals 3

    const-string/jumbo v1, "getUiSettings"

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/AMap;->b:Lcom/amap/api/maps2d/UiSettings;

    if-nez v0, :cond_0

    new-instance v0, Lcom/amap/api/maps2d/UiSettings;

    invoke-direct {p0}, Lcom/amap/api/maps2d/AMap;->a()Lcom/amap/api/mapcore2d/ag;

    move-result-object v2

    invoke-interface {v2}, Lcom/amap/api/mapcore2d/ag;->q()Lcom/amap/api/mapcore2d/au;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/amap/api/maps2d/UiSettings;-><init>(Lcom/amap/api/mapcore2d/au;)V

    iput-object v0, p0, Lcom/amap/api/maps2d/AMap;->b:Lcom/amap/api/maps2d/UiSettings;

    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps2d/AMap;->b:Lcom/amap/api/maps2d/UiSettings;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string/jumbo v2, "AMap"

    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/cy;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final moveCamera(Lcom/amap/api/maps2d/CameraUpdate;)V
    .locals 3

    const-string/jumbo v1, "moveCamera"

    :try_start_0
    invoke-direct {p0}, Lcom/amap/api/maps2d/AMap;->a()Lcom/amap/api/mapcore2d/ag;

    move-result-object v0

    invoke-virtual {p1}, Lcom/amap/api/maps2d/CameraUpdate;->a()Lcom/amap/api/mapcore2d/u;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/amap/api/mapcore2d/ag;->a(Lcom/amap/api/mapcore2d/u;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v2, "AMap"

    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/cy;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final setOnCameraChangeListener(Lcom/amap/api/maps2d/AMap$OnCameraChangeListener;)V
    .locals 3

    const-string/jumbo v1, "setOnCameraChangeListener"

    :try_start_0
    invoke-direct {p0}, Lcom/amap/api/maps2d/AMap;->a()Lcom/amap/api/mapcore2d/ag;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/amap/api/mapcore2d/ag;->a(Lcom/amap/api/maps2d/AMap$OnCameraChangeListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v2, "AMap"

    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/cy;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final setOnMapClickListener(Lcom/amap/api/maps2d/AMap$OnMapClickListener;)V
    .locals 3

    const-string/jumbo v1, "setOnMapClickListener"

    :try_start_0
    invoke-direct {p0}, Lcom/amap/api/maps2d/AMap;->a()Lcom/amap/api/mapcore2d/ag;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/amap/api/mapcore2d/ag;->a(Lcom/amap/api/maps2d/AMap$OnMapClickListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v2, "AMap"

    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/cy;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final setOnMapLongClickListener(Lcom/amap/api/maps2d/AMap$OnMapLongClickListener;)V
    .locals 3

    const-string/jumbo v1, "setOnMapLongClickListener"

    :try_start_0
    invoke-direct {p0}, Lcom/amap/api/maps2d/AMap;->a()Lcom/amap/api/mapcore2d/ag;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/amap/api/mapcore2d/ag;->a(Lcom/amap/api/maps2d/AMap$OnMapLongClickListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v2, "AMap"

    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/cy;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final setOnMarkerClickListener(Lcom/amap/api/maps2d/AMap$OnMarkerClickListener;)V
    .locals 3

    const-string/jumbo v1, "setOnMarkerClickListener"

    :try_start_0
    invoke-direct {p0}, Lcom/amap/api/maps2d/AMap;->a()Lcom/amap/api/mapcore2d/ag;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/amap/api/mapcore2d/ag;->a(Lcom/amap/api/maps2d/AMap$OnMarkerClickListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v2, "AMap"

    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/cy;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final stopAnimation()V
    .locals 3

    const-string/jumbo v1, "stopAnimation"

    :try_start_0
    invoke-direct {p0}, Lcom/amap/api/maps2d/AMap;->a()Lcom/amap/api/mapcore2d/ag;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/ag;->j()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v2, "AMap"

    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/cy;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method
