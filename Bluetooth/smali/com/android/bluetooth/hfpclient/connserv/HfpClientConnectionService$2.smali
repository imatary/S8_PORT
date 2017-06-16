.class Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService$2;
.super Ljava/lang/Object;
.source "HfpClientConnectionService.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


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

    iput-object p1, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService$2;->this$0:Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 11

    const/4 v8, 0x1

    const/4 v10, 0x0

    const-string/jumbo v6, "HfpClientConnService"

    const-string/jumbo v7, "onServiceConnected"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService$2;->this$0:Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;

    check-cast p2, Landroid/bluetooth/BluetoothHeadsetClient;

    invoke-static {v6, p2}, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;->-set2(Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;Landroid/bluetooth/BluetoothHeadsetClient;)Landroid/bluetooth/BluetoothHeadsetClient;

    iget-object v6, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService$2;->this$0:Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;

    invoke-static {v6}, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;->-get3(Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;)Landroid/bluetooth/BluetoothHeadsetClient;

    move-result-object v6

    invoke-virtual {v6}, Landroid/bluetooth/BluetoothHeadsetClient;->getConnectedDevices()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-eq v6, v8, :cond_1

    :cond_0
    const-string/jumbo v6, "HfpClientConnService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "No connected or more than one connected devices found."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object v6, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService$2;->this$0:Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;

    invoke-static {v6}, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;->-get0(Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnection;

    iget-object v6, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService$2;->this$0:Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;

    invoke-static {v6}, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;->-get3(Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;)Landroid/bluetooth/BluetoothHeadsetClient;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnection;->onHfpConnected(Landroid/bluetooth/BluetoothHeadsetClient;)V

    goto :goto_1

    :cond_1
    const-string/jumbo v6, "HfpClientConnService"

    const-string/jumbo v7, "Creating phone account."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService$2;->this$0:Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;

    monitor-enter v7

    :try_start_0
    iget-object v8, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService$2;->this$0:Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/bluetooth/BluetoothDevice;

    invoke-static {v8, v6}, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;->-set0(Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    iget-object v6, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService$2;->this$0:Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;

    iget-object v8, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService$2;->this$0:Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;

    iget-object v9, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService$2;->this$0:Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;

    invoke-static {v9}, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;->-get1(Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;->getAccount(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;)Landroid/telecom/PhoneAccount;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;->-set1(Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;Landroid/telecom/PhoneAccount;)Landroid/telecom/PhoneAccount;

    iget-object v6, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService$2;->this$0:Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;

    invoke-static {v6}, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;->-get5(Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;)Landroid/telecom/TelecomManager;

    move-result-object v6

    iget-object v8, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService$2;->this$0:Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;

    invoke-static {v8}, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;->-get2(Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;)Landroid/telecom/PhoneAccount;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/telecom/TelecomManager;->registerPhoneAccount(Landroid/telecom/PhoneAccount;)V

    iget-object v6, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService$2;->this$0:Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;

    invoke-static {v6}, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;->-get5(Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;)Landroid/telecom/TelecomManager;

    move-result-object v6

    iget-object v8, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService$2;->this$0:Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;

    invoke-static {v8}, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;->-get2(Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;)Landroid/telecom/PhoneAccount;

    move-result-object v8

    invoke-virtual {v8}, Landroid/telecom/PhoneAccount;->getAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v6, v8, v9}, Landroid/telecom/TelecomManager;->enablePhoneAccount(Landroid/telecom/PhoneAccountHandle;Z)V

    iget-object v6, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService$2;->this$0:Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;

    invoke-static {v6}, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;->-get5(Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;)Landroid/telecom/TelecomManager;

    move-result-object v6

    iget-object v8, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService$2;->this$0:Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;

    invoke-static {v8}, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;->-get2(Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;)Landroid/telecom/PhoneAccount;

    move-result-object v8

    invoke-virtual {v8}, Landroid/telecom/PhoneAccount;->getAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/telecom/TelecomManager;->setUserSelectedOutgoingPhoneAccount(Landroid/telecom/PhoneAccountHandle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v7

    goto/16 :goto_0

    :catchall_0
    move-exception v6

    monitor-exit v7

    throw v6

    :cond_2
    iget-object v6, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService$2;->this$0:Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;

    invoke-static {v6}, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;->-get3(Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;)Landroid/bluetooth/BluetoothHeadsetClient;

    move-result-object v6

    iget-object v7, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService$2;->this$0:Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;

    invoke-static {v7}, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;->-get1(Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/bluetooth/BluetoothHeadsetClient;->getCurrentCalls(Landroid/bluetooth/BluetoothDevice;)Ljava/util/List;

    move-result-object v2

    const-string/jumbo v6, "HfpClientConnService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Got calls "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_3

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothHeadsetClientCall;

    iget-object v6, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService$2;->this$0:Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;

    invoke-static {v6, v0}, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;->-wrap1(Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;Landroid/bluetooth/BluetoothHeadsetClientCall;)V

    goto :goto_2

    :cond_3
    iget-object v6, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService$2;->this$0:Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;

    invoke-static {v6}, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;->-get4(Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;)Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService$2;->this$0:Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;

    invoke-static {v6}, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;->-get3(Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;)Landroid/bluetooth/BluetoothHeadsetClient;

    move-result-object v6

    iget-object v7, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService$2;->this$0:Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;

    invoke-static {v7}, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;->-get1(Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v7

    invoke-virtual {v6, v7, v10}, Landroid/bluetooth/BluetoothHeadsetClient;->acceptCall(Landroid/bluetooth/BluetoothDevice;I)Z

    iget-object v6, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService$2;->this$0:Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;

    invoke-static {v6, v10}, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;->-set3(Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;Z)Z

    :cond_4
    return-void
.end method

.method public onServiceDisconnected(I)V
    .locals 3

    const-string/jumbo v0, "HfpClientConnService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onServiceDisconnected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService$2;->this$0:Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;->-set2(Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;Landroid/bluetooth/BluetoothHeadsetClient;)Landroid/bluetooth/BluetoothHeadsetClient;

    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService$2;->this$0:Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;

    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;->-wrap0(Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;)V

    return-void
.end method
