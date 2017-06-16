.class public Lcom/android/bluetooth/a2dpsink/A2dpSinkService;
.super Lcom/android/bluetooth/btservice/ProfileService;
.source "A2dpSinkService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/a2dpsink/A2dpSinkService$1;,
        Lcom/android/bluetooth/a2dpsink/A2dpSinkService$BluetoothA2dpSinkBinder;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "A2dpSinkService"

.field private static sA2dpSinkService:Lcom/android/bluetooth/a2dpsink/A2dpSinkService;


# instance fields
.field private final mIntentSinkReceiver:Landroid/content/BroadcastReceiver;

.field private mStateMachine:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;


# direct methods
.method static synthetic -get0(Lcom/android/bluetooth/a2dpsink/A2dpSinkService;)Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkService;->mStateMachine:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/bluetooth/a2dpsink/A2dpSinkService;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/bluetooth/a2dpsink/A2dpSinkService;->isAvailable()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/bluetooth/a2dpsink/A2dpSinkService;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/a2dpsink/A2dpSinkService;->log(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/bluetooth/btservice/ProfileService;-><init>()V

    new-instance v0, Lcom/android/bluetooth/a2dpsink/A2dpSinkService$1;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/a2dpsink/A2dpSinkService$1;-><init>(Lcom/android/bluetooth/a2dpsink/A2dpSinkService;)V

    iput-object v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkService;->mIntentSinkReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private static declared-synchronized clearA2dpSinkService()V
    .locals 2

    const-class v0, Lcom/android/bluetooth/a2dpsink/A2dpSinkService;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    sput-object v1, Lcom/android/bluetooth/a2dpsink/A2dpSinkService;->sA2dpSinkService:Lcom/android/bluetooth/a2dpsink/A2dpSinkService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getA2dpSinkService()Lcom/android/bluetooth/a2dpsink/A2dpSinkService;
    .locals 4

    const/4 v3, 0x0

    const-class v1, Lcom/android/bluetooth/a2dpsink/A2dpSinkService;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/bluetooth/a2dpsink/A2dpSinkService;->sA2dpSinkService:Lcom/android/bluetooth/a2dpsink/A2dpSinkService;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/bluetooth/a2dpsink/A2dpSinkService;->sA2dpSinkService:Lcom/android/bluetooth/a2dpsink/A2dpSinkService;

    invoke-virtual {v0}, Lcom/android/bluetooth/a2dpsink/A2dpSinkService;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "A2dpSinkService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getA2dpSinkService(): returning "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/bluetooth/a2dpsink/A2dpSinkService;->sA2dpSinkService:Lcom/android/bluetooth/a2dpsink/A2dpSinkService;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/bluetooth/a2dpsink/A2dpSinkService;->sA2dpSinkService:Lcom/android/bluetooth/a2dpsink/A2dpSinkService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :cond_0
    :try_start_1
    sget-object v0, Lcom/android/bluetooth/a2dpsink/A2dpSinkService;->sA2dpSinkService:Lcom/android/bluetooth/a2dpsink/A2dpSinkService;

    if-nez v0, :cond_2

    const-string/jumbo v0, "A2dpSinkService"

    const-string/jumbo v2, "getA2dpSinkService(): service is NULL"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :goto_0
    monitor-exit v1

    return-object v3

    :cond_2
    :try_start_2
    sget-object v0, Lcom/android/bluetooth/a2dpsink/A2dpSinkService;->sA2dpSinkService:Lcom/android/bluetooth/a2dpsink/A2dpSinkService;

    invoke-virtual {v0}, Lcom/android/bluetooth/a2dpsink/A2dpSinkService;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "A2dpSinkService"

    const-string/jumbo v2, "getA2dpSinkService(): service is not available"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private requestSuspendResume(IZ)Z
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkService;->mStateMachine:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    invoke-virtual {v0, p1, p2}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->requestSuspendResume(IZ)Z

    move-result v0

    return v0
.end method

.method private static declared-synchronized setA2dpSinkService(Lcom/android/bluetooth/a2dpsink/A2dpSinkService;)V
    .locals 4

    const-class v1, Lcom/android/bluetooth/a2dpsink/A2dpSinkService;

    monitor-enter v1

    if-eqz p0, :cond_1

    :try_start_0
    invoke-virtual {p0}, Lcom/android/bluetooth/a2dpsink/A2dpSinkService;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "A2dpSinkService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setA2dpSinkService(): set to: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/bluetooth/a2dpsink/A2dpSinkService;->sA2dpSinkService:Lcom/android/bluetooth/a2dpsink/A2dpSinkService;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sput-object p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkService;->sA2dpSinkService:Lcom/android/bluetooth/a2dpsink/A2dpSinkService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    :cond_1
    :try_start_1
    sget-object v0, Lcom/android/bluetooth/a2dpsink/A2dpSinkService;->sA2dpSinkService:Lcom/android/bluetooth/a2dpsink/A2dpSinkService;

    if-nez v0, :cond_2

    const-string/jumbo v0, "A2dpSinkService"

    const-string/jumbo v2, "setA2dpSinkService(): service not available"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_2
    :try_start_2
    sget-object v0, Lcom/android/bluetooth/a2dpsink/A2dpSinkService;->sA2dpSinkService:Lcom/android/bluetooth/a2dpsink/A2dpSinkService;

    invoke-virtual {v0}, Lcom/android/bluetooth/a2dpsink/A2dpSinkService;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "A2dpSinkService"

    const-string/jumbo v2, "setA2dpSinkService(): service is cleaning up"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method


# virtual methods
.method protected cleanup()Z
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkService;->mStateMachine:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkService;->mStateMachine:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    invoke-virtual {v0}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->cleanup()V

    :cond_0
    invoke-static {}, Lcom/android/bluetooth/a2dpsink/A2dpSinkService;->clearA2dpSinkService()V

    const/4 v0, 0x1

    return v0
.end method

.method public connect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    const-string/jumbo v1, "A2dpSinkService"

    const-string/jumbo v2, "connect"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "android.permission.BLUETOOTH_ADMIN"

    const-string/jumbo v2, "Need BLUETOOTH ADMIN permission"

    invoke-virtual {p0, v1, v2}, Lcom/android/bluetooth/a2dpsink/A2dpSinkService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0xf0

    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxVersionSupported(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/bluetooth/a2dpsink/A2dpSinkService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/bluetooth/Utils;->isKnoxBluetoothEnabled(Landroid/content/Context;I)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "A2dpSinkService"

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
    iget-object v1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkService;->mStateMachine:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    invoke-virtual {v1, p1}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    if-ne v0, v3, :cond_2

    :cond_1
    return v4

    :cond_2
    iget-object v1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkService;->mStateMachine:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    invoke-virtual {v1, v3, p1}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->sendMessage(ILjava/lang/Object;)V

    return v3
.end method

.method disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const-string/jumbo v1, "A2dpSinkService"

    const-string/jumbo v2, "disconnect"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "android.permission.BLUETOOTH_ADMIN"

    const-string/jumbo v2, "Need BLUETOOTH ADMIN permission"

    invoke-virtual {p0, v1, v2}, Lcom/android/bluetooth/a2dpsink/A2dpSinkService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkService;->mStateMachine:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    invoke-virtual {v1, p1}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    if-eq v0, v4, :cond_0

    if-eq v0, v3, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    iget-object v1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkService;->mStateMachine:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    invoke-virtual {v1, v4, p1}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->sendMessage(ILjava/lang/Object;)V

    return v3
.end method

.method public dump(Ljava/lang/StringBuilder;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/bluetooth/btservice/ProfileService;->dump(Ljava/lang/StringBuilder;)V

    iget-object v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkService;->mStateMachine:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkService;->mStateMachine:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->dump(Ljava/lang/StringBuilder;)V

    :cond_0
    return-void
.end method

.method getAudioConfig(Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothAudioConfig;
    .locals 2

    const-string/jumbo v0, "android.permission.BLUETOOTH"

    const-string/jumbo v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/a2dpsink/A2dpSinkService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkService;->mStateMachine:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->getAudioConfig(Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothAudioConfig;

    move-result-object v0

    return-object v0
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

    invoke-virtual {p0, v1, v2}, Lcom/android/bluetooth/a2dpsink/A2dpSinkService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkService;->mStateMachine:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    invoke-virtual {v1}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->getConnectedDevices()Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    return-object v1
.end method

.method getConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    .locals 2

    const-string/jumbo v0, "android.permission.BLUETOOTH"

    const-string/jumbo v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/a2dpsink/A2dpSinkService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkService;->mStateMachine:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    return v0
.end method

.method getDevicesMatchingConnectionStates([I)Ljava/util/List;
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

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/a2dpsink/A2dpSinkService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkService;->mStateMachine:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->getDevicesMatchingConnectionStates([I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected getName()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "A2dpSinkService"

    return-object v0
.end method

.method public getPendingDevice()Landroid/bluetooth/BluetoothDevice;
    .locals 2

    const-string/jumbo v0, "android.permission.BLUETOOTH"

    const-string/jumbo v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/a2dpsink/A2dpSinkService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkService;->mStateMachine:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    invoke-virtual {v0}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->getPendingDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    return-object v0
.end method

.method public getPriority(Landroid/bluetooth/BluetoothDevice;)I
    .locals 4

    const-string/jumbo v1, "android.permission.BLUETOOTH_ADMIN"

    const-string/jumbo v2, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {p0, v1, v2}, Lcom/android/bluetooth/a2dpsink/A2dpSinkService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/bluetooth/a2dpsink/A2dpSinkService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/provider/Settings$Global;->getBluetoothA2dpSrcPriorityKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public informAvrcpPassThroughCmd(Landroid/bluetooth/BluetoothDevice;II)V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkService;->mStateMachine:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    if-eqz v0, :cond_0

    const/16 v0, 0x44

    if-ne p2, v0, :cond_1

    if-ne p3, v1, :cond_1

    iget-object v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkService;->mStateMachine:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    const/16 v1, 0x12d

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->sendMessage(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/16 v0, 0x46

    if-eq p2, v0, :cond_2

    const/16 v0, 0x45

    if-ne p2, v0, :cond_0

    :cond_2
    if-ne p3, v1, :cond_0

    iget-object v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkService;->mStateMachine:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    const/16 v1, 0x12e

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->sendMessage(I)V

    goto :goto_0
.end method

.method public informTGStatePlaying(Landroid/bluetooth/BluetoothDevice;Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkService;->mStateMachine:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    if-eqz v0, :cond_0

    if-nez p2, :cond_1

    iget-object v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkService;->mStateMachine:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    const/16 v1, 0x130

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->sendMessage(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkService;->mStateMachine:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    const/16 v1, 0x12f

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->sendMessage(I)V

    goto :goto_0
.end method

.method protected initBinder()Lcom/android/bluetooth/btservice/ProfileService$IProfileServiceBinder;
    .locals 1

    new-instance v0, Lcom/android/bluetooth/a2dpsink/A2dpSinkService$BluetoothA2dpSinkBinder;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/a2dpsink/A2dpSinkService$BluetoothA2dpSinkBinder;-><init>(Lcom/android/bluetooth/a2dpsink/A2dpSinkService;)V

    return-object v0
.end method

.method declared-synchronized isA2dpPlaying(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "android.permission.BLUETOOTH"

    const-string/jumbo v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/a2dpsink/A2dpSinkService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "A2dpSinkService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isA2dpPlaying("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkService;->mStateMachine:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->isPlaying(Landroid/bluetooth/BluetoothDevice;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public processCallStateChanged()V
    .locals 2

    const-string/jumbo v0, "android.permission.BLUETOOTH"

    const-string/jumbo v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/a2dpsink/A2dpSinkService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "A2dpSinkService"

    const-string/jumbo v1, "processCallStateChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkService;->mStateMachine:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->sendMessage(I)V

    return-void
.end method

.method public processSetSuspend(Z)V
    .locals 3

    const-string/jumbo v0, "android.permission.BLUETOOTH"

    const-string/jumbo v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/a2dpsink/A2dpSinkService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "A2dpSinkService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "processSetSuspend : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkService;->mStateMachine:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->setSuspendQuickConnect(Z)V

    return-void
.end method

.method public processVrStateChanged(Z)V
    .locals 3

    const-string/jumbo v0, "android.permission.BLUETOOTH"

    const-string/jumbo v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/a2dpsink/A2dpSinkService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "A2dpSinkService"

    const-string/jumbo v1, "processVrStateChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkService;->mStateMachine:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v0, v2, v1}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public setPriority(Landroid/bluetooth/BluetoothDevice;I)Z
    .locals 3

    const-string/jumbo v0, "android.permission.BLUETOOTH_ADMIN"

    const-string/jumbo v1, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/a2dpsink/A2dpSinkService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/bluetooth/a2dpsink/A2dpSinkService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/provider/Settings$Global;->getBluetoothA2dpSrcPriorityKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string/jumbo v0, "A2dpSinkService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Saved priority "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0
.end method

.method protected start()Z
    .locals 3

    const-string/jumbo v1, "A2dpSinkService"

    const-string/jumbo v2, "start()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0, p0}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->make(Lcom/android/bluetooth/a2dpsink/A2dpSinkService;Landroid/content/Context;)Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    move-result-object v1

    iput-object v1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkService;->mStateMachine:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    invoke-static {p0}, Lcom/android/bluetooth/a2dpsink/A2dpSinkService;->setA2dpSinkService(Lcom/android/bluetooth/a2dpsink/A2dpSinkService;)V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "android.hardware.display.action.WIFI_DISPLAY_STATUS_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkService;->mIntentSinkReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/a2dpsink/A2dpSinkService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v1, 0x1

    return v1
.end method

.method protected stop()Z
    .locals 2

    const-string/jumbo v0, "A2dpSinkService"

    const-string/jumbo v1, "stop()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkService;->mIntentSinkReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/a2dpsink/A2dpSinkService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkService;->mStateMachine:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    invoke-virtual {v0}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->doQuit()V

    const/4 v0, 0x1

    return v0
.end method
