.class Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;
.super Lcom/android/internal/util/State;
.source "HeadsetClientStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Connected"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;


# direct methods
.method private constructor <init>(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)V
    .locals 0

    iput-object p1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;-><init>(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)V

    return-void
.end method

.method private processAudioEvent(ILandroid/bluetooth/BluetoothDevice;)V
    .locals 7

    const/4 v6, 0x2

    const/4 v3, 0x0

    const/4 v5, 0x1

    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-get9(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "HeadsetClientStateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Audio changed on disconnected device: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    packed-switch p1, :pswitch_data_0

    const-string/jumbo v2, "HeadsetClientStateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Audio State Device: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " bad state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    :pswitch_0
    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v2, v5}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-set1(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Z)Z

    :pswitch_1
    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-get3(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->sendMessage(I)V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v2, v6}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-set0(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;I)I

    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-get1(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Landroid/media/AudioManager;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v2, v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-wrap18(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;I)I

    move-result v1

    const-string/jumbo v2, "HeadsetClientStateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mAudioWbs is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v4}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-get5(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-get5(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string/jumbo v2, "HeadsetClientStateMachine"

    const-string/jumbo v3, "Setting sampling rate as 16000"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-get1(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Landroid/media/AudioManager;

    move-result-object v2

    const-string/jumbo v3, "hfp_set_sampling_rate=16000"

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    :goto_1
    const-string/jumbo v2, "HeadsetClientStateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "hf_volume "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-get1(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Landroid/media/AudioManager;

    move-result-object v2

    const-string/jumbo v3, "hfp_enable=true"

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-get1(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Landroid/media/AudioManager;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "hfp_volume="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v2, p2, v6, v5}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-wrap25(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    iget-object v3, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v3}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-get2(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$AudioOn;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-wrap38(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_0

    :cond_3
    const-string/jumbo v2, "HeadsetClientStateMachine"

    const-string/jumbo v3, "Setting sampling rate as 8000"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-get1(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Landroid/media/AudioManager;

    move-result-object v2

    const-string/jumbo v3, "hfp_set_sampling_rate=8000"

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_2
    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v2, v5}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-set0(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;I)I

    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v2, p2, v5, v3}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-wrap25(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    goto/16 :goto_0

    :pswitch_3
    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-get4(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)I

    move-result v2

    if-ne v2, v5, :cond_1

    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v2, v3}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-set0(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;I)I

    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v2, p2, v3, v5}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-wrap25(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private processConnectionEvent(ILandroid/bluetooth/BluetoothDevice;)V
    .locals 4

    packed-switch p1, :pswitch_data_0

    const-string/jumbo v0, "HeadsetClientStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Connection State Device: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " bad state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :pswitch_0
    const-string/jumbo v0, "HeadsetClientStateMachine"

    const-string/jumbo v1, "Connected disconnects."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-get9(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-get9(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-wrap26(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-set5(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-get10(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Disconnected;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-wrap38(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "HeadsetClientStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Disconnected from unknown device: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private sendActionResultIntent(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;)V
    .locals 6

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "android.bluetooth.headsetclient.profile.action.RESULT"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "android.bluetooth.headsetclient.extra.RESULT_CODE"

    iget v4, p1, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueInt:I

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget v3, p1, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueInt:I

    const/4 v4, 0x7

    if-ne v3, v4, :cond_0

    const-string/jumbo v3, "android.bluetooth.headsetclient.extra.CME_CODE"

    iget v4, p1, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueInt2:I

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_0
    const-string/jumbo v3, "android.bluetooth.device.extra.DEVICE"

    iget-object v4, p1, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v3}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-get17(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    move-result-object v3

    const-string/jumbo v4, "android.permission.BLUETOOTH"

    invoke-virtual {v3, v2, v4}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    const/16 v3, 0xf0

    invoke-static {v3}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxVersionSupported(I)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/android/bluetooth/Utils;->getBtEnabledContainers()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iget-object v3, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v3}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-get17(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    move-result-object v3

    new-instance v4, Landroid/os/UserHandle;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-direct {v4, v5}, Landroid/os/UserHandle;-><init>(I)V

    const-string/jumbo v5, "android.permission.BLUETOOTH"

    invoke-virtual {v3, v2, v4, v5}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public enter()V
    .locals 3

    const-string/jumbo v0, "HeadsetClientStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Enter Connected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-wrap1(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Landroid/os/Message;

    move-result-object v2

    iget v2, v2, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-set1(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Z)Z

    return-void
.end method

.method public exit()V
    .locals 3

    const-string/jumbo v0, "HeadsetClientStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Exit Connected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-wrap1(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Landroid/os/Message;

    move-result-object v2

    iget v2, v2, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public declared-synchronized processMessage(Landroid/os/Message;)Z
    .locals 17

    monitor-enter p0

    :try_start_0
    const-string/jumbo v1, "HeadsetClientStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Connected process message: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p1

    iget v1, v0, Landroid/os/Message;->what:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sparse-switch v1, :sswitch_data_0

    const/4 v1, 0x0

    monitor-exit p0

    return v1

    :sswitch_0
    :try_start_1
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/bluetooth/BluetoothDevice;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-get9(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1, v10}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    :pswitch_0
    :sswitch_1
    const/4 v1, 0x1

    monitor-exit p0

    return v1

    :cond_1
    :try_start_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v3}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-get9(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-wrap17(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-wrap7(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;[B)Z

    move-result v1

    if-nez v1, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v1, v10, v2, v3}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-wrap26(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v1, v10, v2, v3}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-wrap26(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Landroid/bluetooth/BluetoothDevice;II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    :cond_2
    :try_start_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    move-object/from16 v0, p1

    invoke-static {v1, v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-wrap28(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Landroid/os/Message;)V

    goto :goto_0

    :sswitch_2
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/bluetooth/BluetoothDevice;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-get9(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    const/4 v2, 0x3

    const/4 v3, 0x2

    invoke-static {v1, v9, v2, v3}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-wrap26(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v2, v9}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-wrap17(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-wrap7(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;[B)Z

    move-result v1

    if-nez v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v1, v9, v2, v3}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-wrap26(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    goto :goto_0

    :sswitch_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v3}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-get9(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-wrap17(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-wrap2(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;[B)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "HeadsetClientStateMachine"

    const-string/jumbo v2, "ERROR: Couldn\'t connect Audio."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :sswitch_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v3}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-get9(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-wrap17(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-wrap6(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;[B)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "HeadsetClientStateMachine"

    const-string/jumbo v2, "ERROR: Couldn\'t connect Audio."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :sswitch_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-get21(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)I

    move-result v1

    if-nez v1, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    iget-object v1, v1, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mDualScoManager:Lcom/samsung/bt/hfp/DualScoManager;

    invoke-virtual {v1}, Lcom/samsung/bt/hfp/DualScoManager;->isLocalAgActive()Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    const-string/jumbo v1, "HeadsetClientStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, " Cannot Start VR, as SCO is present in Local SCO :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    iget-object v3, v3, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mDualScoManager:Lcom/samsung/bt/hfp/DualScoManager;

    invoke-virtual {v3}, Lcom/samsung/bt/hfp/DualScoManager;->isLocalAgActive()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-wrap15(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Z

    move-result v1

    if-eqz v1, :cond_5

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    const/4 v2, 0x5

    invoke-static {v1, v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-wrap23(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;I)V

    goto/16 :goto_0

    :cond_5
    const-string/jumbo v1, "HeadsetClientStateMachine"

    const-string/jumbo v2, "ERROR: Couldn\'t start voice recognition"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :sswitch_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-get21(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-wrap16(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Z

    move-result v1

    if-eqz v1, :cond_6

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    const/4 v2, 0x6

    invoke-static {v1, v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-wrap23(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;I)V

    goto/16 :goto_0

    :cond_6
    const-string/jumbo v1, "HeadsetClientStateMachine"

    const-string/jumbo v2, "ERROR: Couldn\'t stop voice recognition"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :sswitch_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-get19(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Z

    move-result v1

    if-eqz v1, :cond_7

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-set20(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Z)Z

    goto/16 :goto_0

    :cond_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    const/4 v3, 0x1

    invoke-static {v1, v3, v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-wrap14(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;II)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    const/4 v2, 0x7

    invoke-static {v1, v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-wrap23(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;I)V

    goto/16 :goto_0

    :sswitch_8
    move-object/from16 v0, p1

    iget v7, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v1, v7}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-wrap18(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;I)I

    move-result v12

    const-string/jumbo v1, "HeadsetClientStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "HF volume is set to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-get1(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Landroid/media/AudioManager;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "hfp_volume="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-get20(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Z

    move-result v1

    if-eqz v1, :cond_8

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-set21(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Z)Z

    goto/16 :goto_0

    :cond_8
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    const/4 v2, 0x0

    invoke-static {v1, v2, v12}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-wrap14(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;II)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    const/16 v2, 0x8

    invoke-static {v1, v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-wrap23(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;I)V

    goto/16 :goto_0

    :sswitch_9
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    iget-object v1, v1, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mDualScoManager:Lcom/samsung/bt/hfp/DualScoManager;

    invoke-virtual {v1}, Lcom/samsung/bt/hfp/DualScoManager;->isLocalAgActive()Z

    move-result v1

    if-eqz v1, :cond_9

    const-string/jumbo v1, "HeadsetClientStateMachine"

    const-string/jumbo v2, "One SCO is already present, disconnect the current SCO and create new one with AG"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    iget-object v1, v1, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mDualScoManager:Lcom/samsung/bt/hfp/DualScoManager;

    invoke-virtual {v1}, Lcom/samsung/bt/hfp/DualScoManager;->switchAudioAgToClient()Z

    :cond_9
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-wrap5(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    const/16 v2, 0x9

    invoke-static {v1, v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-wrap23(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;I)V

    goto/16 :goto_0

    :cond_a
    const-string/jumbo v1, "HeadsetClientStateMachine"

    const-string/jumbo v2, "ERROR: Cannot redial"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :sswitch_a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    iget-object v1, v1, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mDualScoManager:Lcom/samsung/bt/hfp/DualScoManager;

    invoke-virtual {v1}, Lcom/samsung/bt/hfp/DualScoManager;->isLocalAgActive()Z

    move-result v1

    if-eqz v1, :cond_b

    const-string/jumbo v1, "HeadsetClientStateMachine"

    const-string/jumbo v2, "One SCO is already present, disconnect the current SCO and create new one with AG"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    iget-object v1, v1, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mDualScoManager:Lcom/samsung/bt/hfp/DualScoManager;

    invoke-virtual {v1}, Lcom/samsung/bt/hfp/DualScoManager;->switchAudioAgToClient()Z

    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-wrap5(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/16 v3, 0xa

    invoke-static {v1, v3, v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-wrap24(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;ILjava/lang/Object;)V

    goto/16 :goto_0

    :cond_c
    const-string/jumbo v2, "HeadsetClientStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ERROR: Cannot dial with a given number:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :sswitch_b
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    iget-object v1, v1, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mDualScoManager:Lcom/samsung/bt/hfp/DualScoManager;

    invoke-virtual {v1}, Lcom/samsung/bt/hfp/DualScoManager;->isLocalAgActive()Z

    move-result v1

    if-eqz v1, :cond_d

    const-string/jumbo v1, "HeadsetClientStateMachine"

    const-string/jumbo v2, "One SCO is already present, disconnect the current SCO and create new one with AG"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    iget-object v1, v1, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->mDualScoManager:Lcom/samsung/bt/hfp/DualScoManager;

    invoke-virtual {v1}, Lcom/samsung/bt/hfp/DualScoManager;->switchAudioAgToClient()Z

    :cond_d
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    invoke-static {v1, v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-wrap4(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;I)Z

    move-result v1

    if-eqz v1, :cond_e

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    const/16 v2, 0xb

    invoke-static {v1, v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-wrap23(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;I)V

    goto/16 :goto_0

    :cond_e
    const-string/jumbo v1, "HeadsetClientStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ERROR: Cannot dial with a given location:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :sswitch_c
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-wrap21(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;IZ)V

    goto/16 :goto_0

    :sswitch_d
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-wrap34(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)V

    goto/16 :goto_0

    :sswitch_e
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-wrap31(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)V

    goto/16 :goto_0

    :sswitch_f
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    invoke-static {v1, v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-wrap37(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;I)V

    goto/16 :goto_0

    :sswitch_10
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    invoke-static {v1, v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-wrap29(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;I)V

    goto/16 :goto_0

    :sswitch_11
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-wrap30(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)V

    goto/16 :goto_0

    :sswitch_12
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    int-to-byte v2, v2

    invoke-static {v1, v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-wrap13(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;B)Z

    move-result v1

    if-eqz v1, :cond_f

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    const/16 v2, 0x11

    invoke-static {v1, v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-wrap23(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;I)V

    goto/16 :goto_0

    :cond_f
    const-string/jumbo v1, "HeadsetClientStateMachine"

    const-string/jumbo v2, "ERROR: Couldn\'t send DTMF"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :sswitch_13
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-wrap11(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Z

    move-result v1

    if-eqz v1, :cond_10

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    const/16 v2, 0x34

    invoke-static {v1, v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-wrap23(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;I)V

    goto/16 :goto_0

    :cond_10
    const-string/jumbo v1, "HeadsetClientStateMachine"

    const-string/jumbo v2, "ERROR: Couldn\'t retrieve subscriber info"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :sswitch_14
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-wrap10(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Z

    move-result v1

    if-eqz v1, :cond_11

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    const/16 v2, 0x13

    invoke-static {v1, v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-wrap23(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;I)V

    goto/16 :goto_0

    :cond_11
    const-string/jumbo v1, "HeadsetClientStateMachine"

    const-string/jumbo v2, "ERROR: Couldn\'t get last VTAG number"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :sswitch_15
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-wrap8(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Z

    goto/16 :goto_0

    :sswitch_16
    const/4 v15, 0x0

    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;

    const-string/jumbo v1, "HeadsetClientStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Connected: event type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v11, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->type:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, v11, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->type:I

    packed-switch v1, :pswitch_data_0

    const-string/jumbo v1, "HeadsetClientStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unknown stack event: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v11, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->type:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :pswitch_1
    const-string/jumbo v1, "HeadsetClientStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Connected: Connection state changed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v11, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v11, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueInt:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, v11, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueInt:I

    iget-object v2, v11, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->processConnectionEvent(ILandroid/bluetooth/BluetoothDevice;)V

    goto/16 :goto_0

    :pswitch_2
    const-string/jumbo v1, "HeadsetClientStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Connected: Audio state changed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v11, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v11, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueInt:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, v11, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueInt:I

    iget-object v2, v11, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->processAudioEvent(ILandroid/bluetooth/BluetoothDevice;)V

    goto/16 :goto_0

    :pswitch_3
    const-string/jumbo v1, "HeadsetClientStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Connected: Network state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v11, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueInt:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    iget v2, v11, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueInt:I

    invoke-static {v1, v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-set12(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;I)I

    new-instance v15, Landroid/content/Intent;

    const-string/jumbo v1, "android.bluetooth.headsetclient.profile.action.AG_EVENT"

    invoke-direct {v15, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "android.bluetooth.headsetclient.extra.NETWORK_STATUS"

    iget v2, v11, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueInt:I

    invoke-virtual {v15, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-get12(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)I

    move-result v1

    if-nez v1, :cond_12

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-set14(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Ljava/lang/String;)Ljava/lang/String;

    const-string/jumbo v1, "android.bluetooth.headsetclient.extra.OPERATOR_NAME"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-get13(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_12
    const-string/jumbo v1, "android.bluetooth.device.extra.DEVICE"

    iget-object v2, v11, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v15, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-get17(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    move-result-object v1

    const-string/jumbo v2, "android.permission.BLUETOOTH"

    invoke-virtual {v1, v15, v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    const/16 v1, 0xf0

    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxVersionSupported(I)Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-static {}, Lcom/android/bluetooth/Utils;->getBtEnabledContainers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-get17(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    move-result-object v1

    new-instance v2, Landroid/os/UserHandle;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    const-string/jumbo v3, "android.permission.BLUETOOTH"

    invoke-virtual {v1, v15, v2, v3}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    goto :goto_1

    :cond_13
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-get12(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-wrap9(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Z

    move-result v1

    if-eqz v1, :cond_14

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    const/16 v2, 0x33

    invoke-static {v1, v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-wrap23(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;I)V

    goto/16 :goto_0

    :cond_14
    const-string/jumbo v1, "HeadsetClientStateMachine"

    const-string/jumbo v2, "ERROR: Couldn\'t querry operator name"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :pswitch_4
    const-string/jumbo v1, "HeadsetClientStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Connected: Roaming state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v11, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueInt:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    iget v2, v11, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueInt:I

    invoke-static {v1, v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-set13(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;I)I

    new-instance v15, Landroid/content/Intent;

    const-string/jumbo v1, "android.bluetooth.headsetclient.profile.action.AG_EVENT"

    invoke-direct {v15, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "android.bluetooth.headsetclient.extra.NETWORK_ROAMING"

    iget v2, v11, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueInt:I

    invoke-virtual {v15, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v1, "android.bluetooth.device.extra.DEVICE"

    iget-object v2, v11, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v15, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-get17(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    move-result-object v1

    const-string/jumbo v2, "android.permission.BLUETOOTH"

    invoke-virtual {v1, v15, v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    const/16 v1, 0xf0

    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxVersionSupported(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/bluetooth/Utils;->getBtEnabledContainers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-get17(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    move-result-object v1

    new-instance v2, Landroid/os/UserHandle;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    const-string/jumbo v3, "android.permission.BLUETOOTH"

    invoke-virtual {v1, v15, v2, v3}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    goto :goto_2

    :pswitch_5
    const-string/jumbo v1, "HeadsetClientStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Connected: Signal level: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v11, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueInt:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    iget v2, v11, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueInt:I

    invoke-static {v1, v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-set11(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;I)I

    new-instance v15, Landroid/content/Intent;

    const-string/jumbo v1, "android.bluetooth.headsetclient.profile.action.AG_EVENT"

    invoke-direct {v15, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "android.bluetooth.headsetclient.extra.NETWORK_SIGNAL_STRENGTH"

    iget v2, v11, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueInt:I

    invoke-virtual {v15, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v1, "android.bluetooth.device.extra.DEVICE"

    iget-object v2, v11, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v15, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-get17(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    move-result-object v1

    const-string/jumbo v2, "android.permission.BLUETOOTH"

    invoke-virtual {v1, v15, v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    const/16 v1, 0xf0

    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxVersionSupported(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/bluetooth/Utils;->getBtEnabledContainers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_3
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-get17(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    move-result-object v1

    new-instance v2, Landroid/os/UserHandle;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    const-string/jumbo v3, "android.permission.BLUETOOTH"

    invoke-virtual {v1, v15, v2, v3}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    goto :goto_3

    :pswitch_6
    const-string/jumbo v1, "HeadsetClientStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Connected: Battery level: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v11, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueInt:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    iget v2, v11, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueInt:I

    invoke-static {v1, v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-set7(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;I)I

    new-instance v15, Landroid/content/Intent;

    const-string/jumbo v1, "android.bluetooth.headsetclient.profile.action.AG_EVENT"

    invoke-direct {v15, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "android.bluetooth.headsetclient.extra.BATTERY_LEVEL"

    iget v2, v11, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueInt:I

    invoke-virtual {v15, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v1, "android.bluetooth.device.extra.DEVICE"

    iget-object v2, v11, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v15, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-get17(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    move-result-object v1

    const-string/jumbo v2, "android.permission.BLUETOOTH"

    invoke-virtual {v1, v15, v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    const/16 v1, 0xf0

    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxVersionSupported(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/bluetooth/Utils;->getBtEnabledContainers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_4
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-get17(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    move-result-object v1

    new-instance v2, Landroid/os/UserHandle;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    const-string/jumbo v3, "android.permission.BLUETOOTH"

    invoke-virtual {v1, v15, v2, v3}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    goto :goto_4

    :pswitch_7
    const-string/jumbo v1, "HeadsetClientStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Connected: Operator name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v11, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    iget-object v2, v11, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueString:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-set14(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Ljava/lang/String;)Ljava/lang/String;

    new-instance v15, Landroid/content/Intent;

    const-string/jumbo v1, "android.bluetooth.headsetclient.profile.action.AG_EVENT"

    invoke-direct {v15, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "android.bluetooth.headsetclient.extra.OPERATOR_NAME"

    iget-object v2, v11, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueString:Ljava/lang/String;

    invoke-virtual {v15, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "android.bluetooth.device.extra.DEVICE"

    iget-object v2, v11, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v15, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-get17(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    move-result-object v1

    const-string/jumbo v2, "android.permission.BLUETOOTH"

    invoke-virtual {v1, v15, v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    const/16 v1, 0xf0

    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxVersionSupported(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/bluetooth/Utils;->getBtEnabledContainers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_5
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-get17(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    move-result-object v1

    new-instance v2, Landroid/os/UserHandle;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    const-string/jumbo v3, "android.permission.BLUETOOTH"

    invoke-virtual {v1, v15, v2, v3}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    goto :goto_5

    :pswitch_8
    const-string/jumbo v1, "HeadsetClientStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Connected: Voice recognition state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v11, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueInt:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-get21(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)I

    move-result v1

    iget v2, v11, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueInt:I

    if-eq v1, v2, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    iget v2, v11, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueInt:I

    invoke-static {v1, v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-set22(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;I)I

    new-instance v15, Landroid/content/Intent;

    const-string/jumbo v1, "android.bluetooth.headsetclient.profile.action.AG_EVENT"

    invoke-direct {v15, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "android.bluetooth.headsetclient.extra.VOICE_RECOGNITION"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-get21(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)I

    move-result v2

    invoke-virtual {v15, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v1, "android.bluetooth.device.extra.DEVICE"

    iget-object v2, v11, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v15, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-get17(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    move-result-object v1

    const-string/jumbo v2, "android.permission.BLUETOOTH"

    invoke-virtual {v1, v15, v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    const/16 v1, 0xf0

    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxVersionSupported(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/bluetooth/Utils;->getBtEnabledContainers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_6
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-get17(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    move-result-object v1

    new-instance v2, Landroid/os/UserHandle;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    const-string/jumbo v3, "android.permission.BLUETOOTH"

    invoke-virtual {v1, v15, v2, v3}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    goto :goto_6

    :pswitch_9
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    iget v2, v11, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueInt:I

    invoke-static {v1, v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-wrap40(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;I)V

    goto/16 :goto_0

    :pswitch_a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    iget v2, v11, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueInt:I

    invoke-static {v1, v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-wrap41(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;I)V

    goto/16 :goto_0

    :pswitch_b
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    iget v2, v11, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueInt:I

    invoke-static {v1, v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-wrap39(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;I)V

    goto/16 :goto_0

    :pswitch_c
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    iget v2, v11, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueInt:I

    invoke-static {v1, v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-wrap43(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;I)V

    goto/16 :goto_0

    :pswitch_d
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    iget-object v2, v11, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueString:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-wrap42(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_e
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    iget-object v2, v11, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueString:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-wrap22(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_f
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-get11(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)I

    move-result v1

    iget v2, v11, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueInt:I

    if-eq v1, v2, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    iget v2, v11, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueInt:I

    invoke-static {v1, v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-set6(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;I)I

    new-instance v15, Landroid/content/Intent;

    const-string/jumbo v1, "android.bluetooth.headsetclient.profile.action.AG_EVENT"

    invoke-direct {v15, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "android.bluetooth.headsetclient.extra.IN_BAND_RING"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-get11(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)I

    move-result v2

    invoke-virtual {v15, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v1, "android.bluetooth.device.extra.DEVICE"

    iget-object v2, v11, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v15, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-get17(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    move-result-object v1

    const-string/jumbo v2, "android.permission.BLUETOOTH"

    invoke-virtual {v1, v15, v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    const/16 v1, 0xf0

    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxVersionSupported(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/bluetooth/Utils;->getBtEnabledContainers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_7
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-get17(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    move-result-object v1

    new-instance v2, Landroid/os/UserHandle;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    const-string/jumbo v3, "android.permission.BLUETOOTH"

    invoke-virtual {v1, v15, v2, v3}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    goto :goto_7

    :pswitch_10
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    iget v2, v11, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueInt:I

    iget v3, v11, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueInt3:I

    iget-object v4, v11, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueString:Ljava/lang/String;

    iget v5, v11, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueInt4:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_15

    const/4 v5, 0x1

    :goto_8
    iget v6, v11, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueInt2:I

    if-nez v6, :cond_16

    const/4 v6, 0x1

    :goto_9
    invoke-static/range {v1 .. v6}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-wrap33(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;IILjava/lang/String;ZZ)V

    goto/16 :goto_0

    :cond_15
    const/4 v5, 0x0

    goto :goto_8

    :cond_16
    const/4 v6, 0x0

    goto :goto_9

    :pswitch_11
    iget v1, v11, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueInt:I

    if-nez v1, :cond_17

    const-string/jumbo v1, "HeadsetClientStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "AM volume set to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    iget v4, v11, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueInt2:I

    invoke-static {v3, v4}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-wrap20(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-get1(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Landroid/media/AudioManager;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    iget v3, v11, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueInt2:I

    invoke-static {v2, v3}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-wrap20(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;I)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v2, v4}, Landroid/media/AudioManager;->setStreamVolume(III)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-set21(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Z)Z

    goto/16 :goto_0

    :cond_17
    iget v1, v11, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueInt:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-get1(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Landroid/media/AudioManager;

    move-result-object v2

    iget v1, v11, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueInt2:I

    if-nez v1, :cond_18

    const/4 v1, 0x1

    :goto_a
    invoke-virtual {v2, v1}, Landroid/media/AudioManager;->setMicrophoneMute(Z)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-set20(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Z)Z

    goto/16 :goto_0

    :cond_18
    const/4 v1, 0x0

    goto :goto_a

    :pswitch_12
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-get16(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Ljava/util/Queue;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/util/Pair;

    if-eqz v16, :cond_19

    move-object/from16 v0, v16

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_1a

    :cond_19
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-wrap27(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)V

    goto/16 :goto_0

    :cond_1a
    const-string/jumbo v1, "HeadsetClientStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Connected: command result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v11, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueInt:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " queuedAction: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v16

    iget-object v3, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, v16

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sparse-switch v1, :sswitch_data_1

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->sendActionResultIntent(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;)V

    goto/16 :goto_0

    :sswitch_17
    iget v1, v11, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueInt:I

    if-nez v1, :cond_1b

    move-object/from16 v0, v16

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x6

    if-ne v1, v2, :cond_1c

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-set22(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;I)I

    :cond_1b
    :goto_b
    new-instance v15, Landroid/content/Intent;

    const-string/jumbo v1, "android.bluetooth.headsetclient.profile.action.AG_EVENT"

    invoke-direct {v15, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "android.bluetooth.headsetclient.extra.VOICE_RECOGNITION"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-get21(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)I

    move-result v2

    invoke-virtual {v15, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v1, "android.bluetooth.device.extra.DEVICE"

    iget-object v2, v11, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v15, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-get17(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    move-result-object v1

    const-string/jumbo v2, "android.permission.BLUETOOTH"

    invoke-virtual {v1, v15, v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    const/16 v1, 0xf0

    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxVersionSupported(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/bluetooth/Utils;->getBtEnabledContainers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_c
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-get17(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    move-result-object v1

    new-instance v2, Landroid/os/UserHandle;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    const-string/jumbo v3, "android.permission.BLUETOOTH"

    invoke-virtual {v1, v15, v2, v3}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    goto :goto_c

    :cond_1c
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-set22(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;I)I

    goto :goto_b

    :sswitch_18
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-wrap32(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)V

    goto/16 :goto_0

    :sswitch_19
    iget v1, v11, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueInt:I

    if-nez v1, :cond_1d

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    move-object/from16 v0, v16

    invoke-static {v1, v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-set16(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Landroid/util/Pair;)Landroid/util/Pair;

    goto/16 :goto_0

    :cond_1d
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-wrap19(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;I)I

    move-result v1

    if-nez v1, :cond_1f

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x4

    const/4 v4, 0x0

    aput v3, v2, v4

    invoke-static {v1, v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-wrap0(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;[I)Landroid/bluetooth/BluetoothHeadsetClientCall;

    move-result-object v1

    if-eqz v1, :cond_1e

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-get15(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Landroid/util/Pair;

    move-result-object v1

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x7

    if-ne v1, v2, :cond_1e

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-wrap21(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;IZ)V

    goto/16 :goto_0

    :cond_1e
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x5

    const/4 v4, 0x0

    aput v3, v2, v4

    invoke-static {v1, v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-wrap0(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;[I)Landroid/bluetooth/BluetoothHeadsetClientCall;

    move-result-object v1

    if-eqz v1, :cond_1f

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-get15(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Landroid/util/Pair;

    move-result-object v1

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1f

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-wrap21(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;IZ)V

    goto/16 :goto_0

    :cond_1f
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->sendActionResultIntent(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;)V

    goto/16 :goto_0

    :sswitch_1a
    iget v1, v11, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueInt:I

    if-nez v1, :cond_20

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    move-object/from16 v0, v16

    invoke-static {v1, v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-set16(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Landroid/util/Pair;)Landroid/util/Pair;

    goto/16 :goto_0

    :cond_20
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->sendActionResultIntent(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;)V

    goto/16 :goto_0

    :sswitch_1b
    iget v1, v11, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueInt:I

    if-nez v1, :cond_21

    move-object/from16 v0, v16

    iget-object v8, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v8, Landroid/bluetooth/BluetoothHeadsetClientCall;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    const/4 v2, 0x7

    invoke-static {v1, v8, v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-wrap36(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Landroid/bluetooth/BluetoothHeadsetClientCall;I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-get6(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Ljava/util/Hashtable;

    move-result-object v1

    invoke-virtual {v8}, Landroid/bluetooth/BluetoothHeadsetClientCall;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_21
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->sendActionResultIntent(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;)V

    goto/16 :goto_0

    :sswitch_1c
    iget v1, v11, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueInt:I

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->sendActionResultIntent(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;)V

    goto/16 :goto_0

    :sswitch_1d
    iget v1, v11, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueInt:I

    if-eqz v1, :cond_0

    const-string/jumbo v1, "HeadsetClientStateMachine"

    const-string/jumbo v2, "Failed to disable AG\'s EC and NR"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :pswitch_13
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    iget-object v2, v11, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueString:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-set19(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Ljava/lang/String;)Ljava/lang/String;

    new-instance v15, Landroid/content/Intent;

    const-string/jumbo v1, "android.bluetooth.headsetclient.profile.action.AG_EVENT"

    invoke-direct {v15, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "android.bluetooth.headsetclient.extra.SUBSCRIBER_INFO"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-get18(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "android.bluetooth.device.extra.DEVICE"

    iget-object v2, v11, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v15, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-get17(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    move-result-object v1

    const-string/jumbo v2, "android.permission.BLUETOOTH"

    invoke-virtual {v1, v15, v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    const/16 v1, 0xf0

    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxVersionSupported(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/bluetooth/Utils;->getBtEnabledContainers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_d
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-get17(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    move-result-object v1

    new-instance v2, Landroid/os/UserHandle;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    const-string/jumbo v3, "android.permission.BLUETOOTH"

    invoke-virtual {v1, v15, v2, v3}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    goto :goto_d

    :pswitch_14
    new-instance v15, Landroid/content/Intent;

    const-string/jumbo v1, "android.bluetooth.headsetclient.profile.action.LAST_VTAG"

    invoke-direct {v15, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "android.bluetooth.headsetclient.extra.NUMBER"

    iget-object v2, v11, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->valueString:Ljava/lang/String;

    invoke-virtual {v15, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "android.bluetooth.device.extra.DEVICE"

    iget-object v2, v11, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v15, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-get17(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    move-result-object v1

    const-string/jumbo v2, "android.permission.BLUETOOTH"

    invoke-virtual {v1, v15, v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    const/16 v1, 0xf0

    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxVersionSupported(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/bluetooth/Utils;->getBtEnabledContainers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_e
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->-get17(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    move-result-object v1

    new-instance v2, Landroid/os/UserHandle;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    const-string/jumbo v3, "android.permission.BLUETOOTH"

    invoke-virtual {v1, v15, v2, v3}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_e

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_12
        0x12 -> :sswitch_11
        0x13 -> :sswitch_14
        0x32 -> :sswitch_15
        0x34 -> :sswitch_13
        0x64 -> :sswitch_16
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_8
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_d
        :pswitch_e
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_c
        :pswitch_f
        :pswitch_14
        :pswitch_0
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        0x5 -> :sswitch_17
        0x6 -> :sswitch_17
        0x7 -> :sswitch_1
        0x8 -> :sswitch_1
        0x9 -> :sswitch_1a
        0xa -> :sswitch_1a
        0xb -> :sswitch_1a
        0xc -> :sswitch_19
        0xd -> :sswitch_1a
        0xe -> :sswitch_1a
        0xf -> :sswitch_1a
        0x10 -> :sswitch_1a
        0x13 -> :sswitch_1c
        0x14 -> :sswitch_1d
        0x32 -> :sswitch_18
        0x33 -> :sswitch_1
        0x34 -> :sswitch_1
        0x35 -> :sswitch_1b
    .end sparse-switch
.end method
