.class public Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;
.super Landroid/app/Service;
.source "BluetoothAdvancedOppService.java"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;
.implements Lcom/android/bluetooth/opp/WifiP2pNetServiceListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/opp/BluetoothAdvancedOppService$1;,
        Lcom/android/bluetooth/opp/BluetoothAdvancedOppService$2;,
        Lcom/android/bluetooth/opp/BluetoothAdvancedOppService$NetServiceBinder;,
        Lcom/android/bluetooth/opp/BluetoothAdvancedOppService$WiFiDirectBroadcastReceiver;
    }
.end annotation


# static fields
.field public static final CLIENT_SESSION:I = 0x1

.field public static final CONNECTED:I = 0x2

.field public static final CONNECTING:I = 0x1

.field public static final DISCONNECTED:I = 0x0

.field public static final DISCONNECTING:I = 0x3

.field public static final INIT_SESSION:I = 0x0

.field private static final MSG_RETRY_CONN:I = 0x64

.field public static final P2P_CONNECT_TIMEOUT:I = 0x65

.field public static final P2P_CONNECT_TIMEOUT_DELAY:J = 0x4e20L

.field public static final P2P_DISCOVERY_TIMEOUT:I = 0x66

.field public static final P2P_DISCOVERY_TIMEOUT_DURATION:J = 0x4e20L

.field public static final SERVER_SESSION:I = 0x2

.field private static final TAG:Ljava/lang/String; = "BluetoothAdvancedOppService"


# instance fields
.field private channel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

.field private connectResult:Z

.field private final intentFilter:Landroid/content/IntentFilter;

.field private isWiFiReceiverRegistered:Z

.field private isWifiP2pEnabled:Z

.field private mBinder:Lcom/android/bluetooth/opp/BluetoothAdvancedOppService$NetServiceBinder;

.field private mCallback:Landroid/os/Handler;

.field public mConnectedDeviceList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/wifi/p2p/WifiP2pDevice;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mCreatedGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;

.field private mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

.field private mIsClientSession:I

.field private mP2pState:I

.field private mP2plistener:Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;

.field private mRetry:I

.field private mSessionClient:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

.field private mSessionServer:Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;

.field private mSharesForWifi:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/bluetooth/opp/BluetoothOppShareInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mWifiConnectionHandler:Landroid/os/Handler;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiP2pConfig:Landroid/net/wifi/p2p/WifiP2pConfig;

.field private manager:Landroid/net/wifi/p2p/WifiP2pManager;

.field private p2pDeviceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/p2p/WifiP2pDevice;",
            ">;"
        }
    .end annotation
.end field

.field private receiver:Landroid/content/BroadcastReceiver;

.field private remoteDeviceAddress:Ljava/lang/String;

.field private retryChannel:Z

.field private wifiP2pInfo:Landroid/net/wifi/p2p/WifiP2pInfo;


# direct methods
.method static synthetic -get0(Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;->mCallback:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;)Lcom/android/bluetooth/opp/BluetoothOppShareInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;)I
    .locals 1

    iget v0, p0, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;->mIsClientSession:I

    return v0
.end method

.method static synthetic -get3(Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;)I
    .locals 1

    iget v0, p0, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;->mP2pState:I

    return v0
.end method

.method static synthetic -get4(Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;)Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;->mP2plistener:Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;)I
    .locals 1

    iget v0, p0, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;->mRetry:I

    return v0
.end method

.method static synthetic -get6(Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;)Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;->mSessionClient:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;)Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;->mSessionServer:Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;->mWifiConnectionHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;->remoteDeviceAddress:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;->connectResult:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;Landroid/net/wifi/p2p/WifiP2pGroup;)Landroid/net/wifi/p2p/WifiP2pGroup;
    .locals 0

    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;->mCreatedGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;

    return-object p1
.end method

.method static synthetic -set2(Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;I)I
    .locals 0

    iput p1, p0, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;->mP2pState:I

    return p1
.end method

.method static synthetic -set3(Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;I)I
    .locals 0

    iput p1, p0, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;->mRetry:I

    return p1
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    iput-boolean v2, p0, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;->retryChannel:Z

    new-instance v0, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService$NetServiceBinder;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService$NetServiceBinder;-><init>(Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;)V

    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;->mBinder:Lcom/android/bluetooth/opp/BluetoothAdvancedOppService$NetServiceBinder;

    iput-object v1, p0, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;->manager:Landroid/net/wifi/p2p/WifiP2pManager;

    iput-object v1, p0, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;->channel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;->intentFilter:Landroid/content/IntentFilter;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;->p2pDeviceList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;->mConnectedDeviceList:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;->mCreatedGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;

    iput-object v1, p0, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;->receiver:Landroid/content/BroadcastReceiver;

    iput-object v1, p0, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;->mSessionClient:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    iput-object v1, p0, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;->mSessionServer:Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;

    iput v2, p0, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;->mIsClientSession:I

    iput v2, p0, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;->mRetry:I

    iput-boolean v2, p0, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;->isWiFiReceiverRegistered:Z

    iput-boolean v2, p0, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;->connectResult:Z

    iput-object v1, p0, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;->mCallback:Landroid/os/Handler;

    iput-object v1, p0, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;->remoteDeviceAddress:Ljava/lang/String;

    iput v2, p0, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;->mP2pState:I

    iput-boolean v2, p0, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;->isWifiP2pEnabled:Z

    new-instance v0, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService$1;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService$1;-><init>(Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;)V

    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;->mP2plistener:Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;

    new-instance v0, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService$2;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService$2;-><init>(Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;)V

    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;->mWifiConnectionHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public RegisterWiFiReceiver()V
    .locals 2

    const-string/jumbo v0, "BluetoothAdvancedOppService"

    const-string/jumbo v1, "[ADVANCED OPP] : RegisterWiFiReceiver"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService$WiFiDirectBroadcastReceiver;

    invoke-direct {v0, p0, p0, p0}, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService$WiFiDirectBroadcastReceiver;-><init>(Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;Lcom/android/bluetooth/opp/WifiP2pNetServiceListener;)V

    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;->receiver:Landroid/content/BroadcastReceiver;

    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;->intentFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.net.wifi.p2p.STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;->intentFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.net.wifi.p2p.PEERS_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;->intentFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;->intentFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.net.wifi.p2p.THIS_DEVICE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;->receiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;->intentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;->isWiFiReceiverRegistered:Z

    return-void
.end method

.method public cancelP2pConnectRequest()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "BluetoothAdvancedOppService"

    const-string/jumbo v1, "[ADVANCED OPP] cancelP2pConnectRequest cancelConnect"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;->manager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;->channel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v2, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService$5;

    invoke-direct {v2, p0}, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService$5;-><init>(Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;)V

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->cancelConnect(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    :cond_0
    return-void
.end method

.method public connect(Landroid/net/wifi/p2p/WifiP2pConfig;)V
    .locals 4

    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;->mWifiConnectionHandler:Landroid/os/Handler;

    const/16 v2, 0x65

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-string/jumbo v1, "BluetoothAdvancedOppService"

    const-string/jumbo v2, "[ADVANCED OPP] send connect message"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;->mWifiConnectionHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x4e20

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;->mWifiP2pConfig:Landroid/net/wifi/p2p/WifiP2pConfig;

    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;->manager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;->channel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v3, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService$6;

    invoke-direct {v3, p0}, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService$6;-><init>(Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;)V

    invoke-virtual {v1, v2, p1, v3}, Landroid/net/wifi/p2p/WifiP2pManager;->connect(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pConfig;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    return-void
.end method

.method public disableP2p()V
    .locals 2

    const-string/jumbo v0, "BluetoothAdvancedOppService"

    const-string/jumbo v1, "[ADVANCED OPP] : disableP2p > setWifiEnabled(false)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;->isWifiP2pEnabled:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "BluetoothAdvancedOppService"

    const-string/jumbo v1, "[ADVANCED OPP] : Wi-Fi is  enabled, disable it"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "BluetoothAdvancedOppService"

    const-string/jumbo v1, "[ADVANCED OPP] : Wi-Fi is already disabled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public discoverPeers()Z
    .locals 4

    iget-boolean v1, p0, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;->isWifiP2pEnabled:Z

    if-nez v1, :cond_0

    const-string/jumbo v1, "BluetoothAdvancedOppService"

    const-string/jumbo v2, "[ADVANCED OPP] discoverPeers / p2p is not enabled"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;->enableP2p()V

    const/4 v1, 0x0

    return v1

    :cond_0
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;->manager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;->channel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v3, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService$4;

    invoke-direct {v3, p0}, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService$4;-><init>(Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;)V

    invoke-virtual {v1, v2, v3}, Landroid/net/wifi/p2p/WifiP2pManager;->discoverPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;->mWifiConnectionHandler:Landroid/os/Handler;

    const/16 v2, 0x66

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-string/jumbo v1, "BluetoothAdvancedOppService"

    const-string/jumbo v2, "[ADVANCED OPP] send Discovery Message"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;->mWifiConnectionHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x4e20

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    const/4 v1, 0x1

    return v1
.end method

.method public enableP2p()V
    .locals 2

    const-string/jumbo v0, "BluetoothAdvancedOppService"

    const-string/jumbo v1, "[ADVANCED OPP] : enabling P2p"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;->isWifiP2pEnabled:Z

    if-nez v0, :cond_0

    const-string/jumbo v0, "BluetoothAdvancedOppService"

    const-string/jumbo v1, "[ADVANCED OPP] : Wi-Fi is not enabled, enable it"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;->manager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;->channel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    invoke-virtual {v0, v1}, Landroid/net/wifi/p2p/WifiP2pManager;->enableP2p(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "BluetoothAdvancedOppService"

    const-string/jumbo v1, "[ADVANCED OPP] : Wi-Fi is already enabled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getConnectResult()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;->connectResult:Z

    return v0
.end method

.method public handoverParam(Landroid/content/Context;Landroid/os/Handler;Lcom/android/bluetooth/opp/BluetoothOppShareInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;->mCallback:Landroid/os/Handler;

    iput-object p3, p0, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;->mInfo:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    return-void
.end method

.method public hasWifiConnectionMessage()Z
    .locals 2

    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;->mWifiConnectionHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;->mWifiConnectionHandler:Landroid/os/Handler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;->mWifiConnectionHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public initialize(Landroid/content/Context;Landroid/os/Looper;Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;->manager:Landroid/net/wifi/p2p/WifiP2pManager;

    invoke-virtual {v0, p1, p2, p3}, Landroid/net/wifi/p2p/WifiP2pManager;->initialize(Landroid/content/Context;Landroid/os/Looper;Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v0

    return-object v0
.end method

.method public isP2pConnected()Z
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;->manager:Landroid/net/wifi/p2p/WifiP2pManager;

    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pManager;->isWifiP2pConnected()Z

    move-result v0

    return v0
.end method

.method public isP2pConnection()Z
    .locals 3

    const-string/jumbo v1, "BluetoothAdvancedOppService"

    const-string/jumbo v2, "[ADVANCED OPP] isP2pConnection"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "wifip2p"

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pManager;->isWifiP2pEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pManager;->isWifiP2pConnected()Z

    move-result v1

    return v1

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public isWifiEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    return v0
.end method

.method public isWifiP2pAviliable()Z
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;->manager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isWifiP2pManager()Z
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;->manager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2

    const-string/jumbo v0, "BluetoothAdvancedOppService"

    const-string/jumbo v1, "[ADVANCED OPP] onBind / start IBinder"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;->mBinder:Lcom/android/bluetooth/opp/BluetoothAdvancedOppService$NetServiceBinder;

    return-object v0
.end method

.method public onChannelDisconnected()V
    .locals 2

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;->isWifiP2pManager()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;->retryChannel:Z

    if-eqz v0, :cond_1

    :cond_0
    const-string/jumbo v0, "Server! Channel is probably lost premanently. Try Disable/Re-Enable P2P."

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "Channel lost. Trying again"

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;->resetPeers()V

    iput-boolean v1, p0, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;->retryChannel:Z

    invoke-virtual {p0}, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {p0, p0, v0, p0}, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;->initialize(Landroid/content/Context;Landroid/os/Looper;Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;->channel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    goto :goto_0
.end method

.method public onConnectionInfoAvailable(Landroid/net/wifi/p2p/WifiP2pInfo;)V
    .locals 2

    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;->wifiP2pInfo:Landroid/net/wifi/p2p/WifiP2pInfo;

    iget-boolean v0, p1, Landroid/net/wifi/p2p/WifiP2pInfo;->groupFormed:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p1, Landroid/net/wifi/p2p/WifiP2pInfo;->isGroupOwner:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "BluetoothAdvancedOppService"

    const-string/jumbo v1, "[ADVANCED OPP] owner - info.groupFormed && info.isGroupOwner..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p1, Landroid/net/wifi/p2p/WifiP2pInfo;->groupFormed:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "BluetoothAdvancedOppService"

    const-string/jumbo v1, "[ADVANCED OPP] peer - info.groupFormed."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onCreate()V
    .locals 1

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    const-string/jumbo v0, "wifip2p"

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pManager;

    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;->manager:Landroid/net/wifi/p2p/WifiP2pManager;

    invoke-virtual {p0}, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {p0, p0, v0, p0}, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;->initialize(Landroid/content/Context;Landroid/os/Looper;Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;->channel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    const-string/jumbo v0, "wifi"

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-void
.end method

.method public onDestroy()V
    .locals 2

    const-string/jumbo v0, "BluetoothAdvancedOppService"

    const-string/jumbo v1, "[ADVANCED OPP] start onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;->receiver:Landroid/content/BroadcastReceiver;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;->mIsClientSession:I

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onPeersAvailable(Landroid/net/wifi/p2p/WifiP2pDeviceList;)V
    .locals 2

    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;->p2pDeviceList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;->p2pDeviceList:Ljava/util/List;

    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->getDeviceList()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;->p2pDeviceList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "BluetoothAdvancedOppService"

    const-string/jumbo v1, "[ADVANCED OPP] No devices found"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2

    const-string/jumbo v0, "BluetoothAdvancedOppService"

    const-string/jumbo v1, "[ADVANCED OPP] onStartCommand"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    return v0
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 5

    const/4 v4, 0x0

    const-string/jumbo v1, "BluetoothAdvancedOppService"

    const-string/jumbo v2, "[ADVANCED OPP] start onUnbind"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;->isWiFiReceiverRegistered:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const-string/jumbo v1, "BluetoothAdvancedOppService"

    const-string/jumbo v2, "[ADVANCED OPP] : UnRegisterWiFiReceiver"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;->mCreatedGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;

    if-eqz v1, :cond_1

    const-string/jumbo v1, "BluetoothAdvancedOppService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "[ADVANCED OPP] : Unbind Service > RemoveClient / Session is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;->mIsClientSession:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x3

    iput v1, p0, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;->mP2pState:I

    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;->mCreatedGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-virtual {v1}, Landroid/net/wifi/p2p/WifiP2pGroup;->isGroupOwner()Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v0, Landroid/net/wifi/p2p/WifiP2pConfig;

    invoke-direct {v0}, Landroid/net/wifi/p2p/WifiP2pConfig;-><init>()V

    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;->remoteDeviceAddress:Ljava/lang/String;

    iput-object v1, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    iget-object v1, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    const/4 v2, 0x0

    iput v2, v1, Landroid/net/wifi/WpsInfo;->setup:I

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;->removeClient(Landroid/net/wifi/p2p/WifiP2pConfig;)V

    :cond_1
    :goto_0
    iput-object v4, p0, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;->mCreatedGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;

    iput-object v4, p0, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;->remoteDeviceAddress:Ljava/lang/String;

    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result v1

    return v1

    :cond_2
    invoke-virtual {p0}, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;->removeGroup()V

    goto :goto_0
.end method

.method public removeClient(Landroid/net/wifi/p2p/WifiP2pConfig;)V
    .locals 3

    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;->manager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;->channel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v2, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService$9;

    invoke-direct {v2, p0}, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService$9;-><init>(Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;)V

    invoke-virtual {v0, v1, p1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->removeClient(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pConfig;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    return-void
.end method

.method public removeGroup()V
    .locals 3

    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;->manager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;->channel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v2, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService$8;

    invoke-direct {v2, p0}, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService$8;-><init>(Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;)V

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->removeGroup(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    return-void
.end method

.method public removeP2pConfirm(Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;->manager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-nez v0, :cond_0

    const-string/jumbo v0, "BluetoothAdvancedOppService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[ADVANCED OPP] removeP2pConfirm invalid manager: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;->wifiP2pInfo:Landroid/net/wifi/p2p/WifiP2pInfo;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;->wifiP2pInfo:Landroid/net/wifi/p2p/WifiP2pInfo;

    iget-boolean v0, v0, Landroid/net/wifi/p2p/WifiP2pInfo;->isGroupOwner:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "BluetoothAdvancedOppService"

    const-string/jumbo v1, "[ADVANCED OPP] wifiP2pInfo isGroupOwner"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const-string/jumbo v0, "BluetoothAdvancedOppService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[ADVANCED OPP] removeP2pConfirm skip: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;->manager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;->channel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v2, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService$3;

    invoke-direct {v2, p0}, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService$3;-><init>(Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;)V

    invoke-virtual {v0, v1, p1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->requestNfcConnect(Landroid/net/wifi/p2p/WifiP2pManager$Channel;ZLandroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    return-void
.end method

.method public removeWifiConnectionMessage()V
    .locals 4

    const/16 v3, 0x64

    const/16 v2, 0x65

    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;->mWifiConnectionHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;->mWifiConnectionHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;->mWifiConnectionHandler:Landroid/os/Handler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;->mWifiConnectionHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;->mWifiConnectionHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;->mWifiConnectionHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    :cond_2
    return-void
.end method

.method public requestP2pListen()V
    .locals 3

    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;->manager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;->channel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v2, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService$7;

    invoke-direct {v2, p0}, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService$7;-><init>(Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;)V

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->requestP2pListen(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    return-void
.end method

.method public requestPeers(Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;)V
    .locals 2

    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;->manager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;->channel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    invoke-virtual {v0, v1, p1}, Landroid/net/wifi/p2p/WifiP2pManager;->requestPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;)V

    return-void
.end method

.method public resetPeers()V
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;->p2pDeviceList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public sendIntentForFinishTransferActivity()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.btopp.intent.action.OPP_FINISH_TRANSFER_ACTIVITY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public final setIsWifiP2pEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;->isWifiP2pEnabled:Z

    return-void
.end method

.method public setRemoteDeviceAddress(Ljava/lang/String;)V
    .locals 3

    const-string/jumbo v0, "BluetoothAdvancedOppService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[ADVANCED OPP] : setRemoteDeviceAddress, address is = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/android/bluetooth/Utils;->getAddressForLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;->remoteDeviceAddress:Ljava/lang/String;

    return-void
.end method

.method public setSessionContext(Lcom/android/bluetooth/opp/BluetoothOppObexSession;Z)V
    .locals 1

    if-eqz p2, :cond_0

    check-cast p1, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;->mSessionClient:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;->mIsClientSession:I

    :goto_0
    return-void

    :cond_0
    check-cast p1, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;

    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;->mSessionServer:Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;->mIsClientSession:I

    goto :goto_0
.end method

.method public stopP2pDiscovery()V
    .locals 3

    const-string/jumbo v0, "BluetoothAdvancedOppService"

    const-string/jumbo v1, "[ADVANCED OPP] : stopP2pDiscovery"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;->mWifiConnectionHandler:Landroid/os/Handler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;->manager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;->channel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->stopPeerDiscovery(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    return-void
.end method

.method public updateConnectedDevicesList(Landroid/net/wifi/p2p/WifiP2pDevice;)Z
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;->mConnectedDeviceList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;->mConnectedDeviceList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;->mConnectedDeviceList:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    iget-object v1, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return v3

    :cond_1
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;->mConnectedDeviceList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v1, "BluetoothAdvancedOppService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[ADVANCED OPP] : Device is connected freshly now, already connected device is = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;->mConnectedDeviceList:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/bluetooth/Utils;->getAddressForLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "new changed device is = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/bluetooth/Utils;->getAddressForLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "comparison result is = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;->mConnectedDeviceList:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    iget-object v3, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;->mConnectedDeviceList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v0, "BluetoothAdvancedOppService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[ADVANCED OPP] : Device is added in connected device list size is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;->mConnectedDeviceList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0

    :cond_2
    const-string/jumbo v0, "BluetoothAdvancedOppService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[ADVANCED OPP] : Device is connected freshly now adding device is ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/bluetooth/Utils;->getAddressForLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public updateShareInfoListForWifi()V
    .locals 4

    const-string/jumbo v2, "BluetoothAdvancedOppService"

    const-string/jumbo v3, "[ADVANCED OPP] updateShareInfoListForWifi"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;->mSharesForWifi:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    if-nez v0, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;->mSharesForWifi:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    if-eqz v1, :cond_0

    iget v2, v1, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mStatus:I

    const/16 v3, 0xbe

    if-ne v2, v3, :cond_0

    const/16 v2, 0xc8

    iput v2, v1, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mStatus:I

    goto :goto_1

    :cond_2
    return-void
.end method

.method public updateShareListInfo(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/bluetooth/opp/BluetoothOppShareInfo;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;->mSharesForWifi:Ljava/util/ArrayList;

    :cond_0
    return-void
.end method

.method public updateThisDevice(Landroid/net/wifi/p2p/WifiP2pDevice;)V
    .locals 0

    return-void
.end method
