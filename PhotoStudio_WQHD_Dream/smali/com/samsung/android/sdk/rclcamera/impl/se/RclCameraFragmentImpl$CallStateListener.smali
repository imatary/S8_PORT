.class Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl$CallStateListener;
.super Landroid/telephony/PhoneStateListener;
.source "RclCameraFragmentImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CallStateListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl$CallStateListener;->this$0:Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;I)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl$CallStateListener;->this$0:Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    invoke-virtual {p0, p2}, Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl$CallStateListener;->semSetSubscriptionId(I)V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 6

    const/4 v5, 0x7

    const/4 v4, 0x1

    const/4 v3, 0x0

    # getter for: Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCallStateChanged : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl$CallStateListener;->this$0:Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;

    # getter for: Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;->access$300(Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/sdk/rclcamera/impl/se/util/ProviderUtil;->isVoiceCallOnGoing(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl$CallStateListener;->this$0:Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;

    # setter for: Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;->mCurrentCallState:I
    invoke-static {v0, v3}, Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;->access$1802(Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;I)I

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl$CallStateListener;->this$0:Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;

    invoke-virtual {v0, v4, v4}, Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;->enableRecordButton(ZZ)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl$CallStateListener;->this$0:Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;

    # getter for: Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;->mCameraEngine:Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;
    invoke-static {v0}, Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;->access$1900(Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;)Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl$CallStateListener;->this$0:Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;

    # getter for: Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;->access$300(Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/sdk/rclcamera/impl/se/util/CallState;->isVTCallOngoing(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {v3}, Lcom/samsung/android/sdk/rclcamera/impl/se/util/CallState;->isCameraEnabledDuringCall(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl$CallStateListener;->this$0:Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;

    # getter for: Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;->mCameraSetting:Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;
    invoke-static {v0}, Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;->access$2000(Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;)Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->getMultiwindowState()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl$CallStateListener;->this$0:Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;

    # getter for: Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;->access$300(Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;)Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/samsung/android/sdk/rclcamera/impl/se/R$string;->__cp__recording_call_multiwindow_msg:I

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl$CallStateListener;->this$0:Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;

    # getter for: Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;->access$300(Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/sdk/rclcamera/impl/se/util/CallState;->isVTCallOngoing(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl$CallStateListener;->this$0:Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;

    # getter for: Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;->mCameraEngine:Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;
    invoke-static {v0}, Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;->access$1900(Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;)Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_2

    # getter for: Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Stop Recording by VT calling"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl$CallStateListener;->this$0:Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;

    # getter for: Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;->mRecordingUI:Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI;
    invoke-static {v0}, Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;->access$1200(Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;)Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI;->doStop(Z)V

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl$CallStateListener;->this$0:Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;

    # getter for: Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;->mCameraSetting:Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;
    invoke-static {v0}, Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;->access$2000(Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;)Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->isLowBatteryStatus()Z

    move-result v0

    if-nez v0, :cond_3

    # getter for: Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "isVTCallOngoing. Camera is busy"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl$CallStateListener;->this$0:Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;

    sget-object v1, Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl$MSG_TYPE;->MESSAGE_CALL:Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl$MSG_TYPE;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;->showErrorMessage(Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl$MSG_TYPE;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl$CallStateListener;->this$0:Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;

    invoke-virtual {v0, v5}, Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;->onErrorOccurred(I)V

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl$CallStateListener;->this$0:Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;

    # getter for: Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;->mCameraEngine:Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;
    invoke-static {v0}, Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;->access$1900(Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;)Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraCommand$COMMAND_TYPE;->STOP_PREVIEW:Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraCommand$COMMAND_TYPE;

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->scheduleCameraCommand(Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraCommand$COMMAND_TYPE;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl$CallStateListener;->this$0:Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;

    # getter for: Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;->mCameraEngine:Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;
    invoke-static {v0}, Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;->access$1900(Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;)Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraCommand$COMMAND_TYPE;->CLOSE_CAMERA:Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraCommand$COMMAND_TYPE;

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->scheduleCameraCommand(Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraCommand$COMMAND_TYPE;[Ljava/lang/Object;)V

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl$CallStateListener;->this$0:Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;

    # setter for: Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;->mCurrentCallState:I
    invoke-static {v0, v4}, Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;->access$1802(Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;I)I

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl$CallStateListener;->this$0:Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;

    # getter for: Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;->access$300(Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl$CallStateListener;->this$0:Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;

    # getter for: Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;->access$300(Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;)Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/samsung/android/sdk/rclcamera/impl/se/R$string;->__cp__recording_call_rinning_msg:I

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    :pswitch_2
    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl$CallStateListener;->this$0:Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;

    const/4 v1, 0x2

    # setter for: Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;->mCurrentCallState:I
    invoke-static {v0, v1}, Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;->access$1802(Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;I)I

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl$CallStateListener;->this$0:Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;

    invoke-virtual {v0, v3, v4}, Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;->enableRecordButton(ZZ)V

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl$CallStateListener;->this$0:Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;

    # getter for: Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;->mCameraEngine:Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;
    invoke-static {v0}, Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;->access$1900(Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;)Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_5

    # getter for: Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Stop Recording by calling"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl$CallStateListener;->this$0:Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;

    # getter for: Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;->mRecordingUI:Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI;
    invoke-static {v0}, Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;->access$1200(Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;)Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI;->doStop(Z)V

    :cond_5
    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl$CallStateListener;->this$0:Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;

    # getter for: Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;->access$300(Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/sdk/rclcamera/impl/se/util/CallState;->isVTCallOngoing(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    # getter for: Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "isVTCallStarted. Camera is busy"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl$CallStateListener;->this$0:Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;

    sget-object v1, Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl$MSG_TYPE;->MESSAGE_CALL:Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl$MSG_TYPE;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;->showErrorMessage(Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl$MSG_TYPE;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl$CallStateListener;->this$0:Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;

    invoke-virtual {v0, v5}, Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;->onErrorOccurred(I)V

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl$CallStateListener;->this$0:Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;

    # getter for: Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;->mCameraEngine:Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;
    invoke-static {v0}, Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;->access$1900(Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;)Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraCommand$COMMAND_TYPE;->STOP_PREVIEW:Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraCommand$COMMAND_TYPE;

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->scheduleCameraCommand(Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraCommand$COMMAND_TYPE;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl$CallStateListener;->this$0:Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;

    # getter for: Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;->mCameraEngine:Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;
    invoke-static {v0}, Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;->access$1900(Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;)Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraCommand$COMMAND_TYPE;->CLOSE_CAMERA:Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraCommand$COMMAND_TYPE;

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->scheduleCameraCommand(Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraCommand$COMMAND_TYPE;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
