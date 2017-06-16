.class Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService$1;
.super Landroid/content/BroadcastReceiver;
.source "HfpClientConnectionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService$1;->this$0:Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10

    const-string/jumbo v6, "HfpClientConnService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onReceive "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string/jumbo v6, "android.bluetooth.headsetclient.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    const-string/jumbo v6, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/bluetooth/BluetoothDevice;

    const-string/jumbo v6, "android.bluetooth.profile.extra.STATE"

    const/4 v7, -0x1

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_3

    const-string/jumbo v6, "HfpClientConnService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Established connection with "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService$1;->this$0:Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;

    monitor-enter v7

    :try_start_0
    iget-object v6, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService$1;->this$0:Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;

    invoke-static {v6}, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;->-get1(Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string/jumbo v6, "HfpClientConnService"

    const-string/jumbo v8, "Got connected for previously connected device, ignoring."

    invoke-static {v6, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    monitor-exit v7

    iget-object v6, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService$1;->this$0:Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;

    invoke-static {v6}, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;->-get3(Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;)Landroid/bluetooth/BluetoothHeadsetClient;

    move-result-object v6

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService$1;->this$0:Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;

    invoke-static {v6}, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;->-get3(Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;)Landroid/bluetooth/BluetoothHeadsetClient;

    move-result-object v6

    iget-object v7, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService$1;->this$0:Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;

    invoke-static {v7}, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;->-get1(Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/bluetooth/BluetoothHeadsetClient;->getCurrentCalls(Landroid/bluetooth/BluetoothDevice;)Ljava/util/List;

    move-result-object v3

    const-string/jumbo v6, "HfpClientConnService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Got calls "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothHeadsetClientCall;

    iget-object v6, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService$1;->this$0:Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;

    invoke-static {v6, v1}, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;->-wrap1(Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;Landroid/bluetooth/BluetoothHeadsetClientCall;)V

    goto :goto_2

    :cond_0
    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_1
    :try_start_1
    iget-object v6, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService$1;->this$0:Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;

    invoke-static {v6}, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;->-get2(Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;)Landroid/telecom/PhoneAccount;

    move-result-object v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService$1;->this$0:Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;

    invoke-static {v6}, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;->-get5(Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;)Landroid/telecom/TelecomManager;

    move-result-object v6

    iget-object v8, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService$1;->this$0:Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;

    invoke-static {v8}, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;->-get2(Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;)Landroid/telecom/PhoneAccount;

    move-result-object v8

    invoke-virtual {v8}, Landroid/telecom/PhoneAccount;->getAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/telecom/TelecomManager;->unregisterPhoneAccount(Landroid/telecom/PhoneAccountHandle;)V

    :cond_2
    iget-object v6, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService$1;->this$0:Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;

    invoke-static {v6, v4}, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;->-set0(Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    iget-object v6, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService$1;->this$0:Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;

    iget-object v8, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService$1;->this$0:Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;

    invoke-static {v8, v4}, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;->getAccount(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;)Landroid/telecom/PhoneAccount;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;->-set1(Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;Landroid/telecom/PhoneAccount;)Landroid/telecom/PhoneAccount;

    iget-object v6, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService$1;->this$0:Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;

    invoke-static {v6}, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;->-get5(Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;)Landroid/telecom/TelecomManager;

    move-result-object v6

    iget-object v8, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService$1;->this$0:Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;

    invoke-static {v8}, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;->-get2(Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;)Landroid/telecom/PhoneAccount;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/telecom/TelecomManager;->registerPhoneAccount(Landroid/telecom/PhoneAccount;)V

    iget-object v6, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService$1;->this$0:Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;

    invoke-static {v6}, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;->-get5(Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;)Landroid/telecom/TelecomManager;

    move-result-object v6

    iget-object v8, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService$1;->this$0:Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;

    invoke-static {v8}, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;->-get2(Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;)Landroid/telecom/PhoneAccount;

    move-result-object v8

    invoke-virtual {v8}, Landroid/telecom/PhoneAccount;->getAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v6, v8, v9}, Landroid/telecom/TelecomManager;->enablePhoneAccount(Landroid/telecom/PhoneAccountHandle;Z)V

    iget-object v6, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService$1;->this$0:Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;

    invoke-static {v6}, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;->-get5(Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;)Landroid/telecom/TelecomManager;

    move-result-object v6

    iget-object v8, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService$1;->this$0:Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;

    invoke-static {v8}, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;->-get2(Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;)Landroid/telecom/PhoneAccount;

    move-result-object v8

    invoke-virtual {v8}, Landroid/telecom/PhoneAccount;->getAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/telecom/TelecomManager;->setUserSelectedOutgoingPhoneAccount(Landroid/telecom/PhoneAccountHandle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1

    :catchall_0
    move-exception v6

    monitor-exit v7

    throw v6

    :cond_3
    if-nez v5, :cond_5

    const-string/jumbo v6, "HfpClientConnService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Disconnecting from "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService$1;->this$0:Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;

    monitor-enter v7

    :try_start_2
    iget-object v6, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService$1;->this$0:Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;

    invoke-static {v6}, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;->-get1(Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    const-string/jumbo v6, "HfpClientConnService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Resetting state for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService$1;->this$0:Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;

    const/4 v8, 0x0

    invoke-static {v6, v8}, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;->-set0(Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    iget-object v6, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService$1;->this$0:Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;

    invoke-static {v6}, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;->-wrap0(Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;)V

    iget-object v6, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService$1;->this$0:Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;

    invoke-static {v6}, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;->-get5(Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;)Landroid/telecom/TelecomManager;

    move-result-object v6

    iget-object v8, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService$1;->this$0:Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;

    invoke-static {v8}, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;->-get2(Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;)Landroid/telecom/PhoneAccount;

    move-result-object v8

    invoke-virtual {v8}, Landroid/telecom/PhoneAccount;->getAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/telecom/TelecomManager;->unregisterPhoneAccount(Landroid/telecom/PhoneAccountHandle;)V

    iget-object v6, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService$1;->this$0:Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;

    const/4 v8, 0x0

    invoke-static {v6, v8}, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;->-set1(Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;Landroid/telecom/PhoneAccount;)Landroid/telecom/PhoneAccount;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_4
    monitor-exit v7

    :cond_5
    :goto_3
    return-void

    :catchall_1
    move-exception v6

    monitor-exit v7

    throw v6

    :cond_6
    const-string/jumbo v6, "android.bluetooth.headsetclient.profile.action.AG_CALL_CHANGED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v7, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService$1;->this$0:Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;

    const-string/jumbo v6, "android.bluetooth.headsetclient.extra.CALL"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/bluetooth/BluetoothHeadsetClientCall;

    invoke-static {v7, v6}, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;->-wrap1(Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;Landroid/bluetooth/BluetoothHeadsetClientCall;)V

    const-string/jumbo v6, "HfpClientConnService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService$1;->this$0:Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;

    invoke-static {v8}, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;->-get0(Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;)Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Map;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " remaining"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method
