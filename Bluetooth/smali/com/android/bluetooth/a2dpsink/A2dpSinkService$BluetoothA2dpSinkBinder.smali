.class Lcom/android/bluetooth/a2dpsink/A2dpSinkService$BluetoothA2dpSinkBinder;
.super Landroid/bluetooth/IBluetoothA2dpSink$Stub;
.source "A2dpSinkService.java"

# interfaces
.implements Lcom/android/bluetooth/btservice/ProfileService$IProfileServiceBinder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/a2dpsink/A2dpSinkService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BluetoothA2dpSinkBinder"
.end annotation


# instance fields
.field private mService:Lcom/android/bluetooth/a2dpsink/A2dpSinkService;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/a2dpsink/A2dpSinkService;)V
    .locals 0

    invoke-direct {p0}, Landroid/bluetooth/IBluetoothA2dpSink$Stub;-><init>()V

    iput-object p1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkService$BluetoothA2dpSinkBinder;->mService:Lcom/android/bluetooth/a2dpsink/A2dpSinkService;

    return-void
.end method

.method private getService()Lcom/android/bluetooth/a2dpsink/A2dpSinkService;
    .locals 3

    const/4 v2, 0x0

    invoke-static {}, Lcom/android/bluetooth/Utils;->checkCaller()Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "A2dpSinkService"

    const-string/jumbo v1, "A2dp call not allowed for non-active user"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkService$BluetoothA2dpSinkBinder;->mService:Lcom/android/bluetooth/a2dpsink/A2dpSinkService;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkService$BluetoothA2dpSinkBinder;->mService:Lcom/android/bluetooth/a2dpsink/A2dpSinkService;

    invoke-static {v0}, Lcom/android/bluetooth/a2dpsink/A2dpSinkService;->-wrap0(Lcom/android/bluetooth/a2dpsink/A2dpSinkService;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkService$BluetoothA2dpSinkBinder;->mService:Lcom/android/bluetooth/a2dpsink/A2dpSinkService;

    return-object v0

    :cond_1
    return-object v2
.end method


# virtual methods
.method public cleanup()Z
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkService$BluetoothA2dpSinkBinder;->mService:Lcom/android/bluetooth/a2dpsink/A2dpSinkService;

    const/4 v0, 0x1

    return v0
.end method

.method public connect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2

    invoke-direct {p0}, Lcom/android/bluetooth/a2dpsink/A2dpSinkService$BluetoothA2dpSinkBinder;->getService()Lcom/android/bluetooth/a2dpsink/A2dpSinkService;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/a2dpsink/A2dpSinkService;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    return v1
.end method

.method public disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2

    invoke-direct {p0}, Lcom/android/bluetooth/a2dpsink/A2dpSinkService$BluetoothA2dpSinkBinder;->getService()Lcom/android/bluetooth/a2dpsink/A2dpSinkService;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/a2dpsink/A2dpSinkService;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    return v1
.end method

.method public getAudioConfig(Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothAudioConfig;
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/bluetooth/a2dpsink/A2dpSinkService$BluetoothA2dpSinkBinder;->getService()Lcom/android/bluetooth/a2dpsink/A2dpSinkService;

    move-result-object v0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/a2dpsink/A2dpSinkService;->getAudioConfig(Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothAudioConfig;

    move-result-object v1

    return-object v1
.end method

.method public getConnectedDevices()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/bluetooth/a2dpsink/A2dpSinkService$BluetoothA2dpSinkBinder;->getService()Lcom/android/bluetooth/a2dpsink/A2dpSinkService;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/bluetooth/a2dpsink/A2dpSinkService;->getConnectedDevices()Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public getConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    .locals 2

    invoke-direct {p0}, Lcom/android/bluetooth/a2dpsink/A2dpSinkService$BluetoothA2dpSinkBinder;->getService()Lcom/android/bluetooth/a2dpsink/A2dpSinkService;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/a2dpsink/A2dpSinkService;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    return v1
.end method

.method public getDevicesMatchingConnectionStates([I)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/bluetooth/a2dpsink/A2dpSinkService$BluetoothA2dpSinkBinder;->getService()Lcom/android/bluetooth/a2dpsink/A2dpSinkService;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    return-object v1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/a2dpsink/A2dpSinkService;->getDevicesMatchingConnectionStates([I)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public getPendingDevice()Landroid/bluetooth/BluetoothDevice;
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/bluetooth/a2dpsink/A2dpSinkService$BluetoothA2dpSinkBinder;->getService()Lcom/android/bluetooth/a2dpsink/A2dpSinkService;

    move-result-object v0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/bluetooth/a2dpsink/A2dpSinkService;->getPendingDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    return-object v1
.end method

.method public getPriority(Landroid/bluetooth/BluetoothDevice;)I
    .locals 2

    invoke-direct {p0}, Lcom/android/bluetooth/a2dpsink/A2dpSinkService$BluetoothA2dpSinkBinder;->getService()Lcom/android/bluetooth/a2dpsink/A2dpSinkService;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, -0x1

    return v1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/a2dpsink/A2dpSinkService;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    return v1
.end method

.method public isA2dpPlaying(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2

    invoke-direct {p0}, Lcom/android/bluetooth/a2dpsink/A2dpSinkService$BluetoothA2dpSinkBinder;->getService()Lcom/android/bluetooth/a2dpsink/A2dpSinkService;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/a2dpsink/A2dpSinkService;->isA2dpPlaying(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    return v1
.end method

.method public processSetSuspend(Z)V
    .locals 1

    invoke-direct {p0}, Lcom/android/bluetooth/a2dpsink/A2dpSinkService$BluetoothA2dpSinkBinder;->getService()Lcom/android/bluetooth/a2dpsink/A2dpSinkService;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/a2dpsink/A2dpSinkService;->processSetSuspend(Z)V

    :cond_0
    return-void
.end method

.method public setPriority(Landroid/bluetooth/BluetoothDevice;I)Z
    .locals 2

    invoke-direct {p0}, Lcom/android/bluetooth/a2dpsink/A2dpSinkService$BluetoothA2dpSinkBinder;->getService()Lcom/android/bluetooth/a2dpsink/A2dpSinkService;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/android/bluetooth/a2dpsink/A2dpSinkService;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    move-result v1

    return v1
.end method
