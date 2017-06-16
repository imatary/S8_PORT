.class Lcom/android/bluetooth/sap/SapService$1;
.super Landroid/os/Handler;
.source "SapService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/sap/SapService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/sap/SapService;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/sap/SapService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/bluetooth/sap/SapService$1;->this$0:Lcom/android/bluetooth/sap/SapService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    const/16 v5, 0x138e

    const/4 v4, 0x0

    sget-boolean v1, Lcom/android/bluetooth/sap/SapService;->VERBOSE:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "SapService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Handler(): got msg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    :cond_1
    :goto_0
    :sswitch_0
    return-void

    :sswitch_1
    iget-object v1, p0, Lcom/android/bluetooth/sap/SapService$1;->this$0:Lcom/android/bluetooth/sap/SapService;

    invoke-static {v1}, Lcom/android/bluetooth/sap/SapService;->-get0(Lcom/android/bluetooth/sap/SapService;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/bluetooth/sap/SapService$1;->this$0:Lcom/android/bluetooth/sap/SapService;

    invoke-static {v1}, Lcom/android/bluetooth/sap/SapService;->-wrap8(Lcom/android/bluetooth/sap/SapService;)V

    goto :goto_0

    :sswitch_2
    iget-object v1, p0, Lcom/android/bluetooth/sap/SapService$1;->this$0:Lcom/android/bluetooth/sap/SapService;

    invoke-static {v1}, Lcom/android/bluetooth/sap/SapService;->-get2(Lcom/android/bluetooth/sap/SapService;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/bluetooth/sap/SapService$1;->this$0:Lcom/android/bluetooth/sap/SapService;

    iget-object v2, p0, Lcom/android/bluetooth/sap/SapService$1;->this$0:Lcom/android/bluetooth/sap/SapService;

    invoke-static {v2}, Lcom/android/bluetooth/sap/SapService;->-get3(Lcom/android/bluetooth/sap/SapService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/bluetooth/sap/SapService;->-wrap4(Lcom/android/bluetooth/sap/SapService;Landroid/bluetooth/BluetoothDevice;)V

    iget-object v1, p0, Lcom/android/bluetooth/sap/SapService$1;->this$0:Lcom/android/bluetooth/sap/SapService;

    invoke-static {v1}, Lcom/android/bluetooth/sap/SapService;->-wrap2(Lcom/android/bluetooth/sap/SapService;)V

    iget-object v1, p0, Lcom/android/bluetooth/sap/SapService$1;->this$0:Lcom/android/bluetooth/sap/SapService;

    invoke-static {v1, v4}, Lcom/android/bluetooth/sap/SapService;->-set1(Lcom/android/bluetooth/sap/SapService;Z)Z

    iget-object v1, p0, Lcom/android/bluetooth/sap/SapService$1;->this$0:Lcom/android/bluetooth/sap/SapService;

    invoke-static {v1}, Lcom/android/bluetooth/sap/SapService;->-wrap10(Lcom/android/bluetooth/sap/SapService;)V

    goto :goto_0

    :sswitch_3
    iget-object v1, p0, Lcom/android/bluetooth/sap/SapService$1;->this$0:Lcom/android/bluetooth/sap/SapService;

    invoke-static {v1}, Lcom/android/bluetooth/sap/SapService;->-wrap10(Lcom/android/bluetooth/sap/SapService;)V

    goto :goto_0

    :sswitch_4
    sget-boolean v1, Lcom/android/bluetooth/sap/SapService;->VERBOSE:Z

    if-eqz v1, :cond_2

    const-string/jumbo v1, "SapService"

    const-string/jumbo v2, "Acquire Wake Lock request message"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v1, p0, Lcom/android/bluetooth/sap/SapService$1;->this$0:Lcom/android/bluetooth/sap/SapService;

    invoke-static {v1}, Lcom/android/bluetooth/sap/SapService;->-get7(Lcom/android/bluetooth/sap/SapService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/bluetooth/sap/SapService$1;->this$0:Lcom/android/bluetooth/sap/SapService;

    const-string/jumbo v2, "power"

    invoke-virtual {v1, v2}, Lcom/android/bluetooth/sap/SapService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iget-object v1, p0, Lcom/android/bluetooth/sap/SapService$1;->this$0:Lcom/android/bluetooth/sap/SapService;

    const-string/jumbo v2, "StartingObexMapTransaction"

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/bluetooth/sap/SapService;->-set4(Lcom/android/bluetooth/sap/SapService;Landroid/os/PowerManager$WakeLock;)Landroid/os/PowerManager$WakeLock;

    iget-object v1, p0, Lcom/android/bluetooth/sap/SapService$1;->this$0:Lcom/android/bluetooth/sap/SapService;

    invoke-static {v1}, Lcom/android/bluetooth/sap/SapService;->-get7(Lcom/android/bluetooth/sap/SapService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    :cond_3
    iget-object v1, p0, Lcom/android/bluetooth/sap/SapService$1;->this$0:Lcom/android/bluetooth/sap/SapService;

    invoke-static {v1}, Lcom/android/bluetooth/sap/SapService;->-get7(Lcom/android/bluetooth/sap/SapService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/bluetooth/sap/SapService$1;->this$0:Lcom/android/bluetooth/sap/SapService;

    invoke-static {v1}, Lcom/android/bluetooth/sap/SapService;->-get7(Lcom/android/bluetooth/sap/SapService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    sget-boolean v1, Lcom/android/bluetooth/sap/SapService;->DEBUG:Z

    if-eqz v1, :cond_4

    const-string/jumbo v1, "SapService"

    const-string/jumbo v2, "  Acquired Wake Lock by message"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object v1, p0, Lcom/android/bluetooth/sap/SapService$1;->this$0:Lcom/android/bluetooth/sap/SapService;

    invoke-static {v1}, Lcom/android/bluetooth/sap/SapService;->-get6(Lcom/android/bluetooth/sap/SapService;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/android/bluetooth/sap/SapService$1;->this$0:Lcom/android/bluetooth/sap/SapService;

    invoke-static {v1}, Lcom/android/bluetooth/sap/SapService;->-get6(Lcom/android/bluetooth/sap/SapService;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/sap/SapService$1;->this$0:Lcom/android/bluetooth/sap/SapService;

    invoke-static {v2}, Lcom/android/bluetooth/sap/SapService;->-get6(Lcom/android/bluetooth/sap/SapService;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v4, 0x3e8

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    :sswitch_5
    sget-boolean v1, Lcom/android/bluetooth/sap/SapService;->VERBOSE:Z

    if-eqz v1, :cond_5

    const-string/jumbo v1, "SapService"

    const-string/jumbo v2, "Release Wake Lock request message"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iget-object v1, p0, Lcom/android/bluetooth/sap/SapService$1;->this$0:Lcom/android/bluetooth/sap/SapService;

    invoke-static {v1}, Lcom/android/bluetooth/sap/SapService;->-get7(Lcom/android/bluetooth/sap/SapService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/bluetooth/sap/SapService$1;->this$0:Lcom/android/bluetooth/sap/SapService;

    invoke-static {v1}, Lcom/android/bluetooth/sap/SapService;->-get7(Lcom/android/bluetooth/sap/SapService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    sget-boolean v1, Lcom/android/bluetooth/sap/SapService;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string/jumbo v1, "SapService"

    const-string/jumbo v2, "  Released Wake Lock by message"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :sswitch_6
    iget-object v1, p0, Lcom/android/bluetooth/sap/SapService$1;->this$0:Lcom/android/bluetooth/sap/SapService;

    invoke-static {v1}, Lcom/android/bluetooth/sap/SapService;->-wrap3(Lcom/android/bluetooth/sap/SapService;)V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_6
        0x1388 -> :sswitch_3
        0x1389 -> :sswitch_0
        0x138a -> :sswitch_0
        0x138d -> :sswitch_4
        0x138e -> :sswitch_5
    .end sparse-switch
.end method
