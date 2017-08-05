.class Lcom/android/bluetooth/btservice/AdapterService$1;
.super Landroid/os/Handler;
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

    iput-object p1, p0, Lcom/android/bluetooth/btservice/AdapterService$1;->this$0:Lcom/android/bluetooth/btservice/AdapterService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10

    const/4 v7, 0x0

    const/4 v6, 0x0

    iget-object v3, p0, Lcom/android/bluetooth/btservice/AdapterService$1;->this$0:Lcom/android/bluetooth/btservice/AdapterService;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "handleMessage() - Message: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/bluetooth/btservice/AdapterService;->-wrap7(Lcom/android/bluetooth/btservice/AdapterService;Ljava/lang/String;)V

    iget v3, p1, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    iget-object v3, p0, Lcom/android/bluetooth/btservice/AdapterService$1;->this$0:Lcom/android/bluetooth/btservice/AdapterService;

    const-string/jumbo v4, "handleMessage() - MESSAGE_PROFILE_SERVICE_STATE_CHANGED"

    invoke-static {v3, v4}, Lcom/android/bluetooth/btservice/AdapterService;->-wrap6(Lcom/android/bluetooth/btservice/AdapterService;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/bluetooth/btservice/AdapterService$1;->this$0:Lcom/android/bluetooth/btservice/AdapterService;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-static {v4, v3, v5}, Lcom/android/bluetooth/btservice/AdapterService;->-wrap10(Lcom/android/bluetooth/btservice/AdapterService;Ljava/lang/String;I)V

    goto :goto_0

    :sswitch_1
    iget-object v3, p0, Lcom/android/bluetooth/btservice/AdapterService$1;->this$0:Lcom/android/bluetooth/btservice/AdapterService;

    const-string/jumbo v4, "handleMessage() - MESSAGE_PROFILE_CONNECTION_STATE_CHANGED"

    invoke-static {v3, v4}, Lcom/android/bluetooth/btservice/AdapterService;->-wrap6(Lcom/android/bluetooth/btservice/AdapterService;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/bluetooth/btservice/AdapterService$1;->this$0:Lcom/android/bluetooth/btservice/AdapterService;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    iget v5, p1, Landroid/os/Message;->arg1:I

    iget v6, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v7

    const-string/jumbo v8, "prevState"

    const/high16 v9, -0x80000000

    invoke-virtual {v7, v8, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    invoke-static {v4, v3, v5, v6, v7}, Lcom/android/bluetooth/btservice/AdapterService;->-wrap11(Lcom/android/bluetooth/btservice/AdapterService;Landroid/bluetooth/BluetoothDevice;III)V

    goto :goto_0

    :sswitch_2
    iget-object v3, p0, Lcom/android/bluetooth/btservice/AdapterService$1;->this$0:Lcom/android/bluetooth/btservice/AdapterService;

    const-string/jumbo v4, "handleMessage() - MESSAGE_PROFILE_INIT_PRIORITIES"

    invoke-static {v3, v4}, Lcom/android/bluetooth/btservice/AdapterService;->-wrap6(Lcom/android/bluetooth/btservice/AdapterService;Ljava/lang/String;)V

    iget v3, p1, Landroid/os/Message;->arg1:I

    new-array v2, v3, [Landroid/os/ParcelUuid;

    const/4 v1, 0x0

    :goto_1
    array-length v3, v2

    if-ge v1, v3, :cond_1

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "uuids"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/os/ParcelUuid;

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    iget-object v4, p0, Lcom/android/bluetooth/btservice/AdapterService$1;->this$0:Lcom/android/bluetooth/btservice/AdapterService;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    invoke-static {v4, v3, v2}, Lcom/android/bluetooth/btservice/AdapterService;->-wrap9(Lcom/android/bluetooth/btservice/AdapterService;Landroid/bluetooth/BluetoothDevice;[Landroid/os/ParcelUuid;)V

    goto :goto_0

    :sswitch_3
    iget-object v3, p0, Lcom/android/bluetooth/btservice/AdapterService$1;->this$0:Lcom/android/bluetooth/btservice/AdapterService;

    const-string/jumbo v4, "handleMessage() - MESSAGE_CONNECT_OTHER_PROFILES"

    invoke-static {v3, v4}, Lcom/android/bluetooth/btservice/AdapterService;->-wrap6(Lcom/android/bluetooth/btservice/AdapterService;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/bluetooth/btservice/AdapterService$1;->this$0:Lcom/android/bluetooth/btservice/AdapterService;

    invoke-static {v3}, Lcom/android/bluetooth/btservice/AdapterService;->-get4(Lcom/android/bluetooth/btservice/AdapterService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/bluetooth/btservice/AdapterService$1;->this$0:Lcom/android/bluetooth/btservice/AdapterService;

    invoke-static {v3}, Lcom/android/bluetooth/btservice/AdapterService;->-get4(Lcom/android/bluetooth/btservice/AdapterService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_2
    iget-object v4, p0, Lcom/android/bluetooth/btservice/AdapterService$1;->this$0:Lcom/android/bluetooth/btservice/AdapterService;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-static {v4, v3, v5}, Lcom/android/bluetooth/btservice/AdapterService;->-wrap8(Lcom/android/bluetooth/btservice/AdapterService;Landroid/bluetooth/BluetoothDevice;I)V

    goto/16 :goto_0

    :sswitch_4
    iget-object v3, p0, Lcom/android/bluetooth/btservice/AdapterService$1;->this$0:Lcom/android/bluetooth/btservice/AdapterService;

    const-string/jumbo v4, "handleMessage() - MESSAGE_STOP_SINK_SERVICE"

    invoke-static {v3, v4}, Lcom/android/bluetooth/btservice/AdapterService;->-wrap6(Lcom/android/bluetooth/btservice/AdapterService;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/bluetooth/btservice/AdapterService$1;->this$0:Lcom/android/bluetooth/btservice/AdapterService;

    invoke-static {v3}, Lcom/android/bluetooth/btservice/AdapterService;->-get1(Lcom/android/bluetooth/btservice/AdapterService;)Landroid/bluetooth/BluetoothA2dpSink;

    move-result-object v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/bluetooth/btservice/AdapterService$1;->this$0:Lcom/android/bluetooth/btservice/AdapterService;

    iget-object v3, v3, Lcom/android/bluetooth/btservice/AdapterService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v4, p0, Lcom/android/bluetooth/btservice/AdapterService$1;->this$0:Lcom/android/bluetooth/btservice/AdapterService;

    invoke-static {v4}, Lcom/android/bluetooth/btservice/AdapterService;->-get1(Lcom/android/bluetooth/btservice/AdapterService;)Landroid/bluetooth/BluetoothA2dpSink;

    move-result-object v4

    const/16 v5, 0xb

    invoke-virtual {v3, v5, v4}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    iget-object v3, p0, Lcom/android/bluetooth/btservice/AdapterService$1;->this$0:Lcom/android/bluetooth/btservice/AdapterService;

    invoke-static {v3, v6}, Lcom/android/bluetooth/btservice/AdapterService;->-set0(Lcom/android/bluetooth/btservice/AdapterService;Landroid/bluetooth/BluetoothA2dpSink;)Landroid/bluetooth/BluetoothA2dpSink;

    :cond_3
    const-class v3, Lcom/android/bluetooth/a2dpsink/A2dpSinkService;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v3, p0, Lcom/android/bluetooth/btservice/AdapterService$1;->this$0:Lcom/android/bluetooth/btservice/AdapterService;

    invoke-virtual {v3, v0, v7}, Lcom/android/bluetooth/btservice/AdapterService;->setProfileState(Ljava/lang/String;Z)Z

    :cond_4
    iget-object v3, p0, Lcom/android/bluetooth/btservice/AdapterService$1;->this$0:Lcom/android/bluetooth/btservice/AdapterService;

    invoke-static {v3}, Lcom/android/bluetooth/btservice/AdapterService;->-get5(Lcom/android/bluetooth/btservice/AdapterService;)Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/android/bluetooth/btservice/AdapterService$1;->this$0:Lcom/android/bluetooth/btservice/AdapterService;

    invoke-static {v4}, Lcom/android/bluetooth/btservice/AdapterService;->-get5(Lcom/android/bluetooth/btservice/AdapterService;)Landroid/os/Handler;

    move-result-object v4

    const/16 v5, 0x33

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    const-wide/16 v6, 0x1f4

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    :sswitch_5
    iget-object v3, p0, Lcom/android/bluetooth/btservice/AdapterService$1;->this$0:Lcom/android/bluetooth/btservice/AdapterService;

    const-string/jumbo v4, "handleMessage() - MESSAGE_TURN_OFF_SINK_MODE"

    invoke-static {v3, v4}, Lcom/android/bluetooth/btservice/AdapterService;->-wrap6(Lcom/android/bluetooth/btservice/AdapterService;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/bluetooth/btservice/AdapterService$1;->this$0:Lcom/android/bluetooth/btservice/AdapterService;

    const-string/jumbo v4, "bluetooth_a2dp_sink_mode"

    invoke-virtual {v3, v4, v7}, Lcom/android/bluetooth/btservice/AdapterService;->setA2dpPreference(Ljava/lang/String;I)V

    const-string/jumbo v3, "BluetoothAdapterService"

    const-string/jumbo v4, "A2DP_SINK_MODE : MODE_OFF(after truning off)"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/bluetooth/btservice/AdapterService$1;->this$0:Lcom/android/bluetooth/btservice/AdapterService;

    invoke-static {v3, v7}, Lcom/android/bluetooth/btservice/AdapterService;->-wrap12(Lcom/android/bluetooth/btservice/AdapterService;Z)V

    goto/16 :goto_0

    :sswitch_6
    iget-object v3, p0, Lcom/android/bluetooth/btservice/AdapterService$1;->this$0:Lcom/android/bluetooth/btservice/AdapterService;

    invoke-static {v3}, Lcom/android/bluetooth/btservice/AdapterService;->-get1(Lcom/android/bluetooth/btservice/AdapterService;)Landroid/bluetooth/BluetoothA2dpSink;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/bluetooth/btservice/AdapterService$1;->this$0:Lcom/android/bluetooth/btservice/AdapterService;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/android/bluetooth/btservice/AdapterService;->-wrap12(Lcom/android/bluetooth/btservice/AdapterService;Z)V

    const-string/jumbo v3, "BluetoothAdapterService"

    const-string/jumbo v4, "MESSAGE_SEND_SINK_NOTIFY_INTENT"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x14 -> :sswitch_1
        0x1e -> :sswitch_3
        0x1f -> :sswitch_3
        0x28 -> :sswitch_2
        0x32 -> :sswitch_4
        0x33 -> :sswitch_5
        0x34 -> :sswitch_6
    .end sparse-switch
.end method
