.class Lcom/android/bluetooth/opp/BluetoothAdvancedOppService$1;
.super Ljava/lang/Object;
.source "BluetoothAdvancedOppService.java"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService$1;->this$0:Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPeersAvailable(Landroid/net/wifi/p2p/WifiP2pDeviceList;)V
    .locals 7

    const/4 v6, 0x0

    const-string/jumbo v3, "BluetoothAdvancedOppService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "[ADVANCED OPP] : onPeersAvailable Entered onPeersAvailable "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->getDeviceList()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->getDeviceList()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v3, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService$1;->this$0:Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;

    invoke-static {v4}, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;->-get9(Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo v3, "BluetoothAdvancedOppService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "[ADVANCED OPP] :onPeersAvailable find TargetDevice: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService$1;->this$0:Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;

    invoke-static {v3}, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;->-get3(Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;)I

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService$1;->this$0:Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;->-set2(Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;I)I

    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService$1;->this$0:Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;

    invoke-static {v3}, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;->-get8(Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;)Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0x66

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    const-string/jumbo v3, "BluetoothAdvancedOppService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "[ADVANCED OPP] :connect TargetDevice: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/net/wifi/p2p/WifiP2pConfig;

    invoke-direct {v0}, Landroid/net/wifi/p2p/WifiP2pConfig;-><init>()V

    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService$1;->this$0:Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;

    invoke-static {v3}, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;->-get9(Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    iget-object v3, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    iput v6, v3, Landroid/net/wifi/WpsInfo;->setup:I

    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService$1;->this$0:Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;

    invoke-virtual {v3, v0}, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;->connect(Landroid/net/wifi/p2p/WifiP2pConfig;)V

    :cond_1
    return-void

    :cond_2
    return-void
.end method
