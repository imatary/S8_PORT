.class public Lcom/google/android/gms/internal/ez;
.super Lcom/google/android/gms/internal/de;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ez$1;,
        Lcom/google/android/gms/internal/ez$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/de",
        "<",
        "Lcom/google/android/gms/internal/ex;",
        ">;"
    }
.end annotation


# instance fields
.field private final oO:Lcom/google/android/gms/internal/fc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/fc",
            "<",
            "Lcom/google/android/gms/internal/ex;",
            ">;"
        }
    .end annotation
.end field

.field private final oU:Lcom/google/android/gms/internal/ey;

.field private final oV:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/gms/internal/de;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;[Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/internal/ez$c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ez$c;-><init>(Lcom/google/android/gms/internal/ez;Lcom/google/android/gms/internal/ez$1;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ez;->oO:Lcom/google/android/gms/internal/fc;

    new-instance v0, Lcom/google/android/gms/internal/ey;

    iget-object v1, p0, Lcom/google/android/gms/internal/ez;->oO:Lcom/google/android/gms/internal/fc;

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/internal/ey;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/fc;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ez;->oU:Lcom/google/android/gms/internal/ey;

    iput-object p4, p0, Lcom/google/android/gms/internal/ez;->oV:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ez;)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ez;->bc()V

    return-void
.end method

.method static synthetic b(Lcom/google/android/gms/internal/ez;)Landroid/os/IInterface;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ez;->bd()Landroid/os/IInterface;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected G(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ex;
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/internal/ex$a;->F(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ex;

    move-result-object v0

    return-object v0
.end method

.method protected a(Lcom/google/android/gms/internal/dj;Lcom/google/android/gms/internal/de$d;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "client_name"

    iget-object v2, p0, Lcom/google/android/gms/internal/ez;->oV:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const v1, 0x3d8024

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ez;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, p2, v1, v2, v0}, Lcom/google/android/gms/internal/dj;->e(Lcom/google/android/gms/internal/di;ILjava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method protected ag()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "com.google.android.location.internal.GoogleLocationManagerService.START"

    return-object v0
.end method

.method protected ah()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    return-object v0
.end method

.method public disconnect()V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/ez;->oU:Lcom/google/android/gms/internal/ey;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ez;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ez;->oU:Lcom/google/android/gms/internal/ey;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ey;->removeAllListeners()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ez;->oU:Lcom/google/android/gms/internal/ey;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ey;->cm()V

    :cond_0
    invoke-super {p0}, Lcom/google/android/gms/internal/de;->disconnect()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getLastLocation()Landroid/location/Location;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ez;->oU:Lcom/google/android/gms/internal/ey;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ey;->getLastLocation()Landroid/location/Location;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic p(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ez;->G(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ex;

    move-result-object v0

    return-object v0
.end method

.method public removeLocationUpdates(Lcom/google/android/gms/location/LocationListener;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ez;->oU:Lcom/google/android/gms/internal/ey;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ey;->removeLocationUpdates(Lcom/google/android/gms/location/LocationListener;)V

    return-void
.end method

.method public requestLocationUpdates(Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/location/LocationListener;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/gms/internal/ez;->requestLocationUpdates(Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/location/LocationListener;Landroid/os/Looper;)V

    return-void
.end method

.method public requestLocationUpdates(Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/location/LocationListener;Landroid/os/Looper;)V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/ez;->oU:Lcom/google/android/gms/internal/ey;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ez;->oU:Lcom/google/android/gms/internal/ey;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ey;->requestLocationUpdates(Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/location/LocationListener;Landroid/os/Looper;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
