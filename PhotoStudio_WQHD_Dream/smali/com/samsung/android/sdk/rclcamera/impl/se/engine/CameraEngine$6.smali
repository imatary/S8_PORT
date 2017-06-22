.class Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$6;
.super Ljava/lang/Object;
.source "CameraEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->doPrepareRecordingAsync()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$6;->this$0:Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v2, 0x0

    # getter for: Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Preparing record..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$6;->this$0:Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;

    # getter for: Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mProvider:Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;
    invoke-static {v0}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->access$500(Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;)Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;->requestAudioFocus()V

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$6;->this$0:Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;

    # getter for: Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mCamera:Lcom/samsung/android/camera/core/SemCamera;
    invoke-static {v0}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->access$200(Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;)Lcom/samsung/android/camera/core/SemCamera;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/samsung/android/camera/core/SemCamera;->setShutterSoundMode(I)V

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$6;->this$0:Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;

    # getter for: Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mProvider:Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;
    invoke-static {v0}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->access$500(Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;)Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$6;->this$0:Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;

    # getter for: Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mProvider:Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;
    invoke-static {v1}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->access$500(Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;)Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;

    invoke-virtual {v0, v2, v2}, Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;->playCameraSound(II)V

    # getter for: Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PLAY RECORDING SOUND START"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$6;->this$0:Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;

    # invokes: Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->initializeRecord()V
    invoke-static {v0}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->access$1600(Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$6;->this$0:Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;

    # getter for: Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mEngineHandler:Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$EngineHandler;
    invoke-static {v0}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->access$100(Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;)Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$EngineHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$6;->this$0:Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;

    # getter for: Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mEngineHandler:Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$EngineHandler;
    invoke-static {v0}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->access$100(Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;)Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$EngineHandler;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$ENGINE_MESSAGE;->PREPARE_RECORDING_COMPLETE:Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$ENGINE_MESSAGE;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$EngineHandler;->sendMessage(Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$ENGINE_MESSAGE;)V

    :cond_0
    # getter for: Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Preparing record completed..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
