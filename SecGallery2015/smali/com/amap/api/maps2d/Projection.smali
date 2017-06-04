.class public Lcom/amap/api/maps2d/Projection;
.super Ljava/lang/Object;
.source "Projection.java"


# instance fields
.field private final a:Lcom/amap/api/mapcore2d/aq;


# direct methods
.method constructor <init>(Lcom/amap/api/mapcore2d/aq;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amap/api/maps2d/Projection;->a:Lcom/amap/api/mapcore2d/aq;

    return-void
.end method


# virtual methods
.method public getVisibleRegion()Lcom/amap/api/maps2d/model/VisibleRegion;
    .locals 3

    const-string/jumbo v1, "getVisibleRegion"

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/Projection;->a:Lcom/amap/api/mapcore2d/aq;

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/aq;->a()Lcom/amap/api/maps2d/model/VisibleRegion;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    const-string/jumbo v2, "Projection"

    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/cy;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/amap/api/maps2d/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/amap/api/maps2d/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method
