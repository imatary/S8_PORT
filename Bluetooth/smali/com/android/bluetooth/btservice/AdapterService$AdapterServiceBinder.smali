.class Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;
.super Landroid/bluetooth/IBluetooth$Stub;
.source "AdapterService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/btservice/AdapterService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AdapterServiceBinder"
.end annotation


# instance fields
.field private mService:Lcom/android/bluetooth/btservice/AdapterService;


# direct methods
.method public constructor <init>(Lcom/android/bluetooth/btservice/AdapterService;)V
    .locals 0

    invoke-direct {p0}, Landroid/bluetooth/IBluetooth$Stub;-><init>()V

    iput-object p1, p0, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->mService:Lcom/android/bluetooth/btservice/AdapterService;

    return-void
.end method


# virtual methods
.method public cancelBondProcess(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 5

    const/4 v4, 0x0

    const-string/jumbo v1, "BluetoothAdapterService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "createBond : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddressForLog()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/bluetooth/Utils;->checkCaller()Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "BluetoothAdapterService"

    const-string/jumbo v2, "cancelBondProcess() - Not allowed for non-active user"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_0
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    if-nez v0, :cond_1

    return v4

    :cond_1
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/btservice/AdapterService;->cancelBondProcess(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    return v1
.end method

.method public cancelDiscovery()Z
    .locals 5

    invoke-static {}, Lcom/android/bluetooth/Utils;->checkCaller()Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "BluetoothAdapterService"

    const-string/jumbo v3, "cancelDiscovery() - Not allowed for non-active user"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    return v2

    :cond_0
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v1

    const/4 v0, 0x0

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->isDiscovering()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/android/bluetooth/btservice/AdapterService;->cancelDiscovery()Z

    move-result v0

    const-string/jumbo v2, "BluetoothAdapterService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "cancelDiscovery = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    const-string/jumbo v2, "BluetoothAdapterService"

    const-string/jumbo v3, "This is not a scanning status. cancelDiscovery() will be not called."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string/jumbo v2, "BluetoothAdapterService"

    const-string/jumbo v3, "cancelDiscovery, service is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public cleanup()Z
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->mService:Lcom/android/bluetooth/btservice/AdapterService;

    const/4 v0, 0x1

    return v0
.end method

.method public configHciSnoopLog(Z)Z
    .locals 5

    const/4 v4, 0x0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/16 v2, 0x3e8

    if-eq v1, v2, :cond_0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "Bluetooth"

    aput-object v2, v1, v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string/jumbo v2, "configHciSnoopLog() - Not allowed for non-active user b/18643224"

    const/4 v3, 0x2

    aput-object v2, v1, v3

    const v2, 0x534e4554

    invoke-static {v2, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    return v4

    :cond_0
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    if-nez v0, :cond_1

    return v4

    :cond_1
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/btservice/AdapterService;->configHciSnoopLog(Z)Z

    move-result v1

    return v1
.end method

.method public configHciSnoopLogForExternal(Z)Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/btservice/AdapterService;->configHciSnoopLogForExternal(Z)Z

    move-result v1

    return v1
.end method

.method public configScoLoopback(Z)Z
    .locals 4

    const/4 v3, 0x0

    invoke-static {}, Lcom/android/bluetooth/Utils;->checkCaller()Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "BluetoothAdapterService"

    const-string/jumbo v2, "configScoLoopback(): not allowed for non-active user"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_0
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    if-nez v0, :cond_1

    return v3

    :cond_1
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/btservice/AdapterService;->configScoLoopback(Z)Z

    move-result v1

    return v1
.end method

.method public connectSocket(Landroid/bluetooth/BluetoothDevice;ILandroid/os/ParcelUuid;II)Landroid/os/ParcelFileDescriptor;
    .locals 6

    const/4 v3, 0x0

    const/4 v1, 0x4

    if-eq p2, v1, :cond_0

    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->mService:Lcom/android/bluetooth/btservice/AdapterService;

    invoke-static {v1}, Lcom/android/bluetooth/Utils;->checkCallerAllowManagedProfiles(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    if-nez v0, :cond_2

    return-object v3

    :cond_1
    const-string/jumbo v1, "BluetoothAdapterService"

    const-string/jumbo v2, "connectSocket() - Not allowed for non-active user"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    :cond_2
    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/bluetooth/btservice/AdapterService;->connectSocket(Landroid/bluetooth/BluetoothDevice;ILandroid/os/ParcelUuid;II)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    return-object v1
.end method

.method public controlTxPower(Z)Z
    .locals 4

    const/4 v3, 0x0

    invoke-static {}, Lcom/android/bluetooth/Utils;->checkCaller()Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "BluetoothAdapterService"

    const-string/jumbo v2, "controlTxPower(): not allowed for non-active user"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_0
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    if-nez v0, :cond_1

    return v3

    :cond_1
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/btservice/AdapterService;->controlTxPower(Z)Z

    move-result v1

    return v1
.end method

.method public createBond(Landroid/bluetooth/BluetoothDevice;I)Z
    .locals 4

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->mService:Lcom/android/bluetooth/btservice/AdapterService;

    invoke-static {v1}, Lcom/android/bluetooth/Utils;->checkCallerAllowManagedProfiles(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "BluetoothAdapterService"

    const-string/jumbo v2, "createBond() - Not allowed for non-active user"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_0
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    if-nez v0, :cond_1

    return v3

    :cond_1
    invoke-virtual {v0, p1, p2, v2}, Lcom/android/bluetooth/btservice/AdapterService;->createBond(Landroid/bluetooth/BluetoothDevice;ILandroid/bluetooth/OobData;)Z

    move-result v1

    return v1
.end method

.method public createBondOutOfBand(Landroid/bluetooth/BluetoothDevice;ILandroid/bluetooth/OobData;)Z
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->mService:Lcom/android/bluetooth/btservice/AdapterService;

    invoke-static {v1}, Lcom/android/bluetooth/Utils;->checkCallerAllowManagedProfiles(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "BluetoothAdapterService"

    const-string/jumbo v2, "createBondOutOfBand() - Not allowed for non-active user"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_0
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    if-nez v0, :cond_1

    return v3

    :cond_1
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/bluetooth/btservice/AdapterService;->createBond(Landroid/bluetooth/BluetoothDevice;ILandroid/bluetooth/OobData;)Z

    move-result v1

    return v1
.end method

.method public createSocketChannel(ILjava/lang/String;Landroid/os/ParcelUuid;II)Landroid/os/ParcelFileDescriptor;
    .locals 6

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->mService:Lcom/android/bluetooth/btservice/AdapterService;

    invoke-static {v1}, Lcom/android/bluetooth/Utils;->checkCallerAllowManagedProfiles(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "BluetoothAdapterService"

    const-string/jumbo v2, "createSocketChannel() - Not allowed for non-active user"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    :cond_0
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v3

    :cond_1
    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/bluetooth/btservice/AdapterService;->createSocketChannel(ILjava/lang/String;Landroid/os/ParcelUuid;II)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    return-object v1
.end method

.method public disable()Z
    .locals 4

    const/4 v3, 0x0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/16 v2, 0x3e8

    if-eq v1, v2, :cond_0

    invoke-static {}, Lcom/android/bluetooth/Utils;->checkCaller()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    if-nez v0, :cond_2

    return v3

    :cond_1
    const-string/jumbo v1, "BluetoothAdapterService"

    const-string/jumbo v2, "disable() - Not allowed for non-active user and non system user"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_2
    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterService;->disable()Z

    move-result v1

    return v1
.end method

.method public dump(Landroid/os/ParcelFileDescriptor;)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    .locals 3

    new-instance v1, Ljava/io/PrintWriter;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {v1, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1, v1, p2}, Lcom/android/bluetooth/btservice/AdapterService;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public dutModeConfigure(Z)Z
    .locals 4

    const/4 v3, 0x0

    invoke-static {}, Lcom/android/bluetooth/Utils;->checkCaller()Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "BluetoothAdapterService"

    const-string/jumbo v2, "dutModeConfigure(): not allowed for non-active user"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_0
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    if-nez v0, :cond_1

    return v3

    :cond_1
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/btservice/AdapterService;->dutModeConfigure(Z)Z

    move-result v1

    return v1
.end method

.method public enable()Z
    .locals 4

    const/4 v3, 0x0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/16 v2, 0x3e8

    if-eq v1, v2, :cond_0

    invoke-static {}, Lcom/android/bluetooth/Utils;->checkCaller()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    if-nez v0, :cond_2

    return v3

    :cond_1
    const-string/jumbo v1, "BluetoothAdapterService"

    const-string/jumbo v2, "enable() - Not allowed for non-active user and non system user"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_2
    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterService;->enable()Z

    move-result v1

    return v1
.end method

.method public enableNoAutoConnect()Z
    .locals 4

    const/4 v3, 0x0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/16 v2, 0x3e8

    if-eq v1, v2, :cond_0

    invoke-static {}, Lcom/android/bluetooth/Utils;->checkCaller()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    if-nez v0, :cond_2

    return v3

    :cond_1
    const-string/jumbo v1, "BluetoothAdapterService"

    const-string/jumbo v2, "enableNoAuto() - Not allowed for non-active user and non system user"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_2
    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterService;->enableNoAutoConnect()Z

    move-result v1

    return v1
.end method

.method public factoryReset()Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterService;->factoryReset()Z

    move-result v1

    return v1
.end method

.method public fetchRemoteUuids(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->mService:Lcom/android/bluetooth/btservice/AdapterService;

    invoke-static {v1}, Lcom/android/bluetooth/Utils;->checkCallerAllowManagedProfiles(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "BluetoothAdapterService"

    const-string/jumbo v2, "fetchRemoteUuids() - Not allowed for non-active user"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_0
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    if-nez v0, :cond_1

    return v3

    :cond_1
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/btservice/AdapterService;->fetchRemoteUuids(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    return v1
.end method

.method public getAdapterConnectionState()I
    .locals 2

    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterService;->getAdapterConnectionState()I

    move-result v1

    return v1
.end method

.method public getAddress()Ljava/lang/String;
    .locals 4

    const/4 v3, 0x0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/16 v2, 0x3e8

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->mService:Lcom/android/bluetooth/btservice/AdapterService;

    invoke-static {v1}, Lcom/android/bluetooth/Utils;->checkCallerAllowManagedProfiles(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    if-nez v0, :cond_2

    return-object v3

    :cond_1
    const-string/jumbo v1, "BluetoothAdapterService"

    const-string/jumbo v2, "getAddress() - Not allowed for non-active user and non system user"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    :cond_2
    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterService;->getAddress()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getBondState(Landroid/bluetooth/BluetoothDevice;)I
    .locals 2

    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    if-nez v0, :cond_0

    const/16 v1, 0xa

    return v1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/btservice/AdapterService;->getBondState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    return v1
.end method

.method public getBondedDevices()[Landroid/bluetooth/BluetoothDevice;
    .locals 2

    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    new-array v1, v1, [Landroid/bluetooth/BluetoothDevice;

    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterService;->getBondedDevices()[Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    return-object v1
.end method

.method public getBondedTimeStamp(Landroid/bluetooth/BluetoothDevice;)J
    .locals 6

    const-wide/16 v4, 0x0

    invoke-static {}, Lcom/android/bluetooth/Utils;->checkCaller()Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "BluetoothAdapterService"

    const-string/jumbo v2, "getBondedTimeStamp() - Not allowed for non-active user"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v4

    :cond_0
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    if-nez v0, :cond_1

    return-wide v4

    :cond_1
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/btservice/AdapterService;->getBondedTimeStamp(Landroid/bluetooth/BluetoothDevice;)J

    move-result-wide v2

    return-wide v2
.end method

.method public getConnectedDeviceList()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterService;->getConnectedDeviceList()Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic getConnectedDeviceList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getConnectedDeviceList()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    .locals 2

    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/btservice/AdapterService;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    return v1
.end method

.method public getDiscoverableTimeout()I
    .locals 4

    const/4 v3, 0x0

    invoke-static {}, Lcom/android/bluetooth/Utils;->checkCaller()Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "BluetoothAdapterService"

    const-string/jumbo v2, "getDiscoverableTimeout() - Not allowed for non-active user"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_0
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    if-nez v0, :cond_1

    return v3

    :cond_1
    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterService;->getDiscoverableTimeout()I

    move-result v1

    return v1
.end method

.method public getGearIsConnected(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/btservice/AdapterService;->getGearIsConnected(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    return v1
.end method

.method public getHighRssi()I
    .locals 2

    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterService;->getHighRssi()I

    move-result v1

    return v1
.end method

.method public getLeDeviceType(Landroid/bluetooth/BluetoothDevice;)I
    .locals 2

    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, -0x1

    return v1

    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method public getLowRssi()I
    .locals 2

    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterService;->getLowRssi()I

    move-result v1

    return v1
.end method

.method public getMessageAccessPermission(Landroid/bluetooth/BluetoothDevice;)I
    .locals 4

    const/4 v3, 0x0

    invoke-static {}, Lcom/android/bluetooth/Utils;->checkCaller()Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "BluetoothAdapterService"

    const-string/jumbo v2, "getMessageAccessPermission() - Not allowed for non-active user"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_0
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    if-nez v0, :cond_1

    return v3

    :cond_1
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/btservice/AdapterService;->getMessageAccessPermission(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    return v1
.end method

.method public getMidRssi()I
    .locals 2

    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterService;->getMidRssi()I

    move-result v1

    return v1
.end method

.method public getName()Ljava/lang/String;
    .locals 4

    const/4 v3, 0x0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/16 v2, 0x3e8

    if-eq v1, v2, :cond_0

    invoke-static {}, Lcom/android/bluetooth/Utils;->checkCaller()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    if-nez v0, :cond_2

    return-object v3

    :cond_1
    const-string/jumbo v1, "BluetoothAdapterService"

    const-string/jumbo v2, "getName() - Not allowed for non-active user and non system user"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    :cond_2
    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterService;->getName()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getPhonebookAccessPermission(Landroid/bluetooth/BluetoothDevice;)I
    .locals 4

    const/4 v3, 0x0

    invoke-static {}, Lcom/android/bluetooth/Utils;->checkCaller()Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "BluetoothAdapterService"

    const-string/jumbo v2, "getPhonebookAccessPermission() - Not allowed for non-active user"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_0
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    if-nez v0, :cond_1

    return v3

    :cond_1
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/btservice/AdapterService;->getPhonebookAccessPermission(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    return v1
.end method

.method public getProfileConnectedDevice(I)Landroid/bluetooth/BluetoothDevice;
    .locals 4

    const/4 v3, 0x0

    invoke-static {}, Lcom/android/bluetooth/Utils;->checkCaller()Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "BluetoothAdapterService"

    const-string/jumbo v2, "getProfileConnectedDevice - Not allowed for non-active user"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    :cond_0
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v3

    :cond_1
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/btservice/AdapterService;->getProfileConnectedDevice(I)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    return-object v1
.end method

.method public getProfileConnectionState(I)I
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->mService:Lcom/android/bluetooth/btservice/AdapterService;

    invoke-static {v1}, Lcom/android/bluetooth/Utils;->checkCallerAllowManagedProfiles(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "BluetoothAdapterService"

    const-string/jumbo v2, "getProfileConnectionState- Not allowed for non-active user"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_0
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    if-nez v0, :cond_1

    return v3

    :cond_1
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/btservice/AdapterService;->getProfileConnectionState(I)I

    move-result v1

    return v1
.end method

.method public getRemoteAlias(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->mService:Lcom/android/bluetooth/btservice/AdapterService;

    invoke-static {v1}, Lcom/android/bluetooth/Utils;->checkCallerAllowManagedProfiles(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "BluetoothAdapterService"

    const-string/jumbo v2, "getRemoteAlias() - Not allowed for non-active user"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    :cond_0
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v3

    :cond_1
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/btservice/AdapterService;->getRemoteAlias(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getRemoteAppearance(Landroid/bluetooth/BluetoothDevice;)I
    .locals 2

    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/btservice/AdapterService;->getRemoteAppearance(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    return v1
.end method

.method public getRemoteClass(Landroid/bluetooth/BluetoothDevice;)I
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->mService:Lcom/android/bluetooth/btservice/AdapterService;

    invoke-static {v1}, Lcom/android/bluetooth/Utils;->checkCallerAllowManagedProfiles(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "BluetoothAdapterService"

    const-string/jumbo v2, "getRemoteClass() - Not allowed for non-active user"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_0
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    if-nez v0, :cond_1

    return v3

    :cond_1
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/btservice/AdapterService;->getRemoteClass(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    return v1
.end method

.method public getRemoteManufacturerData(Landroid/bluetooth/BluetoothDevice;)[B
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/btservice/AdapterService;->getRemoteManufacturerData(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v1

    return-object v1
.end method

.method public getRemoteName(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->mService:Lcom/android/bluetooth/btservice/AdapterService;

    invoke-static {v1}, Lcom/android/bluetooth/Utils;->checkCallerAllowManagedProfiles(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "BluetoothAdapterService"

    const-string/jumbo v2, "getRemoteName() - Not allowed for non-active user"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    :cond_0
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v3

    :cond_1
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/btservice/AdapterService;->getRemoteName(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getRemoteType(Landroid/bluetooth/BluetoothDevice;)I
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->mService:Lcom/android/bluetooth/btservice/AdapterService;

    invoke-static {v1}, Lcom/android/bluetooth/Utils;->checkCallerAllowManagedProfiles(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "BluetoothAdapterService"

    const-string/jumbo v2, "getRemoteType() - Not allowed for non-active user"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_0
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    if-nez v0, :cond_1

    return v3

    :cond_1
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/btservice/AdapterService;->getRemoteType(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    return v1
.end method

.method public getRemoteUuids(Landroid/bluetooth/BluetoothDevice;)[Landroid/os/ParcelUuid;
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->mService:Lcom/android/bluetooth/btservice/AdapterService;

    invoke-static {v1}, Lcom/android/bluetooth/Utils;->checkCallerAllowManagedProfiles(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "BluetoothAdapterService"

    const-string/jumbo v2, "getRemoteUuids() - Not allowed for non-active user"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-array v1, v3, [Landroid/os/ParcelUuid;

    return-object v1

    :cond_0
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    if-nez v0, :cond_1

    new-array v1, v3, [Landroid/os/ParcelUuid;

    return-object v1

    :cond_1
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/btservice/AdapterService;->getRemoteUuids(Landroid/bluetooth/BluetoothDevice;)[Landroid/os/ParcelUuid;

    move-result-object v1

    return-object v1
.end method

.method public getScanMode()I
    .locals 4

    const/16 v3, 0x14

    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->mService:Lcom/android/bluetooth/btservice/AdapterService;

    invoke-static {v1}, Lcom/android/bluetooth/Utils;->checkCallerAllowManagedProfiles(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "BluetoothAdapterService"

    const-string/jumbo v2, "getScanMode() - Not allowed for non-active user"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_0
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    if-nez v0, :cond_1

    return v3

    :cond_1
    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterService;->getScanMode()I

    move-result v1

    return v1
.end method

.method public getService()Lcom/android/bluetooth/btservice/AdapterService;
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->mService:Lcom/android/bluetooth/btservice/AdapterService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->mService:Lcom/android/bluetooth/btservice/AdapterService;

    invoke-static {v0}, Lcom/android/bluetooth/btservice/AdapterService;->-wrap3(Lcom/android/bluetooth/btservice/AdapterService;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->mService:Lcom/android/bluetooth/btservice/AdapterService;

    return-object v0

    :cond_0
    return-object v1
.end method

.method public getSimAccessPermission(Landroid/bluetooth/BluetoothDevice;)I
    .locals 4

    const/4 v3, 0x0

    invoke-static {}, Lcom/android/bluetooth/Utils;->checkCaller()Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "BluetoothAdapterService"

    const-string/jumbo v2, "getSimAccessPermission() - Not allowed for non-active user"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_0
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    if-nez v0, :cond_1

    return v3

    :cond_1
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/btservice/AdapterService;->getSimAccessPermission(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    return v1
.end method

.method public getState()I
    .locals 2

    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    if-nez v0, :cond_0

    const/16 v1, 0xa

    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterService;->getState()I

    move-result v1

    return v1
.end method

.method public getTxPowerPath()Z
    .locals 4

    const/4 v3, 0x0

    invoke-static {}, Lcom/android/bluetooth/Utils;->checkCaller()Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "BluetoothAdapterService"

    const-string/jumbo v2, "getTxPowerPath(): not allowed for non-active user"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_0
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    if-nez v0, :cond_1

    return v3

    :cond_1
    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterService;->getTxPowerPath()Z

    move-result v1

    return v1
.end method

.method public getUuids()[Landroid/os/ParcelUuid;
    .locals 4

    const/4 v3, 0x0

    invoke-static {}, Lcom/android/bluetooth/Utils;->checkCaller()Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "BluetoothAdapterService"

    const-string/jumbo v2, "getUuids() - Not allowed for non-active user"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-array v1, v3, [Landroid/os/ParcelUuid;

    return-object v1

    :cond_0
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    if-nez v0, :cond_1

    new-array v1, v3, [Landroid/os/ParcelUuid;

    return-object v1

    :cond_1
    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterService;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v1

    return-object v1
.end method

.method public isActivityAndEnergyReportingSupported()Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    invoke-static {v0}, Lcom/android/bluetooth/btservice/AdapterService;->-wrap2(Lcom/android/bluetooth/btservice/AdapterService;)Z

    move-result v1

    return v1
.end method

.method public isBLEAutoconnectSupport()I
    .locals 2

    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, -0x1

    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterService;->isBLEAutoconnectSupport()I

    move-result v1

    return v1
.end method

.method public isDiscovering()Z
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->mService:Lcom/android/bluetooth/btservice/AdapterService;

    invoke-static {v1}, Lcom/android/bluetooth/Utils;->checkCallerAllowManagedProfiles(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "BluetoothAdapterService"

    const-string/jumbo v2, "isDiscovering() - Not allowed for non-active user"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_0
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    if-nez v0, :cond_1

    return v3

    :cond_1
    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterService;->isDiscovering()Z

    move-result v1

    return v1
.end method

.method public isEnabled()Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterService;->isEnabled()Z

    move-result v1

    return v1
.end method

.method public isMultiAdvertisementSupported()Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterService;->isMultiAdvertisementSupported()Z

    move-result v1

    return v1
.end method

.method public isOffloadedFilteringSupported()Z
    .locals 4

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    if-nez v0, :cond_0

    return v2

    :cond_0
    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterService;->getNumOfOffloadedScanFilterSupported()I

    move-result v1

    const/16 v3, 0xa

    if-lt v1, v3, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2
.end method

.method public isOffloadedScanBatchingSupported()Z
    .locals 4

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    if-nez v0, :cond_0

    return v2

    :cond_0
    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterService;->getOffloadedScanResultStorage()I

    move-result v1

    const/16 v3, 0x400

    if-lt v1, v3, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2
.end method

.method public isPeripheralModeSupported()Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterService;->isPeripheralModeSupported()Z

    move-result v1

    return v1
.end method

.method public isProfileStarted(Ljava/lang/String;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/btservice/AdapterService;->isProfileStarted(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public isSecureModeEnabled()Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterService;->isSecureModeEnabled()Z

    move-result v1

    return v1
.end method

.method public leTestMode(IIII)Z
    .locals 4

    const/4 v3, 0x0

    invoke-static {}, Lcom/android/bluetooth/Utils;->checkCaller()Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "BluetoothAdapterService"

    const-string/jumbo v2, "leTestMode(): not allowed for non-active user"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_0
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    if-nez v0, :cond_1

    return v3

    :cond_1
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/bluetooth/btservice/AdapterService;->leTestMode(IIII)Z

    move-result v1

    return v1
.end method

.method public onBrEdrDown()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterService;->onBrEdrDown()V

    return-void
.end method

.method public onLeServiceUp()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterService;->onLeServiceUp()V

    return-void
.end method

.method public onLeServiceUpQuietMode()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterService;->onLeServiceUpQuietMode()V

    return-void
.end method

.method public registerCallback(Landroid/bluetooth/IBluetoothCallback;)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/btservice/AdapterService;->registerCallback(Landroid/bluetooth/IBluetoothCallback;)V

    return-void
.end method

.method public removeBond(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 5

    const/4 v4, 0x0

    const-string/jumbo v1, "BluetoothAdapterService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "removeBond : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddressForLog()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/bluetooth/Utils;->checkCaller()Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "BluetoothAdapterService"

    const-string/jumbo v2, "removeBond() - Not allowed for non-active user"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_0
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    if-nez v0, :cond_1

    const-string/jumbo v1, "BluetoothAdapterService"

    const-string/jumbo v2, "removeBond() : service is null for remove bond"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_1
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/btservice/AdapterService;->removeBond(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    return v1
.end method

.method public reportActivityInfo()Landroid/bluetooth/BluetoothActivityEnergyInfo;
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-static {v0}, Lcom/android/bluetooth/btservice/AdapterService;->-wrap0(Lcom/android/bluetooth/btservice/AdapterService;)Landroid/bluetooth/BluetoothActivityEnergyInfo;

    move-result-object v1

    return-object v1
.end method

.method public requestActivityInfo(Landroid/os/ResultReceiver;)V
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "controller_activity"

    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->reportActivityInfo()Landroid/bluetooth/BluetoothActivityEnergyInfo;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    return-void
.end method

.method public sdpSearch(Landroid/bluetooth/BluetoothDevice;Landroid/os/ParcelUuid;)Z
    .locals 4

    const/4 v3, 0x0

    invoke-static {}, Lcom/android/bluetooth/Utils;->checkCaller()Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "BluetoothAdapterService"

    const-string/jumbo v2, "sdpSea(): not allowed for non-active user"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_0
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    if-nez v0, :cond_1

    return v3

    :cond_1
    invoke-virtual {v0, p1, p2}, Lcom/android/bluetooth/btservice/AdapterService;->sdpSearch(Landroid/bluetooth/BluetoothDevice;Landroid/os/ParcelUuid;)Z

    move-result v1

    return v1
.end method

.method public selectstream(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/btservice/AdapterService;->selectstream(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    return v1
.end method

.method public semClearBleAutoConnection()V
    .locals 3

    invoke-static {}, Lcom/android/bluetooth/btservice/AdapterService;->-get0()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "BluetoothAdapterService"

    const-string/jumbo v2, "semClearBleAutoConnection"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterService;->semClearBleAutoConnection()V

    return-void
.end method

.method public semIsScmstSupported()Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterService;->semIsScmstSupported()Z

    move-result v1

    return v1
.end method

.method public semIsSinkServiceSupported()Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterService;->semIsSinkServiceSupported()Z

    move-result v1

    return v1
.end method

.method public semMonitorRssi(Landroid/bluetooth/BluetoothDevice;III)Z
    .locals 4

    const/4 v3, 0x0

    invoke-static {}, Lcom/android/bluetooth/Utils;->checkCaller()Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "BluetoothAdapterService"

    const-string/jumbo v2, "semMonitorRssi(): not allowed for non-active user"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_0
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    if-nez v0, :cond_1

    return v3

    :cond_1
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/bluetooth/btservice/AdapterService;->semMonitorRssi(Landroid/bluetooth/BluetoothDevice;III)Z

    move-result v1

    return v1
.end method

.method public semReadRssi(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 4

    const/4 v3, 0x0

    invoke-static {}, Lcom/android/bluetooth/Utils;->checkCaller()Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "BluetoothAdapterService"

    const-string/jumbo v2, "semReadRssi(): not allowed for non-active user"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_0
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    if-nez v0, :cond_1

    return v3

    :cond_1
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/btservice/AdapterService;->semReadRssi(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    return v1
.end method

.method public semSetBleConnectionScanParameter(II)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string/jumbo v1, "BluetoothAdapterService semSetBleConnectionScanParameter "

    invoke-static {v1}, Landroid/bluetooth/BluetoothDump;->BtLog(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[1007]{0017}(21::"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")(22::"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/BluetoothDump;->BtLog(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Lcom/android/bluetooth/btservice/AdapterService;->semSetBleConnectionScanParameter(II)V

    return-void
.end method

.method public sendCallerInfo(Ljava/lang/String;Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/android/bluetooth/btservice/AdapterService;->sendCallerInfo(Ljava/lang/String;Z)V

    return-void
.end method

.method public sendConnectionStateChange(Landroid/bluetooth/BluetoothDevice;III)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/bluetooth/btservice/AdapterService;->sendConnectionStateChange(Landroid/bluetooth/BluetoothDevice;III)V

    return-void
.end method

.method public sendRawHci(I[BI)I
    .locals 4

    const/4 v3, 0x0

    invoke-static {}, Lcom/android/bluetooth/Utils;->checkCaller()Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "BluetoothAdapterService"

    const-string/jumbo v2, "sendRawHci(): not allowed for non-active user"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_0
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    if-nez v0, :cond_1

    return v3

    :cond_1
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/bluetooth/btservice/AdapterService;->sendRawHci(I[BI)I

    move-result v1

    return v1
.end method

.method public setDiscoverableTimeout(I)Z
    .locals 4

    const/4 v3, 0x0

    invoke-static {}, Lcom/android/bluetooth/Utils;->checkCaller()Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "BluetoothAdapterService"

    const-string/jumbo v2, "setDiscoverableTimeout() - Not allowed for non-active user"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_0
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    if-nez v0, :cond_1

    return v3

    :cond_1
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/btservice/AdapterService;->setDiscoverableTimeout(I)Z

    move-result v1

    return v1
.end method

.method public setEdrRxFrequency(I)Z
    .locals 4

    const/4 v3, 0x0

    invoke-static {}, Lcom/android/bluetooth/Utils;->checkCaller()Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "BluetoothAdapterService"

    const-string/jumbo v2, "setEdrRxFrequency(): not allowed for non-active user"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_0
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    if-nez v0, :cond_1

    return v3

    :cond_1
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/btservice/AdapterService;->setEdrRxFrequency(I)Z

    move-result v1

    return v1
.end method

.method public setEdrTestEnd()Z
    .locals 4

    const/4 v3, 0x0

    invoke-static {}, Lcom/android/bluetooth/Utils;->checkCaller()Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "BluetoothAdapterService"

    const-string/jumbo v2, "setEdrTestEnd(): not allowed for non-active user"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_0
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    if-nez v0, :cond_1

    return v3

    :cond_1
    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterService;->setEdrTestEnd()Z

    move-result v1

    return v1
.end method

.method public setEdrTxFrequency(II)Z
    .locals 4

    const/4 v3, 0x0

    invoke-static {}, Lcom/android/bluetooth/Utils;->checkCaller()Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "BluetoothAdapterService"

    const-string/jumbo v2, "setEdrTxFrequency(): not allowed for non-active user"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_0
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    if-nez v0, :cond_1

    return v3

    :cond_1
    invoke-virtual {v0, p1, p2}, Lcom/android/bluetooth/btservice/AdapterService;->setEdrTxFrequency(II)Z

    move-result v1

    return v1
.end method

.method public setManufacturerData()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterService;->setManufacturerData()V

    return-void
.end method

.method public setMessageAccessPermission(Landroid/bluetooth/BluetoothDevice;I)Z
    .locals 4

    const/4 v3, 0x0

    invoke-static {}, Lcom/android/bluetooth/Utils;->checkCaller()Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "BluetoothAdapterService"

    const-string/jumbo v2, "setMessageAccessPermission() - Not allowed for non-active user"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_0
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    if-nez v0, :cond_1

    return v3

    :cond_1
    invoke-virtual {v0, p1, p2}, Lcom/android/bluetooth/btservice/AdapterService;->setMessageAccessPermission(Landroid/bluetooth/BluetoothDevice;I)Z

    move-result v1

    return v1
.end method

.method public setName(Ljava/lang/String;)Z
    .locals 4

    const/4 v3, 0x0

    invoke-static {}, Lcom/android/bluetooth/Utils;->checkCaller()Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "BluetoothAdapterService"

    const-string/jumbo v2, "setName() - Not allowed for non-active user"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_0
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    if-nez v0, :cond_1

    return v3

    :cond_1
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/btservice/AdapterService;->setName(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public setPairingConfirmation(Landroid/bluetooth/BluetoothDevice;Z)Z
    .locals 4

    const/4 v3, 0x0

    invoke-static {}, Lcom/android/bluetooth/Utils;->checkCaller()Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "BluetoothAdapterService"

    const-string/jumbo v2, "setPairingConfirmation() - Not allowed for non-active user"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_0
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    if-nez v0, :cond_1

    return v3

    :cond_1
    invoke-virtual {v0, p1, p2}, Lcom/android/bluetooth/btservice/AdapterService;->setPairingConfirmation(Landroid/bluetooth/BluetoothDevice;Z)Z

    move-result v1

    return v1
.end method

.method public setPasskey(Landroid/bluetooth/BluetoothDevice;ZI[B)Z
    .locals 4

    const/4 v3, 0x0

    invoke-static {}, Lcom/android/bluetooth/Utils;->checkCaller()Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "BluetoothAdapterService"

    const-string/jumbo v2, "setPasskey() - Not allowed for non-active user"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_0
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    if-nez v0, :cond_1

    return v3

    :cond_1
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/bluetooth/btservice/AdapterService;->setPasskey(Landroid/bluetooth/BluetoothDevice;ZI[B)Z

    move-result v1

    return v1
.end method

.method public setPhonebookAccessPermission(Landroid/bluetooth/BluetoothDevice;I)Z
    .locals 4

    const/4 v3, 0x0

    invoke-static {}, Lcom/android/bluetooth/Utils;->checkCaller()Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "BluetoothAdapterService"

    const-string/jumbo v2, "setPhonebookAccessPermission() - Not allowed for non-active user"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_0
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    if-nez v0, :cond_1

    return v3

    :cond_1
    invoke-virtual {v0, p1, p2}, Lcom/android/bluetooth/btservice/AdapterService;->setPhonebookAccessPermission(Landroid/bluetooth/BluetoothDevice;I)Z

    move-result v1

    return v1
.end method

.method public setPin(Landroid/bluetooth/BluetoothDevice;ZI[B)Z
    .locals 4

    const/4 v3, 0x0

    invoke-static {}, Lcom/android/bluetooth/Utils;->checkCaller()Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "BluetoothAdapterService"

    const-string/jumbo v2, "setPin() - Not allowed for non-active user"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_0
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    if-nez v0, :cond_1

    return v3

    :cond_1
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/bluetooth/btservice/AdapterService;->setPin(Landroid/bluetooth/BluetoothDevice;ZI[B)Z

    move-result v1

    return v1
.end method

.method public setRPAGeneration(Z)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "BluetoothAdapterService setRPAGeneration "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/BluetoothDump;->BtLog(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/btservice/AdapterService;->setRPAGeneration(Z)V

    return-void
.end method

.method public setRemoteAlias(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)Z
    .locals 4

    const/4 v3, 0x0

    invoke-static {}, Lcom/android/bluetooth/Utils;->checkCaller()Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "BluetoothAdapterService"

    const-string/jumbo v2, "setRemoteAlias() - Not allowed for non-active user"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_0
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    if-nez v0, :cond_1

    return v3

    :cond_1
    invoke-virtual {v0, p1, p2}, Lcom/android/bluetooth/btservice/AdapterService;->setRemoteAlias(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public setRemoteClass(Landroid/bluetooth/BluetoothDevice;I)Z
    .locals 4

    const/4 v3, 0x0

    invoke-static {}, Lcom/android/bluetooth/Utils;->checkCaller()Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "BluetoothAdapterService"

    const-string/jumbo v2, "setRemoteClass(): not allowed for non-active user"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_0
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    if-nez v0, :cond_1

    return v3

    :cond_1
    invoke-virtual {v0, p1, p2}, Lcom/android/bluetooth/btservice/AdapterService;->setRemoteClass(Landroid/bluetooth/BluetoothDevice;I)Z

    move-result v1

    return v1
.end method

.method public setRemoteManufacturerData(Landroid/bluetooth/BluetoothDevice;[B)Z
    .locals 4

    const/4 v3, 0x0

    invoke-static {}, Lcom/android/bluetooth/Utils;->checkCaller()Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "BluetoothAdapterService"

    const-string/jumbo v2, "setRemoteManufacturerData(): not allowed for non-active user"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_0
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    if-nez v0, :cond_1

    return v3

    :cond_1
    invoke-virtual {v0, p1, p2}, Lcom/android/bluetooth/btservice/AdapterService;->setRemoteManufacturerData(Landroid/bluetooth/BluetoothDevice;[B)Z

    move-result v1

    return v1
.end method

.method public setRfcommConnected(Landroid/bluetooth/BluetoothDevice;Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/android/bluetooth/btservice/AdapterService;->setRfcommConnected(Landroid/bluetooth/BluetoothDevice;Z)V

    return-void
.end method

.method public setScanMode(II)Z
    .locals 4

    const/4 v3, 0x0

    invoke-static {}, Lcom/android/bluetooth/Utils;->checkCaller()Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "BluetoothAdapterService"

    const-string/jumbo v2, "setScanMode() - Not allowed for non-active user"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_0
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    if-nez v0, :cond_1

    return v3

    :cond_1
    invoke-virtual {v0, p1, p2}, Lcom/android/bluetooth/btservice/AdapterService;->setScanMode(II)Z

    move-result v1

    return v1
.end method

.method public setSimAccessPermission(Landroid/bluetooth/BluetoothDevice;I)Z
    .locals 4

    const/4 v3, 0x0

    invoke-static {}, Lcom/android/bluetooth/Utils;->checkCaller()Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "BluetoothAdapterService"

    const-string/jumbo v2, "setSimAccessPermission() - Not allowed for non-active user"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_0
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    if-nez v0, :cond_1

    return v3

    :cond_1
    invoke-virtual {v0, p1, p2}, Lcom/android/bluetooth/btservice/AdapterService;->setSimAccessPermission(Landroid/bluetooth/BluetoothDevice;I)Z

    move-result v1

    return v1
.end method

.method public setTxPowerPath(I)Z
    .locals 4

    const/4 v3, 0x0

    invoke-static {}, Lcom/android/bluetooth/Utils;->checkCaller()Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "BluetoothAdapterService"

    const-string/jumbo v2, "setTxPowerPath(): not allowed for non-active user"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_0
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    if-nez v0, :cond_1

    return v3

    :cond_1
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/btservice/AdapterService;->setTxPowerPath(I)Z

    move-result v1

    return v1
.end method

.method public sspDebugConfigure(Z)Z
    .locals 4

    const/4 v3, 0x0

    invoke-static {}, Lcom/android/bluetooth/Utils;->checkCaller()Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "BluetoothAdapterService"

    const-string/jumbo v2, "sspDebugConfigure(): not allowed for non-active user"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_0
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    if-nez v0, :cond_1

    return v3

    :cond_1
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/btservice/AdapterService;->sspDebugConfigure(Z)Z

    move-result v1

    return v1
.end method

.method public startDiscovery()Z
    .locals 5

    invoke-static {}, Lcom/android/bluetooth/Utils;->checkCaller()Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "BluetoothAdapterService"

    const-string/jumbo v3, "startDiscovery() - Not allowed for non-active user"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    return v2

    :cond_0
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v1

    const/4 v0, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/bluetooth/btservice/AdapterService;->startDiscovery()Z

    move-result v0

    const-string/jumbo v2, "BluetoothAdapterService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startDiscovery = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0

    :cond_1
    const-string/jumbo v2, "BluetoothAdapterService"

    const-string/jumbo v3, "startDiscovery, service is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public unregisterCallback(Landroid/bluetooth/IBluetoothCallback;)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/btservice/AdapterService;->unregisterCallback(Landroid/bluetooth/IBluetoothCallback;)V

    return-void
.end method
