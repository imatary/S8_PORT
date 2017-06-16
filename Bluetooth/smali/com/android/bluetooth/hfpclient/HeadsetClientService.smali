.class public Lcom/android/bluetooth/hfpclient/HeadsetClientService;
.super Lcom/android/bluetooth/btservice/ProfileService;
.source "HeadsetClientService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/hfpclient/HeadsetClientService$1;,
        Lcom/android/bluetooth/hfpclient/HeadsetClientService$BluetoothHeadsetClientBinder;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field public static HFP_CLIENT_STOP_TAG:Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "HeadsetClientService"

.field private static sHeadsetClientService:Lcom/android/bluetooth/hfpclient/HeadsetClientService;


# instance fields
.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mStateMachine:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;


# direct methods
.method static synthetic -get0(Lcom/android/bluetooth/hfpclient/HeadsetClientService;)Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->mStateMachine:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/bluetooth/hfpclient/HeadsetClientService;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->isAvailable()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/bluetooth/hfpclient/HeadsetClientService;[I)Ljava/util/List;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->getDevicesMatchingConnectionStates([I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "hfp_client_stop_tag"

    sput-object v0, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->HFP_CLIENT_STOP_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/bluetooth/btservice/ProfileService;-><init>()V

    new-instance v0, Lcom/android/bluetooth/hfpclient/HeadsetClientService$1;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientService$1;-><init>(Lcom/android/bluetooth/hfpclient/HeadsetClientService;)V

    iput-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private static declared-synchronized clearHeadsetClientService()V
    .locals 2

    const-class v0, Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    sput-object v1, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->sHeadsetClientService:Lcom/android/bluetooth/hfpclient/HeadsetClientService;
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

    const-string/jumbo v0, "android.permission.BLUETOOTH"

    const-string/jumbo v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->mStateMachine:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->getDevicesMatchingConnectionStates([I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized getHeadsetClientService()Lcom/android/bluetooth/hfpclient/HeadsetClientService;
    .locals 3

    const/4 v2, 0x0

    const-class v1, Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->sHeadsetClientService:Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->sHeadsetClientService:Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    invoke-virtual {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->sHeadsetClientService:Lcom/android/bluetooth/hfpclient/HeadsetClientService;
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

.method private static declared-synchronized setHeadsetClientService(Lcom/android/bluetooth/hfpclient/HeadsetClientService;)V
    .locals 2

    const-class v1, Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    monitor-enter v1

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    sput-object p0, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->sHeadsetClientService:Lcom/android/bluetooth/hfpclient/HeadsetClientService;
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
.method acceptCall(Landroid/bluetooth/BluetoothDevice;I)Z
    .locals 5

    const/4 v4, 0x1

    const-string/jumbo v2, "android.permission.BLUETOOTH"

    const-string/jumbo v3, "Need BLUETOOTH permission"

    invoke-virtual {p0, v2, v3}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->mStateMachine:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-virtual {v2, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    if-eq v0, v4, :cond_0

    const/4 v2, 0x0

    return v2

    :cond_0
    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->mStateMachine:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    const/16 v3, 0xc

    invoke-virtual {v2, v3}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iput p2, v1, Landroid/os/Message;->arg1:I

    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->mStateMachine:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-virtual {v2, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->sendMessage(Landroid/os/Message;)V

    return v4
.end method

.method acceptIncomingConnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected cleanup()Z
    .locals 2

    const-string/jumbo v0, "HeadsetClientService"

    const-string/jumbo v1, "cleanup"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->mStateMachine:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->mStateMachine:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-virtual {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->cleanup()V

    :cond_0
    invoke-static {}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->clearHeadsetClientService()V

    const/4 v0, 0x1

    return v0
.end method

.method public connect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 5

    const/4 v3, 0x1

    const/4 v4, 0x0

    const-string/jumbo v1, "android.permission.BLUETOOTH_ADMIN"

    const-string/jumbo v2, "Need BLUETOOTH ADMIN permission"

    invoke-virtual {p0, v1, v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0xf0

    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxVersionSupported(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/bluetooth/Utils;->isKnoxBluetoothEnabled(Landroid/content/Context;I)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "HeadsetClientService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "connect(): Bluetooth for KNOX blocked by MDM policy: userId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    if-nez v1, :cond_1

    return v4

    :cond_1
    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->mStateMachine:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-virtual {v1, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    if-ne v0, v3, :cond_3

    :cond_2
    return v4

    :cond_3
    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->mStateMachine:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-virtual {v1, v3, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->sendMessage(ILjava/lang/Object;)V

    return v3
.end method

.method connectAudio()Z
    .locals 3

    const/4 v2, 0x0

    const-string/jumbo v0, "android.permission.BLUETOOTH_ADMIN"

    const-string/jumbo v1, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->mStateMachine:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-virtual {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    return v2

    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->mStateMachine:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-virtual {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->isAudioOn()Z

    move-result v0

    if-eqz v0, :cond_1

    return v2

    :cond_1
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->mStateMachine:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->sendMessage(I)V

    const/4 v0, 0x1

    return v0
.end method

.method dial(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)Z
    .locals 5

    const/4 v4, 0x1

    const-string/jumbo v2, "android.permission.BLUETOOTH"

    const-string/jumbo v3, "Need BLUETOOTH permission"

    invoke-virtual {p0, v2, v3}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->mStateMachine:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-virtual {v2, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    if-eq v0, v4, :cond_0

    const/4 v2, 0x0

    return v2

    :cond_0
    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->mStateMachine:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iput-object p2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->mStateMachine:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-virtual {v2, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->sendMessage(Landroid/os/Message;)V

    return v4
.end method

.method dialMemory(Landroid/bluetooth/BluetoothDevice;I)Z
    .locals 5

    const/4 v4, 0x1

    const-string/jumbo v2, "android.permission.BLUETOOTH"

    const-string/jumbo v3, "Need BLUETOOTH permission"

    invoke-virtual {p0, v2, v3}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->mStateMachine:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-virtual {v2, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    if-eq v0, v4, :cond_0

    const/4 v2, 0x0

    return v2

    :cond_0
    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->mStateMachine:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    const/16 v3, 0xb

    invoke-virtual {v2, v3}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iput p2, v1, Landroid/os/Message;->arg1:I

    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->mStateMachine:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-virtual {v2, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->sendMessage(Landroid/os/Message;)V

    return v4
.end method

.method disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const-string/jumbo v1, "android.permission.BLUETOOTH_ADMIN"

    const-string/jumbo v2, "Need BLUETOOTH ADMIN permission"

    invoke-virtual {p0, v1, v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->mStateMachine:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-virtual {v1, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    if-eq v0, v4, :cond_0

    if-eq v0, v3, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->mStateMachine:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-virtual {v1, v4, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->sendMessage(ILjava/lang/Object;)V

    return v3
.end method

.method disconnectAudio()Z
    .locals 2

    const-string/jumbo v0, "android.permission.BLUETOOTH_ADMIN"

    const-string/jumbo v1, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->mStateMachine:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-virtual {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->isAudioOn()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->mStateMachine:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->sendMessage(I)V

    const/4 v0, 0x1

    return v0
.end method

.method public dump(Ljava/lang/StringBuilder;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/bluetooth/btservice/ProfileService;->dump(Ljava/lang/StringBuilder;)V

    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->mStateMachine:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->mStateMachine:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->dump(Ljava/lang/StringBuilder;)V

    :cond_0
    return-void
.end method

.method enterPrivateMode(Landroid/bluetooth/BluetoothDevice;I)Z
    .locals 5

    const/4 v4, 0x1

    const-string/jumbo v2, "android.permission.BLUETOOTH"

    const-string/jumbo v3, "Need BLUETOOTH permission"

    invoke-virtual {p0, v2, v3}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->mStateMachine:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-virtual {v2, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    if-eq v0, v4, :cond_0

    const/4 v2, 0x0

    return v2

    :cond_0
    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->mStateMachine:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iput p2, v1, Landroid/os/Message;->arg1:I

    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->mStateMachine:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-virtual {v2, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->sendMessage(Landroid/os/Message;)V

    return v4
.end method

.method public explicitCallTransfer(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 5

    const/4 v4, 0x1

    const-string/jumbo v2, "android.permission.BLUETOOTH"

    const-string/jumbo v3, "Need BLUETOOTH permission"

    invoke-virtual {p0, v2, v3}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->mStateMachine:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-virtual {v2, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    if-eq v0, v4, :cond_0

    const/4 v2, 0x0

    return v2

    :cond_0
    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->mStateMachine:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    const/16 v3, 0x12

    invoke-virtual {v2, v3}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->mStateMachine:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-virtual {v2, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->sendMessage(Landroid/os/Message;)V

    return v4
.end method

.method public getAudioRouteAllowed()Z
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->mStateMachine:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-virtual {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->getAudioRouteAllowed()Z

    move-result v0

    return v0
.end method

.method getAudioState(Landroid/bluetooth/BluetoothDevice;)I
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->mStateMachine:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->getAudioState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    return v0
.end method

.method public getCLCC()Z
    .locals 3

    const-string/jumbo v1, "android.permission.BLUETOOTH"

    const-string/jumbo v2, "Need BLUETOOTH permission"

    invoke-virtual {p0, v1, v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->mStateMachine:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-virtual {v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->isConnected()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->mStateMachine:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    const/16 v2, 0x32

    invoke-virtual {v1, v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->mStateMachine:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-virtual {v1, v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->sendMessage(Landroid/os/Message;)V

    const/4 v1, 0x1

    return v1
.end method

.method public getConnectedDevices()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    const-string/jumbo v0, "android.permission.BLUETOOTH"

    const-string/jumbo v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->mStateMachine:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-virtual {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->getConnectedDevices()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method getConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    .locals 2

    const-string/jumbo v0, "android.permission.BLUETOOTH"

    const-string/jumbo v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->mStateMachine:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    return v0
.end method

.method public getCurrentAgEvents(Landroid/bluetooth/BluetoothDevice;)Landroid/os/Bundle;
    .locals 3

    const-string/jumbo v1, "android.permission.BLUETOOTH"

    const-string/jumbo v2, "Need BLUETOOTH permission"

    invoke-virtual {p0, v1, v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->mStateMachine:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-virtual {v1, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x0

    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->mStateMachine:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-virtual {v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->getCurrentAgEvents()Landroid/os/Bundle;

    move-result-object v1

    return-object v1
.end method

.method public getCurrentAgFeatures(Landroid/bluetooth/BluetoothDevice;)Landroid/os/Bundle;
    .locals 3

    const-string/jumbo v1, "android.permission.BLUETOOTH"

    const-string/jumbo v2, "Need BLUETOOTH permission"

    invoke-virtual {p0, v1, v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->mStateMachine:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-virtual {v1, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x0

    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->mStateMachine:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-virtual {v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->getCurrentAgFeatures()Landroid/os/Bundle;

    move-result-object v1

    return-object v1
.end method

.method public getCurrentCalls(Landroid/bluetooth/BluetoothDevice;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/bluetooth/BluetoothDevice;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/BluetoothHeadsetClientCall;",
            ">;"
        }
    .end annotation

    const-string/jumbo v1, "android.permission.BLUETOOTH"

    const-string/jumbo v2, "Need BLUETOOTH permission"

    invoke-virtual {p0, v1, v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->mStateMachine:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-virtual {v1, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x0

    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->mStateMachine:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-virtual {v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->getCurrentCalls()Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public getLastVoiceTagNumber(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 5

    const/4 v4, 0x1

    const-string/jumbo v2, "android.permission.BLUETOOTH"

    const-string/jumbo v3, "Need BLUETOOTH permission"

    invoke-virtual {p0, v2, v3}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->mStateMachine:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-virtual {v2, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    if-eq v0, v4, :cond_0

    const/4 v2, 0x0

    return v2

    :cond_0
    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->mStateMachine:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    const/16 v3, 0x13

    invoke-virtual {v2, v3}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->mStateMachine:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-virtual {v2, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->sendMessage(Landroid/os/Message;)V

    return v4
.end method

.method protected getName()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "HeadsetClientService"

    return-object v0
.end method

.method public getPriority(Landroid/bluetooth/BluetoothDevice;)I
    .locals 4

    const-string/jumbo v1, "android.permission.BLUETOOTH_ADMIN"

    const-string/jumbo v2, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {p0, v1, v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/provider/Settings$Global;->getBluetoothHeadsetPriorityKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method holdCall(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 5

    const/4 v4, 0x1

    const-string/jumbo v2, "android.permission.BLUETOOTH"

    const-string/jumbo v3, "Need BLUETOOTH permission"

    invoke-virtual {p0, v2, v3}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->mStateMachine:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-virtual {v2, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    if-eq v0, v4, :cond_0

    const/4 v2, 0x0

    return v2

    :cond_0
    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->mStateMachine:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    const/16 v3, 0xe

    invoke-virtual {v2, v3}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->mStateMachine:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-virtual {v2, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->sendMessage(Landroid/os/Message;)V

    return v4
.end method

.method public initBinder()Lcom/android/bluetooth/btservice/ProfileService$IProfileServiceBinder;
    .locals 1

    new-instance v0, Lcom/android/bluetooth/hfpclient/HeadsetClientService$BluetoothHeadsetClientBinder;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientService$BluetoothHeadsetClientBinder;-><init>(Lcom/android/bluetooth/hfpclient/HeadsetClientService;)V

    return-object v0
.end method

.method public isAudioOn()Z
    .locals 2

    const-string/jumbo v0, "android.permission.BLUETOOTH"

    const-string/jumbo v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->mStateMachine:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-virtual {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->isAudioOn()Z

    move-result v0

    return v0
.end method

.method public isClientInVr()Z
    .locals 2

    const-string/jumbo v0, "android.permission.BLUETOOTH"

    const-string/jumbo v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->mStateMachine:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-virtual {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->isInVr()Z

    move-result v0

    return v0
.end method

.method redial(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 5

    const/4 v4, 0x1

    const-string/jumbo v2, "android.permission.BLUETOOTH"

    const-string/jumbo v3, "Need BLUETOOTH permission"

    invoke-virtual {p0, v2, v3}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->mStateMachine:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-virtual {v2, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    if-eq v0, v4, :cond_0

    const/4 v2, 0x0

    return v2

    :cond_0
    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->mStateMachine:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    const/16 v3, 0x9

    invoke-virtual {v2, v3}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->mStateMachine:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-virtual {v2, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->sendMessage(Landroid/os/Message;)V

    return v4
.end method

.method rejectCall(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 5

    const/4 v4, 0x1

    const-string/jumbo v2, "android.permission.BLUETOOTH"

    const-string/jumbo v3, "Need BLUETOOTH permission"

    invoke-virtual {p0, v2, v3}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->mStateMachine:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-virtual {v2, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    if-eq v0, v4, :cond_0

    const/4 v2, 0x0

    return v2

    :cond_0
    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->mStateMachine:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    const/16 v3, 0xd

    invoke-virtual {v2, v3}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->mStateMachine:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-virtual {v2, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->sendMessage(Landroid/os/Message;)V

    return v4
.end method

.method rejectIncomingConnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public sendDTMF(Landroid/bluetooth/BluetoothDevice;B)Z
    .locals 5

    const/4 v4, 0x1

    const-string/jumbo v2, "android.permission.BLUETOOTH"

    const-string/jumbo v3, "Need BLUETOOTH permission"

    invoke-virtual {p0, v2, v3}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->mStateMachine:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-virtual {v2, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    if-eq v0, v4, :cond_0

    const/4 v2, 0x0

    return v2

    :cond_0
    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->mStateMachine:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iput p2, v1, Landroid/os/Message;->arg1:I

    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->mStateMachine:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-virtual {v2, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->sendMessage(Landroid/os/Message;)V

    return v4
.end method

.method public setAudioRouteAllowed(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->mStateMachine:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->setAudioRouteAllowed(Z)V

    return-void
.end method

.method public setPriority(Landroid/bluetooth/BluetoothDevice;I)Z
    .locals 2

    const-string/jumbo v0, "android.permission.BLUETOOTH_ADMIN"

    const-string/jumbo v1, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/provider/Settings$Global;->getBluetoothHeadsetPriorityKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/4 v0, 0x1

    return v0
.end method

.method protected start()Z
    .locals 5

    invoke-static {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->make(Lcom/android/bluetooth/hfpclient/HeadsetClientService;)Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    move-result-object v3

    iput-object v3, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->mStateMachine:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    new-instance v1, Landroid/content/IntentFilter;

    const-string/jumbo v3, "android.media.VOLUME_CHANGED_ACTION"

    invoke-direct {v1, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "android.bluetooth.device.action.CONNECTION_ACCESS_REPLY"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v3, "android.bluetooth.headsetclient.profile.action.SET_BIA"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :try_start_0
    iget-object v3, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v3, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-static {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->setHeadsetClientService(Lcom/android/bluetooth/hfpclient/HeadsetClientService;)V

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    const/4 v3, 0x1

    return v3

    :catch_0
    move-exception v0

    const-string/jumbo v3, "HeadsetClientService"

    const-string/jumbo v4, "Unable to register broadcat receiver"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method startVoiceRecognition(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 4

    const/4 v3, 0x1

    const-string/jumbo v1, "android.permission.BLUETOOTH"

    const-string/jumbo v2, "Need BLUETOOTH permission"

    invoke-virtual {p0, v1, v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->mStateMachine:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-virtual {v1, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    if-eq v0, v3, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->mStateMachine:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->sendMessage(I)V

    return v3
.end method

.method protected stop()Z
    .locals 5

    const/4 v4, 0x1

    :try_start_0
    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->mStateMachine:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-virtual {v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->doQuit()V

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget-object v2, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->HFP_CLIENT_STOP_TAG:Ljava/lang/String;

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return v4

    :catch_0
    move-exception v0

    const-string/jumbo v2, "HeadsetClientService"

    const-string/jumbo v3, "Unable to unregister broadcast receiver"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method stopVoiceRecognition(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 4

    const/4 v3, 0x1

    const-string/jumbo v1, "android.permission.BLUETOOTH"

    const-string/jumbo v2, "Need BLUETOOTH permission"

    invoke-virtual {p0, v1, v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->mStateMachine:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-virtual {v1, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    if-eq v0, v3, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->mStateMachine:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->sendMessage(I)V

    return v3
.end method

.method terminateCall(Landroid/bluetooth/BluetoothDevice;I)Z
    .locals 5

    const/4 v4, 0x1

    const-string/jumbo v2, "android.permission.BLUETOOTH"

    const-string/jumbo v3, "Need BLUETOOTH permission"

    invoke-virtual {p0, v2, v3}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->mStateMachine:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-virtual {v2, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    if-eq v0, v4, :cond_0

    const/4 v2, 0x0

    return v2

    :cond_0
    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->mStateMachine:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    const/16 v3, 0xf

    invoke-virtual {v2, v3}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iput p2, v1, Landroid/os/Message;->arg1:I

    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->mStateMachine:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-virtual {v2, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->sendMessage(Landroid/os/Message;)V

    return v4
.end method
