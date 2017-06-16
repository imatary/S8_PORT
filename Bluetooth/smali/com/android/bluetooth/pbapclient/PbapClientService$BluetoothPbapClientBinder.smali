.class Lcom/android/bluetooth/pbapclient/PbapClientService$BluetoothPbapClientBinder;
.super Landroid/bluetooth/IBluetoothPbapClient$Stub;
.source "PbapClientService.java"

# interfaces
.implements Lcom/android/bluetooth/btservice/ProfileService$IProfileServiceBinder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/pbapclient/PbapClientService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BluetoothPbapClientBinder"
.end annotation


# instance fields
.field private mService:Lcom/android/bluetooth/pbapclient/PbapClientService;


# direct methods
.method public constructor <init>(Lcom/android/bluetooth/pbapclient/PbapClientService;)V
    .locals 0

    invoke-direct {p0}, Landroid/bluetooth/IBluetoothPbapClient$Stub;-><init>()V

    iput-object p1, p0, Lcom/android/bluetooth/pbapclient/PbapClientService$BluetoothPbapClientBinder;->mService:Lcom/android/bluetooth/pbapclient/PbapClientService;

    return-void
.end method

.method private getService()Lcom/android/bluetooth/pbapclient/PbapClientService;
    .locals 3

    const/4 v2, 0x0

    invoke-static {}, Lcom/android/bluetooth/Utils;->checkCaller()Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "PbapClientService"

    const-string/jumbo v1, "PbapClient call not allowed for non-active user"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/pbapclient/PbapClientService$BluetoothPbapClientBinder;->mService:Lcom/android/bluetooth/pbapclient/PbapClientService;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/bluetooth/pbapclient/PbapClientService$BluetoothPbapClientBinder;->mService:Lcom/android/bluetooth/pbapclient/PbapClientService;

    invoke-static {v0}, Lcom/android/bluetooth/pbapclient/PbapClientService;->-wrap0(Lcom/android/bluetooth/pbapclient/PbapClientService;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/bluetooth/pbapclient/PbapClientService$BluetoothPbapClientBinder;->mService:Lcom/android/bluetooth/pbapclient/PbapClientService;

    return-object v0

    :cond_1
    return-object v2
.end method


# virtual methods
.method public cleanup()Z
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/pbapclient/PbapClientService$BluetoothPbapClientBinder;->mService:Lcom/android/bluetooth/pbapclient/PbapClientService;

    const/4 v0, 0x1

    return v0
.end method

.method public connect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2

    invoke-direct {p0}, Lcom/android/bluetooth/pbapclient/PbapClientService$BluetoothPbapClientBinder;->getService()Lcom/android/bluetooth/pbapclient/PbapClientService;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/pbapclient/PbapClientService;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    return v1
.end method

.method public disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2

    invoke-direct {p0}, Lcom/android/bluetooth/pbapclient/PbapClientService$BluetoothPbapClientBinder;->getService()Lcom/android/bluetooth/pbapclient/PbapClientService;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/pbapclient/PbapClientService;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

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

    invoke-direct {p0}, Lcom/android/bluetooth/pbapclient/PbapClientService$BluetoothPbapClientBinder;->getService()Lcom/android/bluetooth/pbapclient/PbapClientService;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/bluetooth/pbapclient/PbapClientService;->getConnectedDevices()Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public getConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    .locals 2

    invoke-direct {p0}, Lcom/android/bluetooth/pbapclient/PbapClientService$BluetoothPbapClientBinder;->getService()Lcom/android/bluetooth/pbapclient/PbapClientService;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/pbapclient/PbapClientService;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

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

    invoke-direct {p0}, Lcom/android/bluetooth/pbapclient/PbapClientService$BluetoothPbapClientBinder;->getService()Lcom/android/bluetooth/pbapclient/PbapClientService;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    return-object v1

    :cond_0
    invoke-static {v0, p1}, Lcom/android/bluetooth/pbapclient/PbapClientService;->-wrap1(Lcom/android/bluetooth/pbapclient/PbapClientService;[I)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public getPriority(Landroid/bluetooth/BluetoothDevice;)I
    .locals 2

    invoke-direct {p0}, Lcom/android/bluetooth/pbapclient/PbapClientService$BluetoothPbapClientBinder;->getService()Lcom/android/bluetooth/pbapclient/PbapClientService;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, -0x1

    return v1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/pbapclient/PbapClientService;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    return v1
.end method

.method public setPriority(Landroid/bluetooth/BluetoothDevice;I)Z
    .locals 2

    invoke-direct {p0}, Lcom/android/bluetooth/pbapclient/PbapClientService$BluetoothPbapClientBinder;->getService()Lcom/android/bluetooth/pbapclient/PbapClientService;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/android/bluetooth/pbapclient/PbapClientService;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    move-result v1

    return v1
.end method
