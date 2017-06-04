.class public final Lcom/amap/api/maps2d/UiSettings;
.super Ljava/lang/Object;
.source "UiSettings.java"


# instance fields
.field private final a:Lcom/amap/api/mapcore2d/au;


# direct methods
.method constructor <init>(Lcom/amap/api/mapcore2d/au;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amap/api/maps2d/UiSettings;->a:Lcom/amap/api/mapcore2d/au;

    return-void
.end method


# virtual methods
.method public setAllGesturesEnabled(Z)V
    .locals 3

    const-string/jumbo v1, "setAllGesturesEnabled"

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/UiSettings;->a:Lcom/amap/api/mapcore2d/au;

    invoke-interface {v0, p1}, Lcom/amap/api/mapcore2d/au;->g(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v2, "UiSettings"

    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/cy;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public setCompassEnabled(Z)V
    .locals 3

    const-string/jumbo v1, "setCompassEnabled"

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/UiSettings;->a:Lcom/amap/api/mapcore2d/au;

    invoke-interface {v0, p1}, Lcom/amap/api/mapcore2d/au;->c(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v2, "UiSettings"

    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/cy;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public setZoomControlsEnabled(Z)V
    .locals 3

    const-string/jumbo v1, "setZoomControlsEnabled"

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/UiSettings;->a:Lcom/amap/api/mapcore2d/au;

    invoke-interface {v0, p1}, Lcom/amap/api/mapcore2d/au;->b(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v2, "UiSettings"

    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/cy;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method
