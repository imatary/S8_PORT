.class public Lcom/android/bluetooth/hdp/HealthService;
.super Lcom/android/bluetooth/btservice/ProfileService;
.source "HealthService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/hdp/HealthService$AppInfo;,
        Lcom/android/bluetooth/hdp/HealthService$BluetoothHealthBinder;,
        Lcom/android/bluetooth/hdp/HealthService$BluetoothHealthDeathRecipient;,
        Lcom/android/bluetooth/hdp/HealthService$ChannelStateEvent;,
        Lcom/android/bluetooth/hdp/HealthService$HealthChannel;,
        Lcom/android/bluetooth/hdp/HealthService$HealthServiceMessageHandler;
    }
.end annotation


# static fields
.field private static final APP_REG_STATE_DEREG_FAILED:I = 0x3

.field private static final APP_REG_STATE_DEREG_SUCCESS:I = 0x2

.field private static final APP_REG_STATE_REG_FAILED:I = 0x1

.field private static final APP_REG_STATE_REG_SUCCESS:I = 0x0

.field private static final CHANNEL_TYPE_ANY:I = 0x2

.field private static final CHANNEL_TYPE_RELIABLE:I = 0x0

.field private static final CHANNEL_TYPE_STREAMING:I = 0x1

.field private static final CONN_STATE_CONNECTED:I = 0x1

.field private static final CONN_STATE_CONNECTING:I = 0x0

.field private static final CONN_STATE_DESTROYED:I = 0x4

.field private static final CONN_STATE_DISCONNECTED:I = 0x3

.field private static final CONN_STATE_DISCONNECTING:I = 0x2

.field private static final DBG:Z = true

.field private static final MDEP_ROLE_SINK:I = 0x1

.field private static final MDEP_ROLE_SOURCE:I = 0x0

.field private static final MESSAGE_APP_REGISTRATION_CALLBACK:I = 0xb

.field private static final MESSAGE_CHANNEL_STATE_CALLBACK:I = 0xc

.field private static final MESSAGE_CONNECT_CHANNEL:I = 0x3

.field private static final MESSAGE_DISCONNECT_CHANNEL:I = 0x4

.field private static final MESSAGE_REGISTER_APPLICATION:I = 0x1

.field private static final MESSAGE_UNREGISTER_APPLICATION:I = 0x2

.field private static final TAG:Ljava/lang/String; = "HealthService"

.field private static final VDBG:Z


# instance fields
.field private mApps:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/bluetooth/BluetoothHealthAppConfiguration;",
            "Lcom/android/bluetooth/hdp/HealthService$AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Lcom/android/bluetooth/hdp/HealthService$HealthServiceMessageHandler;

.field private mHealthChannels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/bluetooth/hdp/HealthService$HealthChannel;",
            ">;"
        }
    .end annotation
.end field

.field private mHealthDevices:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mNativeAvailable:Z


# direct methods
.method static synthetic -get0(Lcom/android/bluetooth/hdp/HealthService;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/hdp/HealthService;->mApps:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/bluetooth/hdp/HealthService;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/hdp/HealthService;->mHealthChannels:Ljava/util/List;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/bluetooth/hdp/HealthService;[B)Landroid/bluetooth/BluetoothDevice;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hdp/HealthService;->getDevice([B)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/bluetooth/hdp/HealthService;I)Landroid/bluetooth/BluetoothHealthAppConfiguration;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/bluetooth/hdp/HealthService;->findAppConfigByAppId(I)Landroid/bluetooth/BluetoothHealthAppConfiguration;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap10(Lcom/android/bluetooth/hdp/HealthService;I)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/bluetooth/hdp/HealthService;->convertRoleToHal(I)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap11(Lcom/android/bluetooth/hdp/HealthService;IILjava/lang/String;I)I
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/bluetooth/hdp/HealthService;->registerHealthAppNative(IILjava/lang/String;I)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap12(Lcom/android/bluetooth/hdp/HealthService;Landroid/bluetooth/BluetoothHealthAppConfiguration;Landroid/bluetooth/BluetoothDevice;IILandroid/os/ParcelFileDescriptor;I)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/android/bluetooth/hdp/HealthService;->callHealthChannelCallback(Landroid/bluetooth/BluetoothHealthAppConfiguration;Landroid/bluetooth/BluetoothDevice;IILandroid/os/ParcelFileDescriptor;I)V

    return-void
.end method

.method static synthetic -wrap13(Lcom/android/bluetooth/hdp/HealthService;Landroid/bluetooth/BluetoothHealthAppConfiguration;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/hdp/HealthService;->callStatusCallback(Landroid/bluetooth/BluetoothHealthAppConfiguration;I)V

    return-void
.end method

.method static synthetic -wrap14(Lcom/android/bluetooth/hdp/HealthService;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hdp/HealthService;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/bluetooth/hdp/HealthService;I)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/bluetooth/hdp/HealthService;->disconnectChannelNative(I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Lcom/android/bluetooth/hdp/HealthService;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/bluetooth/hdp/HealthService;->isAvailable()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap4(Lcom/android/bluetooth/hdp/HealthService;I)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/bluetooth/hdp/HealthService;->unregisterHealthAppNative(I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap5(Lcom/android/bluetooth/hdp/HealthService;I)Lcom/android/bluetooth/hdp/HealthService$HealthChannel;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/bluetooth/hdp/HealthService;->findChannelById(I)Lcom/android/bluetooth/hdp/HealthService$HealthChannel;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap6(Lcom/android/bluetooth/hdp/HealthService;[BI)I
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/hdp/HealthService;->connectChannelNative([BI)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap7(Lcom/android/bluetooth/hdp/HealthService;I)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/bluetooth/hdp/HealthService;->convertChannelTypeToHal(I)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap8(Lcom/android/bluetooth/hdp/HealthService;I)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/bluetooth/hdp/HealthService;->convertHalChannelState(I)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap9(Lcom/android/bluetooth/hdp/HealthService;I)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/bluetooth/hdp/HealthService;->convertHalRegStatus(I)I

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/android/bluetooth/hdp/HealthService;->classInitNative()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/bluetooth/btservice/ProfileService;-><init>()V

    return-void
.end method

.method private broadcastHealthDeviceStateChange(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 9

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    iget-object v4, p0, Lcom/android/bluetooth/hdp/HealthService;->mHealthDevices:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/bluetooth/hdp/HealthService;->mHealthDevices:Ljava/util/Map;

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, p1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v4, p0, Lcom/android/bluetooth/hdp/HealthService;->mHealthDevices:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, p2}, Lcom/android/bluetooth/hdp/HealthService;->convertState(I)I

    move-result v2

    if-ne v1, v2, :cond_1

    return-void

    :cond_1
    const/4 v3, 0x0

    packed-switch v1, :pswitch_data_0

    :cond_2
    :goto_0
    if-eqz v3, :cond_3

    invoke-direct {p0, p1, v2, v1}, Lcom/android/bluetooth/hdp/HealthService;->updateAndSendIntent(Landroid/bluetooth/BluetoothDevice;II)V

    :cond_3
    return-void

    :pswitch_0
    const/4 v3, 0x1

    goto :goto_0

    :pswitch_1
    if-ne v2, v7, :cond_4

    const/4 v3, 0x1

    goto :goto_0

    :cond_4
    filled-new-array {v6, v8}, [I

    move-result-object v4

    invoke-direct {p0, p1, v4}, Lcom/android/bluetooth/hdp/HealthService;->findChannelByStates(Landroid/bluetooth/BluetoothDevice;[I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v3, 0x1

    goto :goto_0

    :pswitch_2
    filled-new-array {v6, v7}, [I

    move-result-object v4

    invoke-direct {p0, p1, v4}, Lcom/android/bluetooth/hdp/HealthService;->findChannelByStates(Landroid/bluetooth/BluetoothDevice;[I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v3, 0x1

    goto :goto_0

    :pswitch_3
    filled-new-array {v6, v8}, [I

    move-result-object v4

    invoke-direct {p0, p1, v4}, Lcom/android/bluetooth/hdp/HealthService;->findChannelByStates(Landroid/bluetooth/BluetoothDevice;[I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-direct {p0, p1, v2, v1}, Lcom/android/bluetooth/hdp/HealthService;->updateAndSendIntent(Landroid/bluetooth/BluetoothDevice;II)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private callHealthChannelCallback(Landroid/bluetooth/BluetoothHealthAppConfiguration;Landroid/bluetooth/BluetoothDevice;IILandroid/os/ParcelFileDescriptor;I)V
    .locals 9

    invoke-direct {p0, p2, p3}, Lcom/android/bluetooth/hdp/HealthService;->broadcastHealthDeviceStateChange(Landroid/bluetooth/BluetoothDevice;I)V

    if-eqz p2, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Health Device Callback: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getAddressForLog()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " State Change: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/hdp/HealthService;->log(Ljava/lang/String;)V

    :cond_0
    const/4 v5, 0x0

    if-eqz p5, :cond_1

    :try_start_0
    invoke-virtual {p5}, Landroid/os/ParcelFileDescriptor;->dup()Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/bluetooth/hdp/HealthService;->mApps:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/bluetooth/hdp/HealthService$AppInfo;

    invoke-static {v1}, Lcom/android/bluetooth/hdp/HealthService$AppInfo;->-get1(Lcom/android/bluetooth/hdp/HealthService$AppInfo;)Landroid/bluetooth/IBluetoothHealthCallback;

    move-result-object v0

    if-nez v0, :cond_2

    const-string/jumbo v1, "HealthService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "No callback found for config: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_0
    move-exception v8

    const/4 v5, 0x0

    const-string/jumbo v1, "HealthService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Exception while duping: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    move-object v1, p1

    move-object v2, p2

    move v3, p4

    move v4, p3

    move v6, p6

    :try_start_1
    invoke-interface/range {v0 .. v6}, Landroid/bluetooth/IBluetoothHealthCallback;->onHealthChannelStateChange(Landroid/bluetooth/BluetoothHealthAppConfiguration;Landroid/bluetooth/BluetoothDevice;IILandroid/os/ParcelFileDescriptor;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    return-void

    :catch_1
    move-exception v7

    const-string/jumbo v1, "HealthService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Remote Exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private callStatusCallback(Landroid/bluetooth/BluetoothHealthAppConfiguration;I)V
    .locals 5

    iget-object v2, p0, Lcom/android/bluetooth/hdp/HealthService;->mApps:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/bluetooth/hdp/HealthService$AppInfo;

    invoke-static {v2}, Lcom/android/bluetooth/hdp/HealthService$AppInfo;->-get1(Lcom/android/bluetooth/hdp/HealthService$AppInfo;)Landroid/bluetooth/IBluetoothHealthCallback;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v2, "HealthService"

    const-string/jumbo v3, "Callback object null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :try_start_0
    invoke-interface {v0, p1, p2}, Landroid/bluetooth/IBluetoothHealthCallback;->onHealthAppConfigurationStatusChange(Landroid/bluetooth/BluetoothHealthAppConfiguration;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    const-string/jumbo v2, "HealthService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Remote Exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static native classInitNative()V
.end method

.method private cleanupApps()V
    .locals 4

    iget-object v3, p0, Lcom/android/bluetooth/hdp/HealthService;->mApps:Ljava/util/Map;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/bluetooth/hdp/HealthService;->mApps:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/hdp/HealthService$AppInfo;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/android/bluetooth/hdp/HealthService$AppInfo;->-wrap0(Lcom/android/bluetooth/hdp/HealthService$AppInfo;)V

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private native cleanupNative()V
.end method

.method private connectChannel(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothHealthAppConfiguration;I)Z
    .locals 7

    const/4 v5, 0x0

    iget-object v1, p0, Lcom/android/bluetooth/hdp/HealthService;->mApps:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "HealthService"

    const-string/jumbo v2, "connectChannel fail to get a app id from config"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return v1

    :cond_0
    new-instance v0, Lcom/android/bluetooth/hdp/HealthService$HealthChannel;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/bluetooth/hdp/HealthService$HealthChannel;-><init>(Lcom/android/bluetooth/hdp/HealthService;Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothHealthAppConfiguration;ILcom/android/bluetooth/hdp/HealthService$HealthChannel;)V

    iget-object v1, p0, Lcom/android/bluetooth/hdp/HealthService;->mHandler:Lcom/android/bluetooth/hdp/HealthService$HealthServiceMessageHandler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/android/bluetooth/hdp/HealthService$HealthServiceMessageHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    iput-object v0, v6, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/bluetooth/hdp/HealthService;->mHandler:Lcom/android/bluetooth/hdp/HealthService$HealthServiceMessageHandler;

    invoke-virtual {v1, v6}, Lcom/android/bluetooth/hdp/HealthService$HealthServiceMessageHandler;->sendMessage(Landroid/os/Message;)Z

    const/4 v1, 0x1

    return v1
.end method

.method private native connectChannelNative([BI)I
.end method

.method private convertChannelTypeToHal(I)I
    .locals 4

    const/4 v3, 0x2

    const/16 v0, 0xa

    if-ne p1, v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/16 v0, 0xb

    if-ne p1, v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    const/16 v0, 0xc

    if-ne p1, v0, :cond_2

    return v3

    :cond_2
    const-string/jumbo v0, "HealthService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unkonw channel type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3
.end method

.method private convertHalChannelState(I)I
    .locals 4

    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_0

    const-string/jumbo v0, "HealthService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unexpected channel state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :pswitch_0
    const/4 v0, 0x2

    return v0

    :pswitch_1
    const/4 v0, 0x1

    return v0

    :pswitch_2
    const/4 v0, 0x3

    return v0

    :pswitch_3
    return v3

    :pswitch_4
    return v3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private convertHalRegStatus(I)I
    .locals 4

    const/4 v3, 0x1

    packed-switch p1, :pswitch_data_0

    const-string/jumbo v0, "HealthService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unexpected App Registration state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :pswitch_0
    const/4 v0, 0x0

    return v0

    :pswitch_1
    return v3

    :pswitch_2
    const/4 v0, 0x2

    return v0

    :pswitch_3
    const/4 v0, 0x3

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private convertRoleToHal(I)I
    .locals 4

    const/4 v3, 0x1

    if-ne p1, v3, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    return v3

    :cond_1
    const-string/jumbo v0, "HealthService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unkonw role: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3
.end method

.method private convertState(I)I
    .locals 4

    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_0

    const-string/jumbo v0, "HealthService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Mismatch in Channel and Health Device State: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :pswitch_0
    const/4 v0, 0x2

    return v0

    :pswitch_1
    const/4 v0, 0x1

    return v0

    :pswitch_2
    const/4 v0, 0x3

    return v0

    :pswitch_3
    return v3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private native disconnectChannelNative(I)Z
.end method

.method private findAppConfigByAppId(I)Landroid/bluetooth/BluetoothHealthAppConfiguration;
    .locals 6

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/android/bluetooth/hdp/HealthService;->mApps:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/bluetooth/hdp/HealthService$AppInfo;

    invoke-static {v3}, Lcom/android/bluetooth/hdp/HealthService$AppInfo;->-get0(Lcom/android/bluetooth/hdp/HealthService$AppInfo;)I

    move-result v3

    if-ne p1, v3, :cond_0

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothHealthAppConfiguration;

    :cond_1
    if-nez v0, :cond_2

    const-string/jumbo v3, "HealthService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "No appConfig found for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-object v0
.end method

.method private findChannelById(I)Lcom/android/bluetooth/hdp/HealthService$HealthChannel;
    .locals 5

    iget-object v2, p0, Lcom/android/bluetooth/hdp/HealthService;->mHealthChannels:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/hdp/HealthService$HealthChannel;

    invoke-static {v0}, Lcom/android/bluetooth/hdp/HealthService$HealthChannel;->-get1(Lcom/android/bluetooth/hdp/HealthService$HealthChannel;)I

    move-result v2

    if-ne v2, p1, :cond_0

    return-object v0

    :cond_1
    const-string/jumbo v2, "HealthService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "No channel found by id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    return-object v2
.end method

.method private findChannelByStates(Landroid/bluetooth/BluetoothDevice;[I)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/bluetooth/BluetoothDevice;",
            "[I)",
            "Ljava/util/List",
            "<",
            "Lcom/android/bluetooth/hdp/HealthService$HealthChannel;",
            ">;"
        }
    .end annotation

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, p0, Lcom/android/bluetooth/hdp/HealthService;->mHealthChannels:Ljava/util/List;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/hdp/HealthService$HealthChannel;

    invoke-static {v0}, Lcom/android/bluetooth/hdp/HealthService$HealthChannel;->-get3(Lcom/android/bluetooth/hdp/HealthService$HealthChannel;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    array-length v5, p2

    :goto_0
    if-ge v4, v5, :cond_0

    aget v3, p2, v4

    invoke-static {v0}, Lcom/android/bluetooth/hdp/HealthService$HealthChannel;->-get4(Lcom/android/bluetooth/hdp/HealthService$HealthChannel;)I

    move-result v6

    if-ne v6, v3, :cond_1

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return-object v2
.end method

.method private getConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/hdp/HealthService;->mHealthDevices:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/hdp/HealthService;->mHealthDevices:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method private getStringChannelType(I)Ljava/lang/String;
    .locals 1

    const/16 v0, 0xa

    if-ne p1, v0, :cond_0

    const-string/jumbo v0, "Reliable"

    return-object v0

    :cond_0
    const/16 v0, 0xb

    if-ne p1, v0, :cond_1

    const-string/jumbo v0, "Streaming"

    return-object v0

    :cond_1
    const-string/jumbo v0, "Any"

    return-object v0
.end method

.method private native initializeNative()V
.end method

.method private onAppRegistrationState(II)V
    .locals 3

    iget-object v1, p0, Lcom/android/bluetooth/hdp/HealthService;->mHandler:Lcom/android/bluetooth/hdp/HealthService$HealthServiceMessageHandler;

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Lcom/android/bluetooth/hdp/HealthService$HealthServiceMessageHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput p1, v0, Landroid/os/Message;->arg1:I

    iput p2, v0, Landroid/os/Message;->arg2:I

    iget-object v1, p0, Lcom/android/bluetooth/hdp/HealthService;->mHandler:Lcom/android/bluetooth/hdp/HealthService$HealthServiceMessageHandler;

    invoke-virtual {v1, v0}, Lcom/android/bluetooth/hdp/HealthService$HealthServiceMessageHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private onChannelStateChanged(I[BIIILjava/io/FileDescriptor;)V
    .locals 10

    iget-object v1, p0, Lcom/android/bluetooth/hdp/HealthService;->mHandler:Lcom/android/bluetooth/hdp/HealthService$HealthServiceMessageHandler;

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Lcom/android/bluetooth/hdp/HealthService$HealthServiceMessageHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    new-instance v0, Lcom/android/bluetooth/hdp/HealthService$ChannelStateEvent;

    const/4 v8, 0x0

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move-object/from16 v7, p6

    invoke-direct/range {v0 .. v8}, Lcom/android/bluetooth/hdp/HealthService$ChannelStateEvent;-><init>(Lcom/android/bluetooth/hdp/HealthService;I[BIIILjava/io/FileDescriptor;Lcom/android/bluetooth/hdp/HealthService$ChannelStateEvent;)V

    iput-object v0, v9, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/bluetooth/hdp/HealthService;->mHandler:Lcom/android/bluetooth/hdp/HealthService$HealthServiceMessageHandler;

    invoke-virtual {v1, v9}, Lcom/android/bluetooth/hdp/HealthService$HealthServiceMessageHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private native registerHealthAppNative(IILjava/lang/String;I)I
.end method

.method private native unregisterHealthAppNative(I)Z
.end method

.method private updateAndSendIntent(Landroid/bluetooth/BluetoothDevice;II)V
    .locals 2

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/android/bluetooth/hdp/HealthService;->mHealthDevices:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/android/bluetooth/hdp/HealthService;->notifyProfileConnectionStateChanged(Landroid/bluetooth/BluetoothDevice;III)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/hdp/HealthService;->mHealthDevices:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method protected cleanup()Z
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/hdp/HealthService;->mHandler:Lcom/android/bluetooth/hdp/HealthService$HealthServiceMessageHandler;

    iget-boolean v0, p0, Lcom/android/bluetooth/hdp/HealthService;->mNativeAvailable:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/bluetooth/hdp/HealthService;->cleanupNative()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/bluetooth/hdp/HealthService;->mNativeAvailable:Z

    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/hdp/HealthService;->mHealthChannels:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/bluetooth/hdp/HealthService;->mHealthChannels:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_1
    iget-object v0, p0, Lcom/android/bluetooth/hdp/HealthService;->mHealthDevices:Ljava/util/Map;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/bluetooth/hdp/HealthService;->mHealthDevices:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    :cond_2
    iget-object v0, p0, Lcom/android/bluetooth/hdp/HealthService;->mApps:Ljava/util/Map;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/bluetooth/hdp/HealthService;->mApps:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method connectChannelToSink(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothHealthAppConfiguration;I)Z
    .locals 2

    const-string/jumbo v0, "android.permission.BLUETOOTH"

    const-string/jumbo v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/hdp/HealthService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3}, Lcom/android/bluetooth/hdp/HealthService;->connectChannel(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothHealthAppConfiguration;I)Z

    move-result v0

    return v0
.end method

.method connectChannelToSource(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothHealthAppConfiguration;)Z
    .locals 2

    const-string/jumbo v0, "android.permission.BLUETOOTH"

    const-string/jumbo v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/hdp/HealthService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0xc

    invoke-direct {p0, p1, p2, v0}, Lcom/android/bluetooth/hdp/HealthService;->connectChannel(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothHealthAppConfiguration;I)Z

    move-result v0

    return v0
.end method

.method disconnectChannel(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothHealthAppConfiguration;I)Z
    .locals 4

    const-string/jumbo v2, "android.permission.BLUETOOTH"

    const-string/jumbo v3, "Need BLUETOOTH permission"

    invoke-virtual {p0, v2, v3}, Lcom/android/bluetooth/hdp/HealthService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p3}, Lcom/android/bluetooth/hdp/HealthService;->findChannelById(I)Lcom/android/bluetooth/hdp/HealthService$HealthChannel;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v2, "HealthService"

    const-string/jumbo v3, "disconnectChannel: no channel found"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    return v2

    :cond_0
    iget-object v2, p0, Lcom/android/bluetooth/hdp/HealthService;->mHandler:Lcom/android/bluetooth/hdp/HealthService$HealthServiceMessageHandler;

    const/4 v3, 0x4

    invoke-virtual {v2, v3, v0}, Lcom/android/bluetooth/hdp/HealthService$HealthServiceMessageHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/hdp/HealthService;->mHandler:Lcom/android/bluetooth/hdp/HealthService$HealthServiceMessageHandler;

    invoke-virtual {v2, v1}, Lcom/android/bluetooth/hdp/HealthService$HealthServiceMessageHandler;->sendMessage(Landroid/os/Message;)Z

    const/4 v2, 0x1

    return v2
.end method

.method public dump(Ljava/lang/StringBuilder;)V
    .locals 8

    invoke-super {p0, p1}, Lcom/android/bluetooth/btservice/ProfileService;->dump(Ljava/lang/StringBuilder;)V

    const-string/jumbo v6, "mHealthChannels:"

    invoke-static {p1, v6}, Lcom/android/bluetooth/hdp/HealthService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/bluetooth/hdp/HealthService;->mHealthChannels:Ljava/util/List;

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/hdp/HealthService$HealthChannel;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p1, v6}, Lcom/android/bluetooth/hdp/HealthService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string/jumbo v6, "mApps:"

    invoke-static {p1, v6}, Lcom/android/bluetooth/hdp/HealthService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/bluetooth/hdp/HealthService;->mApps:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothHealthAppConfiguration;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/bluetooth/hdp/HealthService;->mApps:Ljava/util/Map;

    invoke-interface {v7, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p1, v6}, Lcom/android/bluetooth/hdp/HealthService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const-string/jumbo v6, "mHealthDevices:"

    invoke-static {p1, v6}, Lcom/android/bluetooth/hdp/HealthService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/bluetooth/hdp/HealthService;->mHealthDevices:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/bluetooth/BluetoothDevice;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/bluetooth/hdp/HealthService;->mHealthDevices:Ljava/util/Map;

    invoke-interface {v7, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p1, v6}, Lcom/android/bluetooth/hdp/HealthService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    return-void
.end method

.method getConnectedHealthDevices()Ljava/util/List;
    .locals 4
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

    invoke-virtual {p0, v1, v2}, Lcom/android/bluetooth/hdp/HealthService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x2

    const/4 v3, 0x0

    aput v2, v1, v3

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/hdp/HealthService;->lookupHealthDevicesMatchingStates([I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method getHealthDeviceConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    .locals 2

    const-string/jumbo v0, "android.permission.BLUETOOTH"

    const-string/jumbo v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/hdp/HealthService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/bluetooth/hdp/HealthService;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    return v0
.end method

.method getHealthDevicesMatchingConnectionStates([I)Ljava/util/List;
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

    const-string/jumbo v1, "android.permission.BLUETOOTH"

    const-string/jumbo v2, "Need BLUETOOTH permission"

    invoke-virtual {p0, v1, v2}, Lcom/android/bluetooth/hdp/HealthService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hdp/HealthService;->lookupHealthDevicesMatchingStates([I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method getMainChannelFd(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothHealthAppConfiguration;)Landroid/os/ParcelFileDescriptor;
    .locals 7

    const/4 v6, 0x0

    const-string/jumbo v3, "android.permission.BLUETOOTH"

    const-string/jumbo v4, "Need BLUETOOTH permission"

    invoke-virtual {p0, v3, v4}, Lcom/android/bluetooth/hdp/HealthService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/bluetooth/hdp/HealthService;->mHealthChannels:Ljava/util/List;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/hdp/HealthService$HealthChannel;

    invoke-static {v0}, Lcom/android/bluetooth/hdp/HealthService$HealthChannel;->-get3(Lcom/android/bluetooth/hdp/HealthService$HealthChannel;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v0}, Lcom/android/bluetooth/hdp/HealthService$HealthChannel;->-get2(Lcom/android/bluetooth/hdp/HealthService$HealthChannel;)Landroid/bluetooth/BluetoothHealthAppConfiguration;

    move-result-object v3

    invoke-virtual {v3, p2}, Landroid/bluetooth/BluetoothHealthAppConfiguration;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v2, v0

    goto :goto_0

    :cond_1
    if-nez v2, :cond_3

    if-eqz p1, :cond_2

    const-string/jumbo v3, "HealthService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "No channel found for device: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddressForLog()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " config: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-object v6

    :cond_2
    const-string/jumbo v3, "HealthService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "No channel found for device: null config: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    invoke-static {v2}, Lcom/android/bluetooth/hdp/HealthService$HealthChannel;->-get0(Lcom/android/bluetooth/hdp/HealthService$HealthChannel;)Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    return-object v3
.end method

.method protected getName()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "HealthService"

    return-object v0
.end method

.method protected initBinder()Lcom/android/bluetooth/btservice/ProfileService$IProfileServiceBinder;
    .locals 1

    new-instance v0, Lcom/android/bluetooth/hdp/HealthService$BluetoothHealthBinder;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/hdp/HealthService$BluetoothHealthBinder;-><init>(Lcom/android/bluetooth/hdp/HealthService;)V

    return-object v0
.end method

.method lookupHealthDevicesMatchingStates([I)Ljava/util/List;
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

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v5, p0, Lcom/android/bluetooth/hdp/HealthService;->mHealthDevices:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    invoke-direct {p0, v0}, Lcom/android/bluetooth/hdp/HealthService;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v2

    const/4 v5, 0x0

    array-length v6, p1

    :goto_1
    if-ge v5, v6, :cond_0

    aget v4, p1, v5

    if-ne v4, v2, :cond_1

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    return-object v3
.end method

.method registerAppConfiguration(Landroid/bluetooth/BluetoothHealthAppConfiguration;Landroid/bluetooth/IBluetoothHealthCallback;)Z
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    const-string/jumbo v1, "android.permission.BLUETOOTH"

    const-string/jumbo v2, "Need BLUETOOTH permission"

    invoke-virtual {p0, v1, v2}, Lcom/android/bluetooth/hdp/HealthService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/bluetooth/hdp/HealthService;->mApps:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "HealthService"

    const-string/jumbo v2, "Config has already been registered"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return v1

    :cond_0
    iget-object v1, p0, Lcom/android/bluetooth/hdp/HealthService;->mApps:Ljava/util/Map;

    new-instance v2, Lcom/android/bluetooth/hdp/HealthService$AppInfo;

    invoke-direct {v2, p2, v4}, Lcom/android/bluetooth/hdp/HealthService$AppInfo;-><init>(Landroid/bluetooth/IBluetoothHealthCallback;Lcom/android/bluetooth/hdp/HealthService$AppInfo;)V

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/bluetooth/hdp/HealthService;->mHandler:Lcom/android/bluetooth/hdp/HealthService$HealthServiceMessageHandler;

    invoke-virtual {v1, v3, p1}, Lcom/android/bluetooth/hdp/HealthService$HealthServiceMessageHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/bluetooth/hdp/HealthService;->mHandler:Lcom/android/bluetooth/hdp/HealthService$HealthServiceMessageHandler;

    invoke-virtual {v1, v0}, Lcom/android/bluetooth/hdp/HealthService$HealthServiceMessageHandler;->sendMessage(Landroid/os/Message;)Z

    return v3
.end method

.method protected start()Z
    .locals 5

    const/4 v4, 0x1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v2}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/android/bluetooth/hdp/HealthService;->mHealthChannels:Ljava/util/List;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-static {v2}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    iput-object v2, p0, Lcom/android/bluetooth/hdp/HealthService;->mApps:Ljava/util/Map;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-static {v2}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    iput-object v2, p0, Lcom/android/bluetooth/hdp/HealthService;->mHealthDevices:Ljava/util/Map;

    new-instance v1, Landroid/os/HandlerThread;

    const-string/jumbo v2, "BluetoothHdpHandler"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    new-instance v2, Lcom/android/bluetooth/hdp/HealthService$HealthServiceMessageHandler;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v0, v3}, Lcom/android/bluetooth/hdp/HealthService$HealthServiceMessageHandler;-><init>(Lcom/android/bluetooth/hdp/HealthService;Landroid/os/Looper;Lcom/android/bluetooth/hdp/HealthService$HealthServiceMessageHandler;)V

    iput-object v2, p0, Lcom/android/bluetooth/hdp/HealthService;->mHandler:Lcom/android/bluetooth/hdp/HealthService$HealthServiceMessageHandler;

    invoke-direct {p0}, Lcom/android/bluetooth/hdp/HealthService;->initializeNative()V

    iput-boolean v4, p0, Lcom/android/bluetooth/hdp/HealthService;->mNativeAvailable:Z

    return v4
.end method

.method protected stop()Z
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/bluetooth/hdp/HealthService;->mHandler:Lcom/android/bluetooth/hdp/HealthService$HealthServiceMessageHandler;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/bluetooth/hdp/HealthService;->mHandler:Lcom/android/bluetooth/hdp/HealthService$HealthServiceMessageHandler;

    invoke-virtual {v1, v2}, Lcom/android/bluetooth/hdp/HealthService$HealthServiceMessageHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/bluetooth/hdp/HealthService;->mHandler:Lcom/android/bluetooth/hdp/HealthService$HealthServiceMessageHandler;

    invoke-virtual {v1}, Lcom/android/bluetooth/hdp/HealthService$HealthServiceMessageHandler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    :cond_0
    invoke-direct {p0}, Lcom/android/bluetooth/hdp/HealthService;->cleanupApps()V

    const/4 v1, 0x1

    return v1
.end method

.method unregisterAppConfiguration(Landroid/bluetooth/BluetoothHealthAppConfiguration;)Z
    .locals 3

    const-string/jumbo v1, "android.permission.BLUETOOTH"

    const-string/jumbo v2, "Need BLUETOOTH permission"

    invoke-virtual {p0, v1, v2}, Lcom/android/bluetooth/hdp/HealthService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/bluetooth/hdp/HealthService;->mApps:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "HealthService"

    const-string/jumbo v2, "unregisterAppConfiguration: no app found"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return v1

    :cond_0
    iget-object v1, p0, Lcom/android/bluetooth/hdp/HealthService;->mHandler:Lcom/android/bluetooth/hdp/HealthService$HealthServiceMessageHandler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p1}, Lcom/android/bluetooth/hdp/HealthService$HealthServiceMessageHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/bluetooth/hdp/HealthService;->mHandler:Lcom/android/bluetooth/hdp/HealthService$HealthServiceMessageHandler;

    invoke-virtual {v1, v0}, Lcom/android/bluetooth/hdp/HealthService$HealthServiceMessageHandler;->sendMessage(Landroid/os/Message;)Z

    const/4 v1, 0x1

    return v1
.end method
