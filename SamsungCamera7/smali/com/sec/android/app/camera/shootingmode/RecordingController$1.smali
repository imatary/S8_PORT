.class Lcom/sec/android/app/camera/shootingmode/RecordingController$1;
.super Landroid/content/BroadcastReceiver;
.source "RecordingController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/shootingmode/RecordingController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/shootingmode/RecordingController;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/shootingmode/RecordingController;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController$1;->this$0:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RecordingController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onReceive: action = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController$1;->this$0:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    # getter for: Lcom/sec/android/app/camera/shootingmode/RecordingController;->mRecordingControllerEventListener:Lcom/sec/android/app/camera/shootingmode/RecordingController$EventListener;
    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->access$000(Lcom/sec/android/app/camera/shootingmode/RecordingController;)Lcom/sec/android/app/camera/shootingmode/RecordingController$EventListener;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v1, "RecordingController"

    const-string v2, "onReceive return - RecordingController is unregistered"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_2
    :goto_1
    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-static {p1}, Lcom/sec/android/app/camera/util/CallState;->isVTCallOngoing(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController$1;->this$0:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    # getter for: Lcom/sec/android/app/camera/shootingmode/RecordingController;->mRecordingControllerEventListener:Lcom/sec/android/app/camera/shootingmode/RecordingController$EventListener;
    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->access$000(Lcom/sec/android/app/camera/shootingmode/RecordingController;)Lcom/sec/android/app/camera/shootingmode/RecordingController$EventListener;

    move-result-object v1

    invoke-interface {v1, v3}, Lcom/sec/android/app/camera/shootingmode/RecordingController$EventListener;->onStopRecordingRequested(Z)V

    goto :goto_0

    :sswitch_0
    const-string v4, "camera.action.AUDIOFOCUS_LOSS"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v1, v2

    goto :goto_1

    :sswitch_1
    const-string v4, "camera.action.LOW_BATTERY"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v1, v3

    goto :goto_1

    :sswitch_2
    const-string v4, "camera.action.OVERHEAT_TEMPERATURE"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v1, 0x2

    goto :goto_1

    :sswitch_3
    const-string v4, "camera.action.COOLDOWN_TEMPERATURE"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v1, 0x3

    goto :goto_1

    :sswitch_4
    const-string v4, "camera.action.SHUTDOWN"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v1, 0x4

    goto :goto_1

    :sswitch_5
    const-string v4, "camera.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v1, 0x5

    goto :goto_1

    :sswitch_6
    const-string v4, "camera.action.HEADSET_PLUG"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v1, 0x6

    goto :goto_1

    :sswitch_7
    const-string v4, "camera.action.CALL_STATE_IDLE"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v1, 0x7

    goto :goto_1

    :sswitch_8
    const-string v4, "camera.action.CALL_STATE_OFFHOOK"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/16 v1, 0x8

    goto :goto_1

    :sswitch_9
    const-string v4, "camera.action.ACTION_VIDEO_CAPABILITY"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/16 v1, 0x9

    goto :goto_1

    :sswitch_a
    const-string v4, "camera.action.ACTION_WIFI_DISPLAY_NOT_ALLOWED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/16 v1, 0xa

    goto/16 :goto_1

    :sswitch_b
    const-string v4, "camera.action.ACTION_ERROR_FINISH_CAMERA"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/16 v1, 0xb

    goto/16 :goto_1

    :pswitch_1
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController$1;->this$0:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    # getter for: Lcom/sec/android/app/camera/shootingmode/RecordingController;->mRecordingControllerEventListener:Lcom/sec/android/app/camera/shootingmode/RecordingController$EventListener;
    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->access$000(Lcom/sec/android/app/camera/shootingmode/RecordingController;)Lcom/sec/android/app/camera/shootingmode/RecordingController$EventListener;

    move-result-object v1

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/shootingmode/RecordingController$EventListener;->onStopRecordingRequested(Z)V

    goto/16 :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController$1;->this$0:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    # getter for: Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;
    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->access$100(Lcom/sec/android/app/camera/shootingmode/RecordingController;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isTemperatureHighToRecord()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController$1;->this$0:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    # setter for: Lcom/sec/android/app/camera/shootingmode/RecordingController;->mIsRecordingRestrictedByOverHeat:Z
    invoke-static {v1, v3}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->access$202(Lcom/sec/android/app/camera/shootingmode/RecordingController;Z)Z

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController$1;->this$0:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    # invokes: Lcom/sec/android/app/camera/shootingmode/RecordingController;->restrictRecording(Z)V
    invoke-static {v1, v3}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->access$300(Lcom/sec/android/app/camera/shootingmode/RecordingController;Z)V

    goto/16 :goto_0

    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController$1;->this$0:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    # getter for: Lcom/sec/android/app/camera/shootingmode/RecordingController;->mIsRecordingRestrictedByOverHeat:Z
    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->access$200(Lcom/sec/android/app/camera/shootingmode/RecordingController;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController$1;->this$0:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    # setter for: Lcom/sec/android/app/camera/shootingmode/RecordingController;->mIsRecordingRestrictedByOverHeat:Z
    invoke-static {v1, v2}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->access$202(Lcom/sec/android/app/camera/shootingmode/RecordingController;Z)Z

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController$1;->this$0:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    # invokes: Lcom/sec/android/app/camera/shootingmode/RecordingController;->restrictRecording(Z)V
    invoke-static {v1, v2}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->access$300(Lcom/sec/android/app/camera/shootingmode/RecordingController;Z)V

    goto/16 :goto_0

    :pswitch_3
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController$1;->this$0:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    # getter for: Lcom/sec/android/app/camera/shootingmode/RecordingController;->mIsRecordingRestrictedByOverHeat:Z
    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->access$200(Lcom/sec/android/app/camera/shootingmode/RecordingController;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController$1;->this$0:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    # setter for: Lcom/sec/android/app/camera/shootingmode/RecordingController;->mIsRecordingRestrictedByOverHeat:Z
    invoke-static {v1, v2}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->access$202(Lcom/sec/android/app/camera/shootingmode/RecordingController;Z)Z

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController$1;->this$0:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    # invokes: Lcom/sec/android/app/camera/shootingmode/RecordingController;->restrictRecording(Z)V
    invoke-static {v1, v2}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->access$300(Lcom/sec/android/app/camera/shootingmode/RecordingController;Z)V

    goto/16 :goto_0

    :pswitch_4
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController$1;->this$0:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    # getter for: Lcom/sec/android/app/camera/shootingmode/RecordingController;->mRecordingControllerEventListener:Lcom/sec/android/app/camera/shootingmode/RecordingController$EventListener;
    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->access$000(Lcom/sec/android/app/camera/shootingmode/RecordingController;)Lcom/sec/android/app/camera/shootingmode/RecordingController$EventListener;

    move-result-object v1

    invoke-interface {v1, v3}, Lcom/sec/android/app/camera/shootingmode/RecordingController$EventListener;->onStopRecordingRequested(Z)V

    goto/16 :goto_0

    :pswitch_5
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController$1;->this$0:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->IDLE:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController$1;->this$0:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    # getter for: Lcom/sec/android/app/camera/shootingmode/RecordingController;->mRecordingControllerEventListener:Lcom/sec/android/app/camera/shootingmode/RecordingController$EventListener;
    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->access$000(Lcom/sec/android/app/camera/shootingmode/RecordingController;)Lcom/sec/android/app/camera/shootingmode/RecordingController$EventListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/shootingmode/RecordingController$EventListener;->onCancelRecordingRequested()V

    goto/16 :goto_0

    :pswitch_6
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController$1;->this$0:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v1

    sget-object v3, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->IDLE:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-eq v1, v3, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController$1;->this$0:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    # getter for: Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;
    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->access$100(Lcom/sec/android/app/camera/shootingmode/RecordingController;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCamcorderAudioRecording()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController$1;->this$0:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    # getter for: Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;
    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->access$400(Lcom/sec/android/app/camera/shootingmode/RecordingController;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v1

    const v3, 0x7f090200

    invoke-static {v1, v3, v2}, Lcom/sec/android/app/camera/widget/CameraToast;->makeText(Lcom/sec/android/app/camera/interfaces/CameraContext;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :pswitch_7
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController$1;->this$0:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    # setter for: Lcom/sec/android/app/camera/shootingmode/RecordingController;->mIsRecordingRestrictedByCallState:Z
    invoke-static {v1, v2}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->access$502(Lcom/sec/android/app/camera/shootingmode/RecordingController;Z)Z

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController$1;->this$0:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    # invokes: Lcom/sec/android/app/camera/shootingmode/RecordingController;->restrictRecording(Z)V
    invoke-static {v1, v2}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->access$300(Lcom/sec/android/app/camera/shootingmode/RecordingController;Z)V

    goto/16 :goto_0

    :pswitch_8
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController$1;->this$0:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    # setter for: Lcom/sec/android/app/camera/shootingmode/RecordingController;->mIsRecordingRestrictedByCallState:Z
    invoke-static {v1, v3}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->access$502(Lcom/sec/android/app/camera/shootingmode/RecordingController;Z)Z

    invoke-static {p1}, Lcom/sec/android/app/camera/util/CallState;->isVTCallOngoing(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController$1;->this$0:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    # invokes: Lcom/sec/android/app/camera/shootingmode/RecordingController;->restrictRecording(ZZ)V
    invoke-static {v1, v3, v3}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->access$600(Lcom/sec/android/app/camera/shootingmode/RecordingController;ZZ)V

    goto/16 :goto_0

    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController$1;->this$0:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    # invokes: Lcom/sec/android/app/camera/shootingmode/RecordingController;->restrictRecording(Z)V
    invoke-static {v1, v3}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->access$300(Lcom/sec/android/app/camera/shootingmode/RecordingController;Z)V

    goto/16 :goto_0

    :pswitch_9
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController$1;->this$0:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    # setter for: Lcom/sec/android/app/camera/shootingmode/RecordingController;->mIsRecordingFailedByVideoCapability:Z
    invoke-static {v1, v3}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->access$702(Lcom/sec/android/app/camera/shootingmode/RecordingController;Z)Z

    goto/16 :goto_0

    :pswitch_a
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController$1;->this$0:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    # setter for: Lcom/sec/android/app/camera/shootingmode/RecordingController;->mIsRecordingFailedByWifiDisplayNotAllowed:Z
    invoke-static {v1, v3}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->access$802(Lcom/sec/android/app/camera/shootingmode/RecordingController;Z)Z

    goto/16 :goto_0

    :pswitch_b
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController$1;->this$0:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "error_code"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    # invokes: Lcom/sec/android/app/camera/shootingmode/RecordingController;->handleRecordingError(I)V
    invoke-static {v1, v2}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->access$900(Lcom/sec/android/app/camera/shootingmode/RecordingController;I)V

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x3cedee6d -> :sswitch_1
        -0x37e00a46 -> :sswitch_6
        -0x32528438 -> :sswitch_2
        -0x322c7c4f -> :sswitch_0
        -0x215f7beb -> :sswitch_5
        -0x19ce236c -> :sswitch_7
        -0x1591c011 -> :sswitch_3
        0x83a40e0 -> :sswitch_b
        0x210cbe45 -> :sswitch_4
        0x44f10232 -> :sswitch_8
        0x7617f296 -> :sswitch_9
        0x7fbc9ccf -> :sswitch_a
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method
