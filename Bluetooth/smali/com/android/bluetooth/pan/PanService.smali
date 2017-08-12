.class public Lcom/android/bluetooth/pan/PanService;
.super Lcom/android/bluetooth/btservice/ProfileService;
.source "PanService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/pan/PanService$1;,
        Lcom/android/bluetooth/pan/PanService$2;,
        Lcom/android/bluetooth/pan/PanService$BluetoothPanBinder;,
        Lcom/android/bluetooth/pan/PanService$BluetoothPanDevice;,
        Lcom/android/bluetooth/pan/PanService$ConnectState;,
        Lcom/android/bluetooth/pan/PanService$EnhancedTetherReceiver;,
        Lcom/android/bluetooth/pan/PanService$TetheringReceiver;
    }
.end annotation


# static fields
.field private static final BLUETOOTH_IFACE_ADDR_START:Ljava/lang/String; = "192.168.44.1"

.field private static final BLUETOOTH_LOGGING_APP_FEATURE:Ljava/lang/String; = "BPAR"

.field private static final BLUETOOTH_LOGGING_APP_ID:Ljava/lang/String; = "com.android.bluetooth"

.field private static final BLUETOOTH_MAX_PAN_CONNECTIONS:I = 0x5

.field private static final BLUETOOTH_PREFIX_LENGTH:I = 0x18

.field private static final BLUETOOTH_TETHER_INTENT:Ljava/lang/String; = "android.net.BT_TETHER_STATE_CHANGED"

.field private static final CONN_STATE_CONNECTED:I = 0x0

.field private static final CONN_STATE_CONNECTING:I = 0x1

.field private static final CONN_STATE_DISCONNECTED:I = 0x2

.field private static final CONN_STATE_DISCONNECTING:I = 0x3

.field private static final DBG:Z

.field private static final EXTRA_INACTIVE_NAP_RESULT:Ljava/lang/String; = "com.samsung.bluetooth.extra.pan.inactivenap.CONFIRM_RESULT"

.field private static final FOUND_DEV_ADDR:Ljava/lang/String; = "bt_addr"

.field private static final INTENT_INACTIVE_NAP_CONNECTION:Ljava/lang/String; = "com.samsung.bluetooth.pan.inactivenap.ASK_CONFIRM"

.field private static final MESSAGE_CONNECT:I = 0x1

.field private static final MESSAGE_CONNECT_STATE_CHANGED:I = 0xb

.field private static final MESSAGE_DISCONNECT:I = 0x2

.field private static final MSG_ON_FOUND:I = 0x1

.field private static final PROFILES_PREF:Ljava/lang/String; = "Bluetooth_PAN_AutoReconnection"

.field private static final TAG:Ljava/lang/String; = "PanService"

.field private static final is3LMAllowed:Z = false

.field private static isAutoRecon:Z = false

.field private static final isAutoreconnSupport:Z = true

.field private static isLinkLoss:Z


# instance fields
.field private EDM_FALSE:I

.field private EDM_NULL:I

.field private EDM_TRUE:I

.field private LOCAL_USER_DISCONNECTION:I

.field private REASON_LINK_LOSS:I

.field private REMOTE_USER_DISCONNECTION:I

.field private isConnectFromNAP:Z

.field private isConnectFromPANU:Z

.field private isConnecting:Z

.field private final mETMHandler:Landroid/os/Handler;

.field private mETManager:Lcom/samsung/bt/pan/EnhancedTetheringManager;

.field private mEnhancedTetherReceiver:Lcom/android/bluetooth/pan/PanService$EnhancedTetherReceiver;

.field private final mHandler:Landroid/os/Handler;

.field private mMaxPanDevices:I

.field private mNapIfaceAddr:Ljava/lang/String;

.field private mNativeAvailable:Z

.field private mNetworkFactory:Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;

.field private mPanDevices:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            "Lcom/android/bluetooth/pan/PanService$BluetoothPanDevice;",
            ">;"
        }
    .end annotation
.end field

.field private mPanIfName:Ljava/lang/String;

.field private mTetherOn:Z

.field private mTetherReceiver:Landroid/content/BroadcastReceiver;

.field private mTetherfilter:Landroid/content/IntentFilter;


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/android/bluetooth/pan/PanService;->DBG:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/bluetooth/pan/PanService;)I
    .locals 1

    iget v0, p0, Lcom/android/bluetooth/pan/PanService;->LOCAL_USER_DISCONNECTION:I

    return v0
.end method

.method static synthetic -get2(Lcom/android/bluetooth/pan/PanService;)I
    .locals 1

    iget v0, p0, Lcom/android/bluetooth/pan/PanService;->REASON_LINK_LOSS:I

    return v0
.end method

.method static synthetic -get3(Lcom/android/bluetooth/pan/PanService;)I
    .locals 1

    iget v0, p0, Lcom/android/bluetooth/pan/PanService;->REMOTE_USER_DISCONNECTION:I

    return v0
.end method

.method static synthetic -get4(Lcom/android/bluetooth/pan/PanService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/bluetooth/pan/PanService;->isConnecting:Z

    return v0
.end method

.method static synthetic -get5(Lcom/android/bluetooth/pan/PanService;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/pan/PanService;->mETMHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/bluetooth/pan/PanService;)Lcom/samsung/bt/pan/EnhancedTetheringManager;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/pan/PanService;->mETManager:Lcom/samsung/bt/pan/EnhancedTetheringManager;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/bluetooth/pan/PanService;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/pan/PanService;->mPanIfName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/bluetooth/pan/PanService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/bluetooth/pan/PanService;->mTetherOn:Z

    return v0
.end method

.method static synthetic -set0(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/bluetooth/pan/PanService;->isAutoRecon:Z

    return p0
.end method

.method static synthetic -set1(Lcom/android/bluetooth/pan/PanService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/bluetooth/pan/PanService;->isConnecting:Z

    return p1
.end method

.method static synthetic -set2(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/bluetooth/pan/PanService;->isLinkLoss:Z

    return p0
.end method

.method static synthetic -set3(Lcom/android/bluetooth/pan/PanService;Lcom/samsung/bt/pan/EnhancedTetheringManager;)Lcom/samsung/bt/pan/EnhancedTetheringManager;
    .locals 0

    iput-object p1, p0, Lcom/android/bluetooth/pan/PanService;->mETManager:Lcom/samsung/bt/pan/EnhancedTetheringManager;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/bluetooth/pan/PanService;[B)Landroid/bluetooth/BluetoothDevice;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/pan/PanService;->getDevice([B)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/bluetooth/pan/PanService;[BII)Z
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/android/bluetooth/pan/PanService;->connectPanNative([BII)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/android/bluetooth/pan/PanService;[B)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/bluetooth/pan/PanService;->disconnectPanNative([B)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Lcom/android/bluetooth/pan/PanService;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/bluetooth/pan/PanService;->isAvailable()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap4(I)I
    .locals 1

    invoke-static {p0}, Lcom/android/bluetooth/pan/PanService;->convertHalState(I)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap5(Lcom/android/bluetooth/pan/PanService;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/pan/PanService;->log(Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/android/bluetooth/pan/PanService;->DBG:Z

    sput-boolean v1, Lcom/android/bluetooth/pan/PanService;->isLinkLoss:Z

    sput-boolean v1, Lcom/android/bluetooth/pan/PanService;->isAutoRecon:Z

    invoke-static {}, Lcom/android/bluetooth/pan/PanService;->classInitNative()V

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/bluetooth/btservice/ProfileService;-><init>()V

    iput-boolean v1, p0, Lcom/android/bluetooth/pan/PanService;->mTetherOn:Z

    iput-object v2, p0, Lcom/android/bluetooth/pan/PanService;->mETManager:Lcom/samsung/bt/pan/EnhancedTetheringManager;

    iput-object v2, p0, Lcom/android/bluetooth/pan/PanService;->mEnhancedTetherReceiver:Lcom/android/bluetooth/pan/PanService$EnhancedTetherReceiver;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/bluetooth/pan/PanService;->EDM_NULL:I

    iput v1, p0, Lcom/android/bluetooth/pan/PanService;->EDM_FALSE:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/bluetooth/pan/PanService;->EDM_TRUE:I

    const/16 v0, 0x8

    iput v0, p0, Lcom/android/bluetooth/pan/PanService;->REASON_LINK_LOSS:I

    const/16 v0, 0x13

    iput v0, p0, Lcom/android/bluetooth/pan/PanService;->REMOTE_USER_DISCONNECTION:I

    const/16 v0, 0x16

    iput v0, p0, Lcom/android/bluetooth/pan/PanService;->LOCAL_USER_DISCONNECTION:I

    iput-boolean v1, p0, Lcom/android/bluetooth/pan/PanService;->isConnectFromPANU:Z

    iput-boolean v1, p0, Lcom/android/bluetooth/pan/PanService;->isConnectFromNAP:Z

    iput-boolean v1, p0, Lcom/android/bluetooth/pan/PanService;->isConnecting:Z

    iput-object v2, p0, Lcom/android/bluetooth/pan/PanService;->mTetherReceiver:Landroid/content/BroadcastReceiver;

    iput-object v2, p0, Lcom/android/bluetooth/pan/PanService;->mTetherfilter:Landroid/content/IntentFilter;

    new-instance v0, Lcom/android/bluetooth/pan/PanService$1;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/pan/PanService$1;-><init>(Lcom/android/bluetooth/pan/PanService;)V

    iput-object v0, p0, Lcom/android/bluetooth/pan/PanService;->mETMHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/bluetooth/pan/PanService$2;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/pan/PanService$2;-><init>(Lcom/android/bluetooth/pan/PanService;)V

    iput-object v0, p0, Lcom/android/bluetooth/pan/PanService;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private static native classInitNative()V
.end method

.method private native cleanupNative()V
.end method

.method private configureBtIface(ZLjava/lang/String;)Ljava/lang/String;
    .locals 19

    const-string/jumbo v16, "PanService"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "configureBtIface: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, " enable: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v16, "network_management"

    invoke-static/range {v16 .. v16}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v13

    const-string/jumbo v16, "connectivity"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/pan/PanService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/ConnectivityManager;

    invoke-virtual {v6}, Landroid/net/ConnectivityManager;->getTetherableBluetoothRegexs()[Ljava/lang/String;

    move-result-object v5

    const/16 v16, 0x0

    move/from16 v0, v16

    new-array v8, v0, [Ljava/lang/String;

    :try_start_0
    invoke-interface {v13}, Landroid/os/INetworkManagementService;->listInterfaces()[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    const/4 v10, 0x0

    const/16 v16, 0x0

    array-length v0, v8

    move/from16 v17, v0

    :goto_0
    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_0

    aget-object v7, v8, v16

    move-object/from16 v0, p2

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1

    const/4 v10, 0x1

    :cond_0
    if-nez v10, :cond_2

    const/16 v16, 0x0

    return-object v16

    :catch_0
    move-exception v9

    const-string/jumbo v16, "PanService"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "Error listing Interfaces :"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v16, 0x0

    return-object v16

    :cond_1
    add-int/lit8 v16, v16, 0x1

    goto :goto_0

    :cond_2
    const/4 v11, 0x0

    const/4 v3, 0x0

    :try_start_1
    move-object/from16 v0, p2

    invoke-interface {v13, v0}, Landroid/os/INetworkManagementService;->getInterfaceConfig(Ljava/lang/String;)Landroid/net/InterfaceConfiguration;

    move-result-object v11

    if-eqz v11, :cond_8

    const/4 v2, 0x0

    invoke-virtual {v11}, Landroid/net/InterfaceConfiguration;->getLinkAddress()Landroid/net/LinkAddress;

    move-result-object v12

    if-eqz v12, :cond_3

    invoke-virtual {v12}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    if-nez v2, :cond_5

    :cond_3
    :goto_1
    const-string/jumbo v3, "192.168.44.1"

    invoke-static {v3}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    :cond_4
    new-instance v16, Landroid/net/LinkAddress;

    const/16 v17, 0x18

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-direct {v0, v2, v1}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Landroid/net/InterfaceConfiguration;->setLinkAddress(Landroid/net/LinkAddress;)V

    if-eqz p1, :cond_6

    invoke-virtual {v11}, Landroid/net/InterfaceConfiguration;->setInterfaceUp()V

    :goto_2
    const-string/jumbo v16, "running"

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Landroid/net/InterfaceConfiguration;->clearFlag(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-interface {v13, v0, v11}, Landroid/os/INetworkManagementService;->setInterfaceConfig(Ljava/lang/String;Landroid/net/InterfaceConfiguration;)V

    const-wide/16 v16, 0x3e8

    invoke-static/range {v16 .. v17}, Ljava/lang/Thread;->sleep(J)V

    if-eqz p1, :cond_7

    move-object/from16 v0, p2

    invoke-virtual {v6, v0}, Landroid/net/ConnectivityManager;->tether(Ljava/lang/String;)I

    move-result v14

    if-eqz v14, :cond_8

    const-string/jumbo v16, "PanService"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "Error tethering "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, " tetherStatus: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v16, 0x0

    return-object v16

    :cond_5
    const-string/jumbo v16, "0.0.0.0"

    invoke-static/range {v16 .. v16}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_3

    const-string/jumbo v16, "::0"

    invoke-static/range {v16 .. v16}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_4

    goto/16 :goto_1

    :cond_6
    invoke-virtual {v11}, Landroid/net/InterfaceConfiguration;->setInterfaceDown()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v9

    const-string/jumbo v16, "PanService"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "Error configuring interface "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, ", :"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v16, 0x0

    return-object v16

    :cond_7
    :try_start_2
    move-object/from16 v0, p2

    invoke-virtual {v6, v0}, Landroid/net/ConnectivityManager;->untether(Ljava/lang/String;)I

    move-result v15

    const-string/jumbo v16, "PanService"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "Untethered: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, " untetherStatus: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :cond_8
    return-object v3
.end method

.method private native connectPanNative([BII)Z
.end method

.method private static convertHalState(I)I
    .locals 4

    const/4 v3, 0x0

    packed-switch p0, :pswitch_data_0

    const-string/jumbo v0, "PanService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "bad pan connection state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

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
    return v3

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

.method private native disconnectPanNative([B)Z
.end method

.method private native enablePanNative(I)Z
.end method

.method private getConnectedPanDevices()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lcom/android/bluetooth/pan/PanService;->mPanDevices:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    invoke-direct {p0, v0}, Lcom/android/bluetooth/pan/PanService;->getPanDeviceConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v2
.end method

.method private getPanDeviceConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    .locals 2

    iget-object v1, p0, Lcom/android/bluetooth/pan/PanService;->mPanDevices:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/pan/PanService$BluetoothPanDevice;

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    invoke-static {v0}, Lcom/android/bluetooth/pan/PanService$BluetoothPanDevice;->-get1(Lcom/android/bluetooth/pan/PanService$BluetoothPanDevice;)I

    move-result v1

    return v1
.end method

.method private native getPanLocalRoleNative()I
.end method

.method private native initializeNative()V
.end method

.method public static insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    if-nez p0, :cond_0

    const-string/jumbo v2, "PanService"

    const-string/jumbo v3, "insertLog() is failed because of context\'s null value"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v2, "app_id"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "feature"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "extra"

    invoke-virtual {v1, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "PanService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "insertLog() : app_id : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", feature : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", extra : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v2, "com.samsung.android.providers.context.log.action.USE_APP_FEATURE_SURVEY"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "data"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string/jumbo v2, "com.samsung.android.providers.context"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private onConnReqInactiveNAP([B)V
    .locals 21

    const-string/jumbo v17, "phone"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/pan/PanService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/telephony/TelephonyManager;

    invoke-virtual/range {p0 .. p0}, Lcom/android/bluetooth/pan/PanService;->getApplicationContext()Landroid/content/Context;

    move-result-object v17

    const-string/jumbo v18, "device_policy"

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual/range {p0 .. p0}, Lcom/android/bluetooth/pan/PanService;->getApplicationContext()Landroid/content/Context;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Landroid/net/NetworkPolicyManager;->from(Landroid/content/Context;)Landroid/net/NetworkPolicyManager;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/net/NetworkPolicyManager;->getRestrictBackground()Z

    move-result v11

    invoke-virtual/range {p0 .. p0}, Lcom/android/bluetooth/pan/PanService;->getApplicationContext()Landroid/content/Context;

    move-result-object v17

    const-string/jumbo v18, "connectivity"

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/ConnectivityManager;

    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v13

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v14, v0, [Ljava/lang/String;

    const-string/jumbo v17, "false"

    const/16 v18, 0x0

    aput-object v17, v14, v18

    invoke-virtual/range {p0 .. p0}, Lcom/android/bluetooth/pan/PanService;->getApplicationContext()Landroid/content/Context;

    move-result-object v17

    const-string/jumbo v18, "content://com.sec.knox.provider/BluetoothPolicy"

    const-string/jumbo v19, "isBluetoothEnabled"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3, v14}, Lcom/android/bluetooth/pan/PanService;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Lcom/android/bluetooth/pan/PanService;->getApplicationContext()Landroid/content/Context;

    move-result-object v17

    const-string/jumbo v18, "content://com.sec.knox.provider/RestrictionPolicy1"

    const-string/jumbo v19, "isBluetoothTetheringEnabled"

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    move-object/from16 v4, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/bluetooth/pan/PanService;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    invoke-static {}, Lcom/samsung/android/knox/custom/SettingsManager;->getInstance()Lcom/samsung/android/knox/custom/SettingsManager;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/samsung/android/knox/custom/SettingsManager;->getSettingsHiddenState()I

    move-result v9

    invoke-virtual/range {p0 .. p0}, Lcom/android/bluetooth/pan/PanService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string/jumbo v18, "ultra_powersaving_mode"

    const/16 v19, 0x0

    invoke-static/range {v17 .. v19}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v17

    if-eqz v17, :cond_1

    const-string/jumbo v17, "PanService"

    const-string/jumbo v18, "isUltraPowerSavingMode = true"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v17

    const/16 v18, 0xc

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_2

    const-string/jumbo v17, "PanService"

    const-string/jumbo v18, "Bluetooth is not ready"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string/jumbo v17, "VZW"

    invoke-static {}, Lcom/android/bluetooth/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_3

    invoke-virtual {v15}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v17

    const/16 v18, 0x5

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_3

    const-string/jumbo v17, "PanService"

    const-string/jumbo v18, "SIM_STATE is not ready in VZW model"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    const-string/jumbo v17, "VZW"

    invoke-static {}, Lcom/android/bluetooth/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_4

    invoke-virtual {v13}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v17

    if-eqz v17, :cond_4

    const-string/jumbo v17, "PanService"

    const-string/jumbo v18, "NAP disallowed with Wi-Fi connection in VZW"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    const/16 v17, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Landroid/app/admin/DevicePolicyManager;->semGetAllowBluetoothMode(Landroid/content/ComponentName;)I

    move-result v17

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_5

    const/16 v17, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Landroid/app/admin/DevicePolicyManager;->semGetAllowInternetSharing(Landroid/content/ComponentName;)Z

    move-result v17

    if-eqz v17, :cond_5

    if-eqz v11, :cond_6

    const-string/jumbo v17, "PanService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "DataSaverEnabled : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_5
    const-string/jumbo v17, "PanService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "AllowBluetoothMode : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const/16 v19, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Landroid/app/admin/DevicePolicyManager;->semGetAllowBluetoothMode(Landroid/content/ComponentName;)I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, ", AllowInternetSharing : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const/16 v19, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Landroid/app/admin/DevicePolicyManager;->semGetAllowInternetSharing(Landroid/content/ComponentName;)Z

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/bluetooth/pan/PanService;->EDM_FALSE:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-eq v7, v0, :cond_7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/bluetooth/pan/PanService;->EDM_FALSE:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-ne v8, v0, :cond_a

    :cond_7
    const-string/jumbo v18, "PanService"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "isBluetoothEnabled : "

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/bluetooth/pan/PanService;->EDM_FALSE:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-eq v7, v0, :cond_8

    const/16 v17, 0x1

    :goto_1
    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v19, ", isBluetoothTetheringEnabled : "

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/bluetooth/pan/PanService;->EDM_FALSE:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-eq v8, v0, :cond_9

    const/16 v17, 0x1

    :goto_2
    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_8
    const/16 v17, 0x0

    goto :goto_1

    :cond_9
    const/16 v17, 0x0

    goto :goto_2

    :cond_a
    and-int/lit8 v17, v9, 0x2

    if-eqz v17, :cond_b

    const-string/jumbo v17, "PanService"

    const-string/jumbo v18, "CustomDeviceManager.SETTINGS_BLUETOOTH : 2"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_b
    invoke-virtual/range {p0 .. p1}, Lcom/android/bluetooth/pan/PanService;->getDevice([B)Landroid/bluetooth/BluetoothDevice;

    move-result-object v6

    if-nez v6, :cond_c

    return-void

    :cond_c
    invoke-virtual {v6}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v12

    if-eqz v12, :cond_0

    const-string/jumbo v17, "PanService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "onConnReqInactiveNAP : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v6}, Landroid/bluetooth/BluetoothDevice;->getAliasName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, " class : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v12}, Landroid/bluetooth/BluetoothClass;->hashCode()I

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v6}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v17

    const/16 v18, 0xc

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_0

    invoke-virtual {v12}, Landroid/bluetooth/BluetoothClass;->getMajorDeviceClass()I

    move-result v17

    const/16 v18, 0x100

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_d

    invoke-virtual {v12}, Landroid/bluetooth/BluetoothClass;->getMajorDeviceClass()I

    move-result v17

    const/16 v18, 0x200

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_e

    :cond_d
    :goto_3
    const-string/jumbo v17, "PanService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "onConnReqInactiveNAP : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v6}, Landroid/bluetooth/BluetoothDevice;->getAddressForLog()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v17

    const-string/jumbo v18, "CscFeature_Common_EnableSprintExtension"

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_f

    const-string/jumbo v17, "persist.sys.tether_data_bt"

    const/16 v18, -0x1

    invoke-static/range {v17 .. v18}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v16

    if-gtz v16, :cond_f

    const-string/jumbo v17, "PanService"

    const-string/jumbo v18, "Tethering disabled by Sprint limitation"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_e
    invoke-virtual {v12}, Landroid/bluetooth/BluetoothClass;->getMajorDeviceClass()I

    move-result v17

    const/16 v18, 0x300

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_0

    goto :goto_3

    :cond_f
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/bluetooth/pan/PanService;->showConnReqPopup(Landroid/bluetooth/BluetoothDevice;)V

    goto/16 :goto_0
.end method

.method private onConnectStateChanged([BIIII)V
    .locals 7

    sget-boolean v0, Lcom/android/bluetooth/pan/PanService;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onConnectStateChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", local role:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", remote_role: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/pan/PanService;->log(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/pan/PanService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    new-instance v0, Lcom/android/bluetooth/pan/PanService$ConnectState;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/bluetooth/pan/PanService$ConnectState;-><init>([BIIII)V

    iput-object v0, v6, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/bluetooth/pan/PanService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private onControlStateChanged(IIILjava/lang/String;)V
    .locals 2

    sget-boolean v0, Lcom/android/bluetooth/pan/PanService;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onControlStateChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", ifname: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/pan/PanService;->log(Ljava/lang/String;)V

    :cond_0
    if-nez p3, :cond_1

    iput-object p4, p0, Lcom/android/bluetooth/pan/PanService;->mPanIfName:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method private showConnReqPopup(Landroid/bluetooth/BluetoothDevice;)V
    .locals 3

    const-string/jumbo v1, "PanService"

    const-string/jumbo v2, "showConnReqPopup"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/bluetooth/pan/DialogConnReqInactiveNap;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/pan/PanService;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private startTethering(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/android/bluetooth/pan/PanService;->configureBtIface(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private stopTethering(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/android/bluetooth/pan/PanService;->configureBtIface(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected cleanup()Z
    .locals 15

    const/4 v5, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    iget-boolean v0, p0, Lcom/android/bluetooth/pan/PanService;->mNativeAvailable:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/bluetooth/pan/PanService;->cleanupNative()V

    iput-boolean v3, p0, Lcom/android/bluetooth/pan/PanService;->mNativeAvailable:Z

    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/pan/PanService;->mPanDevices:Ljava/util/HashMap;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/bluetooth/pan/PanService;->getConnectedDevices()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    iget-object v0, p0, Lcom/android/bluetooth/pan/PanService;->mPanDevices:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/bluetooth/pan/PanService$BluetoothPanDevice;

    invoke-static {v14}, Lcom/android/bluetooth/pan/PanService$BluetoothPanDevice;->-get0(Lcom/android/bluetooth/pan/PanService$BluetoothPanDevice;)I

    move-result v0

    if-ne v0, v4, :cond_1

    iget-object v2, p0, Lcom/android/bluetooth/pan/PanService;->mPanIfName:Ljava/lang/String;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/bluetooth/pan/PanService;->handlePanDeviceStateChange(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;III)V

    goto :goto_0

    :cond_1
    iget-object v8, p0, Lcom/android/bluetooth/pan/PanService;->mPanIfName:Ljava/lang/String;

    move-object v6, p0

    move-object v7, v1

    move v9, v3

    move v10, v5

    move v11, v4

    invoke-virtual/range {v6 .. v11}, Lcom/android/bluetooth/pan/PanService;->handlePanDeviceStateChange(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;III)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/bluetooth/pan/PanService;->mPanDevices:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_3
    return v4
.end method

.method connect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 13

    const/4 v2, 0x0

    const/4 v12, 0x1

    const/4 v11, 0x0

    const-string/jumbo v0, "android.permission.BLUETOOTH"

    const-string/jumbo v3, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v3}, Lcom/android/bluetooth/pan/PanService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "content://com.sec.knox.provider/BluetoothUtils"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v9, 0x1

    new-array v4, v12, [Ljava/lang/String;

    sget-object v0, Landroid/bluetooth/BluetoothUuid;->PANU:Landroid/os/ParcelUuid;

    invoke-virtual {v0}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v11

    invoke-virtual {p0}, Lcom/android/bluetooth/pan/PanService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "isProfileAuthorizedBySecurityPolicy"

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_0

    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    const-string/jumbo v0, "isProfileAuthorizedBySecurityPolicy"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "true"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/database/CursorWindowAllocationException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    const/4 v9, 0x1

    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_0
    :goto_1
    if-nez v9, :cond_2

    const-string/jumbo v0, "PanService"

    const-string/jumbo v2, "PAN service blocked by MDM policy"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v11

    :cond_1
    const/4 v9, 0x0

    goto :goto_0

    :catch_0
    move-exception v8

    :try_start_1
    const-string/jumbo v0, "PanService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "CursorWindowAllocationException"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_2
    sget-object v0, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_4_0:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxVersionSupported(Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v6

    const/16 v0, 0x64

    if-gt v0, v6, :cond_3

    const/16 v0, 0xc8

    if-gt v6, v0, :cond_3

    const-string/jumbo v0, "PanService"

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

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v11

    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/pan/PanService;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    if-eqz v0, :cond_4

    const-string/jumbo v0, "PanService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Pan Device not disconnected: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v11

    :cond_4
    const-string/jumbo v0, "1"

    const-string/jumbo v2, "service.bt.security.policy.mode"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-boolean v0, Lcom/android/bluetooth/pan/PanService;->DBG:Z

    if-eqz v0, :cond_5

    const-string/jumbo v0, "PanService"

    const-string/jumbo v2, "PANU Service is Rejected; IT Policy HandsfreeOnly"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return v11

    :cond_6
    iget-object v0, p0, Lcom/android/bluetooth/pan/PanService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v12, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    iget-object v0, p0, Lcom/android/bluetooth/pan/PanService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v10}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iput-boolean v12, p0, Lcom/android/bluetooth/pan/PanService;->isConnectFromPANU:Z

    return v12
.end method

.method connectFromNAP(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string/jumbo v1, "PanService"

    const-string/jumbo v2, "connect PAN from NAP to USER device"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/pan/PanService;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p1}, Lcom/android/bluetooth/Utils;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v1

    const/4 v2, 0x2

    invoke-direct {p0, v1, v4, v2}, Lcom/android/bluetooth/pan/PanService;->connectPanNative([BII)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-boolean v4, p0, Lcom/android/bluetooth/pan/PanService;->isConnectFromNAP:Z

    :cond_0
    return v0

    :cond_1
    const-string/jumbo v1, "PanService"

    const-string/jumbo v2, "connectionState is not Disconnected"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3
.end method

.method disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const-string/jumbo v2, "android.permission.BLUETOOTH"

    const-string/jumbo v3, "Need BLUETOOTH permission"

    invoke-virtual {p0, v2, v3}, Lcom/android/bluetooth/pan/PanService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/pan/PanService;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    if-eq v0, v5, :cond_0

    if-eq v0, v4, :cond_0

    const/4 v2, 0x0

    return v2

    :cond_0
    iget-object v2, p0, Lcom/android/bluetooth/pan/PanService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/pan/PanService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return v4
.end method

.method public dump(Ljava/lang/StringBuilder;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/android/bluetooth/btservice/ProfileService;->dump(Ljava/lang/StringBuilder;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mMaxPanDevices: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/bluetooth/pan/PanService;->mMaxPanDevices:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/android/bluetooth/pan/PanService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mPanIfName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/bluetooth/pan/PanService;->mPanIfName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/android/bluetooth/pan/PanService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mTetherOn: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/bluetooth/pan/PanService;->mTetherOn:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/android/bluetooth/pan/PanService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/bluetooth/pan/PanService;->mETManager:Lcom/samsung/bt/pan/EnhancedTetheringManager;

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isPanuScanning : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/bluetooth/pan/PanService;->mETManager:Lcom/samsung/bt/pan/EnhancedTetheringManager;

    invoke-virtual {v3}, Lcom/samsung/bt/pan/EnhancedTetheringManager;->isPanuScanning()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/android/bluetooth/pan/PanService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isNapAdvertising : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/bluetooth/pan/PanService;->mETManager:Lcom/samsung/bt/pan/EnhancedTetheringManager;

    invoke-virtual {v3}, Lcom/samsung/bt/pan/EnhancedTetheringManager;->isNapAdvertising()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/android/bluetooth/pan/PanService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_0
    const-string/jumbo v2, "mPanDevices:"

    invoke-static {p1, v2}, Lcom/android/bluetooth/pan/PanService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/bluetooth/pan/PanService;->mPanDevices:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/bluetooth/pan/PanService;->mPanDevices:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/android/bluetooth/pan/PanService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method getConnectedDevices()Ljava/util/List;
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

    invoke-virtual {p0, v1, v2}, Lcom/android/bluetooth/pan/PanService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x2

    const/4 v3, 0x0

    aput v2, v1, v3

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/pan/PanService;->getDevicesMatchingConnectionStates([I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method getConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    .locals 2

    iget-object v1, p0, Lcom/android/bluetooth/pan/PanService;->mPanDevices:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/pan/PanService$BluetoothPanDevice;

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    invoke-static {v0}, Lcom/android/bluetooth/pan/PanService$BluetoothPanDevice;->-get1(Lcom/android/bluetooth/pan/PanService$BluetoothPanDevice;)I

    move-result v1

    return v1
.end method

.method getDevicesMatchingConnectionStates([I)Ljava/util/List;
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

    const-string/jumbo v5, "android.permission.BLUETOOTH"

    const-string/jumbo v6, "Need BLUETOOTH permission"

    invoke-virtual {p0, v5, v6}, Lcom/android/bluetooth/pan/PanService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v5, p0, Lcom/android/bluetooth/pan/PanService;->mPanDevices:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

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

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/pan/PanService;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

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

.method public getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 8

    const/4 v2, 0x0

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v3, p3

    move-object v4, p4

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_1

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    invoke-interface {v6, p3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "true"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/bluetooth/pan/PanService;->EDM_TRUE:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    return v0

    :cond_0
    :try_start_1
    iget v0, p0, Lcom/android/bluetooth/pan/PanService;->EDM_FALSE:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    return v0

    :catch_0
    move-exception v7

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    iget v0, p0, Lcom/android/bluetooth/pan/PanService;->EDM_NULL:I

    return v0

    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method protected getName()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "PanService"

    return-object v0
.end method

.method getTetheredDeviceList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/bluetooth/pan/PanService;->mETManager:Lcom/samsung/bt/pan/EnhancedTetheringManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/bluetooth/pan/PanService;->mETManager:Lcom/samsung/bt/pan/EnhancedTetheringManager;

    invoke-virtual {v0}, Lcom/samsung/bt/pan/EnhancedTetheringManager;->getTetheredDeviceList()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    const-string/jumbo v0, "PanService"

    const-string/jumbo v1, "mETManager is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method handlePanDeviceStateChange(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;III)V
    .locals 17

    sget-boolean v13, Lcom/android/bluetooth/pan/PanService;->DBG:Z

    if-eqz v13, :cond_0

    const-string/jumbo v13, "PanService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "handlePanDeviceStateChange: device: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, ", iface: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, ", state: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, ", local_role:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p4

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, ", remote_role:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p5

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/pan/PanService;->mPanDevices:Ljava/util/HashMap;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/bluetooth/pan/PanService$BluetoothPanDevice;

    if-nez v10, :cond_1

    const-string/jumbo v13, "PanService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "state "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " Num of connected pan devices: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/bluetooth/pan/PanService;->mPanDevices:Ljava/util/HashMap;

    invoke-virtual {v15}, Ljava/util/HashMap;->size()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v11, 0x0

    new-instance v10, Lcom/android/bluetooth/pan/PanService$BluetoothPanDevice;

    move-object/from16 v0, p0

    move/from16 v1, p3

    move-object/from16 v2, p2

    move/from16 v3, p4

    invoke-direct {v10, v0, v1, v2, v3}, Lcom/android/bluetooth/pan/PanService$BluetoothPanDevice;-><init>(Lcom/android/bluetooth/pan/PanService;ILjava/lang/String;I)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/pan/PanService;->mPanDevices:Ljava/util/HashMap;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    if-nez v11, :cond_2

    const/4 v13, 0x3

    move/from16 v0, p3

    if-ne v0, v13, :cond_2

    const-string/jumbo v13, "PanService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Ignoring state change from "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " to "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-static {v10}, Lcom/android/bluetooth/pan/PanService$BluetoothPanDevice;->-get1(Lcom/android/bluetooth/pan/PanService$BluetoothPanDevice;)I

    move-result v11

    move/from16 v0, p3

    invoke-static {v10, v0}, Lcom/android/bluetooth/pan/PanService$BluetoothPanDevice;->-set2(Lcom/android/bluetooth/pan/PanService$BluetoothPanDevice;I)I

    move/from16 v0, p4

    invoke-static {v10, v0}, Lcom/android/bluetooth/pan/PanService$BluetoothPanDevice;->-set1(Lcom/android/bluetooth/pan/PanService$BluetoothPanDevice;I)I

    move-object/from16 v0, p2

    invoke-static {v10, v0}, Lcom/android/bluetooth/pan/PanService$BluetoothPanDevice;->-set0(Lcom/android/bluetooth/pan/PanService$BluetoothPanDevice;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string/jumbo v13, "PanService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "handlePanDeviceStateChange preState: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " state: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v0, p3

    if-ne v11, v0, :cond_3

    return-void

    :cond_3
    const/4 v13, 0x2

    move/from16 v0, p5

    if-ne v0, v13, :cond_f

    const/4 v13, 0x2

    move/from16 v0, p3

    if-ne v0, v13, :cond_e

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/bluetooth/pan/PanService;->mTetherOn:Z

    if-eqz v13, :cond_4

    const/4 v13, 0x2

    move/from16 v0, p4

    if-ne v0, v13, :cond_5

    :cond_4
    const-string/jumbo v13, "PanService"

    const-string/jumbo v14, "handlePanDeviceStateChange BT tethering is off/Local role is PANU drop the connection"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static/range {p1 .. p1}, Lcom/android/bluetooth/Utils;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/bluetooth/pan/PanService;->disconnectPanNative([B)Z

    :cond_5
    invoke-direct/range {p0 .. p0}, Lcom/android/bluetooth/pan/PanService;->getConnectedPanDevices()Ljava/util/List;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/bluetooth/pan/PanService;->mMaxPanDevices:I

    if-le v13, v14, :cond_6

    const-string/jumbo v13, "PanService"

    const-string/jumbo v14, "Max PAN device connections reached"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static/range {p1 .. p1}, Lcom/android/bluetooth/Utils;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/bluetooth/pan/PanService;->disconnectPanNative([B)Z

    :cond_6
    const-string/jumbo v13, "PanService"

    const-string/jumbo v14, "handlePanDeviceStateChange LOCAL_NAP_ROLE:REMOTE_PANU_ROLE"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/pan/PanService;->mNapIfaceAddr:Ljava/lang/String;

    if-nez v13, :cond_7

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/bluetooth/pan/PanService;->startTethering(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/bluetooth/pan/PanService;->mNapIfaceAddr:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/pan/PanService;->mNapIfaceAddr:Ljava/lang/String;

    if-nez v13, :cond_7

    const-string/jumbo v13, "PanService"

    const-string/jumbo v14, "Error seting up tether interface"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static/range {p1 .. p1}, Lcom/android/bluetooth/Utils;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/bluetooth/pan/PanService;->disconnectPanNative([B)Z

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/bluetooth/pan/PanService;->isConnectFromNAP:Z

    if-eqz v13, :cond_7

    new-instance v5, Landroid/view/ContextThemeWrapper;

    invoke-virtual/range {p0 .. p0}, Lcom/android/bluetooth/pan/PanService;->getApplicationContext()Landroid/content/Context;

    move-result-object v13

    const v14, 0x7f0c0004

    invoke-direct {v5, v13, v14}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/bluetooth/pan/PanService;->getApplicationContext()Landroid/content/Context;

    move-result-object v13

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothDevice;->getAliasName()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    aput-object v15, v14, v16

    const v15, 0x7f0a0086

    invoke-virtual {v13, v15, v14}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    invoke-static {v5, v12, v13}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/Toast;->show()V

    :cond_7
    :goto_1
    if-nez p3, :cond_8

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/bluetooth/pan/PanService;->isConnectFromPANU:Z

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/bluetooth/pan/PanService;->isConnectFromNAP:Z

    :cond_8
    const/4 v13, 0x2

    move/from16 v0, p4

    if-ne v0, v13, :cond_b

    if-eqz p1, :cond_15

    const/4 v13, 0x2

    move/from16 v0, p3

    if-ne v0, v13, :cond_15

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/bluetooth/pan/PanService;->isConnecting:Z

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/bluetooth/pan/PanService;->isConnectFromPANU:Z

    if-nez v13, :cond_9

    const-string/jumbo v13, "PanService"

    const-string/jumbo v14, "Bluetooth Tethering is connected"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/android/bluetooth/pan/PanService;->getApplicationContext()Landroid/content/Context;

    move-result-object v13

    const-string/jumbo v14, "connectivity"

    invoke-virtual {v13, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/ConnectivityManager;

    const/4 v13, 0x1

    invoke-virtual {v4, v13}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v9

    invoke-virtual {v9}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v13

    if-nez v13, :cond_9

    new-instance v5, Landroid/view/ContextThemeWrapper;

    invoke-virtual/range {p0 .. p0}, Lcom/android/bluetooth/pan/PanService;->getApplicationContext()Landroid/content/Context;

    move-result-object v13

    const v14, 0x7f0c0004

    invoke-direct {v5, v13, v14}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/bluetooth/pan/PanService;->getApplicationContext()Landroid/content/Context;

    move-result-object v13

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothDevice;->getAliasName()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    aput-object v15, v14, v16

    const v15, 0x7f0a0085

    invoke-virtual {v13, v15, v14}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    invoke-static {v5, v12, v13}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/Toast;->show()V

    :cond_9
    sget-boolean v13, Lcom/android/bluetooth/pan/PanService;->DBG:Z

    if-eqz v13, :cond_13

    const-string/jumbo v13, "PanService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "PAN connected from PANU to NAP device["

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "]"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    sget-boolean v13, Lcom/android/bluetooth/pan/PanService;->isLinkLoss:Z

    if-eqz v13, :cond_a

    invoke-virtual/range {p0 .. p0}, Lcom/android/bluetooth/pan/PanService;->getApplicationContext()Landroid/content/Context;

    move-result-object v14

    const-string/jumbo v15, "com.android.bluetooth"

    const-string/jumbo v16, "BPAR"

    sget-boolean v13, Lcom/android/bluetooth/pan/PanService;->isAutoRecon:Z

    if-eqz v13, :cond_14

    const-string/jumbo v13, "Auto"

    :goto_3
    move-object/from16 v0, v16

    invoke-static {v14, v15, v0, v13}, Lcom/android/bluetooth/pan/PanService;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/pan/PanService;->mETManager:Lcom/samsung/bt/pan/EnhancedTetheringManager;

    if-eqz v13, :cond_b

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/pan/PanService;->mETManager:Lcom/samsung/bt/pan/EnhancedTetheringManager;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Lcom/samsung/bt/pan/EnhancedTetheringManager;->setLastTetheredDevice(Landroid/bluetooth/BluetoothDevice;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/pan/PanService;->mETManager:Lcom/samsung/bt/pan/EnhancedTetheringManager;

    invoke-virtual {v13}, Lcom/samsung/bt/pan/EnhancedTetheringManager;->cancelFindTetherServer()V

    :cond_b
    :goto_4
    const/4 v13, 0x1

    move/from16 v0, p4

    if-ne v0, v13, :cond_c

    const/4 v13, 0x2

    move/from16 v0, p3

    if-ne v0, v13, :cond_c

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/pan/PanService;->mETManager:Lcom/samsung/bt/pan/EnhancedTetheringManager;

    if-eqz v13, :cond_c

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/pan/PanService;->mETManager:Lcom/samsung/bt/pan/EnhancedTetheringManager;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Lcom/samsung/bt/pan/EnhancedTetheringManager;->addTetheredDevice(Landroid/bluetooth/BluetoothDevice;)V

    :cond_c
    const-string/jumbo v13, "PanService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Pan Device state : device: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothDevice;->getAddressForLog()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " State:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "->"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v13, 0x3

    if-ne v11, v13, :cond_d

    const/4 v13, 0x2

    move/from16 v0, p3

    if-ne v0, v13, :cond_d

    const-string/jumbo v13, "PanService"

    const-string/jumbo v14, "Abnormal state detected. Set STATE_DISCONNECTED by force"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v13, "PanService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Pan Device state : device: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothDevice;->getAddressForLog()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " State:3->0"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p3, 0x0

    :cond_d
    const/4 v13, 0x5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    invoke-virtual {v0, v1, v13, v2, v11}, Lcom/android/bluetooth/pan/PanService;->notifyProfileConnectionStateChanged(Landroid/bluetooth/BluetoothDevice;III)V

    new-instance v8, Landroid/content/Intent;

    const-string/jumbo v13, "android.bluetooth.pan.profile.action.CONNECTION_STATE_CHANGED"

    invoke-direct {v8, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v13, "android.bluetooth.device.extra.DEVICE"

    move-object/from16 v0, p1

    invoke-virtual {v8, v13, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string/jumbo v13, "android.bluetooth.profile.extra.PREVIOUS_STATE"

    invoke-virtual {v8, v13, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v13, "android.bluetooth.profile.extra.STATE"

    move/from16 v0, p3

    invoke-virtual {v8, v13, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v13, "android.bluetooth.pan.extra.LOCAL_ROLE"

    move/from16 v0, p4

    invoke-virtual {v8, v13, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v13, "android.permission.BLUETOOTH"

    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v13}, Lcom/android/bluetooth/pan/PanService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    sget-object v13, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_4_0:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    invoke-static {v13}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxVersionSupported(Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;)Z

    move-result v13

    if-eqz v13, :cond_17

    invoke-static {}, Lcom/android/bluetooth/Utils;->getBtEnabledContainers()Ljava/util/List;

    move-result-object v13

    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_17

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    new-instance v13, Landroid/os/UserHandle;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-direct {v13, v14}, Landroid/os/UserHandle;-><init>(I)V

    const-string/jumbo v14, "android.permission.BLUETOOTH"

    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v13, v14}, Lcom/android/bluetooth/pan/PanService;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    goto :goto_5

    :cond_e
    if-nez p3, :cond_7

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/pan/PanService;->mPanDevices:Ljava/util/HashMap;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v13, "PanService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "remote(PANU) is disconnected, Remaining connected PANU devices: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/bluetooth/pan/PanService;->mPanDevices:Ljava/util/HashMap;

    invoke-virtual {v15}, Ljava/util/HashMap;->size()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/pan/PanService;->mNapIfaceAddr:Ljava/lang/String;

    if-eqz v13, :cond_7

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/pan/PanService;->mPanDevices:Ljava/util/HashMap;

    invoke-virtual {v13}, Ljava/util/HashMap;->size()I

    move-result v13

    if-nez v13, :cond_7

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/bluetooth/pan/PanService;->stopTethering(Ljava/lang/String;)Ljava/lang/String;

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/bluetooth/pan/PanService;->mNapIfaceAddr:Ljava/lang/String;

    goto/16 :goto_1

    :cond_f
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/pan/PanService;->mNetworkFactory:Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;

    if-eqz v13, :cond_7

    const-string/jumbo v13, "PanService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "handlePanDeviceStateChange LOCAL_PANU_ROLE:REMOTE_NAP_ROLE state = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, ", prevState = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v13, 0x2

    move/from16 v0, p3

    if-ne v0, v13, :cond_11

    invoke-virtual/range {p0 .. p0}, Lcom/android/bluetooth/pan/PanService;->getApplicationContext()Landroid/content/Context;

    move-result-object v13

    const-string/jumbo v14, "connectivity"

    invoke-virtual {v13, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/ConnectivityManager;

    const/4 v13, 0x1

    invoke-virtual {v4, v13}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v9

    invoke-virtual {v9}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v13

    if-eqz v13, :cond_10

    invoke-static/range {p1 .. p1}, Lcom/android/bluetooth/Utils;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/bluetooth/pan/PanService;->disconnectPanNative([B)Z

    goto/16 :goto_1

    :cond_10
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/pan/PanService;->mNetworkFactory:Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;->startReverseTether(Ljava/lang/String;)V

    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/bluetooth/pan/PanService;->setBluetoothTethering(Z)V

    goto/16 :goto_1

    :cond_11
    if-nez p3, :cond_7

    const/4 v13, 0x2

    if-eq v11, v13, :cond_12

    const/4 v13, 0x3

    if-ne v11, v13, :cond_7

    :cond_12
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/pan/PanService;->mNetworkFactory:Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;

    invoke-virtual {v13}, Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;->stopReverseTether()V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/pan/PanService;->mPanDevices:Ljava/util/HashMap;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_13
    const-string/jumbo v13, "PanService"

    const-string/jumbo v14, "PAN connected"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_14
    const-string/jumbo v13, "Manual"

    goto/16 :goto_3

    :cond_15
    if-nez p3, :cond_b

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/bluetooth/pan/PanService;->isConnecting:Z

    const/4 v13, 0x3

    if-ne v11, v13, :cond_16

    const-string/jumbo v13, "PanService"

    const-string/jumbo v14, "PAN disconnected by USER"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v13, 0x0

    sput-boolean v13, Lcom/android/bluetooth/pan/PanService;->isLinkLoss:Z

    const/4 v13, 0x0

    sput-boolean v13, Lcom/android/bluetooth/pan/PanService;->isAutoRecon:Z

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/pan/PanService;->mETManager:Lcom/samsung/bt/pan/EnhancedTetheringManager;

    if-eqz v13, :cond_b

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/pan/PanService;->mETManager:Lcom/samsung/bt/pan/EnhancedTetheringManager;

    invoke-virtual {v13}, Lcom/samsung/bt/pan/EnhancedTetheringManager;->clearLastTetheredDevice()V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/pan/PanService;->mETManager:Lcom/samsung/bt/pan/EnhancedTetheringManager;

    invoke-virtual {v13}, Lcom/samsung/bt/pan/EnhancedTetheringManager;->cancelFindTetherServer()V

    goto/16 :goto_4

    :cond_16
    const/4 v13, 0x1

    if-ne v11, v13, :cond_b

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/pan/PanService;->mETManager:Lcom/samsung/bt/pan/EnhancedTetheringManager;

    if-eqz v13, :cond_b

    if-eqz p1, :cond_b

    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v13

    const/16 v14, 0xc

    if-eq v13, v14, :cond_b

    const-string/jumbo v13, "PanService"

    const-string/jumbo v14, "PAN device is not BOND_BONDED"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v13, 0x0

    sput-boolean v13, Lcom/android/bluetooth/pan/PanService;->isLinkLoss:Z

    const/4 v13, 0x0

    sput-boolean v13, Lcom/android/bluetooth/pan/PanService;->isAutoRecon:Z

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/pan/PanService;->mETManager:Lcom/samsung/bt/pan/EnhancedTetheringManager;

    invoke-virtual {v13}, Lcom/samsung/bt/pan/EnhancedTetheringManager;->clearLastTetheredDevice()V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/pan/PanService;->mETManager:Lcom/samsung/bt/pan/EnhancedTetheringManager;

    invoke-virtual {v13}, Lcom/samsung/bt/pan/EnhancedTetheringManager;->cancelFindTetherServer()V

    goto/16 :goto_4

    :cond_17
    return-void
.end method

.method public initBinder()Lcom/android/bluetooth/btservice/ProfileService$IProfileServiceBinder;
    .locals 1

    new-instance v0, Lcom/android/bluetooth/pan/PanService$BluetoothPanBinder;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/pan/PanService$BluetoothPanBinder;-><init>(Lcom/android/bluetooth/pan/PanService;)V

    return-object v0
.end method

.method isPanNapOn()Z
    .locals 3

    const/4 v0, 0x0

    sget-boolean v1, Lcom/android/bluetooth/pan/PanService;->DBG:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "PanService"

    const-string/jumbo v2, "isTetheringOn call getPanLocalRoleNative"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0}, Lcom/android/bluetooth/pan/PanService;->getPanLocalRoleNative()I

    move-result v1

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method isPanUOn()Z
    .locals 3

    const/4 v0, 0x0

    sget-boolean v1, Lcom/android/bluetooth/pan/PanService;->DBG:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "PanService"

    const-string/jumbo v2, "isTetheringOn call getPanLocalRoleNative"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0}, Lcom/android/bluetooth/pan/PanService;->getPanLocalRoleNative()I

    move-result v1

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method isTetheringOn()Z
    .locals 4

    const-string/jumbo v1, "bluetooth.pan.tether_on"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iget-boolean v1, p0, Lcom/android/bluetooth/pan/PanService;->mTetherOn:Z

    if-eq v1, v0, :cond_0

    sget-boolean v1, Lcom/android/bluetooth/pan/PanService;->DBG:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "PanService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isTetheringOn: (Tethering Value Fail) mTetherOn("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/bluetooth/pan/PanService;->mTetherOn:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ") <= property("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-boolean v0, p0, Lcom/android/bluetooth/pan/PanService;->mTetherOn:Z

    iget-boolean v1, p0, Lcom/android/bluetooth/pan/PanService;->mTetherOn:Z

    return v1
.end method

.method setBluetoothTethering(Z)V
    .locals 25

    sget-boolean v2, Lcom/android/bluetooth/pan/PanService;->DBG:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "PanService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setBluetoothTethering: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", mTetherOn: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/bluetooth/pan/PanService;->mTetherOn:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "[PanService]setBluetoothTethering : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/bluetooth/BluetoothDump;->BtLog(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/bluetooth/pan/PanService;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/net/ConnectivityManager;->enforceTetherChangePermission(Landroid/content/Context;)V

    const-string/jumbo v2, "android.permission.BLUETOOTH_ADMIN"

    const-string/jumbo v4, "Need BLUETOOTH_ADMIN permission"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4}, Lcom/android/bluetooth/pan/PanService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "user"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/bluetooth/pan/PanService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/os/UserManager;

    const-string/jumbo v2, "no_config_tethering"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/SecurityException;

    const-string/jumbo v4, "DISALLOW_CONFIG_TETHERING is enabled for this user."

    invoke-direct {v2, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    const-string/jumbo v2, "SBM"

    const-string/jumbo v4, "KTT"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string/jumbo v2, "activity"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/bluetooth/pan/PanService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/ActivityManager;

    const-string/jumbo v17, ""

    if-eqz v10, :cond_3

    invoke-virtual {v10}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :cond_2
    :goto_0
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-object/from16 v0, v21

    iget v2, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    if-ne v2, v4, :cond_2

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    move-object/from16 v17, v0

    goto :goto_0

    :cond_3
    const-string/jumbo v2, "PanService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setBluetoothTethering: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/bluetooth/pan/PanService;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v20

    const/4 v2, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v19

    move-object/from16 v0, v19

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    if-eq v2, v4, :cond_4

    const-string/jumbo v2, "PanService"

    const-string/jumbo v4, "NOT Allowed : pkg does not match uid"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    const-string/jumbo v2, "jp.softbank.mb.tether"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string/jumbo v2, "com.android.settings"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_8

    :cond_5
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    const-class v2, Lcom/android/bluetooth/pan/PanService;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "BluetoothTethering has been changed to "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz p1, :cond_9

    const-string/jumbo v2, "enabled"

    :goto_1
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v2, 0x5

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v8, -0x1

    invoke-static/range {v2 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    const-string/jumbo v2, "content://com.sec.knox.provider/RestrictionPolicy1"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/16 v16, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/android/bluetooth/pan/PanService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v5, "isBluetoothTetheringEnabled"

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    if-eqz v11, :cond_6

    :try_start_1
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    const-string/jumbo v2, "isBluetoothTetheringEnabled"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "true"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroid/database/CursorWindowAllocationException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-eqz v2, :cond_a

    const/16 v16, 0x1

    :goto_2
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_6
    :goto_3
    if-eqz p1, :cond_7

    if-eqz v16, :cond_b

    :cond_7
    sget-object v2, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_4_0:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    invoke-static {v2}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxVersionSupported(Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;)Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-virtual/range {p0 .. p0}, Lcom/android/bluetooth/pan/PanService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v4

    invoke-static {v2, v4}, Lcom/android/bluetooth/Utils;->isKnoxBluetoothEnabled(Landroid/content/Context;I)Z

    move-result v2

    if-nez v2, :cond_c

    const-string/jumbo v2, "PanService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setBluetoothTethering(): Bluetooth for KNOX blocked by MDM policy: userId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_8
    return-void

    :catch_0
    move-exception v15

    return-void

    :cond_9
    const-string/jumbo v2, "disabled"

    goto/16 :goto_1

    :cond_a
    const/16 v16, 0x0

    goto :goto_2

    :catch_1
    move-exception v14

    :try_start_2
    const-string/jumbo v2, "PanService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "CursorWindowAllocationException"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :catchall_0
    move-exception v2

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    throw v2

    :cond_b
    return-void

    :cond_c
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/bluetooth/pan/PanService;->mTetherOn:Z

    move/from16 v0, p1

    if-eq v2, v0, :cond_11

    move/from16 v0, p1

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/bluetooth/pan/PanService;->mTetherOn:Z

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/bluetooth/pan/PanService;->mTetherOn:Z

    if-eqz v2, :cond_10

    const-string/jumbo v2, "bluetooth.pan.tether_on"

    const-string/jumbo v4, "true"

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/pan/PanService;->mETManager:Lcom/samsung/bt/pan/EnhancedTetheringManager;

    if-eqz v2, :cond_d

    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/bluetooth/pan/PanService;->isLinkLoss:Z

    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/bluetooth/pan/PanService;->isAutoRecon:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/pan/PanService;->mETManager:Lcom/samsung/bt/pan/EnhancedTetheringManager;

    invoke-virtual {v2}, Lcom/samsung/bt/pan/EnhancedTetheringManager;->clearLastTetheredDevice()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/pan/PanService;->mETManager:Lcom/samsung/bt/pan/EnhancedTetheringManager;

    invoke-virtual {v2}, Lcom/samsung/bt/pan/EnhancedTetheringManager;->cancelFindTetherServer()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/pan/PanService;->mETManager:Lcom/samsung/bt/pan/EnhancedTetheringManager;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/samsung/bt/pan/EnhancedTetheringManager;->tetherEnabled(Z)V

    :cond_d
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/bluetooth/pan/PanService;->getConnectedDevices()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_e
    :goto_5
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/bluetooth/BluetoothDevice;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/pan/PanService;->mPanDevices:Ljava/util/HashMap;

    invoke-virtual {v2, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/bluetooth/pan/PanService$BluetoothPanDevice;

    if-nez p1, :cond_f

    invoke-static/range {v18 .. v18}, Lcom/android/bluetooth/pan/PanService$BluetoothPanDevice;->-get0(Lcom/android/bluetooth/pan/PanService$BluetoothPanDevice;)I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_f

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/bluetooth/pan/PanService;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    :cond_f
    if-eqz p1, :cond_e

    invoke-static/range {v18 .. v18}, Lcom/android/bluetooth/pan/PanService$BluetoothPanDevice;->-get0(Lcom/android/bluetooth/pan/PanService$BluetoothPanDevice;)I

    move-result v2

    const/4 v4, 0x1

    if-eq v2, v4, :cond_e

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/bluetooth/pan/PanService;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    goto :goto_5

    :cond_10
    const-string/jumbo v2, "bluetooth.pan.tether_on"

    const-string/jumbo v4, "false"

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/pan/PanService;->mETManager:Lcom/samsung/bt/pan/EnhancedTetheringManager;

    if-eqz v2, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/pan/PanService;->mETManager:Lcom/samsung/bt/pan/EnhancedTetheringManager;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/samsung/bt/pan/EnhancedTetheringManager;->tetherEnabled(Z)V

    goto :goto_4

    :cond_11
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v2

    const-string/jumbo v4, "CscFeature_RIL_SupportMptcp"

    invoke-virtual {v2, v4}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_12

    new-instance v23, Landroid/content/Intent;

    const-string/jumbo v2, "android.net.BT_TETHER_STATE_CHANGED"

    move-object/from16 v0, v23

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/pan/PanService;->sendBroadcast(Landroid/content/Intent;)V

    :cond_12
    return-void
.end method

.method protected start()Z
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x1

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/bluetooth/pan/PanService;->mPanDevices:Ljava/util/HashMap;

    :try_start_0
    invoke-virtual {p0}, Lcom/android/bluetooth/pan/PanService;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e0010

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/bluetooth/pan/PanService;->mMaxPanDevices:I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-direct {p0}, Lcom/android/bluetooth/pan/PanService;->initializeNative()V

    iput-boolean v5, p0, Lcom/android/bluetooth/pan/PanService;->mNativeAvailable:Z

    new-instance v2, Landroid/content/IntentFilter;

    const-string/jumbo v3, "android.net.wifi.STATE_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/bluetooth/pan/PanService;->mTetherfilter:Landroid/content/IntentFilter;

    iget-object v2, p0, Lcom/android/bluetooth/pan/PanService;->mTetherfilter:Landroid/content/IntentFilter;

    const-string/jumbo v3, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/bluetooth/pan/PanService;->mTetherfilter:Landroid/content/IntentFilter;

    const-string/jumbo v3, "com.samsung.bluetooth.pan.inactivenap.ASK_CONFIRM"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/bluetooth/pan/PanService;->mTetherfilter:Landroid/content/IntentFilter;

    const-string/jumbo v3, "android.net.conn.RESTRICT_BACKGROUND_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v2, Lcom/android/bluetooth/pan/PanService$TetheringReceiver;

    invoke-direct {v2, p0, v6}, Lcom/android/bluetooth/pan/PanService$TetheringReceiver;-><init>(Lcom/android/bluetooth/pan/PanService;Lcom/android/bluetooth/pan/PanService$TetheringReceiver;)V

    iput-object v2, p0, Lcom/android/bluetooth/pan/PanService;->mTetherReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/bluetooth/pan/PanService;->mTetherReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/android/bluetooth/pan/PanService;->mTetherfilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v2, v3}, Lcom/android/bluetooth/pan/PanService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v2, Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;

    invoke-virtual {p0}, Lcom/android/bluetooth/pan/PanService;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/bluetooth/pan/PanService;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v2, v3, v4, p0}, Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/bluetooth/pan/PanService;)V

    iput-object v2, p0, Lcom/android/bluetooth/pan/PanService;->mNetworkFactory:Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;

    const-string/jumbo v2, "bluetooth.pan.tether_on"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/bluetooth/pan/PanService;->mTetherOn:Z

    new-instance v1, Landroid/content/IntentFilter;

    const-string/jumbo v2, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "com.samsung.bluetooth.pan.inactivenap.ASK_CONFIRM"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v2, Lcom/android/bluetooth/pan/PanService$EnhancedTetherReceiver;

    invoke-direct {v2, p0, v6}, Lcom/android/bluetooth/pan/PanService$EnhancedTetherReceiver;-><init>(Lcom/android/bluetooth/pan/PanService;Lcom/android/bluetooth/pan/PanService$EnhancedTetherReceiver;)V

    iput-object v2, p0, Lcom/android/bluetooth/pan/PanService;->mEnhancedTetherReceiver:Lcom/android/bluetooth/pan/PanService$EnhancedTetherReceiver;

    iget-object v2, p0, Lcom/android/bluetooth/pan/PanService;->mEnhancedTetherReceiver:Lcom/android/bluetooth/pan/PanService$EnhancedTetherReceiver;

    invoke-virtual {p0, v2, v1}, Lcom/android/bluetooth/pan/PanService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return v5

    :catch_0
    move-exception v0

    const/4 v2, 0x5

    iput v2, p0, Lcom/android/bluetooth/pan/PanService;->mMaxPanDevices:I

    goto :goto_0
.end method

.method protected stop()Z
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/bluetooth/pan/PanService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/bluetooth/pan/PanService;->mTetherReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/bluetooth/pan/PanService;->mTetherReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/pan/PanService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-object v1, p0, Lcom/android/bluetooth/pan/PanService;->mTetherReceiver:Landroid/content/BroadcastReceiver;

    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/pan/PanService;->mEnhancedTetherReceiver:Lcom/android/bluetooth/pan/PanService$EnhancedTetherReceiver;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/bluetooth/pan/PanService;->mEnhancedTetherReceiver:Lcom/android/bluetooth/pan/PanService$EnhancedTetherReceiver;

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/pan/PanService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-object v1, p0, Lcom/android/bluetooth/pan/PanService;->mEnhancedTetherReceiver:Lcom/android/bluetooth/pan/PanService$EnhancedTetherReceiver;

    :cond_1
    iget-object v0, p0, Lcom/android/bluetooth/pan/PanService;->mETManager:Lcom/samsung/bt/pan/EnhancedTetheringManager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/bluetooth/pan/PanService;->mETManager:Lcom/samsung/bt/pan/EnhancedTetheringManager;

    invoke-virtual {v0}, Lcom/samsung/bt/pan/EnhancedTetheringManager;->stop()V

    iput-object v1, p0, Lcom/android/bluetooth/pan/PanService;->mETManager:Lcom/samsung/bt/pan/EnhancedTetheringManager;

    :cond_2
    const/4 v0, 0x1

    return v0
.end method
