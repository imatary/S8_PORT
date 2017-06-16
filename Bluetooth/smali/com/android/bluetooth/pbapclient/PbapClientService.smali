.class public Lcom/android/bluetooth/pbapclient/PbapClientService;
.super Lcom/android/bluetooth/btservice/ProfileService;
.source "PbapClientService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/pbapclient/PbapClientService$BluetoothPbapClientBinder;,
        Lcom/android/bluetooth/pbapclient/PbapClientService$PbapBroadcastReceiver;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "PbapClientService"

.field private static sPbapClientService:Lcom/android/bluetooth/pbapclient/PbapClientService;


# instance fields
.field private mAccountManager:Landroid/accounts/AccountManager;

.field private mClient:Lcom/android/bluetooth/pbapclient/PbapPCEClient;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mPbapBroadcastReceiver:Lcom/android/bluetooth/pbapclient/PbapClientService$PbapBroadcastReceiver;


# direct methods
.method static synthetic -wrap0(Lcom/android/bluetooth/pbapclient/PbapClientService;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/bluetooth/pbapclient/PbapClientService;->isAvailable()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/bluetooth/pbapclient/PbapClientService;[I)Ljava/util/List;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/bluetooth/pbapclient/PbapClientService;->getDevicesMatchingConnectionStates([I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/android/bluetooth/btservice/ProfileService;-><init>()V

    new-instance v0, Lcom/android/bluetooth/pbapclient/PbapClientService$PbapBroadcastReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/bluetooth/pbapclient/PbapClientService$PbapBroadcastReceiver;-><init>(Lcom/android/bluetooth/pbapclient/PbapClientService;Lcom/android/bluetooth/pbapclient/PbapClientService$PbapBroadcastReceiver;)V

    iput-object v0, p0, Lcom/android/bluetooth/pbapclient/PbapClientService;->mPbapBroadcastReceiver:Lcom/android/bluetooth/pbapclient/PbapClientService$PbapBroadcastReceiver;

    return-void
.end method

.method private static declared-synchronized clearPbapClientService()V
    .locals 2

    const-class v0, Lcom/android/bluetooth/pbapclient/PbapClientService;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    sput-object v1, Lcom/android/bluetooth/pbapclient/PbapClientService;->sPbapClientService:Lcom/android/bluetooth/pbapclient/PbapClientService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private getDevicesMatchingConnectionStates([I)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    const-string/jumbo v4, "android.permission.BLUETOOTH"

    const-string/jumbo v5, "Need BLUETOOTH permission"

    invoke-virtual {p0, v4, v5}, Lcom/android/bluetooth/pbapclient/PbapClientService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/bluetooth/pbapclient/PbapClientService;->mClient:Lcom/android/bluetooth/pbapclient/PbapPCEClient;

    invoke-virtual {v4}, Lcom/android/bluetooth/pbapclient/PbapPCEClient;->getConnectionState()I

    move-result v0

    const-string/jumbo v4, "PbapClientService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getDevicesMatchingConnectionStates "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " == "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    array-length v5, p1

    :goto_0
    if-ge v4, v5, :cond_1

    aget v3, p1, v4

    if-ne v0, v3, :cond_0

    iget-object v6, p0, Lcom/android/bluetooth/pbapclient/PbapClientService;->mClient:Lcom/android/bluetooth/pbapclient/PbapPCEClient;

    invoke-virtual {v6}, Lcom/android/bluetooth/pbapclient/PbapPCEClient;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return-object v2
.end method

.method public static declared-synchronized getPbapClientService()Lcom/android/bluetooth/pbapclient/PbapClientService;
    .locals 3

    const/4 v2, 0x0

    const-class v1, Lcom/android/bluetooth/pbapclient/PbapClientService;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/bluetooth/pbapclient/PbapClientService;->sPbapClientService:Lcom/android/bluetooth/pbapclient/PbapClientService;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/bluetooth/pbapclient/PbapClientService;->sPbapClientService:Lcom/android/bluetooth/pbapclient/PbapClientService;

    invoke-virtual {v0}, Lcom/android/bluetooth/pbapclient/PbapClientService;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/bluetooth/pbapclient/PbapClientService;->sPbapClientService:Lcom/android/bluetooth/pbapclient/PbapClientService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :cond_0
    monitor-exit v1

    return-object v2

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static declared-synchronized setPbapClientService(Lcom/android/bluetooth/pbapclient/PbapClientService;)V
    .locals 2

    const-class v1, Lcom/android/bluetooth/pbapclient/PbapClientService;

    monitor-enter v1

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/bluetooth/pbapclient/PbapClientService;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    sput-object p0, Lcom/android/bluetooth/pbapclient/PbapClientService;->sPbapClientService:Lcom/android/bluetooth/pbapclient/PbapClientService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method protected cleanup()Z
    .locals 1

    invoke-static {}, Lcom/android/bluetooth/pbapclient/PbapClientService;->clearPbapClientService()V

    const/4 v0, 0x1

    return v0
.end method

.method public connect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string/jumbo v1, "android.permission.BLUETOOTH_ADMIN"

    const-string/jumbo v2, "Need BLUETOOTH ADMIN permission"

    invoke-virtual {p0, v1, v2}, Lcom/android/bluetooth/pbapclient/PbapClientService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "PbapClientService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Received request to ConnectPBAPPhonebook "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/bluetooth/pbapclient/PbapClientService;->mClient:Lcom/android/bluetooth/pbapclient/PbapPCEClient;

    invoke-virtual {v1}, Lcom/android/bluetooth/pbapclient/PbapPCEClient;->getConnectionState()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    if-ne v0, v5, :cond_1

    :cond_0
    return v4

    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/pbapclient/PbapClientService;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    if-lez v1, :cond_2

    iget-object v1, p0, Lcom/android/bluetooth/pbapclient/PbapClientService;->mClient:Lcom/android/bluetooth/pbapclient/PbapPCEClient;

    invoke-virtual {v1, p1}, Lcom/android/bluetooth/pbapclient/PbapPCEClient;->connect(Landroid/bluetooth/BluetoothDevice;)V

    return v5

    :cond_2
    return v4
.end method

.method disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2

    const-string/jumbo v0, "android.permission.BLUETOOTH_ADMIN"

    const-string/jumbo v1, "Need BLUETOOTH ADMIN permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/pbapclient/PbapClientService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/bluetooth/pbapclient/PbapClientService;->mClient:Lcom/android/bluetooth/pbapclient/PbapPCEClient;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/pbapclient/PbapPCEClient;->disconnect(Landroid/bluetooth/BluetoothDevice;)V

    const/4 v0, 0x1

    return v0
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

    const-string/jumbo v1, "android.permission.BLUETOOTH"

    const-string/jumbo v2, "Need BLUETOOTH permission"

    invoke-virtual {p0, v1, v2}, Lcom/android/bluetooth/pbapclient/PbapClientService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    new-array v0, v1, [I

    const/4 v1, 0x2

    const/4 v2, 0x0

    aput v1, v0, v2

    invoke-direct {p0, v0}, Lcom/android/bluetooth/pbapclient/PbapClientService;->getDevicesMatchingConnectionStates([I)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method getConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    .locals 2

    const-string/jumbo v0, "android.permission.BLUETOOTH"

    const-string/jumbo v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/pbapclient/PbapClientService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/bluetooth/pbapclient/PbapClientService;->mClient:Lcom/android/bluetooth/pbapclient/PbapPCEClient;

    invoke-virtual {v0}, Lcom/android/bluetooth/pbapclient/PbapPCEClient;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/bluetooth/pbapclient/PbapClientService;->mClient:Lcom/android/bluetooth/pbapclient/PbapPCEClient;

    invoke-virtual {v0}, Lcom/android/bluetooth/pbapclient/PbapPCEClient;->getConnectionState()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected getName()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "PbapClientService"

    return-object v0
.end method

.method public getPriority(Landroid/bluetooth/BluetoothDevice;)I
    .locals 4

    const-string/jumbo v1, "android.permission.BLUETOOTH_ADMIN"

    const-string/jumbo v2, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {p0, v1, v2}, Lcom/android/bluetooth/pbapclient/PbapClientService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/bluetooth/pbapclient/PbapClientService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/provider/Settings$Global;->getBluetoothPbapClientPriorityKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public initBinder()Lcom/android/bluetooth/btservice/ProfileService$IProfileServiceBinder;
    .locals 1

    new-instance v0, Lcom/android/bluetooth/pbapclient/PbapClientService$BluetoothPbapClientBinder;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/pbapclient/PbapClientService$BluetoothPbapClientBinder;-><init>(Lcom/android/bluetooth/pbapclient/PbapClientService;)V

    return-object v0
.end method

.method public setPriority(Landroid/bluetooth/BluetoothDevice;I)Z
    .locals 2

    const-string/jumbo v0, "android.permission.BLUETOOTH_ADMIN"

    const-string/jumbo v1, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/pbapclient/PbapClientService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/bluetooth/pbapclient/PbapClientService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/provider/Settings$Global;->getBluetoothPbapClientPriorityKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/4 v0, 0x1

    return v0
.end method

.method protected start()Z
    .locals 4

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v2, "android.bluetooth.device.action.ACL_CONNECTED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :try_start_0
    iget-object v2, p0, Lcom/android/bluetooth/pbapclient/PbapClientService;->mPbapBroadcastReceiver:Lcom/android/bluetooth/pbapclient/PbapClientService$PbapBroadcastReceiver;

    invoke-virtual {p0, v2, v1}, Lcom/android/bluetooth/pbapclient/PbapClientService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance v2, Lcom/android/bluetooth/pbapclient/PbapPCEClient;

    invoke-direct {v2, p0}, Lcom/android/bluetooth/pbapclient/PbapPCEClient;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/bluetooth/pbapclient/PbapClientService;->mClient:Lcom/android/bluetooth/pbapclient/PbapPCEClient;

    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/bluetooth/pbapclient/PbapClientService;->mAccountManager:Landroid/accounts/AccountManager;

    invoke-static {p0}, Lcom/android/bluetooth/pbapclient/PbapClientService;->setPbapClientService(Lcom/android/bluetooth/pbapclient/PbapClientService;)V

    iget-object v2, p0, Lcom/android/bluetooth/pbapclient/PbapClientService;->mClient:Lcom/android/bluetooth/pbapclient/PbapPCEClient;

    invoke-virtual {v2}, Lcom/android/bluetooth/pbapclient/PbapPCEClient;->start()V

    const/4 v2, 0x1

    return v2

    :catch_0
    move-exception v0

    const-string/jumbo v2, "PbapClientService"

    const-string/jumbo v3, "Unable to register pbapclient receiver"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected stop()Z
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/pbapclient/PbapClientService;->mPbapBroadcastReceiver:Lcom/android/bluetooth/pbapclient/PbapClientService$PbapBroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/pbapclient/PbapClientService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v1, p0, Lcom/android/bluetooth/pbapclient/PbapClientService;->mClient:Lcom/android/bluetooth/pbapclient/PbapPCEClient;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/bluetooth/pbapclient/PbapPCEClient;->disconnect(Landroid/bluetooth/BluetoothDevice;)V

    const/4 v1, 0x1

    return v1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "PbapClientService"

    const-string/jumbo v2, "Unable to unregister sap receiver"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
