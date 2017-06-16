.class Lcom/android/bluetooth/hdp/HealthService$BluetoothHealthBinder;
.super Landroid/bluetooth/IBluetoothHealth$Stub;
.source "HealthService.java"

# interfaces
.implements Lcom/android/bluetooth/btservice/ProfileService$IProfileServiceBinder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/hdp/HealthService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BluetoothHealthBinder"
.end annotation


# instance fields
.field private mService:Lcom/android/bluetooth/hdp/HealthService;


# direct methods
.method public constructor <init>(Lcom/android/bluetooth/hdp/HealthService;)V
    .locals 0

    invoke-direct {p0}, Landroid/bluetooth/IBluetoothHealth$Stub;-><init>()V

    iput-object p1, p0, Lcom/android/bluetooth/hdp/HealthService$BluetoothHealthBinder;->mService:Lcom/android/bluetooth/hdp/HealthService;

    return-void
.end method

.method private getService()Lcom/android/bluetooth/hdp/HealthService;
    .locals 3

    const/4 v2, 0x0

    invoke-static {}, Lcom/android/bluetooth/Utils;->checkCaller()Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "HealthService"

    const-string/jumbo v1, "Health call not allowed for non-active user"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/hdp/HealthService$BluetoothHealthBinder;->mService:Lcom/android/bluetooth/hdp/HealthService;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/bluetooth/hdp/HealthService$BluetoothHealthBinder;->mService:Lcom/android/bluetooth/hdp/HealthService;

    invoke-static {v0}, Lcom/android/bluetooth/hdp/HealthService;->-wrap3(Lcom/android/bluetooth/hdp/HealthService;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/bluetooth/hdp/HealthService$BluetoothHealthBinder;->mService:Lcom/android/bluetooth/hdp/HealthService;

    return-object v0

    :cond_1
    return-object v2
.end method


# virtual methods
.method public cleanup()Z
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/hdp/HealthService$BluetoothHealthBinder;->mService:Lcom/android/bluetooth/hdp/HealthService;

    const/4 v0, 0x1

    return v0
.end method

.method public connectChannelToSink(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothHealthAppConfiguration;I)Z
    .locals 2

    invoke-direct {p0}, Lcom/android/bluetooth/hdp/HealthService$BluetoothHealthBinder;->getService()Lcom/android/bluetooth/hdp/HealthService;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/bluetooth/hdp/HealthService;->connectChannelToSink(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothHealthAppConfiguration;I)Z

    move-result v1

    return v1
.end method

.method public connectChannelToSource(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothHealthAppConfiguration;)Z
    .locals 2

    invoke-direct {p0}, Lcom/android/bluetooth/hdp/HealthService$BluetoothHealthBinder;->getService()Lcom/android/bluetooth/hdp/HealthService;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/android/bluetooth/hdp/HealthService;->connectChannelToSource(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothHealthAppConfiguration;)Z

    move-result v1

    return v1
.end method

.method public disconnectChannel(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothHealthAppConfiguration;I)Z
    .locals 2

    invoke-direct {p0}, Lcom/android/bluetooth/hdp/HealthService$BluetoothHealthBinder;->getService()Lcom/android/bluetooth/hdp/HealthService;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/bluetooth/hdp/HealthService;->disconnectChannel(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothHealthAppConfiguration;I)Z

    move-result v1

    return v1
.end method

.method public getConnectedHealthDevices()Ljava/util/List;
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

    invoke-direct {p0}, Lcom/android/bluetooth/hdp/HealthService$BluetoothHealthBinder;->getService()Lcom/android/bluetooth/hdp/HealthService;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/bluetooth/hdp/HealthService;->getConnectedHealthDevices()Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public getHealthDeviceConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    .locals 2

    invoke-direct {p0}, Lcom/android/bluetooth/hdp/HealthService$BluetoothHealthBinder;->getService()Lcom/android/bluetooth/hdp/HealthService;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hdp/HealthService;->getHealthDeviceConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    return v1
.end method

.method public getHealthDevicesMatchingConnectionStates([I)Ljava/util/List;
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

    invoke-direct {p0}, Lcom/android/bluetooth/hdp/HealthService$BluetoothHealthBinder;->getService()Lcom/android/bluetooth/hdp/HealthService;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    return-object v1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hdp/HealthService;->getHealthDevicesMatchingConnectionStates([I)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public getMainChannelFd(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothHealthAppConfiguration;)Landroid/os/ParcelFileDescriptor;
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/bluetooth/hdp/HealthService$BluetoothHealthBinder;->getService()Lcom/android/bluetooth/hdp/HealthService;

    move-result-object v0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/android/bluetooth/hdp/HealthService;->getMainChannelFd(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothHealthAppConfiguration;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    return-object v1
.end method

.method public registerAppConfiguration(Landroid/bluetooth/BluetoothHealthAppConfiguration;Landroid/bluetooth/IBluetoothHealthCallback;)Z
    .locals 2

    invoke-direct {p0}, Lcom/android/bluetooth/hdp/HealthService$BluetoothHealthBinder;->getService()Lcom/android/bluetooth/hdp/HealthService;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/android/bluetooth/hdp/HealthService;->registerAppConfiguration(Landroid/bluetooth/BluetoothHealthAppConfiguration;Landroid/bluetooth/IBluetoothHealthCallback;)Z

    move-result v1

    return v1
.end method

.method public unregisterAppConfiguration(Landroid/bluetooth/BluetoothHealthAppConfiguration;)Z
    .locals 2

    invoke-direct {p0}, Lcom/android/bluetooth/hdp/HealthService$BluetoothHealthBinder;->getService()Lcom/android/bluetooth/hdp/HealthService;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hdp/HealthService;->unregisterAppConfiguration(Landroid/bluetooth/BluetoothHealthAppConfiguration;)Z

    move-result v1

    return v1
.end method
