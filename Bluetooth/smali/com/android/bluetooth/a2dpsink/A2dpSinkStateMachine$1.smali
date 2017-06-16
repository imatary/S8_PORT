.class Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$1;
.super Ljava/lang/Object;
.source "A2dpSinkStateMachine.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioPortUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;)V
    .locals 0

    iput-object p1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$1;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioPatchListUpdate([Landroid/media/AudioPatch;)V
    .locals 4

    iget-object v1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$1;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    const-string/jumbo v2, "onAudioPatchListUpdate()"

    invoke-static {v1, v2}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-wrap10(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$1;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "PATCH["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p1, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-wrap10(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onAudioPortListUpdate([Landroid/media/AudioPort;)V
    .locals 8

    const/16 v7, 0x8

    const/4 v6, 0x0

    iget-object v4, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$1;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    const-string/jumbo v5, "onAudioPortListUpdate()"

    invoke-static {v4, v5}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-wrap10(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$1;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    invoke-static {v4, v6}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-set14(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;Landroid/media/AudioDevicePort;)Landroid/media/AudioDevicePort;

    iget-object v4, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$1;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    invoke-static {v4, v6}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-set10(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;Landroid/media/AudioDevicePort;)Landroid/media/AudioDevicePort;

    iget-object v4, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$1;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    invoke-static {v4, v6}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-set9(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;Landroid/media/AudioDevicePort;)Landroid/media/AudioDevicePort;

    iget-object v4, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$1;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    invoke-static {v4, v6}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-set4(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;Landroid/media/AudioDevicePort;)Landroid/media/AudioDevicePort;

    sget-object v2, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$OUTDEVICE_STATE;->INIT:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$OUTDEVICE_STATE;

    const/4 v1, 0x0

    :goto_0
    array-length v4, p1

    if-ge v1, v4, :cond_5

    aget-object v3, p1, v1

    instance-of v4, v3, Landroid/media/AudioDevicePort;

    if-eqz v4, :cond_4

    move-object v0, v3

    check-cast v0, Landroid/media/AudioDevicePort;

    iget-object v4, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$1;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "AudioDevicePort["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "]: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-wrap10(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/media/AudioDevicePort;->type()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    iget-object v4, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$1;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    const-string/jumbo v5, "DEVICE_OUT_SPEAKER"

    invoke-static {v4, v5}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-wrap13(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$1;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    invoke-static {v4, v0}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-set14(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;Landroid/media/AudioDevicePort;)Landroid/media/AudioDevicePort;

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/media/AudioDevicePort;->type()I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_2

    iget-object v4, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$1;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    const-string/jumbo v5, "DEVICE_OUT_WIRED_HEADSET"

    invoke-static {v4, v5}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-wrap13(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$1;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    invoke-static {v4, v0}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-set10(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;Landroid/media/AudioDevicePort;)Landroid/media/AudioDevicePort;

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Landroid/media/AudioDevicePort;->type()I

    move-result v4

    if-ne v4, v7, :cond_3

    iget-object v4, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$1;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    const-string/jumbo v5, "DEVICE_OUT_WIRED_HEADPHONE"

    invoke-static {v4, v5}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-wrap13(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$1;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    invoke-static {v4, v0}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-set9(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;Landroid/media/AudioDevicePort;)Landroid/media/AudioDevicePort;

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Landroid/media/AudioDevicePort;->type()I

    move-result v4

    const/high16 v5, -0x7ffe0000

    if-ne v4, v5, :cond_0

    iget-object v4, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$1;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    const-string/jumbo v5, "DEVICE_IN_BLUETOOTH_A2DP"

    invoke-static {v4, v5}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-wrap13(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$1;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    invoke-static {v4, v0}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-set4(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;Landroid/media/AudioDevicePort;)Landroid/media/AudioDevicePort;

    goto :goto_1

    :cond_4
    iget-object v4, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$1;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "PORT["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "]: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-wrap10(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    iget-object v4, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$1;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    invoke-static {v4}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-get3(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;)Landroid/media/AudioDevicePort;

    move-result-object v4

    if-nez v4, :cond_6

    iget-object v4, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$1;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    const-string/jumbo v5, "mA2dpSinkPort is null"

    invoke-static {v4, v5}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-wrap10(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;Ljava/lang/String;)V

    return-void

    :cond_6
    iget-object v4, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$1;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    invoke-static {v4}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-get16(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;)Landroid/media/AudioDevicePort;

    move-result-object v4

    if-nez v4, :cond_7

    iget-object v4, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$1;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    invoke-static {v4}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-get15(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;)Landroid/media/AudioDevicePort;

    move-result-object v4

    if-eqz v4, :cond_9

    :cond_7
    sget-object v2, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$OUTDEVICE_STATE;->WIERED_HEADSET:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$OUTDEVICE_STATE;

    :goto_2
    iget-object v4, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$1;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    invoke-static {v4}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-get19(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;)Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$OUTDEVICE_STATE;

    move-result-object v4

    sget-object v5, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$OUTDEVICE_STATE;->INIT:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$OUTDEVICE_STATE;

    if-ne v4, v5, :cond_b

    sget-object v4, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$OUTDEVICE_STATE;->INIT:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$OUTDEVICE_STATE;

    if-eq v2, v4, :cond_b

    iget-object v4, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$1;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    invoke-static {v4}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-get14(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;)Landroid/os/Handler;

    move-result-object v4

    iget-object v5, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$1;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    invoke-static {v5}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-get14(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_8
    :goto_3
    iget-object v4, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$1;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    invoke-static {v4, v2}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-set12(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$OUTDEVICE_STATE;)Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$OUTDEVICE_STATE;

    return-void

    :cond_9
    iget-object v4, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$1;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    invoke-static {v4}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-get21(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;)Landroid/media/AudioDevicePort;

    move-result-object v4

    if-eqz v4, :cond_a

    sget-object v2, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$OUTDEVICE_STATE;->SPEAKER:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$OUTDEVICE_STATE;

    goto :goto_2

    :cond_a
    iget-object v4, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$1;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    const-string/jumbo v5, "NO DEVICE_OUT"

    invoke-static {v4, v5}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-wrap10(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;Ljava/lang/String;)V

    goto :goto_2

    :cond_b
    iget-object v4, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$1;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    invoke-static {v4}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-get19(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;)Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$OUTDEVICE_STATE;

    move-result-object v4

    if-eq v4, v2, :cond_8

    iget-object v4, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$1;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    invoke-static {v4}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-get14(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;)Landroid/os/Handler;

    move-result-object v4

    iget-object v5, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$1;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    invoke-static {v5}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-get14(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;)Landroid/os/Handler;

    move-result-object v5

    const/4 v6, 0x7

    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_3
.end method

.method public onServiceDied()V
    .locals 2

    iget-object v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$1;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    const-string/jumbo v1, "onServiceDied()"

    invoke-static {v0, v1}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-wrap10(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;Ljava/lang/String;)V

    return-void
.end method
