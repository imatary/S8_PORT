.class Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;
.super Lcom/android/internal/util/State;
.source "A2dpStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/a2dp/A2dpStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Pending"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;


# direct methods
.method private constructor <init>(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)V
    .locals 0

    iput-object p1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;-><init>(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)V

    return-void
.end method

.method private processAudioStateEvent(ILandroid/bluetooth/BluetoothDevice;)V
    .locals 9

    const/16 v8, 0xb

    const/16 v7, 0xa

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get9(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Pending Audio State Device:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-virtual {v2, p2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->deviceInfo(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "is not included in ConnectedDevice List:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get18(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->deviceInfo(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap15(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string/jumbo v0, "A2dpStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Pending processAudioStateEvent = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-virtual {v2, p2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->deviceInfo(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " Playing : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get18(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->deviceInfo(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " Active : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get3(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->deviceInfo(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch p1, :pswitch_data_0

    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Audio State Device: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-virtual {v2, p2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->deviceInfo(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

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

    invoke-static {v0, v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap15(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get18(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v0, p2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-set5(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get5(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get19(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Lcom/android/bluetooth/a2dp/A2dpService;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/android/bluetooth/a2dp/A2dpService;->setAvrcpAudioState(I)V

    :cond_2
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v0, v5}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-set2(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Z)Z

    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v0, p2, v7, v8}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap9(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-virtual {v0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->isDualPlayEnabled()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get3(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get3(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get18(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-virtual {v0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->isDualPlayEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v0, v6, v5, p1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap33(Lcom/android/bluetooth/a2dp/A2dpStateMachine;ZZI)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get18(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-set1(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get6(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/media/AudioManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get3(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v0, v1, v5}, Landroid/media/AudioManager;->updateBluetoothDevice(Landroid/bluetooth/BluetoothDevice;I)V

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get2(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v0, p2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-set0(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    goto :goto_1

    :pswitch_1
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get18(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v0, v4}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-set5(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get5(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get19(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Lcom/android/bluetooth/a2dp/A2dpService;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/android/bluetooth/a2dp/A2dpService;->setAvrcpAudioState(I)V

    :cond_6
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v0, p2, v8, v7}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap9(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    :cond_7
    :goto_2
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-virtual {v0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->isDualPlayEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v0, v6, v5, p1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap33(Lcom/android/bluetooth/a2dp/A2dpStateMachine;ZZI)V

    goto/16 :goto_0

    :cond_8
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get2(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v0, v4}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-set0(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    goto :goto_2

    :pswitch_2
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get11(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Lcom/android/bluetooth/a2dp/A2dpStateMachine$DeviceInfo;

    move-result-object v0

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine$DeviceInfo;->isContainKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get11(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Lcom/android/bluetooth/a2dp/A2dpStateMachine$DeviceInfo;

    move-result-object v1

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v5}, Lcom/android/bluetooth/a2dp/A2dpStateMachine$DeviceInfo;->getDeviceFeature(Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get11(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Lcom/android/bluetooth/a2dp/A2dpStateMachine$DeviceInfo;

    move-result-object v2

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v6}, Lcom/android/bluetooth/a2dp/A2dpStateMachine$DeviceInfo;->getDeviceFeature(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v0, v1, v2, p2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap20(Lcom/android/bluetooth/a2dp/A2dpStateMachine;IILandroid/bluetooth/BluetoothDevice;)V

    :goto_3
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get18(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get18(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    :cond_9
    :goto_4
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v0, p2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-set1(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get19(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Lcom/android/bluetooth/a2dp/A2dpService;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/bluetooth/a2dp/A2dpService;->setAudioDeviceChanged(Landroid/bluetooth/BluetoothDevice;)V

    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get6(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0, p2, v5}, Landroid/media/AudioManager;->updateBluetoothDevice(Landroid/bluetooth/BluetoothDevice;I)V

    goto/16 :goto_0

    :cond_a
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    const/16 v1, 0xff

    invoke-static {v0, v1, v5, p2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap20(Lcom/android/bluetooth/a2dp/A2dpStateMachine;IILandroid/bluetooth/BluetoothDevice;)V

    goto :goto_3

    :cond_b
    const-string/jumbo v0, "A2dpStateMachine"

    const-string/jumbo v1, "AUDIO_DEVICE_CHANGED"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v0, v6}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-set2(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Z)Z

    goto :goto_4

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private processConnectionEvent(ILandroid/bluetooth/BluetoothDevice;)V
    .locals 9

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string/jumbo v1, "A2dpStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Pending ConnectionEvent device : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-virtual {v3, p2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->deviceInfo(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", state : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", size : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get9(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", mTargetDevice : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    iget-object v4, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v4}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get20(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->deviceInfo(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", mIncomingDevice : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    iget-object v4, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v4}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get13(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->deviceInfo(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "A2DPSM-Pending ConnectionEvent device : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-virtual {v2, p2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->deviceInfo(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", state : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", size : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get9(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", mTargetDevice : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get20(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->deviceInfo(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", mIncomingDevice : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get13(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->deviceInfo(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/BluetoothDump;->BtLog(Ljava/lang/String;)V

    packed-switch p1, :pswitch_data_0

    const-string/jumbo v1, "A2dpStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Incorrect state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get9(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get9(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v1, p2, v5, v8}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap10(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get9(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get9(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get9(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v4, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v4}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get9(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    invoke-static {v3, v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-set1(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get6(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/media/AudioManager;

    move-result-object v1

    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get3(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/media/AudioManager;->updateBluetoothDevice(Landroid/bluetooth/BluetoothDevice;I)V

    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get8(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap31(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Lcom/android/internal/util/IState;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v2

    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get20(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get20(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap7(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap2(Lcom/android/bluetooth/a2dp/A2dpStateMachine;[B)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get20(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-static {v1, v2, v5, v6}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap10(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    monitor-enter v2

    :try_start_1
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-set6(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get9(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get12(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Lcom/android/bluetooth/a2dp/A2dpStateMachine$Disconnected;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap31(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Lcom/android/internal/util/IState;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_1
    monitor-exit v2

    goto/16 :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    :cond_2
    :try_start_2
    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get9(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v4, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v4}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get9(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    invoke-static {v3, v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-set1(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get6(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/media/AudioManager;

    move-result-object v1

    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get3(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/media/AudioManager;->updateBluetoothDevice(Landroid/bluetooth/BluetoothDevice;I)V

    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get8(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap31(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Lcom/android/internal/util/IState;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v1

    monitor-exit v2

    throw v1

    :cond_3
    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    monitor-enter v2

    :try_start_3
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-set3(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get9(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get12(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Lcom/android/bluetooth/a2dp/A2dpStateMachine$Disconnected;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap31(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Lcom/android/internal/util/IState;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v1

    monitor-exit v2

    throw v1

    :cond_4
    :try_start_4
    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get9(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v4, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v4}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get9(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    invoke-static {v3, v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-set1(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get6(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/media/AudioManager;

    move-result-object v1

    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get3(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/media/AudioManager;->updateBluetoothDevice(Landroid/bluetooth/BluetoothDevice;I)V

    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get8(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap31(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Lcom/android/internal/util/IState;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto/16 :goto_1

    :cond_5
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get20(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get20(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get20(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-static {v1, v2, v5, v6}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap10(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get13(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    if-eqz v1, :cond_6

    const-string/jumbo v1, "A2dpStateMachine"

    const-string/jumbo v2, "disconnect for outgoing in pending state"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    monitor-enter v2

    :try_start_5
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-set6(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto/16 :goto_1

    :catchall_3
    move-exception v1

    monitor-exit v2

    throw v1

    :cond_6
    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    monitor-enter v2

    :try_start_6
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-set6(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get9(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get12(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Lcom/android/bluetooth/a2dp/A2dpStateMachine$Disconnected;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap31(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Lcom/android/internal/util/IState;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    goto/16 :goto_1

    :catchall_4
    move-exception v1

    monitor-exit v2

    throw v1

    :cond_7
    :try_start_7
    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get9(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v4, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v4}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get9(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    invoke-static {v3, v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-set1(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get6(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/media/AudioManager;

    move-result-object v1

    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get3(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/media/AudioManager;->updateBluetoothDevice(Landroid/bluetooth/BluetoothDevice;I)V

    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get8(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap31(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Lcom/android/internal/util/IState;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    goto/16 :goto_1

    :cond_8
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get13(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get13(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get13(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-static {v1, v2, v5, v6}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap10(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    monitor-enter v2

    :try_start_8
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-set3(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get9(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_9

    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get12(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Lcom/android/bluetooth/a2dp/A2dpStateMachine$Disconnected;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap31(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Lcom/android/internal/util/IState;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    goto/16 :goto_1

    :catchall_5
    move-exception v1

    monitor-exit v2

    throw v1

    :cond_9
    :try_start_9
    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get9(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v4, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v4}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get9(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    invoke-static {v3, v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-set1(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get6(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/media/AudioManager;

    move-result-object v1

    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get3(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/media/AudioManager;->updateBluetoothDevice(Landroid/bluetooth/BluetoothDevice;I)V

    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get8(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap31(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Lcom/android/internal/util/IState;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    goto/16 :goto_1

    :cond_a
    const/4 v0, 0x0

    const-string/jumbo v1, "00:00:00:00:00:00"

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get20(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get11(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Lcom/android/bluetooth/a2dp/A2dpStateMachine$DeviceInfo;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get20(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x5

    invoke-virtual {v1, v2, v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine$DeviceInfo;->getDeviceFeature(Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_b

    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get20(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-static {v1, v2, v5, v0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap10(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    :cond_b
    const-string/jumbo v1, "A2dpStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unknown device Disconnected target : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    iget-object v4, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v4}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get20(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->deviceInfo(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " beforeState : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    monitor-enter v2

    :try_start_a
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get9(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_e

    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-set6(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-set3(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get12(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Lcom/android/bluetooth/a2dp/A2dpStateMachine$Disconnected;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap31(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Lcom/android/internal/util/IState;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    goto/16 :goto_1

    :catchall_6
    move-exception v1

    monitor-exit v2

    throw v1

    :cond_c
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get11(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Lcom/android/bluetooth/a2dp/A2dpStateMachine$DeviceInfo;

    move-result-object v1

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x5

    invoke-virtual {v1, v2, v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine$DeviceInfo;->getDeviceFeature(Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_d

    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v1, p2, v5, v0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap10(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    :cond_d
    const-string/jumbo v1, "A2dpStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unknown device Disconnected device : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-virtual {v3, p2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->deviceInfo(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " beforeState : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_e
    :try_start_b
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get8(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap31(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Lcom/android/internal/util/IState;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    goto/16 :goto_1

    :pswitch_1
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get9(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_10

    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get9(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v1, p2, v7, v8}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap10(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get20(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get20(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-static {v1, v2, v5, v6}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap10(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    :cond_f
    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    monitor-enter v2

    :try_start_c
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-set6(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get8(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap31(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Lcom/android/internal/util/IState;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_7

    goto/16 :goto_1

    :catchall_7
    move-exception v1

    monitor-exit v2

    throw v1

    :cond_10
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get20(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get20(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get20(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-static {v1, v2, v7, v6}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap10(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    monitor-enter v2

    :try_start_d
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get20(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-set1(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get9(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get20(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-set6(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get6(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/media/AudioManager;

    move-result-object v1

    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get3(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/media/AudioManager;->updateBluetoothDevice(Landroid/bluetooth/BluetoothDevice;I)V

    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get8(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap31(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Lcom/android/internal/util/IState;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_8

    goto/16 :goto_1

    :catchall_8
    move-exception v1

    monitor-exit v2

    throw v1

    :cond_11
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get13(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    if-eqz v1, :cond_13

    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get13(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get13(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-static {v1, v2, v7, v6}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap10(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get13(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->okToConnect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_12

    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    monitor-enter v2

    :try_start_e
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get13(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-set1(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get9(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get13(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-set3(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get6(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/media/AudioManager;

    move-result-object v1

    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get3(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/media/AudioManager;->updateBluetoothDevice(Landroid/bluetooth/BluetoothDevice;I)V

    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get8(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap31(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Lcom/android/internal/util/IState;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_9

    goto/16 :goto_1

    :catchall_9
    move-exception v1

    monitor-exit v2

    throw v1

    :cond_12
    const-string/jumbo v1, "A2dpStateMachine"

    const-string/jumbo v2, "Incoming A2DP rejected from pending state"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v2, p2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap7(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap4(Lcom/android/bluetooth/a2dp/A2dpStateMachine;[B)Z

    goto/16 :goto_0

    :cond_13
    const-string/jumbo v1, "A2dpStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unknown device Connected: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-virtual {v3, p2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->deviceInfo(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get20(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    if-eqz v1, :cond_14

    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get20(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    :cond_14
    :goto_3
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v1, p2, v7, v5}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap10(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    monitor-enter v2

    :try_start_f
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v1, p2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-set1(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get9(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-set6(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-set3(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get6(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/media/AudioManager;

    move-result-object v1

    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get3(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/media/AudioManager;->updateBluetoothDevice(Landroid/bluetooth/BluetoothDevice;I)V

    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get8(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap31(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Lcom/android/internal/util/IState;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_a

    goto/16 :goto_1

    :catchall_a
    move-exception v1

    monitor-exit v2

    throw v1

    :cond_15
    const-string/jumbo v1, "A2dpStateMachine"

    const-string/jumbo v2, "update connection status from connecting to disconnected for target device"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get20(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-static {v1, v2, v5, v6}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap10(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    goto :goto_3

    :pswitch_2
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get9(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    const-string/jumbo v2, "current device tries to connect back"

    invoke-static {v1, v2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap14(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_16
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get20(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    if-eqz v1, :cond_17

    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get20(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    const-string/jumbo v2, "Stack and target device are connecting"

    invoke-static {v1, v2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap14(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_17
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get13(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    if-eqz v1, :cond_18

    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get13(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    const-string/jumbo v1, "A2dpStateMachine"

    const-string/jumbo v2, "Another connecting event on the incoming device"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_18
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    const-string/jumbo v2, "Incoming connection while pending, accept it"

    invoke-static {v1, v2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap14(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v1, p2, v6, v5}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap10(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v1, p2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-set3(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    goto/16 :goto_0

    :pswitch_3
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get9(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-static {}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get0()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "stack is disconnecting "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap14(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_19
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get20(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    if-eqz v1, :cond_1a

    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get20(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    const-string/jumbo v1, "A2dpStateMachine"

    const-string/jumbo v2, "TargetDevice is getting disconnected"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_1a
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get13(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    if-eqz v1, :cond_1b

    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get13(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    const-string/jumbo v1, "A2dpStateMachine"

    const-string/jumbo v2, "IncomingDevice is getting disconnected"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_1b
    const-string/jumbo v1, "A2dpStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Disconnecting unknow device: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-virtual {v3, p2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->deviceInfo(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public enter()V
    .locals 3

    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Enter Pending: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

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
    .locals 12

    iget-object v8, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Pending process message: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p1, Landroid/os/Message;->what:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap14(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Ljava/lang/String;)V

    const/4 v7, 0x1

    iget v8, p1, Landroid/os/Message;->what:I

    sparse-switch v8, :sswitch_data_0

    const-string/jumbo v8, "A2dpStateMachine"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "EVENT NOT HANDLED "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p1, Landroid/os/Message;->what:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, 0x0

    return v8

    :sswitch_0
    iget-object v8, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v8, p1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap12(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Landroid/os/Message;)V

    :cond_0
    :goto_0
    return v7

    :sswitch_1
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    iget-object v8, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v8}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get11(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Lcom/android/bluetooth/a2dp/A2dpStateMachine$DeviceInfo;

    move-result-object v8

    const/4 v9, 0x3

    invoke-virtual {v8, v5, v9}, Lcom/android/bluetooth/a2dp/A2dpStateMachine$DeviceInfo;->getDeviceFeature(Ljava/lang/String;I)I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_0

    const-string/jumbo v8, "A2dpStateMachine"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Disconnected CONNECT_TIMEOUT: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v10, v5}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap8(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v5}, Lcom/android/bluetooth/Utils;->getBytesFromAddress(Ljava/lang/String;)[B

    move-result-object v9

    const/4 v10, 0x0

    invoke-static {v8, v10, v9}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap18(Lcom/android/bluetooth/a2dp/A2dpStateMachine;I[B)V

    iget-object v8, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v5}, Lcom/android/bluetooth/Utils;->getBytesFromAddress(Ljava/lang/String;)[B

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap3(Lcom/android/bluetooth/a2dp/A2dpStateMachine;[B)Z

    iget-object v8, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    const/4 v9, 0x0

    invoke-static {v8, v9}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-set6(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    iget-object v8, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    const/4 v9, 0x0

    invoke-static {v8, v9}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-set3(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    goto :goto_0

    :sswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$BigDataEvent;

    iget-object v8, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v8}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get7(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Lcom/android/bluetooth/a2dp/A2dpStateMachine$BigDataInfo;

    move-result-object v8

    iget-object v9, v0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$BigDataEvent;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v9}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v9

    iget-object v10, v0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$BigDataEvent;->valueStr:Ljava/lang/String;

    invoke-virtual {v8, v9, v10}, Lcom/android/bluetooth/a2dp/A2dpStateMachine$BigDataInfo;->setBigData(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_3
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    iget-object v8, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v8, v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap5(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Z)Z

    goto :goto_0

    :sswitch_4
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    iget-object v8, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v8}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get9(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v8}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get9(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v8}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get20(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v8

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v8}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get20(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v8

    invoke-virtual {v8, v2}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-static {v8, v2, v9, v10}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap10(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    iget-object v9, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    monitor-enter v9

    :try_start_0
    iget-object v8, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    const/4 v10, 0x0

    invoke-static {v8, v10}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-set6(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v9

    goto/16 :goto_0

    :catchall_0
    move-exception v8

    monitor-exit v9

    throw v8

    :cond_1
    iget-object v8, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v8, p1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap12(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Landroid/os/Message;)V

    goto/16 :goto_0

    :sswitch_5
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/android/bluetooth/a2dp/A2dpStateMachine$StackEvent;

    invoke-static {}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get0()Z

    move-result v8

    if-eqz v8, :cond_2

    const-string/jumbo v8, "A2dpStateMachine"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Pending stack event: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v4, Lcom/android/bluetooth/a2dp/A2dpStateMachine$StackEvent;->type:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget v8, v4, Lcom/android/bluetooth/a2dp/A2dpStateMachine$StackEvent;->type:I

    packed-switch v8, :pswitch_data_0

    :pswitch_0
    const-string/jumbo v8, "A2dpStateMachine"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Unexpected stack event: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v4, Lcom/android/bluetooth/a2dp/A2dpStateMachine$StackEvent;->type:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :pswitch_1
    iget-object v8, v4, Lcom/android/bluetooth/a2dp/A2dpStateMachine$StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    if-eqz v8, :cond_0

    iget-object v8, v4, Lcom/android/bluetooth/a2dp/A2dpStateMachine$StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v8}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v8}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get11(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Lcom/android/bluetooth/a2dp/A2dpStateMachine$DeviceInfo;

    move-result-object v8

    iget-object v9, v4, Lcom/android/bluetooth/a2dp/A2dpStateMachine$StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v9}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/bluetooth/a2dp/A2dpStateMachine$DeviceInfo;->-wrap0(Lcom/android/bluetooth/a2dp/A2dpStateMachine$DeviceInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget v8, v4, Lcom/android/bluetooth/a2dp/A2dpStateMachine$StackEvent;->valueInt:I

    const/4 v9, 0x1

    if-eq v8, v9, :cond_3

    iget-object v8, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-virtual {v8}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v8

    const/16 v9, 0xc9

    invoke-virtual {v8, v9, v6}, Landroid/os/Handler;->hasMessages(ILjava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    const-string/jumbo v9, "A2dpStateMachine"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Pending removeMessages CONNECT_TIMEOUT : "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    move-object v8, v6

    check-cast v8, Ljava/lang/String;

    invoke-static {v11, v8}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap8(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-virtual {v8}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v8

    const/16 v9, 0xc9

    invoke-virtual {v8, v9, v6}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    iget-object v8, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v8}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get11(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Lcom/android/bluetooth/a2dp/A2dpStateMachine$DeviceInfo;

    move-result-object v8

    iget-object v9, v4, Lcom/android/bluetooth/a2dp/A2dpStateMachine$StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v9}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x3

    const/4 v11, 0x0

    invoke-virtual {v8, v9, v10, v11}, Lcom/android/bluetooth/a2dp/A2dpStateMachine$DeviceInfo;->setDeviceFeatureIfcontainsKey(Ljava/lang/String;II)V

    :cond_3
    iget v8, v4, Lcom/android/bluetooth/a2dp/A2dpStateMachine$StackEvent;->valueInt:I

    iget-object v9, v4, Lcom/android/bluetooth/a2dp/A2dpStateMachine$StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-direct {p0, v8, v9}, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->processConnectionEvent(ILandroid/bluetooth/BluetoothDevice;)V

    goto/16 :goto_0

    :pswitch_2
    iget v8, v4, Lcom/android/bluetooth/a2dp/A2dpStateMachine$StackEvent;->valueInt:I

    iget-object v9, v4, Lcom/android/bluetooth/a2dp/A2dpStateMachine$StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-direct {p0, v8, v9}, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->processAudioStateEvent(ILandroid/bluetooth/BluetoothDevice;)V

    goto/16 :goto_0

    :pswitch_3
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v8

    const-string/jumbo v9, "CscFeature_BT_SupportScmst"

    invoke-virtual {v8, v9}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    iget v9, v4, Lcom/android/bluetooth/a2dp/A2dpStateMachine$StackEvent;->valueInt:I

    invoke-static {v8, v9}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap28(Lcom/android/bluetooth/a2dp/A2dpStateMachine;I)V

    iget-object v8, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v8}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get11(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Lcom/android/bluetooth/a2dp/A2dpStateMachine$DeviceInfo;

    move-result-object v8

    iget-object v9, v4, Lcom/android/bluetooth/a2dp/A2dpStateMachine$StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v9}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v9

    iget v10, v4, Lcom/android/bluetooth/a2dp/A2dpStateMachine$StackEvent;->valueInt:I

    const/4 v11, 0x2

    invoke-virtual {v8, v9, v11, v10}, Lcom/android/bluetooth/a2dp/A2dpStateMachine$DeviceInfo;->setDeviceFeature(Ljava/lang/String;II)V

    iget-object v8, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v8}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap25(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)V

    goto/16 :goto_0

    :pswitch_4
    invoke-static {}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get0()Z

    move-result v8

    if-eqz v8, :cond_4

    const-string/jumbo v8, "A2dpStateMachine"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Delay report : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v4, Lcom/android/bluetooth/a2dp/A2dpStateMachine$StackEvent;->valueInt:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget v8, v4, Lcom/android/bluetooth/a2dp/A2dpStateMachine$StackEvent;->valueInt:I

    div-int/lit8 v1, v8, 0xa

    iget-object v8, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v8}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get11(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Lcom/android/bluetooth/a2dp/A2dpStateMachine$DeviceInfo;

    move-result-object v8

    iget-object v9, v4, Lcom/android/bluetooth/a2dp/A2dpStateMachine$StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v9}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x6

    invoke-virtual {v8, v9, v10, v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine$DeviceInfo;->setDeviceFeature(Ljava/lang/String;II)V

    goto/16 :goto_0

    :pswitch_5
    iget-object v8, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    iget v9, v4, Lcom/android/bluetooth/a2dp/A2dpStateMachine$StackEvent;->valueInt:I

    iget v10, v4, Lcom/android/bluetooth/a2dp/A2dpStateMachine$StackEvent;->valueInt2:I

    iget-object v11, v4, Lcom/android/bluetooth/a2dp/A2dpStateMachine$StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-static {v8, v9, v10, v11}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap20(Lcom/android/bluetooth/a2dp/A2dpStateMachine;IILandroid/bluetooth/BluetoothDevice;)V

    goto/16 :goto_0

    :pswitch_6
    iget-object v8, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    iget-object v9, v4, Lcom/android/bluetooth/a2dp/A2dpStateMachine$StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-static {v8, v9}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap22(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Landroid/bluetooth/BluetoothDevice;)V

    goto/16 :goto_0

    :pswitch_7
    iget-object v8, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    iget v9, v4, Lcom/android/bluetooth/a2dp/A2dpStateMachine$StackEvent;->valueInt:I

    iget v10, v4, Lcom/android/bluetooth/a2dp/A2dpStateMachine$StackEvent;->valueInt2:I

    iget-object v11, v4, Lcom/android/bluetooth/a2dp/A2dpStateMachine$StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-static {v8, v9, v10, v11}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap19(Lcom/android/bluetooth/a2dp/A2dpStateMachine;IILandroid/bluetooth/BluetoothDevice;)V

    goto/16 :goto_0

    :sswitch_6
    iget-object v8, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    const/4 v9, 0x1

    invoke-static {v8, v9}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap27(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Z)V

    goto/16 :goto_0

    :sswitch_7
    iget-object v8, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Pending;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    const/4 v9, 0x0

    invoke-static {v8, v9}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap27(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Z)V

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_4
        0x3 -> :sswitch_0
        0x4 -> :sswitch_6
        0x5 -> :sswitch_7
        0x6 -> :sswitch_3
        0x65 -> :sswitch_5
        0x66 -> :sswitch_2
        0xc9 -> :sswitch_1
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
