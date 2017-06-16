.class Lcom/android/bluetooth/opp/BluetoothAdvancedOppService$6;
.super Ljava/lang/Object;
.source "BluetoothAdvancedOppService.java"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;->connect(Landroid/net/wifi/p2p/WifiP2pConfig;)V
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

    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService$6;->this$0:Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I)V
    .locals 5

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService$6;->this$0:Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;

    invoke-static {v1, v4}, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;->-set2(Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;I)I

    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService$6;->this$0:Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;

    invoke-virtual {v1}, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;->stopP2pDiscovery()V

    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService$6;->this$0:Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;

    invoke-static {v1}, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;->-get8(Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x65

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService$6;->this$0:Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;

    invoke-static {v1}, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;->-get5(Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;)I

    move-result v2

    add-int/lit8 v3, v2, 0x1

    invoke-static {v1, v3}, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;->-set3(Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;I)I

    const/4 v1, 0x1

    if-ge v2, v1, :cond_0

    const-string/jumbo v1, "BluetoothAdvancedOppService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "[ADVANCED OPP] Retrying connection mRetry = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService$6;->this$0:Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;

    invoke-static {v3}, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;->-get5(Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService$6;->this$0:Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;

    invoke-static {v1}, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;->-get8(Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService$6;->this$0:Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;

    invoke-static {v1}, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;->-get8(Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :goto_0
    const-string/jumbo v1, "BluetoothAdvancedOppService"

    const-string/jumbo v2, "[ADVANCED OPP] connect onFailure"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string/jumbo v1, "BluetoothAdvancedOppService"

    const-string/jumbo v2, "[ADVANCED OPP] connect return false"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService$6;->this$0:Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;

    invoke-static {v1, v4}, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;->-set0(Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;Z)Z

    goto :goto_0
.end method

.method public onSuccess()V
    .locals 2

    const-string/jumbo v0, "BluetoothAdvancedOppService"

    const-string/jumbo v1, "[ADVANCED OPP] connect onSuccess"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
