.class Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine$8;
.super Ljava/lang/Object;
.source "CameraEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;->doStartVideoRecordingAsync()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine$8;->this$0:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine$8;->this$0:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;

    # getter for: Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;->mMediaRecorder:Lcom/sec/android/secmediarecorder/SecMediaRecorder;
    invoke-static {v1}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;->access$1800(Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;)Lcom/sec/android/secmediarecorder/SecMediaRecorder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/secmediarecorder/SecMediaRecorder;->start()V

    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine$8;->this$0:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;

    const/4 v2, 0x1

    # setter for: Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;->mIsCameraLocked:Z
    invoke-static {v1, v2}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;->access$1902(Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;Z)Z

    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine$8;->this$0:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;

    sget-object v2, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine$CAMERA_STATE;->RECORDING:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine$CAMERA_STATE;

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;->setCameraState(Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine$CAMERA_STATE;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine$8;->this$0:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;

    # getter for: Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;->mProvider:Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;
    invoke-static {v1}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;->access$500(Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;)Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->notifyRecordingStarted()V

    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine$8;->this$0:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;

    # getter for: Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;->mEngineHandler:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine$EngineHandler;
    invoke-static {v1}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;->access$100(Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;)Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine$EngineHandler;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine$8;->this$0:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;

    # getter for: Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;->mEngineHandler:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine$EngineHandler;
    invoke-static {v1}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;->access$100(Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;)Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine$EngineHandler;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine$ENGINE_MESSAGE;->START_RECORDING_COMPLETE:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine$ENGINE_MESSAGE;

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine$EngineHandler;->sendMessage(Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine$ENGINE_MESSAGE;)V

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    # getter for: Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Recording start fail."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine$8;->this$0:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;

    # invokes: Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;->releaseMediaRecorder()V
    invoke-static {v1}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;->access$2000(Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine$8;->this$0:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;

    # invokes: Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;->cleanupRecordingFile()V
    invoke-static {v1}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;->access$2100(Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    :try_start_3
    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine$8;->this$0:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;

    # getter for: Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;->mProvider:Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;
    invoke-static {v1}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;->access$500(Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;)Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->onErrorOccurred(I)V

    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine$8;->this$0:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;

    # getter for: Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;->mProvider:Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;
    invoke-static {v1}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;->access$500(Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;)Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/CameraRecordingUI$RECORDING_COMMAND;->RECORDING_CANCEL:Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/CameraRecordingUI$RECORDING_COMMAND;

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->handleRecordingCommand(Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/CameraRecordingUI$RECORDING_COMMAND;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine$8;->this$0:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;

    # getter for: Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;->mCommandQueue:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CommandQueue;
    invoke-static {v1}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;->access$1100(Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;)Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CommandQueue;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CommandQueue;->completeCommand()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine$8;->this$0:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;

    # getter for: Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;->mProvider:Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;
    invoke-static {v1}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;->access$500(Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;)Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->notifyRecordingStarted()V

    goto :goto_0

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine$8;->this$0:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;

    # getter for: Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;->mProvider:Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;
    invoke-static {v2}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;->access$500(Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;)Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->notifyRecordingStarted()V

    throw v1

    :catch_1
    move-exception v1

    goto :goto_1
.end method
