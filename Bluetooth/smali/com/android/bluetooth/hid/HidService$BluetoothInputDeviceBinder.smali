.class Lcom/android/bluetooth/hid/HidService$BluetoothInputDeviceBinder;
.super Landroid/bluetooth/IBluetoothInputDevice$Stub;
.source "HidService.java"

# interfaces
.implements Lcom/android/bluetooth/btservice/ProfileService$IProfileServiceBinder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/hid/HidService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BluetoothInputDeviceBinder"
.end annotation


# instance fields
.field private mService:Lcom/android/bluetooth/hid/HidService;


# direct methods
.method public constructor <init>(Lcom/android/bluetooth/hid/HidService;)V
    .locals 0

    invoke-direct {p0}, Landroid/bluetooth/IBluetoothInputDevice$Stub;-><init>()V

    iput-object p1, p0, Lcom/android/bluetooth/hid/HidService$BluetoothInputDeviceBinder;->mService:Lcom/android/bluetooth/hid/HidService;

    return-void
.end method

.method private getService()Lcom/android/bluetooth/hid/HidService;
    .locals 3

    const/4 v2, 0x0

    invoke-static {}, Lcom/android/bluetooth/Utils;->checkCaller()Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "HidService"

    const-string/jumbo v1, "InputDevice call not allowed for non-active user"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/hid/HidService$BluetoothInputDeviceBinder;->mService:Lcom/android/bluetooth/hid/HidService;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/bluetooth/hid/HidService$BluetoothInputDeviceBinder;->mService:Lcom/android/bluetooth/hid/HidService;

    invoke-static {v0}, Lcom/android/bluetooth/hid/HidService;->-wrap5(Lcom/android/bluetooth/hid/HidService;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/bluetooth/hid/HidService$BluetoothInputDeviceBinder;->mService:Lcom/android/bluetooth/hid/HidService;

    return-object v0

    :cond_1
    return-object v2
.end method


# virtual methods
.method public cleanup()Z
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/hid/HidService$BluetoothInputDeviceBinder;->mService:Lcom/android/bluetooth/hid/HidService;

    const/4 v0, 0x1

    return v0
.end method

.method public connect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2

    invoke-direct {p0}, Lcom/android/bluetooth/hid/HidService$BluetoothInputDeviceBinder;->getService()Lcom/android/bluetooth/hid/HidService;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hid/HidService;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    return v1
.end method

.method public disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2

    invoke-direct {p0}, Lcom/android/bluetooth/hid/HidService$BluetoothInputDeviceBinder;->getService()Lcom/android/bluetooth/hid/HidService;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hid/HidService;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    return v1
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

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x2

    const/4 v2, 0x0

    aput v1, v0, v2

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/hid/HidService$BluetoothInputDeviceBinder;->getDevicesMatchingConnectionStates([I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    .locals 2

    invoke-direct {p0}, Lcom/android/bluetooth/hid/HidService$BluetoothInputDeviceBinder;->getService()Lcom/android/bluetooth/hid/HidService;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hid/HidService;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

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

    invoke-direct {p0}, Lcom/android/bluetooth/hid/HidService$BluetoothInputDeviceBinder;->getService()Lcom/android/bluetooth/hid/HidService;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    return-object v1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hid/HidService;->getDevicesMatchingConnectionStates([I)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public getPriority(Landroid/bluetooth/BluetoothDevice;)I
    .locals 2

    invoke-direct {p0}, Lcom/android/bluetooth/hid/HidService$BluetoothInputDeviceBinder;->getService()Lcom/android/bluetooth/hid/HidService;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, -0x1

    return v1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hid/HidService;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    return v1
.end method

.method public getProtocolMode(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2

    invoke-direct {p0}, Lcom/android/bluetooth/hid/HidService$BluetoothInputDeviceBinder;->getService()Lcom/android/bluetooth/hid/HidService;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hid/HidService;->getProtocolMode(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    return v1
.end method

.method public getReport(Landroid/bluetooth/BluetoothDevice;BBI)Z
    .locals 2

    invoke-direct {p0}, Lcom/android/bluetooth/hid/HidService$BluetoothInputDeviceBinder;->getService()Lcom/android/bluetooth/hid/HidService;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/bluetooth/hid/HidService;->getReport(Landroid/bluetooth/BluetoothDevice;BBI)Z

    move-result v1

    return v1
.end method

.method public sendData(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)Z
    .locals 2

    invoke-direct {p0}, Lcom/android/bluetooth/hid/HidService$BluetoothInputDeviceBinder;->getService()Lcom/android/bluetooth/hid/HidService;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/android/bluetooth/hid/HidService;->sendData(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public setPriority(Landroid/bluetooth/BluetoothDevice;I)Z
    .locals 2

    invoke-direct {p0}, Lcom/android/bluetooth/hid/HidService$BluetoothInputDeviceBinder;->getService()Lcom/android/bluetooth/hid/HidService;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/android/bluetooth/hid/HidService;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    move-result v1

    return v1
.end method

.method public setProtocolMode(Landroid/bluetooth/BluetoothDevice;I)Z
    .locals 2

    invoke-direct {p0}, Lcom/android/bluetooth/hid/HidService$BluetoothInputDeviceBinder;->getService()Lcom/android/bluetooth/hid/HidService;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/android/bluetooth/hid/HidService;->setProtocolMode(Landroid/bluetooth/BluetoothDevice;I)Z

    move-result v1

    return v1
.end method

.method public setReport(Landroid/bluetooth/BluetoothDevice;BLjava/lang/String;)Z
    .locals 2

    invoke-direct {p0}, Lcom/android/bluetooth/hid/HidService$BluetoothInputDeviceBinder;->getService()Lcom/android/bluetooth/hid/HidService;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/bluetooth/hid/HidService;->setReport(Landroid/bluetooth/BluetoothDevice;BLjava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public virtualUnplug(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2

    invoke-direct {p0}, Lcom/android/bluetooth/hid/HidService$BluetoothInputDeviceBinder;->getService()Lcom/android/bluetooth/hid/HidService;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hid/HidService;->virtualUnplug(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    return v1
.end method
