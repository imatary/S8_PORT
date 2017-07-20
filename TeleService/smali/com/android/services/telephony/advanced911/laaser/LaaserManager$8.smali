.class final Lcom/android/services/telephony/advanced911/laaser/LaaserManager$8;
.super Ljava/lang/Object;
.source "LaaserManager.java"

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->buildGoogleApiClient()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnected(Landroid/os/Bundle;)V
    .locals 2

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->GoogleConnectPending:Z

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->-set0(Z)Z

    const-string/jumbo v0, "LaaserManager"

    const-string/jumbo v1, "Connected to GoogleApiClient"

    invoke-static {v0, v1}, Lcom/android/services/telephony/advanced911/laaser/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->-wrap0()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->startLocationUpdates()V

    return-void
.end method

.method public onConnectionSuspended(I)V
    .locals 2

    const-string/jumbo v0, "LaaserManager"

    const-string/jumbo v1, "Connection suspended"

    invoke-static {v0, v1}, Lcom/android/services/telephony/advanced911/laaser/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
