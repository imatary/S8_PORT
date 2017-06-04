.class public Lcom/google/android/gms/location/LocationClient;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/GooglePlayServicesClient;


# instance fields
.field private final ou:Lcom/google/android/gms/internal/ez;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ez;

    const-string/jumbo v1, "location"

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/google/android/gms/internal/ez;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/location/LocationClient;->ou:Lcom/google/android/gms/internal/ez;

    return-void
.end method


# virtual methods
.method public connect()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/location/LocationClient;->ou:Lcom/google/android/gms/internal/ez;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ez;->connect()V

    return-void
.end method

.method public disconnect()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/location/LocationClient;->ou:Lcom/google/android/gms/internal/ez;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ez;->disconnect()V

    return-void
.end method

.method public getLastLocation()Landroid/location/Location;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/location/LocationClient;->ou:Lcom/google/android/gms/internal/ez;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ez;->getLastLocation()Landroid/location/Location;

    move-result-object v0

    return-object v0
.end method

.method public isConnected()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/location/LocationClient;->ou:Lcom/google/android/gms/internal/ez;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ez;->isConnected()Z

    move-result v0

    return v0
.end method

.method public removeLocationUpdates(Lcom/google/android/gms/location/LocationListener;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/location/LocationClient;->ou:Lcom/google/android/gms/internal/ez;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ez;->removeLocationUpdates(Lcom/google/android/gms/location/LocationListener;)V

    return-void
.end method

.method public requestLocationUpdates(Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/location/LocationListener;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/location/LocationClient;->ou:Lcom/google/android/gms/internal/ez;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ez;->requestLocationUpdates(Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/location/LocationListener;)V

    return-void
.end method
