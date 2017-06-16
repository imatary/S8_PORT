.class Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$3$1;
.super Ljava/lang/Object;
.source "CameraEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$3;->onError(ILcom/samsung/android/camera/core/SemCamera;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$3;

.field final synthetic val$error:I


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$3;I)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$3$1;->this$1:Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$3;

    iput p2, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$3$1;->val$error:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$3$1;->this$1:Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$3;

    iget-object v1, v1, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$3;->this$0:Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;

    sget-object v2, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$CAMERA_STATE;->RECORDING:Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$CAMERA_STATE;

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->isCurrentState(Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$CAMERA_STATE;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_0

    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$3$1;->this$1:Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$3;

    iget-object v1, v1, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$3;->this$0:Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->doCancelVideoRecording()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    :try_start_2
    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$3$1;->this$1:Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$3;

    iget-object v1, v1, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$3;->this$0:Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;

    # getter for: Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mProvider:Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;
    invoke-static {v1}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->access$500(Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;)Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;->getRecordingUI()Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI;->doCancel()V

    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$3$1;->this$1:Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$3;

    iget-object v1, v1, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$3;->this$0:Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;

    # getter for: Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mProvider:Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;
    invoke-static {v1}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->access$500(Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;)Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;->getRecordingUI()Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI;->hide()V

    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$3$1;->this$1:Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$3;

    iget-object v1, v1, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$3;->this$0:Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;

    # getter for: Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mProvider:Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;
    invoke-static {v1}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->access$500(Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;)Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;->getCameraUI()Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraMainUI;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraMainUI;->show()V

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$3$1;->this$1:Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$3;

    iget-object v1, v1, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$3;->this$0:Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;

    # getter for: Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mCommandQueue:Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CommandQueue;
    invoke-static {v1}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->access$1100(Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;)Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CommandQueue;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CommandQueue;->clearRequests()V

    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$3$1;->this$1:Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$3;

    iget-object v1, v1, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$3;->this$0:Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;

    sget-object v2, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$CAMERA_STATE;->IDLE:Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$CAMERA_STATE;

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->setCameraState(Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$CAMERA_STATE;)V

    iget v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$3$1;->val$error:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$3$1;->this$1:Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$3;

    iget-object v1, v1, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$3;->this$0:Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->doCloseCamera()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$3$1;->this$1:Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$3;

    iget-object v1, v1, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$3;->this$0:Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;

    sget-object v2, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$CAMERA_STATE;->IDLE:Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$CAMERA_STATE;

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->setCameraState(Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$CAMERA_STATE;)V

    :goto_1
    return-void

    :catch_0
    move-exception v0

    :try_start_3
    # getter for: Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Ignore. Camera already in error state."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catch_1
    move-exception v0

    :try_start_4
    # getter for: Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Ignore. Camera already in error state."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$3$1;->this$1:Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$3;

    iget-object v1, v1, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$3;->this$0:Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;

    sget-object v2, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$CAMERA_STATE;->IDLE:Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$CAMERA_STATE;

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->setCameraState(Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$CAMERA_STATE;)V

    goto :goto_1

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$3$1;->this$1:Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$3;

    iget-object v2, v2, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$3;->this$0:Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;

    sget-object v3, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$CAMERA_STATE;->IDLE:Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$CAMERA_STATE;

    invoke-virtual {v2, v3}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->setCameraState(Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$CAMERA_STATE;)V

    throw v1
.end method
