.class Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine$EngineHandler;
.super Landroid/os/Handler;
.source "CameraEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EngineHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine$EngineHandler;->this$0:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    const/4 v5, 0x0

    invoke-static {}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine$ENGINE_MESSAGE;->values()[Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine$ENGINE_MESSAGE;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    aget-object v0, v1, v2

    # getter for: Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    const/4 v4, 0x2

    aget-object v3, v3, v4

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": msg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine$ENGINE_MESSAGE;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine$12;->$SwitchMap$com$samsung$android$sdk$rclcamera$impl$sdl$engine$CameraEngine$ENGINE_MESSAGE:[I

    invoke-virtual {v0}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine$ENGINE_MESSAGE;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    # getter for: Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown message for engine : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine$EngineHandler;->this$0:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;->getCameraState()Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine$CAMERA_STATE;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine$CAMERA_STATE;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Unknown message for engine."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_0
    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine$EngineHandler;->this$0:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;

    sget-object v2, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine$CAMERA_STATE;->PREVIEW_STARTING:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine$CAMERA_STATE;

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;->isCurrentState(Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine$CAMERA_STATE;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine$EngineHandler;->this$0:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;

    sget-object v2, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine$CAMERA_STATE;->IDLE:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine$CAMERA_STATE;

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;->isCurrentState(Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine$CAMERA_STATE;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine$EngineHandler;->this$0:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;

    sget-object v2, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine$CAMERA_STATE;->INITIALIZED:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine$CAMERA_STATE;

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;->setCameraState(Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine$CAMERA_STATE;)V

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine$EngineHandler;->this$0:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;

    # getter for: Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;->mCommandQueue:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CommandQueue;
    invoke-static {v1}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;->access$1100(Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;)Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CommandQueue;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CommandQueue;->completeCommand()V

    :cond_1
    :goto_0
    return-void

    :pswitch_1
    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine$EngineHandler;->this$0:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;

    # getter for: Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;->mNeedHideBlackRectVI:Z
    invoke-static {v1}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;->access$2200(Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine$EngineHandler;->this$0:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;

    # getter for: Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;->mProvider:Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;
    invoke-static {v1}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;->access$500(Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;)Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->showBlackOverlayWithAnimation(Z)V

    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine$EngineHandler;->this$0:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;

    # getter for: Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;->mProvider:Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;
    invoke-static {v1}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;->access$500(Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;)Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->waitForAspectVI()V

    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine$EngineHandler;->this$0:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;

    # setter for: Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;->mNeedHideBlackRectVI:Z
    invoke-static {v1, v5}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;->access$2202(Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;Z)Z

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine$EngineHandler;->this$0:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;

    sget-object v2, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine$CAMERA_STATE;->PREVIEW_STARTING:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine$CAMERA_STATE;

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;->isCurrentState(Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine$CAMERA_STATE;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine$EngineHandler;->this$0:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;

    sget-object v2, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine$CAMERA_STATE;->PREVIEWING:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine$CAMERA_STATE;

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;->setCameraState(Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine$CAMERA_STATE;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine$EngineHandler;->this$0:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;

    # getter for: Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;->mCommandQueue:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CommandQueue;
    invoke-static {v1}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;->access$1100(Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;)Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CommandQueue;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CommandQueue;->completeCommand()V

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine$EngineHandler;->this$0:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;

    sget-object v2, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine$CAMERA_STATE;->PREVIEWING:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine$CAMERA_STATE;

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;->isCurrentState(Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine$CAMERA_STATE;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine$EngineHandler;->this$0:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;

    # getter for: Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;->mCommandQueue:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CommandQueue;
    invoke-static {v1}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;->access$1100(Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;)Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CommandQueue;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CommandQueue;->completeCommand()V

    goto :goto_0

    :pswitch_3
    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine$EngineHandler;->this$0:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;

    sget-object v2, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine$CAMERA_STATE;->RECORDING:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine$CAMERA_STATE;

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;->isCurrentState(Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine$CAMERA_STATE;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine$EngineHandler;->this$0:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;

    # getter for: Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;->mCommandQueue:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CommandQueue;
    invoke-static {v1}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;->access$1100(Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;)Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CommandQueue;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CommandQueue;->completeCommand()V

    goto :goto_0

    :pswitch_4
    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine$EngineHandler;->this$0:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;

    sget-object v2, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine$CAMERA_STATE;->CAPTURING:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine$CAMERA_STATE;

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;->isCurrentState(Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine$CAMERA_STATE;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine$EngineHandler;->this$0:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;

    sget-object v2, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine$CAMERA_STATE;->INITIALIZED:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine$CAMERA_STATE;

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;->setCameraState(Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine$CAMERA_STATE;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine$EngineHandler;->this$0:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;

    # getter for: Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;->mCommandQueue:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CommandQueue;
    invoke-static {v1}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;->access$1100(Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;)Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CommandQueue;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CommandQueue;->completeCommand()V

    goto :goto_0

    :pswitch_5
    # getter for: Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Change to CAF from AutoFocus"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine$EngineHandler;->this$0:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;->isEngineStarted()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine$EngineHandler;->this$0:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;->isCameraErrorHappened()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine$EngineHandler;->this$0:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;

    # getter for: Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;->mCameraParameter:Lcom/sec/android/seccamera/SecCamera$Parameters;
    invoke-static {v1}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;->access$2300(Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;)Lcom/sec/android/seccamera/SecCamera$Parameters;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setFocusAreas(Ljava/util/List;)V

    # getter for: Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Cancel AutoFocus before setting CAF"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine$EngineHandler;->this$0:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;

    # getter for: Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;->mCamera:Lcom/sec/android/seccamera/SecCamera;
    invoke-static {v1}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;->access$200(Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;)Lcom/sec/android/seccamera/SecCamera;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/seccamera/SecCamera;->cancelAutoFocus()V

    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine$EngineHandler;->this$0:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;->isRecording()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine$EngineHandler;->this$0:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;

    const-string v2, "continuous-video"

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;->isFocusAvailable(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine$EngineHandler;->this$0:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;

    const-string v2, "camera_focus_key"

    const-string v3, "continuous-video"

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;->doChangeParameter(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine$EngineHandler;->this$0:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;

    iget-object v2, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine$EngineHandler;->this$0:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;

    # getter for: Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;->mCameraParameter:Lcom/sec/android/seccamera/SecCamera$Parameters;
    invoke-static {v2}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;->access$2300(Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;)Lcom/sec/android/seccamera/SecCamera$Parameters;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;->setParameters(Lcom/sec/android/seccamera/SecCamera$Parameters;)V

    goto/16 :goto_0

    :cond_4
    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine$EngineHandler;->this$0:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;

    const-string v2, "continuous-picture"

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;->isFocusAvailable(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine$EngineHandler;->this$0:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;

    const-string v2, "camera_focus_key"

    const-string v3, "continuous-picture"

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;->doChangeParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public hasMessages(Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine$ENGINE_MESSAGE;)Z
    .locals 1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine$ENGINE_MESSAGE;->ordinal()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine$EngineHandler;->hasMessages(I)Z

    move-result v0

    return v0
.end method

.method public removeMessages(Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine$ENGINE_MESSAGE;)V
    .locals 1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine$ENGINE_MESSAGE;->ordinal()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine$EngineHandler;->removeMessages(I)V

    return-void
.end method

.method public sendEmptyMessageDelayed(Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine$ENGINE_MESSAGE;I)V
    .locals 4

    invoke-virtual {p1}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine$ENGINE_MESSAGE;->ordinal()I

    move-result v0

    int-to-long v2, p2

    invoke-virtual {p0, v0, v2, v3}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine$EngineHandler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public sendMessage(Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine$ENGINE_MESSAGE;)V
    .locals 1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine$ENGINE_MESSAGE;->ordinal()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine$EngineHandler;->sendEmptyMessage(I)Z

    return-void
.end method
