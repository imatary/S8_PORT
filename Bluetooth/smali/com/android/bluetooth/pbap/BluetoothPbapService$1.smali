.class Lcom/android/bluetooth/pbap/BluetoothPbapService$1;
.super Landroid/os/Handler;
.source "BluetoothPbapService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/pbap/BluetoothPbapService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/pbap/BluetoothPbapService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$1;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12

    const/16 v11, 0x138d

    const/4 v10, 0x0

    const/4 v9, 0x0

    iget v6, p1, Landroid/os/Message;->what:I

    const/16 v7, 0x138c

    if-eq v6, v7, :cond_0

    const-string/jumbo v6, "BluetoothPbapService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Handler(): got msg="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p1, Landroid/os/Message;->what:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v5, 0x0

    iget v6, p1, Landroid/os/Message;->what:I

    sparse-switch v6, :sswitch_data_0

    :cond_1
    :goto_0
    :sswitch_0
    return-void

    :sswitch_1
    const-string/jumbo v6, "1"

    const-string/jumbo v7, "service.bt.security.policy.mode"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string/jumbo v6, "BluetoothPbapService"

    const-string/jumbo v7, "PBAP service is disabled; IT Policy is Handsfree Only"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v6

    invoke-virtual {v6}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$1;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    invoke-static {v6}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->-wrap6(Lcom/android/bluetooth/pbap/BluetoothPbapService;)V

    goto :goto_0

    :cond_3
    iget-object v6, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$1;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    invoke-static {v6}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->-wrap1(Lcom/android/bluetooth/pbap/BluetoothPbapService;)V

    goto :goto_0

    :sswitch_2
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/bluetooth/BluetoothDevice;

    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v6, "android.bluetooth.device.action.CONNECTION_ACCESS_CANCEL"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v6, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v3, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string/jumbo v6, "android.bluetooth.device.extra.ACCESS_REQUEST_TYPE"

    const/4 v7, 0x2

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v6, "com.android.settings"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v6, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$1;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    const-string/jumbo v7, "android.permission.BLUETOOTH_ADMIN"

    invoke-virtual {v6, v3, v7}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    sget-object v6, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_4_0:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    invoke-static {v6}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxVersionSupported(Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-static {}, Lcom/android/bluetooth/Utils;->getBtEnabledContainers()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    iget-object v6, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$1;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    new-instance v7, Landroid/os/UserHandle;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-direct {v7, v8}, Landroid/os/UserHandle;-><init>(I)V

    const-string/jumbo v8, "android.permission.BLUETOOTH_ADMIN"

    invoke-virtual {v6, v3, v7, v8}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    iget-object v6, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$1;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    iget-object v6, v6, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mSessionManager:Lcom/android/bluetooth/pbap/BluetoothPbapSessionManager;

    invoke-virtual {v6, v5, v10}, Lcom/android/bluetooth/pbap/BluetoothPbapSessionManager;->setWaitingAuthorization(Landroid/bluetooth/BluetoothDevice;Z)Z

    iget-object v6, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$1;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    invoke-static {v6, v5}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->-wrap7(Lcom/android/bluetooth/pbap/BluetoothPbapService;Landroid/bluetooth/BluetoothDevice;)V

    goto/16 :goto_0

    :sswitch_3
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v6, "com.android.bluetooth.pbap.userconfirmtimeout"

    invoke-direct {v0, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$1;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    const-string/jumbo v7, "android.permission.BLUETOOTH_ADMIN"

    invoke-virtual {v6, v0, v7}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    sget-object v6, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_4_0:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    invoke-static {v6}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxVersionSupported(Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-static {}, Lcom/android/bluetooth/Utils;->getBtEnabledContainers()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    iget-object v6, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$1;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    new-instance v7, Landroid/os/UserHandle;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-direct {v7, v8}, Landroid/os/UserHandle;-><init>(I)V

    const-string/jumbo v8, "android.permission.BLUETOOTH_ADMIN"

    invoke-virtual {v6, v0, v7, v8}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    iget-object v6, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$1;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    const v7, -0xf4242

    invoke-static {v6, v7}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->-wrap3(Lcom/android/bluetooth/pbap/BluetoothPbapService;I)V

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/bluetooth/BluetoothDevice;

    iget-object v6, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$1;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    iget-object v6, v6, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mSessionManager:Lcom/android/bluetooth/pbap/BluetoothPbapSessionManager;

    invoke-virtual {v6, v5}, Lcom/android/bluetooth/pbap/BluetoothPbapSessionManager;->notifyAuthCancelled(Landroid/bluetooth/BluetoothDevice;)V

    goto/16 :goto_0

    :sswitch_4
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/bluetooth/BluetoothDevice;

    iget-object v6, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$1;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    invoke-static {v6, v5}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->-wrap7(Lcom/android/bluetooth/pbap/BluetoothPbapService;Landroid/bluetooth/BluetoothDevice;)V

    goto/16 :goto_0

    :sswitch_5
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/bluetooth/BluetoothDevice;

    iget-object v6, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$1;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    const-string/jumbo v7, "com.android.bluetooth.pbap.authchall"

    invoke-static {v6, v7, v5}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->-wrap2(Lcom/android/bluetooth/pbap/BluetoothPbapService;Ljava/lang/String;Landroid/bluetooth/BluetoothDevice;)V

    iget-object v6, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$1;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    invoke-static {v6}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->-get1(Lcom/android/bluetooth/pbap/BluetoothPbapService;)Landroid/os/Handler;

    move-result-object v6

    iget-object v7, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$1;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    invoke-static {v7}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->-get1(Lcom/android/bluetooth/pbap/BluetoothPbapService;)Landroid/os/Handler;

    move-result-object v7

    const/4 v8, 0x3

    invoke-virtual {v7, v8, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    const-wide/16 v8, 0x7530

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    :sswitch_6
    iget-object v6, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$1;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    invoke-static {v6}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->-get2(Lcom/android/bluetooth/pbap/BluetoothPbapService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v6

    if-nez v6, :cond_6

    iget-object v6, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$1;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    const-string/jumbo v7, "power"

    invoke-virtual {v6, v7}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PowerManager;

    iget-object v6, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$1;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    const-string/jumbo v7, "StartingObexPbapTransaction"

    const/4 v8, 0x1

    invoke-virtual {v4, v8, v7}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->-set1(Lcom/android/bluetooth/pbap/BluetoothPbapService;Landroid/os/PowerManager$WakeLock;)Landroid/os/PowerManager$WakeLock;

    iget-object v6, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$1;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    invoke-static {v6}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->-get2(Lcom/android/bluetooth/pbap/BluetoothPbapService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    iget-object v6, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$1;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    invoke-static {v6}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->-get2(Lcom/android/bluetooth/pbap/BluetoothPbapService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/PowerManager$WakeLock;->acquire()V

    const-string/jumbo v6, "BluetoothPbapService"

    const-string/jumbo v7, "Acquire Wake Lock"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    iget-object v6, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$1;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    invoke-static {v6}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->-get1(Lcom/android/bluetooth/pbap/BluetoothPbapService;)Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v6, v11}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v6, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$1;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    invoke-static {v6}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->-get1(Lcom/android/bluetooth/pbap/BluetoothPbapService;)Landroid/os/Handler;

    move-result-object v6

    iget-object v7, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$1;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    invoke-static {v7}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->-get1(Lcom/android/bluetooth/pbap/BluetoothPbapService;)Landroid/os/Handler;

    move-result-object v7

    invoke-virtual {v7, v11}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    const-wide/16 v8, 0x2710

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    :sswitch_7
    iget-object v6, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$1;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    invoke-static {v6}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->-get2(Lcom/android/bluetooth/pbap/BluetoothPbapService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$1;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    invoke-static {v6}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->-get2(Lcom/android/bluetooth/pbap/BluetoothPbapService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/PowerManager$WakeLock;->release()V

    iget-object v6, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService$1;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    invoke-static {v6, v9}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->-set1(Lcom/android/bluetooth/pbap/BluetoothPbapService;Landroid/os/PowerManager$WakeLock;)Landroid/os/PowerManager$WakeLock;

    const-string/jumbo v6, "BluetoothPbapService"

    const-string/jumbo v7, "Release Wake Lock"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x1388 -> :sswitch_4
        0x1389 -> :sswitch_0
        0x138a -> :sswitch_0
        0x138b -> :sswitch_5
        0x138c -> :sswitch_6
        0x138d -> :sswitch_7
    .end sparse-switch
.end method
