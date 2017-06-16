.class public Lcom/android/bluetooth/opp/BluetoothAdvancedOppService$WiFiDirectBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothAdvancedOppService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WiFiDirectBroadcastReceiver"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "WiFiDirectBroadcastReceiver"


# instance fields
.field public mConnectedDevicesofWifiTemp:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/wifi/p2p/WifiP2pDevice;",
            ">;"
        }
    .end annotation
.end field

.field private netService:Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;

.field serviceListener:Lcom/android/bluetooth/opp/WifiP2pNetServiceListener;

.field final synthetic this$0:Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;


# direct methods
.method public constructor <init>(Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;Lcom/android/bluetooth/opp/WifiP2pNetServiceListener;)V
    .locals 1

    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService$WiFiDirectBroadcastReceiver;->this$0:Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService$WiFiDirectBroadcastReceiver;->mConnectedDevicesofWifiTemp:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService$WiFiDirectBroadcastReceiver;->netService:Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;

    iput-object p3, p0, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService$WiFiDirectBroadcastReceiver;->serviceListener:Lcom/android/bluetooth/opp/WifiP2pNetServiceListener;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v9, "WiFiDirectBroadcastReceiver"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "[ADVANCED OPP] Checking change action - "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v9, "android.net.wifi.p2p.STATE_CHANGED"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    const-string/jumbo v9, "WiFiDirectBroadcastReceiver"

    const-string/jumbo v10, "[ADVANCED OPP] onreceive WIFI_P2P_STATE_CHANGED_ACTION"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v9, "wifi_p2p_state"

    const/4 v10, -0x1

    invoke-virtual {p2, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    const/4 v9, 0x2

    if-ne v7, v9, :cond_4

    invoke-virtual {p0}, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService$WiFiDirectBroadcastReceiver;->isInitialStickyBroadcast()Z

    move-result v9

    if-eqz v9, :cond_0

    const-string/jumbo v9, "WiFiDirectBroadcastReceiver"

    const-string/jumbo v10, "[ADVANCED OPP] state WIFI_P2P_STATE_ENABLED isInitialStickyBroadcast"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string/jumbo v9, "WiFiDirectBroadcastReceiver"

    const-string/jumbo v10, "[ADVANCED OPP] state WIFI_P2P_STATE_ENABLED"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, p0, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService$WiFiDirectBroadcastReceiver;->netService:Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;->setIsWifiP2pEnabled(Z)V

    iget-object v9, p0, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService$WiFiDirectBroadcastReceiver;->netService:Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;->removeP2pConfirm(Z)V

    iget-object v9, p0, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService$WiFiDirectBroadcastReceiver;->this$0:Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;

    invoke-static {v9}, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;->-get2(Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;)I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_3

    const-string/jumbo v9, "WiFiDirectBroadcastReceiver"

    const-string/jumbo v10, "[ADVANCED OPP] requestP2pListen"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, p0, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService$WiFiDirectBroadcastReceiver;->netService:Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;

    invoke-virtual {v9}, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;->requestP2pListen()V

    :cond_1
    :goto_0
    const-string/jumbo v9, "WiFiDirectBroadcastReceiver"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "[ADVANCED OPP] P2P state changed - state:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    return-void

    :cond_3
    iget-object v9, p0, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService$WiFiDirectBroadcastReceiver;->this$0:Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;

    invoke-static {v9}, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;->-get2(Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;)I

    move-result v9

    const/4 v10, 0x2

    if-ne v9, v10, :cond_1

    const-string/jumbo v9, "WiFiDirectBroadcastReceiver"

    const-string/jumbo v10, "[ADVANCED OPP] discoverPeers"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, p0, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService$WiFiDirectBroadcastReceiver;->netService:Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;

    invoke-virtual {v9}, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;->discoverPeers()Z

    goto :goto_0

    :cond_4
    const/4 v9, 0x1

    if-ne v7, v9, :cond_1

    invoke-virtual {p0}, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService$WiFiDirectBroadcastReceiver;->isInitialStickyBroadcast()Z

    move-result v9

    if-eqz v9, :cond_5

    const-string/jumbo v9, "WiFiDirectBroadcastReceiver"

    const-string/jumbo v10, "[ADVANCED OPP] state WIFI_P2P_STATE_DISABLED isInitialStickyBroadcast"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_5
    const-string/jumbo v9, "WiFiDirectBroadcastReceiver"

    const-string/jumbo v10, "[ADVANCED OPP] WIFI_P2P_STATE_DISABLED"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, p0, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService$WiFiDirectBroadcastReceiver;->netService:Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;->setIsWifiP2pEnabled(Z)V

    iget-object v9, p0, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService$WiFiDirectBroadcastReceiver;->this$0:Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;

    invoke-static {v9}, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;->-get8(Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;)Landroid/os/Handler;

    move-result-object v9

    const/16 v10, 0x66

    invoke-virtual {v9, v10}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v9, p0, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService$WiFiDirectBroadcastReceiver;->this$0:Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;

    invoke-static {v9}, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;->-get8(Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;)Landroid/os/Handler;

    move-result-object v9

    const/16 v10, 0x65

    invoke-virtual {v9, v10}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v9, p0, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService$WiFiDirectBroadcastReceiver;->this$0:Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;

    const/4 v10, 0x0

    invoke-static {v9, v10}, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;->-set2(Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;I)I

    iget-object v9, p0, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService$WiFiDirectBroadcastReceiver;->this$0:Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;

    const/4 v10, 0x0

    invoke-static {v9, v10}, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;->-set0(Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;Z)Z

    const/4 v9, 0x0

    sput-boolean v9, Lcom/android/bluetooth/opp/Constants;->mAdvancedOppP2pConnected:Z

    goto :goto_0

    :cond_6
    const-string/jumbo v9, "android.net.wifi.p2p.PEERS_CHANGED"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_d

    iget-object v9, p0, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService$WiFiDirectBroadcastReceiver;->netService:Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;

    invoke-virtual {v9}, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;->isWifiP2pAviliable()Z

    move-result v9

    if-eqz v9, :cond_7

    iget-object v9, p0, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService$WiFiDirectBroadcastReceiver;->this$0:Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;

    invoke-static {v9}, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;->-get2(Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;)I

    move-result v9

    const/4 v10, 0x2

    if-ne v9, v10, :cond_7

    iget-object v9, p0, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService$WiFiDirectBroadcastReceiver;->netService:Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;

    iget-object v10, p0, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService$WiFiDirectBroadcastReceiver;->netService:Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;

    invoke-static {v10}, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;->-get4(Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;)Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;->requestPeers(Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;)V

    :cond_7
    const-string/jumbo v9, "wifiP2pDeviceList"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/net/wifi/p2p/WifiP2pDeviceList;

    const-string/jumbo v9, "connectedDevAddress"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v6, v2}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->get(Ljava/lang/String;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v1

    if-eqz v1, :cond_c

    const-string/jumbo v9, "WiFiDirectBroadcastReceiver"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "[ADVANCED OPP] WIFI_P2P_PEERS_CHANGED_ACTION : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " , "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v9, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    if-nez v9, :cond_a

    iget-object v9, p0, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService$WiFiDirectBroadcastReceiver;->netService:Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;

    invoke-virtual {v9, v1}, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;->updateConnectedDevicesList(Landroid/net/wifi/p2p/WifiP2pDevice;)Z

    move-result v4

    iget-object v9, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    iget-object v10, p0, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService$WiFiDirectBroadcastReceiver;->this$0:Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;

    invoke-static {v10}, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;->-get9(Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_8

    const-string/jumbo v9, "WiFiDirectBroadcastReceiver"

    const-string/jumbo v10, "[ADVANCED OPP] Different Target ! Do nothing"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_8
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "WiFiDirectBroadcastReceiver[ADVANCED OPP] Wifi p2p is connected to "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-static {v10}, Lcom/android/bluetooth/Utils;->getAddressForLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/bluetooth/BluetoothDump;->BtLog(Ljava/lang/String;)V

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Lcom/android/bluetooth/opp/BluetoothShare;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService$WiFiDirectBroadcastReceiver;->this$0:Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;

    invoke-static {v10}, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;->-get1(Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;)Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-result-object v10

    iget v10, v10, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v9, "visibility"

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v9, p0, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService$WiFiDirectBroadcastReceiver;->this$0:Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;

    invoke-virtual {v9}, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;->sendIntentForFinishTransferActivity()V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v9, v3, v8, v10, v11}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    iget-object v9, p0, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService$WiFiDirectBroadcastReceiver;->this$0:Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;

    invoke-static {v9}, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;->-get2(Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;)I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_9

    if-eqz v4, :cond_2

    sget-boolean v9, Lcom/android/bluetooth/opp/Constants;->mAdvancedOppUsing:Z

    if-eqz v9, :cond_2

    const-string/jumbo v9, "WiFiDirectBroadcastReceiver"

    const-string/jumbo v10, "[ADVANCED OPP] New device connected send the data"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, p0, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService$WiFiDirectBroadcastReceiver;->this$0:Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;

    invoke-static {v9}, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;->-get6(Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;)Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    move-result-object v9

    invoke-virtual {v9, v1}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->updateThisDevice(Landroid/net/wifi/p2p/WifiP2pDevice;)V

    iget-object v9, p0, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService$WiFiDirectBroadcastReceiver;->this$0:Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;

    const/4 v10, 0x2

    invoke-static {v9, v10}, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;->-set2(Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;I)I

    iget-object v9, p0, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService$WiFiDirectBroadcastReceiver;->this$0:Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;

    invoke-static {v9}, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;->-get6(Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;)Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->sendBtP2pSettingsStartedBroadcast(Z)V

    goto/16 :goto_1

    :cond_9
    iget-object v9, p0, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService$WiFiDirectBroadcastReceiver;->this$0:Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;

    invoke-static {v9}, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;->-get2(Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;)I

    move-result v9

    const/4 v10, 0x2

    if-ne v9, v10, :cond_2

    iget-object v9, p0, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService$WiFiDirectBroadcastReceiver;->this$0:Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;

    const/4 v10, 0x2

    invoke-static {v9, v10}, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;->-set2(Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;I)I

    iget-object v9, p0, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService$WiFiDirectBroadcastReceiver;->this$0:Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;

    const/4 v10, 0x1

    invoke-static {v9, v10}, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;->-set0(Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;Z)Z

    const-string/jumbo v9, "WiFiDirectBroadcastReceiver"

    const-string/jumbo v10, "[ADVANCED OPP] Connected : WIFI_P2P_PEERS_CHANGED_ACTION"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, p0, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService$WiFiDirectBroadcastReceiver;->this$0:Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;

    invoke-static {v9}, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;->-get8(Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;)Landroid/os/Handler;

    move-result-object v9

    const/16 v10, 0x65

    invoke-virtual {v9, v10}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v9, p0, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService$WiFiDirectBroadcastReceiver;->netService:Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;

    invoke-virtual {v9}, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;->stopP2pDiscovery()V

    iget-object v9, p0, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService$WiFiDirectBroadcastReceiver;->netService:Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;->removeP2pConfirm(Z)V

    iget-object v9, p0, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService$WiFiDirectBroadcastReceiver;->this$0:Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;

    invoke-static {v9}, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;->-get7(Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;)Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;

    move-result-object v9

    if-eqz v9, :cond_2

    iget-object v9, p0, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService$WiFiDirectBroadcastReceiver;->this$0:Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;

    invoke-static {v9}, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;->-get7(Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;)Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/android/bluetooth/opp/BluetoothOppObexServerSession;->sendBtP2pSettingsStartedBroadcast(Z)V

    goto/16 :goto_1

    :cond_a
    iget-object v9, p0, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService$WiFiDirectBroadcastReceiver;->this$0:Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;

    const/4 v10, 0x0

    invoke-static {v9, v10}, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;->-set2(Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;I)I

    iget-object v9, p0, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService$WiFiDirectBroadcastReceiver;->this$0:Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;

    invoke-static {v9}, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;->-get6(Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;)Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    move-result-object v9

    if-eqz v9, :cond_b

    iget-object v9, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    iget-object v10, p0, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService$WiFiDirectBroadcastReceiver;->this$0:Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;

    invoke-static {v10}, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;->-get9(Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    const-string/jumbo v9, "WiFiDirectBroadcastReceiver"

    const-string/jumbo v10, "[ADVANCED OPP] abnormal p2p disconnection."

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v9, "WiFiDirectBroadcastReceiver[ADVANCED OPP] abnormal p2p disconnection."

    invoke-static {v9}, Landroid/bluetooth/BluetoothDump;->BtLog(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService$WiFiDirectBroadcastReceiver;->this$0:Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;

    invoke-static {v9}, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;->-get6(Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;)Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->stop()V

    :cond_b
    const-string/jumbo v9, "WiFiDirectBroadcastReceiver"

    const-string/jumbo v10, "[ADVANCED OPP] Disconnected : WIFI_P2P_PEERS_CHANGED_ACTION"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_c
    const-string/jumbo v9, "WiFiDirectBroadcastReceiver"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, " WIFI_P2P_PEERS_CHANGED_ACTION : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " ,no device"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_d
    const-string/jumbo v9, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_e

    const-string/jumbo v9, "networkInfo"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/net/NetworkInfo;

    iget-object v10, p0, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService$WiFiDirectBroadcastReceiver;->this$0:Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;

    const-string/jumbo v9, "p2pGroupInfo"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v9

    check-cast v9, Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-static {v10, v9}, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;->-set1(Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;Landroid/net/wifi/p2p/WifiP2pGroup;)Landroid/net/wifi/p2p/WifiP2pGroup;

    goto/16 :goto_1

    :cond_e
    const-string/jumbo v9, "WiFiDirectBroadcastReceiver"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "[ADVANCED OPP] Other P2P change action - "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method
