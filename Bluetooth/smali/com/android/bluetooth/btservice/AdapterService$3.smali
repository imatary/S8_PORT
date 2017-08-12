.class Lcom/android/bluetooth/btservice/AdapterService$3;
.super Landroid/content/BroadcastReceiver;
.source "AdapterService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/btservice/AdapterService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/btservice/AdapterService;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/btservice/AdapterService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/bluetooth/btservice/AdapterService$3;->this$0:Lcom/android/bluetooth/btservice/AdapterService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13

    const/16 v12, 0xb

    const/4 v9, 0x3

    const/4 v11, 0x1

    const/4 v8, 0x0

    const/4 v10, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v5, "BluetoothAdapterService"

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/bluetooth/btservice/AdapterService$3;->this$0:Lcom/android/bluetooth/btservice/AdapterService;

    invoke-virtual {v5}, Lcom/android/bluetooth/btservice/AdapterService;->getState()I

    move-result v5

    const/16 v6, 0xc

    if-eq v5, v6, :cond_0

    const-string/jumbo v5, "BluetoothAdapterService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mIntentSdpRegister adpater state : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/bluetooth/btservice/AdapterService$3;->this$0:Lcom/android/bluetooth/btservice/AdapterService;

    invoke-static {v7}, Lcom/android/bluetooth/btservice/AdapterService;->-get3(Lcom/android/bluetooth/btservice/AdapterService;)Lcom/android/bluetooth/btservice/AdapterProperties;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/bluetooth/btservice/AdapterProperties;->getState()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v3, 0x0

    const/4 v2, 0x0

    const-string/jumbo v5, "EXTRA.ENABLE.SERVICE"

    invoke-virtual {p2, v5, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    const-string/jumbo v5, "com.android.bluetooth.btservice.action.ACTION_REGISTER_HFP_CLIENT_SERVICE"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    if-eqz v4, :cond_2

    const-class v5, Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    :cond_1
    :goto_0
    const-string/jumbo v5, "BluetoothAdapterService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "isRegisterSDP = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_d

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "BluetoothAdapterService -- disableClassName "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/bluetooth/BluetoothDump;->BtLog(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/bluetooth/btservice/AdapterService$3;->this$0:Lcom/android/bluetooth/btservice/AdapterService;

    invoke-virtual {v5, v2, v10}, Lcom/android/bluetooth/btservice/AdapterService;->setProfileState(Ljava/lang/String;Z)Z

    :goto_1
    if-eqz v3, :cond_e

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "BluetoothAdapterService -- enableClassName "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/bluetooth/BluetoothDump;->BtLog(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/bluetooth/btservice/AdapterService$3;->this$0:Lcom/android/bluetooth/btservice/AdapterService;

    invoke-virtual {v5, v3, v11}, Lcom/android/bluetooth/btservice/AdapterService;->setProfileState(Ljava/lang/String;Z)Z

    :goto_2
    return-void

    :cond_2
    const-class v5, Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_3
    const-string/jumbo v5, "com.samsung.bluetooth.btservice.action.ACTION_REGISTER_A2DP_SINK_SERVICE"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string/jumbo v5, "com.samsung.bluetooth.btservice.action.ACTION_ENABLE_A2DP_SINK_SERVICE"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_4
    iget-object v5, p0, Lcom/android/bluetooth/btservice/AdapterService$3;->this$0:Lcom/android/bluetooth/btservice/AdapterService;

    const-string/jumbo v6, "bluetooth_a2dp_sink_mode"

    invoke-virtual {v5, v6, v10}, Lcom/android/bluetooth/btservice/AdapterService;->getA2dpPreference(Ljava/lang/String;I)I

    move-result v0

    const-string/jumbo v5, "BluetoothAdapterService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "A2DP_SINK_SERVICE : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eq v0, v11, :cond_5

    if-ne v0, v9, :cond_6

    :cond_5
    const-string/jumbo v5, "BluetoothAdapterService"

    const-string/jumbo v6, "Not allowed - REGISTER_A2DP_SINK_SERVICE"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_6
    if-nez v4, :cond_7

    if-eqz v0, :cond_5

    :cond_7
    if-eqz v4, :cond_8

    const/4 v5, 0x2

    if-ne v0, v5, :cond_8

    iget-object v5, p0, Lcom/android/bluetooth/btservice/AdapterService$3;->this$0:Lcom/android/bluetooth/btservice/AdapterService;

    invoke-static {v5}, Lcom/android/bluetooth/btservice/AdapterService;->-get5(Lcom/android/bluetooth/btservice/AdapterService;)Landroid/os/Handler;

    move-result-object v5

    iget-object v6, p0, Lcom/android/bluetooth/btservice/AdapterService$3;->this$0:Lcom/android/bluetooth/btservice/AdapterService;

    invoke-static {v6}, Lcom/android/bluetooth/btservice/AdapterService;->-get5(Lcom/android/bluetooth/btservice/AdapterService;)Landroid/os/Handler;

    move-result-object v6

    const/16 v7, 0x34

    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    const-wide/16 v8, 0x3e8

    invoke-virtual {v5, v6, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    const-string/jumbo v5, "BluetoothAdapterService"

    const-string/jumbo v6, "JUST SEND MESSAGE_SEND_SINK_NOTIFY_INTENT"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_8
    if-eqz v4, :cond_a

    iget-object v5, p0, Lcom/android/bluetooth/btservice/AdapterService$3;->this$0:Lcom/android/bluetooth/btservice/AdapterService;

    const-string/jumbo v6, "bluetooth_a2dp_sink_mode"

    invoke-virtual {v5, v6, v11}, Lcom/android/bluetooth/btservice/AdapterService;->setA2dpPreference(Ljava/lang/String;I)Z

    const-string/jumbo v5, "BluetoothAdapterService"

    const-string/jumbo v6, "A2DP_SINK_MODE : TURNING_ON"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/bluetooth/btservice/AdapterService$3;->this$0:Lcom/android/bluetooth/btservice/AdapterService;

    invoke-static {v5}, Lcom/android/bluetooth/btservice/AdapterService;->-get1(Lcom/android/bluetooth/btservice/AdapterService;)Landroid/bluetooth/BluetoothA2dpSink;

    move-result-object v5

    if-nez v5, :cond_9

    iget-object v5, p0, Lcom/android/bluetooth/btservice/AdapterService$3;->this$0:Lcom/android/bluetooth/btservice/AdapterService;

    iget-object v5, v5, Lcom/android/bluetooth/btservice/AdapterService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v6, p0, Lcom/android/bluetooth/btservice/AdapterService$3;->this$0:Lcom/android/bluetooth/btservice/AdapterService;

    invoke-static {v6}, Lcom/android/bluetooth/btservice/AdapterService;->-get2(Lcom/android/bluetooth/btservice/AdapterService;)Landroid/bluetooth/BluetoothProfile$ServiceListener;

    move-result-object v6

    invoke-virtual {v5, p1, v6, v12}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    :cond_9
    const-class v5, Lcom/android/bluetooth/a2dpsink/A2dpSinkService;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    :cond_a
    iget-object v5, p0, Lcom/android/bluetooth/btservice/AdapterService$3;->this$0:Lcom/android/bluetooth/btservice/AdapterService;

    const-string/jumbo v6, "bluetooth_a2dp_sink_mode"

    invoke-virtual {v5, v6, v9}, Lcom/android/bluetooth/btservice/AdapterService;->setA2dpPreference(Ljava/lang/String;I)Z

    const-string/jumbo v5, "BluetoothAdapterService"

    const-string/jumbo v6, "A2DP_SINK_MODE : TURNING_OFF"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/bluetooth/btservice/AdapterService$3;->this$0:Lcom/android/bluetooth/btservice/AdapterService;

    invoke-static {v5, v10}, Lcom/android/bluetooth/btservice/AdapterService;->-wrap13(Lcom/android/bluetooth/btservice/AdapterService;Z)V

    iget-object v5, p0, Lcom/android/bluetooth/btservice/AdapterService$3;->this$0:Lcom/android/bluetooth/btservice/AdapterService;

    invoke-static {v5}, Lcom/android/bluetooth/btservice/AdapterService;->-wrap5(Lcom/android/bluetooth/btservice/AdapterService;)V

    iget-object v5, p0, Lcom/android/bluetooth/btservice/AdapterService$3;->this$0:Lcom/android/bluetooth/btservice/AdapterService;

    invoke-static {v5}, Lcom/android/bluetooth/btservice/AdapterService;->-wrap1(Lcom/android/bluetooth/btservice/AdapterService;)Z

    move-result v5

    if-eqz v5, :cond_b

    iget-object v5, p0, Lcom/android/bluetooth/btservice/AdapterService$3;->this$0:Lcom/android/bluetooth/btservice/AdapterService;

    invoke-static {v5}, Lcom/android/bluetooth/btservice/AdapterService;->-get5(Lcom/android/bluetooth/btservice/AdapterService;)Landroid/os/Handler;

    move-result-object v5

    iget-object v6, p0, Lcom/android/bluetooth/btservice/AdapterService$3;->this$0:Lcom/android/bluetooth/btservice/AdapterService;

    invoke-static {v6}, Lcom/android/bluetooth/btservice/AdapterService;->-get5(Lcom/android/bluetooth/btservice/AdapterService;)Landroid/os/Handler;

    move-result-object v6

    const/16 v7, 0x32

    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    const-wide/16 v8, 0x1f4

    invoke-virtual {v5, v6, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    :cond_b
    iget-object v5, p0, Lcom/android/bluetooth/btservice/AdapterService$3;->this$0:Lcom/android/bluetooth/btservice/AdapterService;

    invoke-static {v5}, Lcom/android/bluetooth/btservice/AdapterService;->-get1(Lcom/android/bluetooth/btservice/AdapterService;)Landroid/bluetooth/BluetoothA2dpSink;

    move-result-object v5

    if-eqz v5, :cond_c

    iget-object v5, p0, Lcom/android/bluetooth/btservice/AdapterService$3;->this$0:Lcom/android/bluetooth/btservice/AdapterService;

    iget-object v5, v5, Lcom/android/bluetooth/btservice/AdapterService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v6, p0, Lcom/android/bluetooth/btservice/AdapterService$3;->this$0:Lcom/android/bluetooth/btservice/AdapterService;

    invoke-static {v6}, Lcom/android/bluetooth/btservice/AdapterService;->-get1(Lcom/android/bluetooth/btservice/AdapterService;)Landroid/bluetooth/BluetoothA2dpSink;

    move-result-object v6

    invoke-virtual {v5, v12, v6}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    iget-object v5, p0, Lcom/android/bluetooth/btservice/AdapterService$3;->this$0:Lcom/android/bluetooth/btservice/AdapterService;

    invoke-static {v5, v8}, Lcom/android/bluetooth/btservice/AdapterService;->-set0(Lcom/android/bluetooth/btservice/AdapterService;Landroid/bluetooth/BluetoothA2dpSink;)Landroid/bluetooth/BluetoothA2dpSink;

    :cond_c
    const-class v5, Lcom/android/bluetooth/a2dpsink/A2dpSinkService;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v5, p0, Lcom/android/bluetooth/btservice/AdapterService$3;->this$0:Lcom/android/bluetooth/btservice/AdapterService;

    invoke-static {v5}, Lcom/android/bluetooth/btservice/AdapterService;->-get5(Lcom/android/bluetooth/btservice/AdapterService;)Landroid/os/Handler;

    move-result-object v5

    iget-object v6, p0, Lcom/android/bluetooth/btservice/AdapterService$3;->this$0:Lcom/android/bluetooth/btservice/AdapterService;

    invoke-static {v6}, Lcom/android/bluetooth/btservice/AdapterService;->-get5(Lcom/android/bluetooth/btservice/AdapterService;)Landroid/os/Handler;

    move-result-object v6

    const/16 v7, 0x33

    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    const-wide/16 v8, 0xc8

    invoke-virtual {v5, v6, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    :cond_d
    const-string/jumbo v5, "BluetoothAdapterService"

    const-string/jumbo v6, "disableClassName is null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_e
    const-string/jumbo v5, "BluetoothAdapterService"

    const-string/jumbo v6, "enableClassName is null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2
.end method
