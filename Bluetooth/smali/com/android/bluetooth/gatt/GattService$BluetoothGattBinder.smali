.class Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;
.super Landroid/bluetooth/IBluetoothGatt$Stub;
.source "GattService.java"

# interfaces
.implements Lcom/android/bluetooth/btservice/ProfileService$IProfileServiceBinder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/gatt/GattService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BluetoothGattBinder"
.end annotation


# instance fields
.field private mService:Lcom/android/bluetooth/gatt/GattService;


# direct methods
.method public constructor <init>(Lcom/android/bluetooth/gatt/GattService;)V
    .locals 0

    invoke-direct {p0}, Landroid/bluetooth/IBluetoothGatt$Stub;-><init>()V

    iput-object p1, p0, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;->mService:Lcom/android/bluetooth/gatt/GattService;

    return-void
.end method

.method private getService()Lcom/android/bluetooth/gatt/GattService;
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;->mService:Lcom/android/bluetooth/gatt/GattService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;->mService:Lcom/android/bluetooth/gatt/GattService;

    invoke-static {v0}, Lcom/android/bluetooth/gatt/GattService;->-wrap0(Lcom/android/bluetooth/gatt/GattService;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;->mService:Lcom/android/bluetooth/gatt/GattService;

    return-object v0

    :cond_0
    const-string/jumbo v0, "BtGatt.GattService"

    const-string/jumbo v1, "getService() - Service requested, but not available!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2
.end method


# virtual methods
.method public addCharacteristic(ILandroid/os/ParcelUuid;II)V
    .locals 2

    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;->getService()Lcom/android/bluetooth/gatt/GattService;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, p1, v1, p3, p4}, Lcom/android/bluetooth/gatt/GattService;->addCharacteristic(ILjava/util/UUID;II)V

    return-void
.end method

.method public addDescriptor(ILandroid/os/ParcelUuid;I)V
    .locals 2

    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;->getService()Lcom/android/bluetooth/gatt/GattService;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, p1, v1, p3}, Lcom/android/bluetooth/gatt/GattService;->addDescriptor(ILjava/util/UUID;I)V

    return-void
.end method

.method public addIncludedService(IIILandroid/os/ParcelUuid;)V
    .locals 2

    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;->getService()Lcom/android/bluetooth/gatt/GattService;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p4}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/android/bluetooth/gatt/GattService;->addIncludedService(IIILjava/util/UUID;)V

    return-void
.end method

.method public beginReliableWrite(ILjava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;->getService()Lcom/android/bluetooth/gatt/GattService;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/android/bluetooth/gatt/GattService;->beginReliableWrite(ILjava/lang/String;)V

    return-void
.end method

.method public beginServiceDeclaration(IIIILandroid/os/ParcelUuid;Z)V
    .locals 7

    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;->getService()Lcom/android/bluetooth/gatt/GattService;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p5}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v5

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/bluetooth/gatt/GattService;->beginServiceDeclaration(IIIILjava/util/UUID;Z)V

    return-void
.end method

.method public cleanup()Z
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;->mService:Lcom/android/bluetooth/gatt/GattService;

    const/4 v0, 0x1

    return v0
.end method

.method public clearServices(I)V
    .locals 1

    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;->getService()Lcom/android/bluetooth/gatt/GattService;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/gatt/GattService;->clearServices(I)V

    return-void
.end method

.method public clientConnect(ILjava/lang/String;ZIZI)V
    .locals 7

    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;->getService()Lcom/android/bluetooth/gatt/GattService;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/bluetooth/gatt/GattService;->clientConnect(ILjava/lang/String;ZIZI)V

    return-void
.end method

.method public clientConnectionParameterUpdate(ILjava/lang/String;IIIIII)V
    .locals 9

    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;->getService()Lcom/android/bluetooth/gatt/GattService;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Lcom/android/bluetooth/gatt/GattService;->clientConnectionParameterUpdate(ILjava/lang/String;IIIIII)V

    return-void
.end method

.method public clientDataRateUpdate(ILjava/lang/String;II)V
    .locals 1

    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;->getService()Lcom/android/bluetooth/gatt/GattService;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/bluetooth/gatt/GattService;->clientDataRateUpdate(ILjava/lang/String;II)V

    return-void
.end method

.method public clientDisconnect(ILjava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;->getService()Lcom/android/bluetooth/gatt/GattService;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/android/bluetooth/gatt/GattService;->clientDisconnect(ILjava/lang/String;)V

    return-void
.end method

.method public configureMTU(ILjava/lang/String;I)V
    .locals 1

    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;->getService()Lcom/android/bluetooth/gatt/GattService;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/bluetooth/gatt/GattService;->configureMTU(ILjava/lang/String;I)V

    return-void
.end method

.method public connectionParameterUpdate(ILjava/lang/String;I)V
    .locals 1

    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;->getService()Lcom/android/bluetooth/gatt/GattService;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/bluetooth/gatt/GattService;->connectionParameterUpdate(ILjava/lang/String;I)V

    return-void
.end method

.method public disconnectAll()V
    .locals 1

    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;->getService()Lcom/android/bluetooth/gatt/GattService;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/android/bluetooth/gatt/GattService;->disconnectAll()V

    return-void
.end method

.method public discoverServices(ILjava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;->getService()Lcom/android/bluetooth/gatt/GattService;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/android/bluetooth/gatt/GattService;->discoverServices(ILjava/lang/String;)V

    return-void
.end method

.method public endReliableWrite(ILjava/lang/String;Z)V
    .locals 1

    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;->getService()Lcom/android/bluetooth/gatt/GattService;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/bluetooth/gatt/GattService;->endReliableWrite(ILjava/lang/String;Z)V

    return-void
.end method

.method public endServiceDeclaration(I)V
    .locals 1

    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;->getService()Lcom/android/bluetooth/gatt/GattService;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/gatt/GattService;->endServiceDeclaration(I)V

    return-void
.end method

.method public flushPendingBatchResults(IZ)V
    .locals 1

    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;->getService()Lcom/android/bluetooth/gatt/GattService;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/android/bluetooth/gatt/GattService;->flushPendingBatchResults(IZ)V

    return-void
.end method

.method public getDevicesMatchingConnectionStates([I)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;->getService()Lcom/android/bluetooth/gatt/GattService;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    return-object v1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/gatt/GattService;->getDevicesMatchingConnectionStates([I)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public numHwTrackFiltersAvailable()I
    .locals 2

    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;->getService()Lcom/android/bluetooth/gatt/GattService;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/bluetooth/gatt/GattService;->numHwTrackFiltersAvailable()I

    move-result v1

    return v1
.end method

.method public readCharacteristic(ILjava/lang/String;II)V
    .locals 1

    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;->getService()Lcom/android/bluetooth/gatt/GattService;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/bluetooth/gatt/GattService;->readCharacteristic(ILjava/lang/String;II)V

    return-void
.end method

.method public readDescriptor(ILjava/lang/String;II)V
    .locals 1

    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;->getService()Lcom/android/bluetooth/gatt/GattService;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/bluetooth/gatt/GattService;->readDescriptor(ILjava/lang/String;II)V

    return-void
.end method

.method public readRemoteRssi(ILjava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;->getService()Lcom/android/bluetooth/gatt/GattService;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/android/bluetooth/gatt/GattService;->readRemoteRssi(ILjava/lang/String;)V

    return-void
.end method

.method public refreshDevice(ILjava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;->getService()Lcom/android/bluetooth/gatt/GattService;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/android/bluetooth/gatt/GattService;->refreshDevice(ILjava/lang/String;)V

    return-void
.end method

.method public registerClient(Landroid/os/ParcelUuid;Landroid/bluetooth/IBluetoothGattCallback;)V
    .locals 2

    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;->getService()Lcom/android/bluetooth/gatt/GattService;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/android/bluetooth/gatt/GattService;->registerClient(Ljava/util/UUID;Landroid/bluetooth/IBluetoothGattCallback;)V

    return-void
.end method

.method public registerForNotification(ILjava/lang/String;IZ)V
    .locals 1

    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;->getService()Lcom/android/bluetooth/gatt/GattService;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/bluetooth/gatt/GattService;->registerForNotification(ILjava/lang/String;IZ)V

    return-void
.end method

.method public registerServer(Landroid/os/ParcelUuid;Landroid/bluetooth/IBluetoothGattServerCallback;)V
    .locals 2

    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;->getService()Lcom/android/bluetooth/gatt/GattService;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/android/bluetooth/gatt/GattService;->registerServer(Ljava/util/UUID;Landroid/bluetooth/IBluetoothGattServerCallback;)V

    return-void
.end method

.method public removeService(IIILandroid/os/ParcelUuid;)V
    .locals 2

    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;->getService()Lcom/android/bluetooth/gatt/GattService;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p4}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/android/bluetooth/gatt/GattService;->removeService(IIILjava/util/UUID;)V

    return-void
.end method

.method public semMonitorRssi(ILjava/lang/String;III)V
    .locals 6

    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;->getService()Lcom/android/bluetooth/gatt/GattService;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/bluetooth/gatt/GattService;->semMonitorRssi(ILjava/lang/String;III)V

    return-void
.end method

.method public sendNotification(ILjava/lang/String;IILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;Z[B)V
    .locals 10

    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;->getService()Lcom/android/bluetooth/gatt/GattService;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p5}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual/range {p7 .. p7}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v7

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move/from16 v6, p6

    move/from16 v8, p8

    move-object/from16 v9, p9

    invoke-virtual/range {v0 .. v9}, Lcom/android/bluetooth/gatt/GattService;->sendNotification(ILjava/lang/String;IILjava/util/UUID;ILjava/util/UUID;Z[B)V

    return-void
.end method

.method public sendResponse(ILjava/lang/String;III[B)V
    .locals 7

    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;->getService()Lcom/android/bluetooth/gatt/GattService;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/bluetooth/gatt/GattService;->sendResponse(ILjava/lang/String;III[B)V

    return-void
.end method

.method public serverConnect(ILjava/lang/String;ZI)V
    .locals 1

    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;->getService()Lcom/android/bluetooth/gatt/GattService;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/bluetooth/gatt/GattService;->serverConnect(ILjava/lang/String;ZI)V

    return-void
.end method

.method public serverConnectionParameterUpdate(ILjava/lang/String;IIIIII)V
    .locals 9

    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;->getService()Lcom/android/bluetooth/gatt/GattService;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Lcom/android/bluetooth/gatt/GattService;->serverConnectionParameterUpdate(ILjava/lang/String;IIIIII)V

    return-void
.end method

.method public serverDataRateUpdate(ILjava/lang/String;II)V
    .locals 1

    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;->getService()Lcom/android/bluetooth/gatt/GattService;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/bluetooth/gatt/GattService;->serverDataRateUpdate(ILjava/lang/String;II)V

    return-void
.end method

.method public serverDisconnect(ILjava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;->getService()Lcom/android/bluetooth/gatt/GattService;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/android/bluetooth/gatt/GattService;->serverDisconnect(ILjava/lang/String;)V

    return-void
.end method

.method public serverDisconnectIncomingConnClients()V
    .locals 1

    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;->getService()Lcom/android/bluetooth/gatt/GattService;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/android/bluetooth/gatt/GattService;->serverDisconnectIncomingConnClients()V

    return-void
.end method

.method public startMultiAdvertising(ILandroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/AdvertiseSettings;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;->getService()Lcom/android/bluetooth/gatt/GattService;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/bluetooth/gatt/GattService;->startMultiAdvertising(ILandroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/AdvertiseSettings;)V

    return-void
.end method

.method public startScan(IZLandroid/bluetooth/le/ScanSettings;Ljava/util/List;Landroid/os/WorkSource;Ljava/util/List;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ",
            "Landroid/bluetooth/le/ScanSettings;",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/le/ScanFilter;",
            ">;",
            "Landroid/os/WorkSource;",
            "Ljava/util/List;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;->getService()Lcom/android/bluetooth/gatt/GattService;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/android/bluetooth/gatt/GattService;->startScan(IZLandroid/bluetooth/le/ScanSettings;Ljava/util/List;Landroid/os/WorkSource;Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method public stopMultiAdvertising(I)V
    .locals 2

    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;->getService()Lcom/android/bluetooth/gatt/GattService;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Lcom/android/bluetooth/gatt/AdvertiseClient;

    invoke-direct {v1, p1}, Lcom/android/bluetooth/gatt/AdvertiseClient;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/gatt/GattService;->stopMultiAdvertising(Lcom/android/bluetooth/gatt/AdvertiseClient;)V

    return-void
.end method

.method public stopScan(IZ)V
    .locals 2

    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;->getService()Lcom/android/bluetooth/gatt/GattService;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Lcom/android/bluetooth/gatt/ScanClient;

    invoke-direct {v1, p1, p2}, Lcom/android/bluetooth/gatt/ScanClient;-><init>(IZ)V

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/gatt/GattService;->stopScan(Lcom/android/bluetooth/gatt/ScanClient;)V

    return-void
.end method

.method public unregAll()V
    .locals 1

    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;->getService()Lcom/android/bluetooth/gatt/GattService;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/android/bluetooth/gatt/GattService;->unregAll()V

    return-void
.end method

.method public unregisterClient(I)V
    .locals 1

    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;->getService()Lcom/android/bluetooth/gatt/GattService;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/gatt/GattService;->unregisterClient(I)V

    return-void
.end method

.method public unregisterClientbyUuid(Landroid/os/ParcelUuid;)V
    .locals 2

    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;->getService()Lcom/android/bluetooth/gatt/GattService;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/gatt/GattService;->unregisterClientbyUuid(Ljava/util/UUID;)V

    return-void
.end method

.method public unregisterServer(I)V
    .locals 1

    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;->getService()Lcom/android/bluetooth/gatt/GattService;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/gatt/GattService;->unregisterServer(I)V

    return-void
.end method

.method public writeCharacteristic(ILjava/lang/String;III[B)V
    .locals 7

    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;->getService()Lcom/android/bluetooth/gatt/GattService;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/bluetooth/gatt/GattService;->writeCharacteristic(ILjava/lang/String;III[B)V

    return-void
.end method

.method public writeDescriptor(ILjava/lang/String;III[B)V
    .locals 7

    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;->getService()Lcom/android/bluetooth/gatt/GattService;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/bluetooth/gatt/GattService;->writeDescriptor(ILjava/lang/String;III[B)V

    return-void
.end method
