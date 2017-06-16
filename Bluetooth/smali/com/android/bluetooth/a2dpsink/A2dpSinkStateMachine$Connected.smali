.class Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Connected;
.super Lcom/android/internal/util/State;
.source "A2dpSinkStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Connected"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;


# direct methods
.method private constructor <init>(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;)V
    .locals 0

    iput-object p1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Connected;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Connected;-><init>(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;)V

    return-void
.end method

.method private processAudioStateEvent(ILandroid/bluetooth/BluetoothDevice;)V
    .locals 9

    const/16 v8, 0xb

    const/16 v7, 0xa

    const/4 v6, 0x0

    const/4 v5, 0x6

    const/4 v4, 0x1

    iget-object v1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-get12(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Audio State Device:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    invoke-virtual {v3, p2}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->deviceInfo(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "is different from ConnectedDevice:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    iget-object v4, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    invoke-static {v4}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-get12(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->deviceInfo(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-wrap12(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "processAudioStateEvent state : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " pre : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    invoke-static {v3}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-get7(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " mCreateAudioPatch : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    invoke-static {v3}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-get11(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " mPreSuspendState : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    invoke-static {v3}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-get20(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;)Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$SUSPEND_STATE;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-wrap11(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    invoke-static {v1, p1}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-set7(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;I)I

    packed-switch p1, :pswitch_data_0

    iget-object v1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Audio State Device: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    invoke-virtual {v3, p2}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->deviceInfo(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " bad state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-wrap12(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    sget-object v2, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$SUSPEND_STATE;->RESUMED:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$SUSPEND_STATE;

    invoke-static {v1, v2}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-set13(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$SUSPEND_STATE;)Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$SUSPEND_STATE;

    invoke-static {}, Lcom/android/bluetooth/btservice/AdapterService;->getAdapterService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterService;->isInCall()Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterService;->isInCall()Z

    move-result v1

    if-nez v1, :cond_4

    :cond_3
    iget-object v1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-get1(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_4
    iget-object v1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    invoke-static {v1, v6}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-set3(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;Z)Z

    iget-object v1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-get11(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    invoke-static {v1, v4}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-wrap8(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;Z)V

    iget-object v1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-get14(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    invoke-static {v2}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-get14(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-get1(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    invoke-static {v1, v4}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-set3(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;Z)Z

    iget-object v1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-get14(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    invoke-static {v2}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-get14(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget-object v1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    invoke-static {v1, p2, v7, v8}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-wrap5(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    goto :goto_0

    :cond_6
    iget-object v1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    invoke-static {v1, v4}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-wrap8(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;Z)V

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    invoke-static {v1, v6}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-set3(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;Z)Z

    iget-object v1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-get20(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;)Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$SUSPEND_STATE;

    move-result-object v1

    sget-object v2, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$SUSPEND_STATE;->INIT:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$SUSPEND_STATE;

    if-eq v1, v2, :cond_7

    iget-object v1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-get6(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;)Landroid/media/AudioManager;

    move-result-object v1

    const-string/jumbo v2, "A2dpSinkSuspended=true"

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    sget-object v2, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$SUSPEND_STATE;->SUSPENDED:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$SUSPEND_STATE;

    invoke-static {v1, v2}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-set13(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$SUSPEND_STATE;)Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$SUSPEND_STATE;

    :cond_7
    iget-object v1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-get14(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    invoke-static {v2}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-get14(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget-object v1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    invoke-static {v1, p2, v8, v7}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-wrap5(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private processConnectionEvent(ILandroid/bluetooth/BluetoothDevice;)V
    .locals 4

    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_0

    iget-object v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Connection State Device: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    invoke-virtual {v2, p2}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->deviceInfo(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " bad state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-wrap12(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;Ljava/lang/String;)V

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-get8(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;)Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$BigData;

    move-result-object v0

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$BigData;->setDisconnectedReason(I)V

    iget-object v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    invoke-static {v0, v3}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-set3(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;Z)Z

    iget-object v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    invoke-static {v0, v3}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-set2(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;Z)Z

    iget-object v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-get14(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-get14(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget-object v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-get5(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-get12(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    iget-object v1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-get12(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v0, v1, v3, v2}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-wrap6(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    iget-object v1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-set8(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    iget-object v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    iget-object v2, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    invoke-static {v2}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-get13(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;)Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Disconnected;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-wrap21(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;Lcom/android/internal/util/IState;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Disconnected from unknown device: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    invoke-virtual {v2, p2}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->deviceInfo(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-wrap12(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;Ljava/lang/String;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public enter()V
    .locals 4

    const/16 v3, 0xb

    iget-object v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Enter Connected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    invoke-static {v2}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-wrap1(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;)Landroid/os/Message;

    move-result-object v2

    iget v2, v2, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-wrap10(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    iget-object v1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-get12(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    const/16 v2, 0xa

    invoke-static {v0, v1, v3, v2}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-wrap5(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    iget-object v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-get14(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-get14(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 9

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v3, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Connected process message: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-wrap10(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    invoke-static {v3}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-get12(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    const-string/jumbo v4, "ERROR: mCurrentDevice is null in Connected"

    invoke-static {v3, v4}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-wrap12(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;Ljava/lang/String;)V

    return v6

    :cond_0
    iget v3, p1, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_0

    return v6

    :sswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    iget-object v3, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    invoke-static {v3}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-get12(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    :goto_0
    :sswitch_1
    return v7

    :cond_2
    iget-object v3, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    invoke-static {v3, v1, v7, v6}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-wrap6(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    iget-object v3, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    iget-object v4, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    iget-object v5, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    invoke-static {v5}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-get12(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-wrap4(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-wrap3(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;[B)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    invoke-static {v3, v1, v6, v7}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-wrap6(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    goto :goto_0

    :cond_3
    iget-object v4, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    invoke-static {v3, v1}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-set15(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    iget-object v3, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    iget-object v5, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    invoke-static {v5}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-get18(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;)Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Pending;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-wrap21(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;Lcom/android/internal/util/IState;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    :sswitch_2
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    iget-object v3, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    invoke-static {v3}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-get12(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    invoke-static {v3}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-get8(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;)Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$BigData;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$BigData;->setDisconnectedReason(I)V

    invoke-direct {p0, v7, v1}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Connected;->processAudioStateEvent(ILandroid/bluetooth/BluetoothDevice;)V

    iget-object v3, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    const/4 v4, 0x3

    invoke-static {v3, v1, v4, v8}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-wrap6(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    iget-object v3, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    iget-object v4, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    invoke-static {v4, v1}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-wrap4(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-wrap3(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;[B)Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    invoke-static {v3, v1, v8, v6}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-wrap6(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    iget-object v4, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    invoke-static {v4}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-get18(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;)Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Pending;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-wrap21(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_0

    :sswitch_3
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$StackEvent;

    iget v3, v2, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$StackEvent;->type:I

    packed-switch v3, :pswitch_data_0

    iget-object v3, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unexpected stack event: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$StackEvent;->type:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-wrap12(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_0
    iget v3, v2, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$StackEvent;->valueInt:I

    iget-object v4, v2, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-direct {p0, v3, v4}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Connected;->processConnectionEvent(ILandroid/bluetooth/BluetoothDevice;)V

    goto/16 :goto_0

    :pswitch_1
    iget v3, v2, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$StackEvent;->valueInt:I

    iget-object v4, v2, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-direct {p0, v3, v4}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Connected;->processAudioStateEvent(ILandroid/bluetooth/BluetoothDevice;)V

    goto/16 :goto_0

    :pswitch_2
    iget-object v3, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    iget-object v4, v2, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$StackEvent;->audioConfig:Landroid/bluetooth/BluetoothAudioConfig;

    iget-object v5, v2, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-static {v3, v4, v5}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-wrap16(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;Landroid/bluetooth/BluetoothAudioConfig;Landroid/bluetooth/BluetoothDevice;)V

    goto/16 :goto_0

    :sswitch_4
    iget-object v3, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    invoke-static {v3}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-wrap17(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;)V

    goto/16 :goto_0

    :sswitch_5
    iget-object v4, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-static {v4, v3}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-set1(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;Z)Z

    iget-object v3, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "VR state changed : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    invoke-static {v5}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-get1(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-wrap12(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    invoke-static {v3}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-wrap18(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;)V

    goto/16 :goto_0

    :sswitch_6
    iget-object v3, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    invoke-static {v3}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-get8(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;)Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$BigData;

    move-result-object v3

    invoke-virtual {v3, v8}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$BigData;->setDisconnectedReason(I)V

    iget-object v3, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    invoke-static {v3}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-wrap20(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;)V

    goto/16 :goto_0

    :sswitch_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$BigDataEvent;

    iget-object v3, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    invoke-static {v3}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-get8(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;)Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$BigData;

    move-result-object v3

    iget-object v4, v0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$BigDataEvent;->valueStr:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$BigData;->ParsingStackData(Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_2
        0x9 -> :sswitch_4
        0xa -> :sswitch_5
        0xb -> :sswitch_6
        0x65 -> :sswitch_3
        0x66 -> :sswitch_7
        0x12d -> :sswitch_1
        0x12e -> :sswitch_1
        0x12f -> :sswitch_1
        0x130 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
