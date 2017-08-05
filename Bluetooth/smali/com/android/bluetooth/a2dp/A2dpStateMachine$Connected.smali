.class Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;
.super Lcom/android/internal/util/State;
.source "A2dpStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/a2dp/A2dpStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Connected"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;


# direct methods
.method private constructor <init>(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)V
    .locals 0

    iput-object p1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;-><init>(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)V

    return-void
.end method

.method private processAudioStateEvent(ILandroid/bluetooth/BluetoothDevice;)V
    .locals 12

    const/16 v11, 0xb

    const/16 v10, 0xa

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v1, 0x0

    const-string/jumbo v3, "A2dpStateMachine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Connected processAudioStateEvent Device:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-virtual {v5, p2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->deviceInfo(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " playing : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    iget-object v6, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v6}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get18(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->deviceInfo(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " state = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get9(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "A2dpStateMachine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Audio State Device:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-virtual {v5, p2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->deviceInfo(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "is not included in ConnectedDevice List:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    iget-object v6, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v6}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get18(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->deviceInfo(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    packed-switch p1, :pswitch_data_0

    const-string/jumbo v3, "A2dpStateMachine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Audio State Device: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-virtual {v5, p2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->deviceInfo(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " bad state: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get19(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Lcom/android/bluetooth/a2dp/A2dpService;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/bluetooth/a2dp/A2dpService;->setRemoteSuspend(Z)V

    return-void

    :pswitch_0
    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get18(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v3, p2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-set5(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get5(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get19(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Lcom/android/bluetooth/a2dp/A2dpService;

    move-result-object v3

    invoke-virtual {v3, v10}, Lcom/android/bluetooth/a2dp/A2dpService;->setAvrcpAudioState(I)V

    :cond_2
    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v3, v7}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-set2(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Z)Z

    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v3, p2, v10, v11}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap9(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    :cond_3
    :goto_1
    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get3(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    if-nez v3, :cond_6

    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v3, p2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-set1(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get6(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/media/AudioManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v4}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get3(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    invoke-virtual {v3, v4, v7}, Landroid/media/AudioManager;->updateBluetoothDevice(Landroid/bluetooth/BluetoothDevice;I)V

    :cond_4
    :goto_2
    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-virtual {v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->isDualPlayEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v3, v9, v7, p1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap33(Lcom/android/bluetooth/a2dp/A2dpStateMachine;ZZI)V

    goto :goto_0

    :cond_5
    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get2(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v3, p2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-set0(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    goto :goto_1

    :cond_6
    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-virtual {v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->isDualPlayEnabled()Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get3(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    iget-object v4, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v4}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get18(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v3, p2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-set1(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get6(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/media/AudioManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v4}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get3(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    invoke-virtual {v3, v4, v7}, Landroid/media/AudioManager;->updateBluetoothDevice(Landroid/bluetooth/BluetoothDevice;I)V

    goto :goto_2

    :pswitch_1
    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get18(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    if-eqz v3, :cond_b

    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v3, v8}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-set5(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    invoke-static {}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get0()Z

    move-result v3

    if-eqz v3, :cond_7

    const-string/jumbo v3, "A2dpStateMachine"

    const-string/jumbo v4, "Received AUDIO_STATE_STOPPED event"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get5(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Z

    move-result v3

    if-nez v3, :cond_8

    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get19(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Lcom/android/bluetooth/a2dp/A2dpService;

    move-result-object v3

    invoke-virtual {v3, v11}, Lcom/android/bluetooth/a2dp/A2dpService;->setAvrcpAudioState(I)V

    :cond_8
    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v3, p2, v11, v10}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap9(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    :cond_9
    :goto_3
    if-nez p1, :cond_a

    const/4 v1, 0x1

    :cond_a
    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-virtual {v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->isDualPlayEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v3, v9, v7, p1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap33(Lcom/android/bluetooth/a2dp/A2dpStateMachine;ZZI)V

    goto/16 :goto_0

    :cond_b
    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get2(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v3, v8}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-set0(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    goto :goto_3

    :pswitch_2
    invoke-static {}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get21()I

    move-result v2

    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get11(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Lcom/android/bluetooth/a2dp/A2dpStateMachine$DeviceInfo;

    move-result-object v3

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/bluetooth/a2dp/A2dpStateMachine$DeviceInfo;->isContainKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f

    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    iget-object v4, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v4}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get11(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Lcom/android/bluetooth/a2dp/A2dpStateMachine$DeviceInfo;

    move-result-object v4

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v7}, Lcom/android/bluetooth/a2dp/A2dpStateMachine$DeviceInfo;->getDeviceFeature(Ljava/lang/String;I)I

    move-result v4

    iget-object v5, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v5}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get11(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Lcom/android/bluetooth/a2dp/A2dpStateMachine$DeviceInfo;

    move-result-object v5

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v9}, Lcom/android/bluetooth/a2dp/A2dpStateMachine$DeviceInfo;->getDeviceFeature(Ljava/lang/String;I)I

    move-result v5

    invoke-static {v3, v4, v5, p2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap20(Lcom/android/bluetooth/a2dp/A2dpStateMachine;IILandroid/bluetooth/BluetoothDevice;)V

    :goto_4
    invoke-static {}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get21()I

    move-result v3

    if-eq v2, v3, :cond_d

    const-string/jumbo v3, "A2dpStateMachine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Device Changed to mUhqSupport = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get21()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get14(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Lcom/android/bluetooth/a2dp/A2dpStateMachine$IntentBroadcastHandler;

    move-result-object v3

    const/16 v4, 0xca

    invoke-virtual {v3, v4}, Lcom/android/bluetooth/a2dp/A2dpStateMachine$IntentBroadcastHandler;->hasMessages(I)Z

    move-result v3

    if-eqz v3, :cond_c

    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get14(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Lcom/android/bluetooth/a2dp/A2dpStateMachine$IntentBroadcastHandler;

    move-result-object v3

    const/16 v4, 0xca

    invoke-virtual {v3, v4}, Lcom/android/bluetooth/a2dp/A2dpStateMachine$IntentBroadcastHandler;->removeMessages(I)V

    :cond_c
    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get6(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/media/AudioManager;

    move-result-object v3

    const-string/jumbo v4, "A2dpSuspended=true"

    invoke-virtual {v3, v4}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get14(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Lcom/android/bluetooth/a2dp/A2dpStateMachine$IntentBroadcastHandler;

    move-result-object v3

    const/16 v4, 0xca

    invoke-virtual {v3, v4}, Lcom/android/bluetooth/a2dp/A2dpStateMachine$IntentBroadcastHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get14(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Lcom/android/bluetooth/a2dp/A2dpStateMachine$IntentBroadcastHandler;

    move-result-object v3

    const-wide/16 v4, 0x320

    invoke-virtual {v3, v0, v4, v5}, Lcom/android/bluetooth/a2dp/A2dpStateMachine$IntentBroadcastHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_d
    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get18(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    if-eqz v3, :cond_e

    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get18(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    :cond_e
    :goto_5
    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get19(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Lcom/android/bluetooth/a2dp/A2dpService;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/android/bluetooth/a2dp/A2dpService;->setAudioDeviceChanged(Landroid/bluetooth/BluetoothDevice;)V

    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v3, p2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-set1(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get6(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/media/AudioManager;

    move-result-object v3

    invoke-virtual {v3, p2, v7}, Landroid/media/AudioManager;->updateBluetoothDevice(Landroid/bluetooth/BluetoothDevice;I)V

    goto/16 :goto_0

    :cond_f
    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    const/16 v4, 0xff

    invoke-static {v3, v4, v7, p2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap20(Lcom/android/bluetooth/a2dp/A2dpStateMachine;IILandroid/bluetooth/BluetoothDevice;)V

    goto/16 :goto_4

    :cond_10
    const-string/jumbo v3, "A2dpStateMachine"

    const-string/jumbo v4, "AUDIO_DEVICE_CHANGED"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v3, v9}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-set2(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Z)Z

    goto :goto_5

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private processConnectionEvent(ILandroid/bluetooth/BluetoothDevice;)V
    .locals 9

    const/4 v6, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    invoke-static {}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get0()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo v3, "A2dpStateMachine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Connected ConnectionEvent device : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-virtual {v5, p2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->deviceInfo(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", state : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", size : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v5}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get9(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "A2DPSM-Connected ConnectionEvent device : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-virtual {v4, p2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->deviceInfo(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", state : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", size : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v4}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get9(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/bluetooth/BluetoothDump;->BtLog(Ljava/lang/String;)V

    packed-switch p1, :pswitch_data_0

    const-string/jumbo v3, "A2dpStateMachine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Connection State Device: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-virtual {v5, p2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->deviceInfo(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " bad state: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    :pswitch_0
    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get9(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get9(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v3, p2, v7, v6}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap10(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    iget-object v4, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get9(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get9(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    const/4 v5, 0x1

    invoke-static {v3, v5}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-set4(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Z)Z

    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    iget-object v5, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v5}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get12(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Lcom/android/bluetooth/a2dp/A2dpStateMachine$Disconnected;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap31(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Lcom/android/internal/util/IState;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    monitor-exit v4

    :cond_2
    :goto_2
    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get16(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/app/NotificationManager;

    move-result-object v3

    if-eqz v3, :cond_1

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get16(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/app/NotificationManager;

    move-result-object v3

    invoke-virtual {v3, v1, v7}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get16(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/app/NotificationManager;

    move-result-object v3

    invoke-virtual {v3, v1, v8}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    goto :goto_0

    :cond_3
    :try_start_1
    iget-object v5, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get9(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v6, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v6}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get9(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    invoke-static {v5, v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-set1(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get6(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/media/AudioManager;

    move-result-object v3

    iget-object v5, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v5}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get3(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/media/AudioManager;->updateBluetoothDevice(Landroid/bluetooth/BluetoothDevice;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    :cond_4
    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get20(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get20(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v3, p2}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v3, p2, v7, v8}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap10(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    iget-object v4, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    monitor-enter v4

    :try_start_2
    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    const/4 v5, 0x0

    invoke-static {v3, v5}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-set6(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v4

    const-string/jumbo v3, "A2dpStateMachine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Disconnected from mTargetDevice in connected state device: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-virtual {v5, p2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->deviceInfo(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :catchall_1
    move-exception v3

    monitor-exit v4

    throw v3

    :cond_5
    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get11(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Lcom/android/bluetooth/a2dp/A2dpStateMachine$DeviceInfo;

    move-result-object v3

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x5

    invoke-virtual {v3, v4, v5}, Lcom/android/bluetooth/a2dp/A2dpStateMachine$DeviceInfo;->getDeviceFeature(Ljava/lang/String;I)I

    move-result v2

    const-string/jumbo v3, "A2dpStateMachine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Disconnected from unknown device: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-virtual {v5, p2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->deviceInfo(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " beforeState : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-lez v2, :cond_2

    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v3, p2, v7, v2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap10(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    goto/16 :goto_2

    :pswitch_1
    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-virtual {v3, p2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->okToConnect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    const-string/jumbo v4, "Incoming A2DP accepted --- Dual Connecting"

    invoke-static {v3, v4}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap16(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v3, p2, v8, v7}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap10(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    iget-object v4, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    monitor-enter v4

    :try_start_3
    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get20(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get20(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v3, p2}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    :cond_6
    :goto_3
    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    iget-object v5, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v5}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get17(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap31(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Lcom/android/internal/util/IState;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :goto_4
    monitor-exit v4

    goto/16 :goto_0

    :cond_7
    :try_start_4
    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v3, p2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-set3(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception v3

    monitor-exit v4

    throw v3

    :cond_8
    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    const-string/jumbo v4, "Incoming A2DP rejected - Connecting"

    invoke-static {v3, v4}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap16(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    iget-object v4, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v4, p2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap7(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap4(Lcom/android/bluetooth/a2dp/A2dpStateMachine;[B)Z

    invoke-static {}, Lcom/android/bluetooth/btservice/AdapterService;->getAdapterService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, p2, v6}, Lcom/android/bluetooth/btservice/AdapterService;->connectOtherProfile(Landroid/bluetooth/BluetoothDevice;I)V

    goto/16 :goto_0

    :pswitch_2
    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get9(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get9(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    :cond_9
    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get9(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get1()I

    move-result v4

    if-lt v3, v4, :cond_b

    :cond_a
    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Shoudn\'t happen: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-virtual {v5, p2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->deviceInfo(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap15(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_b
    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    const-string/jumbo v4, "Incoming A2DP Connection - Dual"

    invoke-static {v3, v4}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap17(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-virtual {v3, p2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->okToConnect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v3

    if-eqz v3, :cond_c

    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    const-string/jumbo v4, "Incoming A2DP accepted"

    invoke-static {v3, v4}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap16(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v3, p2, v6, v7}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap10(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    iget-object v4, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    monitor-enter v4

    :try_start_5
    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v3, p2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-set1(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get9(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get6(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/media/AudioManager;

    move-result-object v3

    iget-object v5, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v5}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get3(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/media/AudioManager;->updateBluetoothDevice(Landroid/bluetooth/BluetoothDevice;I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto/16 :goto_4

    :catchall_3
    move-exception v3

    monitor-exit v4

    throw v3

    :cond_c
    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    const-string/jumbo v4, "Incoming A2DP rejected"

    invoke-static {v3, v4}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap16(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    iget-object v4, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v4, p2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap7(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap4(Lcom/android/bluetooth/a2dp/A2dpStateMachine;[B)Z

    invoke-static {}, Lcom/android/bluetooth/btservice/AdapterService;->getAdapterService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, p2, v6}, Lcom/android/bluetooth/btservice/AdapterService;->connectOtherProfile(Landroid/bluetooth/BluetoothDevice;I)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public enter()V
    .locals 3

    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Enter Connected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap1(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/os/Message;

    move-result-object v2

    iget v2, v2, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap14(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Ljava/lang/String;)V

    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 14

    iget-object v10, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Connected process message: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p1, Landroid/os/Message;->what:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap14(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v10}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get9(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-nez v10, :cond_0

    iget-object v10, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    const-string/jumbo v11, "ERROR: No Devices connected , nothing in Connected Device list "

    invoke-static {v10, v11}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap15(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Ljava/lang/String;)V

    const/4 v10, 0x0

    return v10

    :cond_0
    const/4 v9, 0x1

    iget v10, p1, Landroid/os/Message;->what:I

    sparse-switch v10, :sswitch_data_0

    const/4 v10, 0x0

    return v10

    :sswitch_0
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    invoke-static {}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get0()Z

    move-result v10

    if-eqz v10, :cond_1

    const-string/jumbo v10, "A2dpStateMachine"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "CONNECT : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-virtual {v12, v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->deviceInfo(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " size : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v12}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get9(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v10, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v10}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get9(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-eqz v10, :cond_3

    iget-object v10, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v10}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get9(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    :cond_2
    :goto_0
    return v9

    :cond_3
    iget-object v10, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v10}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get9(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-static {}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get1()I

    move-result v11

    if-ne v10, v11, :cond_6

    const/4 v0, 0x0

    iget-object v10, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v10}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get9(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Ljava/util/ArrayList;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    iget-object v10, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    iget-object v11, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v11, v0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap7(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap4(Lcom/android/bluetooth/a2dp/A2dpStateMachine;[B)Z

    move-result v10

    if-nez v10, :cond_4

    const-string/jumbo v10, "A2dpStateMachine"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "check the connection state!"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-virtual {v12, v0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->deviceInfo(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v10, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-static {v10, v0, v11, v12}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap10(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    goto :goto_0

    :cond_4
    iget-object v10, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    const/4 v11, 0x3

    const/4 v12, 0x2

    invoke-static {v10, v0, v11, v12}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap10(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    :cond_5
    iget-object v11, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    monitor-enter v11

    :try_start_0
    iget-object v10, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v10, v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-set6(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    iget-object v10, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    iget-object v12, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v12}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get17(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;

    move-result-object v12

    invoke-static {v10, v12}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap31(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Lcom/android/internal/util/IState;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v11

    iget-object v10, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    const/16 v11, 0xc9

    invoke-virtual {v10, v11}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    iget-object v10, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v10}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get11(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Lcom/android/bluetooth/a2dp/A2dpStateMachine$DeviceInfo;

    move-result-object v10

    iget-object v11, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v11}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get20(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v11

    invoke-virtual {v11}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x3

    const/4 v13, 0x1

    invoke-virtual {v10, v11, v12, v13}, Lcom/android/bluetooth/a2dp/A2dpStateMachine$DeviceInfo;->setDeviceFeature(Ljava/lang/String;II)V

    iget-object v10, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v10}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get11(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Lcom/android/bluetooth/a2dp/A2dpStateMachine$DeviceInfo;

    move-result-object v10

    iget-object v11, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v11}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get20(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v11

    invoke-virtual {v11}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/bluetooth/a2dp/A2dpStateMachine$DeviceInfo;->-wrap0(Lcom/android/bluetooth/a2dp/A2dpStateMachine$DeviceInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v6, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v10, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    const-wide/16 v12, 0x7530

    invoke-virtual {v10, v6, v12, v13}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    goto/16 :goto_0

    :cond_6
    iget-object v10, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-static {v10, v3, v11, v12}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap10(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    iget-object v10, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    iget-object v11, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v11, v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap7(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap2(Lcom/android/bluetooth/a2dp/A2dpStateMachine;[B)Z

    move-result v10

    if-nez v10, :cond_5

    iget-object v10, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-static {v10, v3, v11, v12}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap10(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    goto/16 :goto_0

    :catchall_0
    move-exception v10

    monitor-exit v11

    throw v10

    :sswitch_1
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    iget-object v10, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v10}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get9(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_7

    const-string/jumbo v10, "A2dpStateMachine"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "this device is not connected!"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-virtual {v12, v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->deviceInfo(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_7
    iget-object v10, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    const/4 v11, 0x3

    const/4 v12, 0x2

    invoke-static {v10, v3, v11, v12}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap10(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    iget-object v10, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v10}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get9(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_8

    const/4 v10, 0x1

    invoke-direct {p0, v10, v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->processAudioStateEvent(ILandroid/bluetooth/BluetoothDevice;)V

    :cond_8
    iget-object v10, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    iget-object v11, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v11, v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap7(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap4(Lcom/android/bluetooth/a2dp/A2dpStateMachine;[B)Z

    move-result v10

    if-nez v10, :cond_9

    iget-object v10, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    const/4 v11, 0x2

    const/4 v12, 0x0

    invoke-static {v10, v3, v11, v12}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap10(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    goto/16 :goto_0

    :cond_9
    iget-object v11, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    monitor-enter v11

    :try_start_1
    iget-object v10, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    iget-object v12, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v12}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get17(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;

    move-result-object v12

    invoke-static {v10, v12}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap31(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Lcom/android/internal/util/IState;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v11

    goto/16 :goto_0

    :catchall_1
    move-exception v10

    monitor-exit v11

    throw v10

    :sswitch_2
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    const-string/jumbo v10, "A2dpStateMachine"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Connected SELECT_STREAM : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-virtual {v12, v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->deviceInfo(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v10, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v10}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get9(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_a

    const-string/jumbo v10, "A2dpStateMachine"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "This is not connected device"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-virtual {v12, v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->deviceInfo(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_a
    iget-object v10, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v10}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get19(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Lcom/android/bluetooth/a2dp/A2dpService;

    move-result-object v10

    invoke-virtual {v10, v3}, Lcom/android/bluetooth/a2dp/A2dpService;->setAudioDeviceChanged(Landroid/bluetooth/BluetoothDevice;)V

    iget-object v10, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v10}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get18(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v10

    invoke-virtual {v3, v10}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_b

    iget-object v10, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    const/4 v11, 0x0

    invoke-static {v10, v3, v11}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap29(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Landroid/bluetooth/BluetoothDevice;Z)V

    goto/16 :goto_0

    :cond_b
    iget-object v10, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-virtual {v10}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->isDualPlayEnabled()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-static {}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get0()Z

    move-result v10

    if-eqz v10, :cond_c

    const-string/jumbo v10, "A2dpStateMachine"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "forcely SELECT_STREAM during dual streaming: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    iget-object v10, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    const/4 v11, 0x0

    invoke-static {v10, v3, v11}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap29(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Landroid/bluetooth/BluetoothDevice;Z)V

    iget-object v10, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v10, v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-set1(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    iget-object v10, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v10}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get6(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/media/AudioManager;

    move-result-object v10

    iget-object v11, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v11}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get3(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/media/AudioManager;->updateBluetoothDevice(Landroid/bluetooth/BluetoothDevice;I)V

    goto/16 :goto_0

    :sswitch_3
    iget-object v10, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    iget-object v10, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v10, v4}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap5(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Z)Z

    goto/16 :goto_0

    :sswitch_4
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Lcom/android/bluetooth/a2dp/A2dpStateMachine$StackEvent;

    iget v10, v5, Lcom/android/bluetooth/a2dp/A2dpStateMachine$StackEvent;->type:I

    packed-switch v10, :pswitch_data_0

    :pswitch_0
    const-string/jumbo v10, "A2dpStateMachine"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Unexpected stack event: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v5, Lcom/android/bluetooth/a2dp/A2dpStateMachine$StackEvent;->type:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :pswitch_1
    iget-object v10, v5, Lcom/android/bluetooth/a2dp/A2dpStateMachine$StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    if-eqz v10, :cond_2

    iget-object v10, v5, Lcom/android/bluetooth/a2dp/A2dpStateMachine$StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v10}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_2

    iget-object v10, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v10}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get11(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Lcom/android/bluetooth/a2dp/A2dpStateMachine$DeviceInfo;

    move-result-object v10

    iget-object v11, v5, Lcom/android/bluetooth/a2dp/A2dpStateMachine$StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v11}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/bluetooth/a2dp/A2dpStateMachine$DeviceInfo;->-wrap0(Lcom/android/bluetooth/a2dp/A2dpStateMachine$DeviceInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iget v10, v5, Lcom/android/bluetooth/a2dp/A2dpStateMachine$StackEvent;->valueInt:I

    const/4 v11, 0x1

    if-eq v10, v11, :cond_d

    iget-object v10, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-virtual {v10}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v10

    const/16 v11, 0xc9

    invoke-virtual {v10, v11, v8}, Landroid/os/Handler;->hasMessages(ILjava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_d

    const-string/jumbo v11, "A2dpStateMachine"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Connected removeMessages CONNECT_TIMEOUT : "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    move-object v10, v8

    check-cast v10, Ljava/lang/String;

    invoke-static {v13, v10}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap8(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v11, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v10, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-virtual {v10}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v10

    const/16 v11, 0xc9

    invoke-virtual {v10, v11, v8}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    iget-object v10, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v10}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get11(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Lcom/android/bluetooth/a2dp/A2dpStateMachine$DeviceInfo;

    move-result-object v10

    iget-object v11, v5, Lcom/android/bluetooth/a2dp/A2dpStateMachine$StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v11}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x3

    const/4 v13, 0x0

    invoke-virtual {v10, v11, v12, v13}, Lcom/android/bluetooth/a2dp/A2dpStateMachine$DeviceInfo;->setDeviceFeatureIfcontainsKey(Ljava/lang/String;II)V

    :cond_d
    iget v10, v5, Lcom/android/bluetooth/a2dp/A2dpStateMachine$StackEvent;->valueInt:I

    iget-object v11, v5, Lcom/android/bluetooth/a2dp/A2dpStateMachine$StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-direct {p0, v10, v11}, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->processConnectionEvent(ILandroid/bluetooth/BluetoothDevice;)V

    goto/16 :goto_0

    :pswitch_2
    iget v10, v5, Lcom/android/bluetooth/a2dp/A2dpStateMachine$StackEvent;->valueInt:I

    iget-object v11, v5, Lcom/android/bluetooth/a2dp/A2dpStateMachine$StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-direct {p0, v10, v11}, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->processAudioStateEvent(ILandroid/bluetooth/BluetoothDevice;)V

    goto/16 :goto_0

    :pswitch_3
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v10

    const-string/jumbo v11, "CscFeature_BT_SupportScmst"

    invoke-virtual {v10, v11}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    iget-object v10, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    iget v11, v5, Lcom/android/bluetooth/a2dp/A2dpStateMachine$StackEvent;->valueInt:I

    invoke-static {v10, v11}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap28(Lcom/android/bluetooth/a2dp/A2dpStateMachine;I)V

    iget-object v10, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v10}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get11(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Lcom/android/bluetooth/a2dp/A2dpStateMachine$DeviceInfo;

    move-result-object v10

    iget-object v11, v5, Lcom/android/bluetooth/a2dp/A2dpStateMachine$StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v11}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v11

    iget v12, v5, Lcom/android/bluetooth/a2dp/A2dpStateMachine$StackEvent;->valueInt:I

    const/4 v13, 0x2

    invoke-virtual {v10, v11, v13, v12}, Lcom/android/bluetooth/a2dp/A2dpStateMachine$DeviceInfo;->setDeviceFeature(Ljava/lang/String;II)V

    iget-object v10, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v10}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap25(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)V

    goto/16 :goto_0

    :pswitch_4
    invoke-static {}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get0()Z

    move-result v10

    if-eqz v10, :cond_e

    const-string/jumbo v10, "A2dpStateMachine"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Delay report : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v5, Lcom/android/bluetooth/a2dp/A2dpStateMachine$StackEvent;->valueInt:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    iget v10, v5, Lcom/android/bluetooth/a2dp/A2dpStateMachine$StackEvent;->valueInt:I

    div-int/lit8 v2, v10, 0xa

    iget-object v10, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    iget-object v11, v5, Lcom/android/bluetooth/a2dp/A2dpStateMachine$StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-static {v10, v2, v11}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap21(Lcom/android/bluetooth/a2dp/A2dpStateMachine;ILandroid/bluetooth/BluetoothDevice;)V

    goto/16 :goto_0

    :pswitch_5
    iget-object v10, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    iget v11, v5, Lcom/android/bluetooth/a2dp/A2dpStateMachine$StackEvent;->valueInt:I

    iget v12, v5, Lcom/android/bluetooth/a2dp/A2dpStateMachine$StackEvent;->valueInt2:I

    iget-object v13, v5, Lcom/android/bluetooth/a2dp/A2dpStateMachine$StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-static {v10, v11, v12, v13}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap20(Lcom/android/bluetooth/a2dp/A2dpStateMachine;IILandroid/bluetooth/BluetoothDevice;)V

    goto/16 :goto_0

    :pswitch_6
    iget-object v10, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    iget-object v11, v5, Lcom/android/bluetooth/a2dp/A2dpStateMachine$StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-static {v10, v11}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap22(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Landroid/bluetooth/BluetoothDevice;)V

    goto/16 :goto_0

    :pswitch_7
    iget-object v10, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    iget v11, v5, Lcom/android/bluetooth/a2dp/A2dpStateMachine$StackEvent;->valueInt:I

    iget v12, v5, Lcom/android/bluetooth/a2dp/A2dpStateMachine$StackEvent;->valueInt2:I

    iget-object v13, v5, Lcom/android/bluetooth/a2dp/A2dpStateMachine$StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-static {v10, v11, v12, v13}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap19(Lcom/android/bluetooth/a2dp/A2dpStateMachine;IILandroid/bluetooth/BluetoothDevice;)V

    goto/16 :goto_0

    :sswitch_5
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/bluetooth/a2dp/A2dpStateMachine$BigDataEvent;

    iget-object v10, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v10}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get7(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Lcom/android/bluetooth/a2dp/A2dpStateMachine$BigDataInfo;

    move-result-object v10

    iget-object v11, v1, Lcom/android/bluetooth/a2dp/A2dpStateMachine$BigDataEvent;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v11}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v11

    iget-object v12, v1, Lcom/android/bluetooth/a2dp/A2dpStateMachine$BigDataEvent;->valueStr:Ljava/lang/String;

    invoke-virtual {v10, v11, v12}, Lcom/android/bluetooth/a2dp/A2dpStateMachine$BigDataInfo;->setBigData(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_6
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    iget-object v10, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v10}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get11(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Lcom/android/bluetooth/a2dp/A2dpStateMachine$DeviceInfo;

    move-result-object v10

    const/4 v11, 0x3

    invoke-virtual {v10, v7, v11}, Lcom/android/bluetooth/a2dp/A2dpStateMachine$DeviceInfo;->getDeviceFeature(Ljava/lang/String;I)I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_2

    const-string/jumbo v10, "A2dpStateMachine"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Disconnected CONNECT_TIMEOUT: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v12, v7}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap8(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v10, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v7}, Lcom/android/bluetooth/Utils;->getBytesFromAddress(Ljava/lang/String;)[B

    move-result-object v11

    const/4 v12, 0x0

    invoke-static {v10, v12, v11}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap18(Lcom/android/bluetooth/a2dp/A2dpStateMachine;I[B)V

    iget-object v10, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v7}, Lcom/android/bluetooth/Utils;->getBytesFromAddress(Ljava/lang/String;)[B

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap3(Lcom/android/bluetooth/a2dp/A2dpStateMachine;[B)Z

    iget-object v10, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    const/4 v11, 0x0

    invoke-static {v10, v11}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-set6(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    iget-object v10, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    const/4 v11, 0x0

    invoke-static {v10, v11}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-set3(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    goto/16 :goto_0

    :sswitch_7
    iget-object v10, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    const/4 v11, 0x1

    invoke-static {v10, v11}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap27(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Z)V

    goto/16 :goto_0

    :sswitch_8
    iget-object v10, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    const/4 v11, 0x0

    invoke-static {v10, v11}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap27(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Z)V

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_7
        0x5 -> :sswitch_8
        0x6 -> :sswitch_3
        0x65 -> :sswitch_4
        0x66 -> :sswitch_5
        0xc9 -> :sswitch_6
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method
