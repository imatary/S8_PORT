.class Lcom/android/bluetooth/opp/BluetoothAdvancedOppService$2;
.super Landroid/os/Handler;
.source "BluetoothAdvancedOppService.java"


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

    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService$2;->this$0:Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    const/16 v5, 0x1eb

    const/4 v4, 0x2

    const/4 v3, 0x0

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    const-string/jumbo v1, "BluetoothAdvancedOppService"

    const-string/jumbo v2, "[ADVANCED OPP] : unknown msg"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :pswitch_0
    const-string/jumbo v1, "BluetoothAdvancedOppService"

    const-string/jumbo v2, "[ADVANCED OPP] Retrying connection"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService$2;->this$0:Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;

    invoke-virtual {v1}, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;->discoverPeers()Z

    goto :goto_0

    :pswitch_1
    const-string/jumbo v1, "BluetoothAdvancedOppService"

    const-string/jumbo v2, "[ADVANCED OPP] : Connection Failure"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "BluetoothAdvancedOppService[ADVANCED OPP] Connection Failure"

    invoke-static {v1}, Landroid/bluetooth/BluetoothDump;->BtLog(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService$2;->this$0:Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;

    invoke-static {v1}, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;->-get0(Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService$2;->this$0:Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;

    invoke-static {v1}, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;->-get0(Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;)Landroid/os/Handler;

    move-result-object v1

    invoke-static {v1, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService$2;->this$0:Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;

    invoke-static {v1}, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;->-get1(Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;)Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-result-object v1

    iput v5, v1, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mStatus:I

    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService$2;->this$0:Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;

    invoke-static {v1}, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;->-get1(Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;)Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService$2;->this$0:Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;

    invoke-virtual {v1}, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;->stopP2pDiscovery()V

    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService$2;->this$0:Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;

    invoke-static {v1}, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;->-get8(Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x65

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService$2;->this$0:Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;

    invoke-virtual {v1}, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;->cancelP2pConnectRequest()V

    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService$2;->this$0:Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;

    invoke-static {v1, v3}, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;->-set2(Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;I)I

    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService$2;->this$0:Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;

    invoke-static {v1, v3}, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;->-set0(Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;Z)Z

    goto :goto_0

    :pswitch_2
    const-string/jumbo v1, "BluetoothAdvancedOppService"

    const-string/jumbo v2, "[ADVANCED OPP] : Discovery failure"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "BluetoothAdvancedOppService[ADVANCED OPP] Discovery failure"

    invoke-static {v1}, Landroid/bluetooth/BluetoothDump;->BtLog(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService$2;->this$0:Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;

    invoke-static {v1}, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;->-get0(Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService$2;->this$0:Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;

    invoke-static {v1}, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;->-get0(Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;)Landroid/os/Handler;

    move-result-object v1

    invoke-static {v1, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService$2;->this$0:Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;

    invoke-static {v1}, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;->-get1(Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;)Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-result-object v1

    iput v5, v1, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mStatus:I

    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService$2;->this$0:Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;

    invoke-static {v1}, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;->-get1(Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;)Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_1
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService$2;->this$0:Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;

    invoke-virtual {v1}, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;->stopP2pDiscovery()V

    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService$2;->this$0:Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;

    invoke-static {v1, v3}, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;->-set0(Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;Z)Z

    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService$2;->this$0:Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;

    invoke-static {v1, v3}, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;->-set2(Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;I)I

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
