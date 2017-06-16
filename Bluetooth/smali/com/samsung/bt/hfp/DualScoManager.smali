.class public Lcom/samsung/bt/hfp/DualScoManager;
.super Ljava/lang/Object;
.source "DualScoManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/bt/hfp/DualScoManager$1;
    }
.end annotation


# static fields
.field private static final BDUMP_TAG:Ljava/lang/String; = "HFDSM-"

.field private static final BRSF_AG_IN_BAND_RING:I = 0x8

.field private static final DBG:Z

.field private static final DISABLE_INBANDRING:I = 0x0

.field private static final ENABLE_INBANDRING:I = 0x1

.field private static final MSG_CONNECT_SCO_DELAYED:I = 0x1

.field private static final NOTSET_INBANDRING:I = -0x1

.field private static final SCO_CONNECT_SAFE_DELAY:I = 0x1f4

.field private static final SCO_SWITCH_SAFE_DELAY:I = 0x96

.field private static final TAG:Ljava/lang/String; = "DualScoManager"

.field private static final WIRED_AUDIO_OUT_DEVICE:I = 0x600c

.field public static mDualScoManager:Lcom/samsung/bt/hfp/DualScoManager;


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field mClientService:Lcom/android/bluetooth/hfpclient/HeadsetClientServiceHelper;

.field private mDualScoPolicy:Lcom/samsung/bt/hfp/DualScoPolicy;

.field private mHandler:Landroid/os/Handler;

.field private mHighPriorityDevice:Landroid/bluetooth/BluetoothDevice;

.field private mHighPriorityInbandDevice:Landroid/bluetooth/BluetoothDevice;

.field public mIncomingCallType:Z

.field private mNotificationManager:Landroid/app/NotificationManager;

.field public mPreferredDevice:Landroid/bluetooth/BluetoothDevice;

.field mService:Lcom/android/bluetooth/hfp/HeadsetServiceHelper;

.field private mSystemAudioInbandSupported:Z

.field private switchToDevice:Landroid/bluetooth/BluetoothDevice;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/bt/hfp/DualScoManager;->DBG:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/bt/hfp/DualScoManager;->mDualScoManager:Lcom/samsung/bt/hfp/DualScoManager;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/bt/hfp/DualScoManager;->switchToDevice:Landroid/bluetooth/BluetoothDevice;

    iput-object v0, p0, Lcom/samsung/bt/hfp/DualScoManager;->mHighPriorityDevice:Landroid/bluetooth/BluetoothDevice;

    iput-object v0, p0, Lcom/samsung/bt/hfp/DualScoManager;->mHighPriorityInbandDevice:Landroid/bluetooth/BluetoothDevice;

    iput-boolean v1, p0, Lcom/samsung/bt/hfp/DualScoManager;->mSystemAudioInbandSupported:Z

    iput-boolean v1, p0, Lcom/samsung/bt/hfp/DualScoManager;->mIncomingCallType:Z

    iput-object v0, p0, Lcom/samsung/bt/hfp/DualScoManager;->mPreferredDevice:Landroid/bluetooth/BluetoothDevice;

    new-instance v0, Lcom/samsung/bt/hfp/DualScoManager$1;

    invoke-direct {v0, p0}, Lcom/samsung/bt/hfp/DualScoManager$1;-><init>(Lcom/samsung/bt/hfp/DualScoManager;)V

    iput-object v0, p0, Lcom/samsung/bt/hfp/DualScoManager;->mHandler:Landroid/os/Handler;

    const-string/jumbo v0, "DualScoManager"

    const-string/jumbo v1, "Instantiating Dual Sco Manager"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static declared-synchronized getDefaultScoManager()Lcom/samsung/bt/hfp/DualScoManager;
    .locals 3

    const-class v1, Lcom/samsung/bt/hfp/DualScoManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/samsung/bt/hfp/DualScoManager;->mDualScoManager:Lcom/samsung/bt/hfp/DualScoManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/bt/hfp/DualScoManager;

    invoke-direct {v0}, Lcom/samsung/bt/hfp/DualScoManager;-><init>()V

    sput-object v0, Lcom/samsung/bt/hfp/DualScoManager;->mDualScoManager:Lcom/samsung/bt/hfp/DualScoManager;

    :goto_0
    sget-object v0, Lcom/samsung/bt/hfp/DualScoManager;->mDualScoManager:Lcom/samsung/bt/hfp/DualScoManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :cond_0
    :try_start_1
    const-string/jumbo v0, "DualScoManager"

    const-string/jumbo v2, "Dual Sco Manager already instantiated"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public getActiveAgDevice()Landroid/bluetooth/BluetoothDevice;
    .locals 6

    const/4 v0, 0x0

    iget-object v4, p0, Lcom/samsung/bt/hfp/DualScoManager;->mClientService:Lcom/android/bluetooth/hfpclient/HeadsetClientServiceHelper;

    invoke-virtual {v4}, Lcom/android/bluetooth/hfpclient/HeadsetClientServiceHelper;->getHeadsetClientService()Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->getConnectedDevices()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    iget-object v4, p0, Lcom/samsung/bt/hfp/DualScoManager;->mClientService:Lcom/android/bluetooth/hfpclient/HeadsetClientServiceHelper;

    invoke-virtual {v4, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientServiceHelper;->getAudioState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    iget-object v4, p0, Lcom/samsung/bt/hfp/DualScoManager;->mClientService:Lcom/android/bluetooth/hfpclient/HeadsetClientServiceHelper;

    invoke-virtual {v4}, Lcom/android/bluetooth/hfpclient/HeadsetClientServiceHelper;->isAudioOn()Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v0, v1

    :cond_1
    return-object v0
.end method

.method public getActiveScoDevice()Landroid/bluetooth/BluetoothDevice;
    .locals 5

    const/4 v0, 0x0

    iget-object v4, p0, Lcom/samsung/bt/hfp/DualScoManager;->mService:Lcom/android/bluetooth/hfp/HeadsetServiceHelper;

    invoke-virtual {v4}, Lcom/android/bluetooth/hfp/HeadsetServiceHelper;->getHeadsetService()Lcom/android/bluetooth/hfp/HeadsetService;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/bluetooth/hfp/HeadsetService;->getConnectedDevices()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    iget-object v4, p0, Lcom/samsung/bt/hfp/DualScoManager;->mService:Lcom/android/bluetooth/hfp/HeadsetServiceHelper;

    invoke-virtual {v4, v1}, Lcom/android/bluetooth/hfp/HeadsetServiceHelper;->isAudioConnected(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v0, v1

    :cond_1
    return-object v0
.end method

.method public getDeviceToConnectAudio()Landroid/bluetooth/BluetoothDevice;
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/samsung/bt/hfp/DualScoManager;->getPriorityDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    if-eqz v2, :cond_0

    return-object v2

    :cond_0
    iget-object v4, p0, Lcom/samsung/bt/hfp/DualScoManager;->mService:Lcom/android/bluetooth/hfp/HeadsetServiceHelper;

    invoke-virtual {v4}, Lcom/android/bluetooth/hfp/HeadsetServiceHelper;->getHeadsetService()Lcom/android/bluetooth/hfp/HeadsetService;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/bluetooth/hfp/HeadsetService;->getConnectedDevices()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_2

    :cond_1
    return-object v6

    :cond_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_3

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/bluetooth/BluetoothDevice;

    return-object v4

    :cond_3
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    iget-object v4, p0, Lcom/samsung/bt/hfp/DualScoManager;->mDualScoPolicy:Lcom/samsung/bt/hfp/DualScoPolicy;

    invoke-virtual {v4, v0}, Lcom/samsung/bt/hfp/DualScoPolicy;->isWatch(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v4

    if-nez v4, :cond_4

    return-object v0

    :cond_5
    return-object v6
.end method

.method public getHighPriorityDevice()Landroid/bluetooth/BluetoothDevice;
    .locals 4

    const/4 v1, 0x0

    const-string/jumbo v2, "DualScoManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Address of High Priority Device is : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, p0, Lcom/samsung/bt/hfp/DualScoManager;->mHighPriorityDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/bt/hfp/DualScoManager;->mHighPriorityDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddressForLog()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "HFDSM-getHighPriorityDevice : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/bt/hfp/DualScoManager;->mHighPriorityDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/samsung/bt/hfp/DualScoManager;->mHighPriorityDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddressForLog()Ljava/lang/String;

    move-result-object v1

    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/bluetooth/BluetoothDump;->BtLog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/bt/hfp/DualScoManager;->mHighPriorityDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/bt/hfp/DualScoManager;->mHighPriorityDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0

    :cond_1
    move-object v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/bt/hfp/DualScoManager;->getPriorityDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    return-object v0
.end method

.method public getMatchingAddressDevice(Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;
    .locals 6

    const/4 v5, 0x0

    if-nez p1, :cond_0

    return-object v5

    :cond_0
    iget-object v3, p0, Lcom/samsung/bt/hfp/DualScoManager;->mService:Lcom/android/bluetooth/hfp/HeadsetServiceHelper;

    invoke-virtual {v3}, Lcom/android/bluetooth/hfp/HeadsetServiceHelper;->getHeadsetService()Lcom/android/bluetooth/hfp/HeadsetService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/bluetooth/hfp/HeadsetService;->getConnectedDevices()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    sget-boolean v3, Lcom/samsung/bt/hfp/DualScoManager;->DBG:Z

    if-eqz v3, :cond_2

    const-string/jumbo v3, "DualScoManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getMatchingAddressDevice : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-object v0

    :cond_3
    const-string/jumbo v3, "DualScoManager"

    const-string/jumbo v4, "getMatchingAddressDevice is null"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v5
.end method

.method public getPreferredDevice()Landroid/bluetooth/BluetoothDevice;
    .locals 4

    const/4 v0, 0x0

    const-string/jumbo v1, "DualScoManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Address of Preferred Device is : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/bt/hfp/DualScoManager;->mPreferredDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v3, :cond_0

    iget-object v0, p0, Lcom/samsung/bt/hfp/DualScoManager;->mPreferredDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddressForLog()Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/bt/hfp/DualScoManager;->mPreferredDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method public getPriorityDevice()Landroid/bluetooth/BluetoothDevice;
    .locals 8

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/samsung/bt/hfp/DualScoManager;->mHighPriorityDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v5, :cond_0

    const-string/jumbo v4, "DualScoManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getPriorityDevice() - return high priority HF "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/bt/hfp/DualScoManager;->mHighPriorityDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v6}, Landroid/bluetooth/BluetoothDevice;->getAddressForLog()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/samsung/bt/hfp/DualScoManager;->mHighPriorityDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v4

    :cond_0
    iget-object v5, p0, Lcom/samsung/bt/hfp/DualScoManager;->mService:Lcom/android/bluetooth/hfp/HeadsetServiceHelper;

    invoke-virtual {v5}, Lcom/android/bluetooth/hfp/HeadsetServiceHelper;->getHeadsetService()Lcom/android/bluetooth/hfp/HeadsetService;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/bluetooth/hfp/HeadsetService;->getConnectedDevices()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_2

    :cond_1
    const-string/jumbo v5, "DualScoManager"

    const-string/jumbo v6, "getPriorityDevice() - return no device"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4

    :cond_2
    const/4 v2, 0x0

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    iget-object v5, p0, Lcom/samsung/bt/hfp/DualScoManager;->mDualScoPolicy:Lcom/samsung/bt/hfp/DualScoPolicy;

    invoke-virtual {v5, v2}, Lcom/samsung/bt/hfp/DualScoPolicy;->getScoPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v5

    iget-object v6, p0, Lcom/samsung/bt/hfp/DualScoManager;->mDualScoPolicy:Lcom/samsung/bt/hfp/DualScoPolicy;

    invoke-virtual {v6, v0}, Lcom/samsung/bt/hfp/DualScoPolicy;->getScoPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v6

    if-gt v5, v6, :cond_3

    move-object v2, v0

    goto :goto_0

    :cond_4
    iget-object v5, p0, Lcom/samsung/bt/hfp/DualScoManager;->mDualScoPolicy:Lcom/samsung/bt/hfp/DualScoPolicy;

    invoke-virtual {v5, v2}, Lcom/samsung/bt/hfp/DualScoPolicy;->isWatch(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v5

    if-eqz v5, :cond_5

    const-string/jumbo v5, "DualScoManager"

    const-string/jumbo v6, "getPriorityDevice() - only gear. So, no return device"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4

    :cond_5
    const-string/jumbo v5, "DualScoManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getPriorityDevice() - return new device "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-nez v2, :cond_6

    :goto_1
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_6
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddressForLog()Ljava/lang/String;

    move-result-object v4

    goto :goto_1
.end method

.method public getPriorityDeviceForInband()Landroid/bluetooth/BluetoothDevice;
    .locals 12

    const/16 v11, 0xc8

    const/4 v10, 0x1

    const/4 v7, 0x0

    iget-boolean v8, p0, Lcom/samsung/bt/hfp/DualScoManager;->mSystemAudioInbandSupported:Z

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/samsung/bt/hfp/DualScoManager;->mService:Lcom/android/bluetooth/hfp/HeadsetServiceHelper;

    invoke-virtual {v8}, Lcom/android/bluetooth/hfp/HeadsetServiceHelper;->getHeadsetService()Lcom/android/bluetooth/hfp/HeadsetService;

    move-result-object v8

    const/16 v9, 0x12c

    invoke-virtual {v8, v9}, Lcom/android/bluetooth/hfp/HeadsetService;->getFeatureSettings(I)I

    move-result v8

    if-eq v8, v10, :cond_2

    :cond_0
    iget-boolean v8, p0, Lcom/samsung/bt/hfp/DualScoManager;->mSystemAudioInbandSupported:Z

    if-eqz v8, :cond_1

    const-string/jumbo v5, "DB"

    :goto_0
    const-string/jumbo v8, "DualScoManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "getPriorityDeviceForInband() : null (IBR is disabled by "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "HFDSM-IBR is disabled by "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/bluetooth/BluetoothDump;->BtLog(Ljava/lang/String;)V

    return-object v7

    :cond_1
    const-string/jumbo v5, "SysA"

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/samsung/bt/hfp/DualScoManager;->mHighPriorityInbandDevice:Landroid/bluetooth/BluetoothDevice;

    const/4 v6, -0x1

    if-eqz v3, :cond_3

    iget-object v8, p0, Lcom/samsung/bt/hfp/DualScoManager;->mService:Lcom/android/bluetooth/hfp/HeadsetServiceHelper;

    invoke-virtual {v8}, Lcom/android/bluetooth/hfp/HeadsetServiceHelper;->getHeadsetService()Lcom/android/bluetooth/hfp/HeadsetService;

    move-result-object v8

    invoke-virtual {v8, v3, v11}, Lcom/android/bluetooth/hfp/HeadsetService;->getHeadsetSettings(Landroid/bluetooth/BluetoothDevice;I)I

    move-result v6

    :cond_3
    const/4 v2, -0x1

    if-eq v6, v10, :cond_5

    const/4 v3, 0x0

    const/4 v2, 0x0

    iget-object v8, p0, Lcom/samsung/bt/hfp/DualScoManager;->mService:Lcom/android/bluetooth/hfp/HeadsetServiceHelper;

    invoke-virtual {v8}, Lcom/android/bluetooth/hfp/HeadsetServiceHelper;->getHeadsetService()Lcom/android/bluetooth/hfp/HeadsetService;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/bluetooth/hfp/HeadsetService;->getConnectedDevices()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    iget-object v8, p0, Lcom/samsung/bt/hfp/DualScoManager;->mService:Lcom/android/bluetooth/hfp/HeadsetServiceHelper;

    invoke-virtual {v8}, Lcom/android/bluetooth/hfp/HeadsetServiceHelper;->getHeadsetService()Lcom/android/bluetooth/hfp/HeadsetService;

    move-result-object v8

    invoke-virtual {v8, v0, v11}, Lcom/android/bluetooth/hfp/HeadsetService;->getHeadsetSettings(Landroid/bluetooth/BluetoothDevice;I)I

    move-result v6

    if-ne v6, v10, :cond_4

    move-object v3, v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    const-string/jumbo v8, "DualScoManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "getPriorityDeviceForInband("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ") : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    if-nez v3, :cond_6

    :goto_2
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    :cond_6
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddressForLog()Ljava/lang/String;

    move-result-object v7

    goto :goto_2
.end method

.method public isInAnyCall()Z
    .locals 4

    const/4 v1, 0x4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/samsung/bt/hfp/DualScoManager;->isInCSCall()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/bt/hfp/DualScoManager;->mService:Lcom/android/bluetooth/hfp/HeadsetServiceHelper;

    invoke-virtual {v0}, Lcom/android/bluetooth/hfp/HeadsetServiceHelper;->getCSCallState()I

    move-result v0

    if-eq v0, v1, :cond_1

    :cond_0
    const-string/jumbo v0, "DualScoManager"

    const-string/jumbo v1, "CS Call in progress"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_1
    iget-object v0, p0, Lcom/samsung/bt/hfp/DualScoManager;->mService:Lcom/android/bluetooth/hfp/HeadsetServiceHelper;

    invoke-virtual {v0}, Lcom/android/bluetooth/hfp/HeadsetServiceHelper;->getCSCallState()I

    move-result v0

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/samsung/bt/hfp/DualScoManager;->mService:Lcom/android/bluetooth/hfp/HeadsetServiceHelper;

    invoke-virtual {v0}, Lcom/android/bluetooth/hfp/HeadsetServiceHelper;->getCSNumActiveCall()I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/bt/hfp/DualScoManager;->mService:Lcom/android/bluetooth/hfp/HeadsetServiceHelper;

    invoke-virtual {v0}, Lcom/android/bluetooth/hfp/HeadsetServiceHelper;->getCSNumHeldCall()I

    move-result v0

    if-gtz v0, :cond_0

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/bt/hfp/DualScoManager;->isInVoIPCall()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "DualScoManager"

    const-string/jumbo v1, "VoIP  Call in progress"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_3
    const-string/jumbo v0, "DualScoManager"

    const-string/jumbo v1, "No call is in progress"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method isInCSCall()Z
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/samsung/bt/hfp/DualScoManager;->mService:Lcom/android/bluetooth/hfp/HeadsetServiceHelper;

    invoke-virtual {v3}, Lcom/android/bluetooth/hfp/HeadsetServiceHelper;->getCSState()I

    move-result v0

    const-string/jumbo v3, "DualScoManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isInCall : currCallState : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/samsung/bt/hfp/DualScoManager;->mService:Lcom/android/bluetooth/hfp/HeadsetServiceHelper;

    invoke-virtual {v3}, Lcom/android/bluetooth/hfp/HeadsetServiceHelper;->getCSNumActiveCall()I

    move-result v3

    if-gtz v3, :cond_0

    iget-object v3, p0, Lcom/samsung/bt/hfp/DualScoManager;->mService:Lcom/android/bluetooth/hfp/HeadsetServiceHelper;

    invoke-virtual {v3}, Lcom/android/bluetooth/hfp/HeadsetServiceHelper;->getCSNumHeldCall()I

    move-result v3

    if-lez v3, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-object v3, p0, Lcom/samsung/bt/hfp/DualScoManager;->mService:Lcom/android/bluetooth/hfp/HeadsetServiceHelper;

    invoke-virtual {v3}, Lcom/android/bluetooth/hfp/HeadsetServiceHelper;->getCSCallState()I

    move-result v3

    const/4 v4, 0x6

    if-ne v3, v4, :cond_0

    if-nez v0, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method isInVoIPCall()Z
    .locals 6

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/samsung/bt/hfp/DualScoManager;->mService:Lcom/android/bluetooth/hfp/HeadsetServiceHelper;

    invoke-virtual {v2}, Lcom/android/bluetooth/hfp/HeadsetServiceHelper;->getVoIPProxy()Lcom/samsung/bt/hfp/IBluetoothHeadsetVoIP;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0}, Lcom/samsung/bt/hfp/IBluetoothHeadsetVoIP;->isExistVoipCall()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    return v2

    :cond_0
    return v5

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    const-string/jumbo v2, "DualScoManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Remote exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v5
.end method

.method public isInbandRingtoneBlocked(Z)Z
    .locals 6

    const/4 v5, 0x3

    const/4 v1, 0x0

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/samsung/bt/hfp/DualScoManager;->mNotificationManager:Landroid/app/NotificationManager;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/bt/hfp/DualScoManager;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v2}, Landroid/app/NotificationManager;->getEffectsSuppressor()Landroid/content/ComponentName;

    move-result-object v0

    :cond_0
    invoke-static {v5}, Landroid/media/AudioSystem;->getDevicesForStream(I)I

    move-result v2

    and-int/lit16 v2, v2, 0x600c

    if-eqz v2, :cond_2

    const-string/jumbo v2, "DualScoManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isInbandRingtoneBlocked - Block by "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v5}, Landroid/media/AudioSystem;->getDevicesForStream(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "HFDSM-IBR Block by "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v5}, Landroid/media/AudioSystem;->getDevicesForStream(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/bluetooth/BluetoothDump;->BtLog(Ljava/lang/String;)V

    const/4 v1, 0x1

    :cond_1
    :goto_0
    return v1

    :cond_2
    iget-object v2, p0, Lcom/samsung/bt/hfp/DualScoManager;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/samsung/bt/hfp/DualScoManager;->mAudioManager:Landroid/media/AudioManager;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->semIsRecordActive(I)Z

    move-result v2

    if-eqz v2, :cond_4

    if-eqz p1, :cond_3

    const-string/jumbo v2, "DualScoManager"

    const-string/jumbo v3, "isInbandRingtoneBlocked - Not Block by Voice Recoding, will be stopped"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "HFDSM-IBR isn\'t Block by Voice Recoding, will be stopped"

    invoke-static {v2}, Landroid/bluetooth/BluetoothDump;->BtLog(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string/jumbo v2, "DualScoManager"

    const-string/jumbo v3, "isInbandRingtoneBlocked - Block by Voice Recoding"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "HFDSM-IBR Block by Voice Recoding"

    invoke-static {v2}, Landroid/bluetooth/BluetoothDump;->BtLog(Ljava/lang/String;)V

    const/4 v1, 0x1

    goto :goto_0

    :cond_4
    if-eqz v0, :cond_1

    const-string/jumbo v2, "DualScoManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isInbandRingtoneBlocked - Block by "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "HFDSM-IBR Block by "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/bluetooth/BluetoothDump;->BtLog(Ljava/lang/String;)V

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isInbandRingtoneDevice(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 5

    const/4 v1, 0x0

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/samsung/bt/hfp/DualScoManager;->mService:Lcom/android/bluetooth/hfp/HeadsetServiceHelper;

    invoke-virtual {v2}, Lcom/android/bluetooth/hfp/HeadsetServiceHelper;->getHeadsetService()Lcom/android/bluetooth/hfp/HeadsetService;

    move-result-object v2

    const/16 v3, 0xc8

    invoke-virtual {v2, p1, v3}, Lcom/android/bluetooth/hfp/HeadsetService;->getHeadsetSettings(Landroid/bluetooth/BluetoothDevice;I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    const/4 v0, 0x1

    :cond_0
    sget-boolean v2, Lcom/samsung/bt/hfp/DualScoManager;->DBG:Z

    if-eqz v2, :cond_1

    const-string/jumbo v2, "DualScoManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isInbandRingtoneDevice("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez p1, :cond_2

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, ") : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v0

    :cond_2
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddressForLog()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public isIncomingCall()Z
    .locals 3

    const-string/jumbo v0, "DualScoManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mIncomingCallType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/bt/hfp/DualScoManager;->mIncomingCallType:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/samsung/bt/hfp/DualScoManager;->mIncomingCallType:Z

    return v0
.end method

.method public isLocalAgActive()Z
    .locals 3

    const-string/jumbo v0, "DualScoManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Local AG is active : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/bt/hfp/DualScoManager;->mService:Lcom/android/bluetooth/hfp/HeadsetServiceHelper;

    invoke-virtual {v2}, Lcom/android/bluetooth/hfp/HeadsetServiceHelper;->isAudioOn()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/bt/hfp/DualScoManager;->mService:Lcom/android/bluetooth/hfp/HeadsetServiceHelper;

    invoke-virtual {v0}, Lcom/android/bluetooth/hfp/HeadsetServiceHelper;->isAudioOn()Z

    move-result v0

    return v0
.end method

.method public isLocalHfClientActive()Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/bt/hfp/DualScoManager;->mClientService:Lcom/android/bluetooth/hfpclient/HeadsetClientServiceHelper;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "DualScoManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Local HF Client is active : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/bt/hfp/DualScoManager;->mClientService:Lcom/android/bluetooth/hfpclient/HeadsetClientServiceHelper;

    invoke-virtual {v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientServiceHelper;->isAudioOn()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/bt/hfp/DualScoManager;->mClientService:Lcom/android/bluetooth/hfpclient/HeadsetClientServiceHelper;

    invoke-virtual {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientServiceHelper;->isAudioOn()Z

    move-result v0

    return v0

    :cond_0
    const-string/jumbo v0, "DualScoManager"

    const-string/jumbo v1, "Client Service is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public notifyAudioStateChanged(Landroid/bluetooth/BluetoothDevice;II)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/samsung/bt/hfp/DualScoManager;->notifyAudioStateChanged(Landroid/bluetooth/BluetoothDevice;IIZ)V

    return-void
.end method

.method public notifyAudioStateChanged(Landroid/bluetooth/BluetoothDevice;IIZ)V
    .locals 8

    const-wide/16 v6, 0x96

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    if-nez p1, :cond_0

    const-string/jumbo v0, "DualScoManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifyAudioStateChanged : device is null / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-nez p4, :cond_4

    const-string/jumbo v0, "DualScoManager"

    const-string/jumbo v1, "Audio State Change in HeadsetStateMachine"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "DualScoManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifyAudioStateChanged from Headset State Machine "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddressForLog()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0xa

    if-ne p2, v0, :cond_1

    iget-object v0, p0, Lcom/samsung/bt/hfp/DualScoManager;->switchToDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/bt/hfp/DualScoManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/bt/hfp/DualScoManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/samsung/bt/hfp/DualScoManager;->switchToDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, v5, v3, v3, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    iput-object v4, p0, Lcom/samsung/bt/hfp/DualScoManager;->switchToDevice:Landroid/bluetooth/BluetoothDevice;

    return-void

    :cond_1
    const/16 v0, 0xc

    if-ne p2, v0, :cond_2

    invoke-virtual {p0}, Lcom/samsung/bt/hfp/DualScoManager;->isIncomingCall()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/bt/hfp/DualScoManager;->mDualScoPolicy:Lcom/samsung/bt/hfp/DualScoPolicy;

    invoke-virtual {v0, p1}, Lcom/samsung/bt/hfp/DualScoPolicy;->isWatch(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0, p1}, Lcom/samsung/bt/hfp/DualScoManager;->setHighPriorityDevice(Landroid/bluetooth/BluetoothDevice;)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    invoke-virtual {p0, p1}, Lcom/samsung/bt/hfp/DualScoManager;->setHighPriorityInbandDevice(Landroid/bluetooth/BluetoothDevice;)V

    goto :goto_0

    :cond_4
    const-string/jumbo v0, "DualScoManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifyAudioStateChanged from Client State Machine :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddressForLog()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "DualScoManager"

    const-string/jumbo v1, "Audio State Change in ClientStateMachine"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_2

    iget-object v0, p0, Lcom/samsung/bt/hfp/DualScoManager;->switchToDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/bt/hfp/DualScoManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/bt/hfp/DualScoManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/samsung/bt/hfp/DualScoManager;->switchToDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, v5, v3, v3, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    iput-object v4, p0, Lcom/samsung/bt/hfp/DualScoManager;->switchToDevice:Landroid/bluetooth/BluetoothDevice;

    return-void
.end method

.method public notifyConnectionStateChanged(Landroid/bluetooth/BluetoothDevice;II)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/samsung/bt/hfp/DualScoManager;->notifyConnectionStateChanged(Landroid/bluetooth/BluetoothDevice;IIZ)V

    return-void
.end method

.method public notifyConnectionStateChanged(Landroid/bluetooth/BluetoothDevice;IIZ)V
    .locals 10

    const-wide/16 v8, 0x1f4

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    if-nez p1, :cond_0

    const-string/jumbo v1, "DualScoManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "notifyConnectionStateChanged : device is null / "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-nez p4, :cond_8

    const-string/jumbo v1, "DualScoManager"

    const-string/jumbo v2, "Connection state change from HeadsetStateMachine"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "DualScoManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "notifyConnectionStateChanged: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddressForLog()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x2

    if-ne p2, v1, :cond_7

    iget-object v1, p0, Lcom/samsung/bt/hfp/DualScoManager;->mDualScoPolicy:Lcom/samsung/bt/hfp/DualScoPolicy;

    invoke-virtual {v1, p1}, Lcom/samsung/bt/hfp/DualScoPolicy;->isWatch(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0, p1}, Lcom/samsung/bt/hfp/DualScoManager;->setHighPriorityDevice(Landroid/bluetooth/BluetoothDevice;)V

    :goto_0
    iget-object v1, p0, Lcom/samsung/bt/hfp/DualScoManager;->mService:Lcom/android/bluetooth/hfp/HeadsetServiceHelper;

    invoke-virtual {v1}, Lcom/android/bluetooth/hfp/HeadsetServiceHelper;->isAudioOn()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lcom/samsung/bt/hfp/DualScoManager;->isIncomingCall()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string/jumbo v1, "DualScoManager"

    const-string/jumbo v2, "AudioOn and IBR state"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_1
    return-void

    :cond_2
    invoke-virtual {p0, p1}, Lcom/samsung/bt/hfp/DualScoManager;->setHighPriorityInbandDevice(Landroid/bluetooth/BluetoothDevice;)V

    goto :goto_0

    :cond_3
    const-string/jumbo v1, "DualScoManager"

    const-string/jumbo v2, "AudioOn and MultiHfConnected"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/bt/hfp/DualScoManager;->getActiveScoDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/bt/hfp/DualScoManager;->mDualScoPolicy:Lcom/samsung/bt/hfp/DualScoPolicy;

    invoke-virtual {v1, p1}, Lcom/samsung/bt/hfp/DualScoPolicy;->getScoPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    iget-object v2, p0, Lcom/samsung/bt/hfp/DualScoManager;->mDualScoPolicy:Lcom/samsung/bt/hfp/DualScoPolicy;

    invoke-virtual {v2, v0}, Lcom/samsung/bt/hfp/DualScoPolicy;->getScoPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v2

    if-le v1, v2, :cond_4

    const-string/jumbo v1, "DualScoManager"

    const-string/jumbo v2, "New one has highest priority, switching SCO"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/samsung/bt/hfp/DualScoManager;->switchToDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object v1, p0, Lcom/samsung/bt/hfp/DualScoManager;->mService:Lcom/android/bluetooth/hfp/HeadsetServiceHelper;

    invoke-virtual {v1}, Lcom/android/bluetooth/hfp/HeadsetServiceHelper;->disconnectAudio()Z

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/samsung/bt/hfp/DualScoManager;->mDualScoPolicy:Lcom/samsung/bt/hfp/DualScoPolicy;

    invoke-virtual {v1, p1}, Lcom/samsung/bt/hfp/DualScoPolicy;->isWatch(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/samsung/bt/hfp/DualScoManager;->mDualScoPolicy:Lcom/samsung/bt/hfp/DualScoPolicy;

    invoke-virtual {v1, p1}, Lcom/samsung/bt/hfp/DualScoPolicy;->getScoPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    iget-object v2, p0, Lcom/samsung/bt/hfp/DualScoManager;->mDualScoPolicy:Lcom/samsung/bt/hfp/DualScoPolicy;

    invoke-virtual {v2, v0}, Lcom/samsung/bt/hfp/DualScoPolicy;->getScoPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v2

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/samsung/bt/hfp/DualScoManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/samsung/bt/hfp/DualScoManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v6, v4, v4, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    const-string/jumbo v1, "DualScoManager"

    const-string/jumbo v2, "New one has same priority, switching SCO"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Lcom/samsung/bt/hfp/DualScoManager;->isInAnyCall()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/bt/hfp/DualScoManager;->mDualScoPolicy:Lcom/samsung/bt/hfp/DualScoPolicy;

    invoke-virtual {v1, p1}, Lcom/samsung/bt/hfp/DualScoPolicy;->isWatch(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/samsung/bt/hfp/DualScoManager;->mService:Lcom/android/bluetooth/hfp/HeadsetServiceHelper;

    invoke-virtual {v1, p1}, Lcom/android/bluetooth/hfp/HeadsetServiceHelper;->isAudioConnected(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "DualScoManager"

    const-string/jumbo v2, "InCall, try to connect SCO if not watch"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/bt/hfp/DualScoManager;->switchToDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/samsung/bt/hfp/DualScoManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/samsung/bt/hfp/DualScoManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/samsung/bt/hfp/DualScoManager;->switchToDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2, v6, v4, v4, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_1

    :cond_6
    iget-object v1, p0, Lcom/samsung/bt/hfp/DualScoManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/samsung/bt/hfp/DualScoManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v6, v4, v4, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_1

    :cond_7
    if-nez p2, :cond_1

    iget-object v1, p0, Lcom/samsung/bt/hfp/DualScoManager;->mHighPriorityDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/bt/hfp/DualScoManager;->mHighPriorityDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v5}, Lcom/samsung/bt/hfp/DualScoManager;->setHighPriorityDevice(Landroid/bluetooth/BluetoothDevice;)V

    goto/16 :goto_1

    :cond_8
    const-string/jumbo v1, "DualScoManager"

    const-string/jumbo v2, "Connection State Change from Client State Machine"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method public setAudioManager(Landroid/media/AudioManager;)V
    .locals 2

    const-string/jumbo v0, "DualScoManager"

    const-string/jumbo v1, "setAudioManager"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/samsung/bt/hfp/DualScoManager;->mAudioManager:Landroid/media/AudioManager;

    return-void
.end method

.method public setClientServiceHelper(Lcom/android/bluetooth/hfpclient/HeadsetClientServiceHelper;)V
    .locals 2

    const-string/jumbo v0, "DualScoManager"

    const-string/jumbo v1, "Set HeadsetClientServiceHelper"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/samsung/bt/hfp/DualScoManager;->mClientService:Lcom/android/bluetooth/hfpclient/HeadsetClientServiceHelper;

    return-void
.end method

.method public setHighPriorityDevice(Landroid/bluetooth/BluetoothDevice;)V
    .locals 3

    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "HFDSM-setHighPriorityDevice : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddressForLog()Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/bluetooth/BluetoothDump;->BtLog(Ljava/lang/String;)V

    if-eqz p1, :cond_1

    const-string/jumbo v0, "DualScoManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setHighPriorityDevice : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddressForLog()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iput-object p1, p0, Lcom/samsung/bt/hfp/DualScoManager;->mHighPriorityDevice:Landroid/bluetooth/BluetoothDevice;

    iput-object p1, p0, Lcom/samsung/bt/hfp/DualScoManager;->mHighPriorityInbandDevice:Landroid/bluetooth/BluetoothDevice;

    return-void

    :cond_1
    const-string/jumbo v0, "DualScoManager"

    const-string/jumbo v1, "setHighPriorityDevice : device is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setHighPriorityInbandDevice(Landroid/bluetooth/BluetoothDevice;)V
    .locals 3

    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "HFDSM-setHighPriorityInbandDevice : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddressForLog()Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/bluetooth/BluetoothDump;->BtLog(Ljava/lang/String;)V

    if-eqz p1, :cond_1

    const-string/jumbo v0, "DualScoManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setHighPriorityInbandDevice : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddressForLog()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iput-object p1, p0, Lcom/samsung/bt/hfp/DualScoManager;->mHighPriorityInbandDevice:Landroid/bluetooth/BluetoothDevice;

    return-void

    :cond_1
    const-string/jumbo v0, "DualScoManager"

    const-string/jumbo v1, "setHighPriorityInbandDevice : device is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setIncomingCall(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/bt/hfp/DualScoManager;->mIncomingCallType:Z

    return-void
.end method

.method public setNotificationManager(Landroid/app/NotificationManager;)V
    .locals 2

    const-string/jumbo v0, "DualScoManager"

    const-string/jumbo v1, "setNotificationManager"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/samsung/bt/hfp/DualScoManager;->mNotificationManager:Landroid/app/NotificationManager;

    return-void
.end method

.method public setPreferredDevice(Landroid/bluetooth/BluetoothDevice;)V
    .locals 3

    if-eqz p1, :cond_0

    const-string/jumbo v0, "DualScoManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setPreferredDevice : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddressForLog()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iput-object p1, p0, Lcom/samsung/bt/hfp/DualScoManager;->mPreferredDevice:Landroid/bluetooth/BluetoothDevice;

    return-void

    :cond_0
    const-string/jumbo v0, "DualScoManager"

    const-string/jumbo v1, "setPreferredDevice : device is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setServiceHelper(Lcom/android/bluetooth/hfp/HeadsetServiceHelper;)V
    .locals 2

    const-string/jumbo v0, "DualScoManager"

    const-string/jumbo v1, "Set HeadsetServiceHelper"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/samsung/bt/hfp/DualScoManager;->mService:Lcom/android/bluetooth/hfp/HeadsetServiceHelper;

    new-instance v0, Lcom/samsung/bt/hfp/DualScoPolicy;

    iget-object v1, p0, Lcom/samsung/bt/hfp/DualScoManager;->mService:Lcom/android/bluetooth/hfp/HeadsetServiceHelper;

    invoke-virtual {v1}, Lcom/android/bluetooth/hfp/HeadsetServiceHelper;->getHeadsetService()Lcom/android/bluetooth/hfp/HeadsetService;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/bt/hfp/DualScoPolicy;-><init>(Lcom/android/bluetooth/hfp/HeadsetService;)V

    iput-object v0, p0, Lcom/samsung/bt/hfp/DualScoManager;->mDualScoPolicy:Lcom/samsung/bt/hfp/DualScoPolicy;

    return-void
.end method

.method public setSystemAudioInbandSupported(Z)V
    .locals 3

    const-string/jumbo v0, "DualScoManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setSystemAudioInbandSupported : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Lcom/samsung/bt/hfp/DualScoManager;->mSystemAudioInbandSupported:Z

    return-void
.end method

.method public switchAudio()Z
    .locals 4

    iget-object v1, p0, Lcom/samsung/bt/hfp/DualScoManager;->mHighPriorityDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v1, :cond_0

    const-string/jumbo v1, "DualScoManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "switchAudio() - switching to high priority HF "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/bt/hfp/DualScoManager;->mHighPriorityDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddressForLog()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/bt/hfp/DualScoManager;->mHighPriorityDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p0, v1}, Lcom/samsung/bt/hfp/DualScoManager;->switchAudioToDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/bt/hfp/DualScoManager;->getPriorityDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/samsung/bt/hfp/DualScoManager;->mDualScoPolicy:Lcom/samsung/bt/hfp/DualScoPolicy;

    invoke-virtual {v1, v0}, Lcom/samsung/bt/hfp/DualScoPolicy;->isWatch(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const-string/jumbo v1, "DualScoManager"

    const-string/jumbo v2, "There is no handsfree device to switch audio, switching audio back to Handset"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/bt/hfp/DualScoManager;->mService:Lcom/android/bluetooth/hfp/HeadsetServiceHelper;

    invoke-virtual {v1}, Lcom/android/bluetooth/hfp/HeadsetServiceHelper;->disconnectAudio()Z

    move-result v1

    return v1

    :cond_2
    const-string/jumbo v1, "DualScoManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "switchAudio() - switching to new high priority device "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddressForLog()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v0}, Lcom/samsung/bt/hfp/DualScoManager;->switchAudioToDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    return v1
.end method

.method public switchAudioAgToClient()Z
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/samsung/bt/hfp/DualScoManager;->mService:Lcom/android/bluetooth/hfp/HeadsetServiceHelper;

    invoke-virtual {v0}, Lcom/android/bluetooth/hfp/HeadsetServiceHelper;->isAudioOn()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/bt/hfp/DualScoManager;->switchToDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/samsung/bt/hfp/DualScoManager;->switchToDevice:Landroid/bluetooth/BluetoothDevice;

    :cond_0
    iget-object v0, p0, Lcom/samsung/bt/hfp/DualScoManager;->mService:Lcom/android/bluetooth/hfp/HeadsetServiceHelper;

    invoke-virtual {v0}, Lcom/android/bluetooth/hfp/HeadsetServiceHelper;->disconnectAudio()Z

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public switchAudioClientToAg(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/samsung/bt/hfp/DualScoManager;->getActiveAgDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    if-eqz v0, :cond_3

    if-eqz p1, :cond_1

    iput-object p1, p0, Lcom/samsung/bt/hfp/DualScoManager;->switchToDevice:Landroid/bluetooth/BluetoothDevice;

    sget-boolean v1, Lcom/samsung/bt/hfp/DualScoManager;->DBG:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "DualScoManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, " Switch Audio from remote AG device"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " To HF device :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/bt/hfp/DualScoManager;->switchToDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/samsung/bt/hfp/DualScoManager;->mClientService:Lcom/android/bluetooth/hfpclient/HeadsetClientServiceHelper;

    invoke-virtual {v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientServiceHelper;->isClientInVr()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "DualScoManager"

    const-string/jumbo v2, "Client is in VR, post Stop VR to Client State Machine"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/bt/hfp/DualScoManager;->mClientService:Lcom/android/bluetooth/hfpclient/HeadsetClientServiceHelper;

    invoke-virtual {v1, v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientServiceHelper;->stopVoiceRecognition(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    return v1

    :cond_1
    const-string/jumbo v1, "DualScoManager"

    const-string/jumbo v2, "No, Handsfree Device connected to Local Device, just terminate the Client Call"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/samsung/bt/hfp/DualScoManager;->mClientService:Lcom/android/bluetooth/hfpclient/HeadsetClientServiceHelper;

    invoke-virtual {v1, v0, v4}, Lcom/android/bluetooth/hfpclient/HeadsetClientServiceHelper;->terminateCall(Landroid/bluetooth/BluetoothDevice;I)Z

    move-result v1

    return v1

    :cond_3
    const-string/jumbo v1, "DualScoManager"

    const-string/jumbo v2, "There is no active AG device, Switch Audio from Client to HF Failed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4
.end method

.method public switchAudioToDevice(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 3

    if-nez p1, :cond_0

    const-string/jumbo v0, "DualScoManager"

    const-string/jumbo v1, "switchAudio: device is null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    :cond_0
    const-string/jumbo v0, "DualScoManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "switchAudio("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddressForLog()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/bt/hfp/DualScoManager;->mService:Lcom/android/bluetooth/hfp/HeadsetServiceHelper;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hfp/HeadsetServiceHelper;->isAudioConnected(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "DualScoManager"

    const-string/jumbo v1, "Audio is already connected with device"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0

    :cond_1
    iget-object v0, p0, Lcom/samsung/bt/hfp/DualScoManager;->mService:Lcom/android/bluetooth/hfp/HeadsetServiceHelper;

    invoke-virtual {v0}, Lcom/android/bluetooth/hfp/HeadsetServiceHelper;->isAudioOn()Z

    move-result v0

    if-eqz v0, :cond_2

    iput-object p1, p0, Lcom/samsung/bt/hfp/DualScoManager;->switchToDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object v0, p0, Lcom/samsung/bt/hfp/DualScoManager;->mService:Lcom/android/bluetooth/hfp/HeadsetServiceHelper;

    invoke-virtual {v0}, Lcom/android/bluetooth/hfp/HeadsetServiceHelper;->disconnectAudio()Z

    move-result v0

    return v0

    :cond_2
    iget-object v0, p0, Lcom/samsung/bt/hfp/DualScoManager;->mService:Lcom/android/bluetooth/hfp/HeadsetServiceHelper;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hfp/HeadsetServiceHelper;->connectAudio(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    return v0
.end method
