.class Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine$6;
.super Ljava/lang/Object;
.source "CameraEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;->doPrepareRecordingAsync()V
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

    iput-object p1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine$6;->this$0:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v2, 0x0

    # getter for: Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Preparing record..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine$6;->this$0:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;

    # getter for: Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;->mProvider:Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;
    invoke-static {v0}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;->access$500(Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;)Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->requestAudioFocus()V

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine$6;->this$0:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;

    # getter for: Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;->mCamera:Lcom/sec/android/seccamera/SecCamera;
    invoke-static {v0}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;->access$200(Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;)Lcom/sec/android/seccamera/SecCamera;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sec/android/seccamera/SecCamera;->setShutterSoundEnable(Z)V

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine$6;->this$0:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;

    # getter for: Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;->mProvider:Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;
    invoke-static {v0}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;->access$500(Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;)Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine$6;->this$0:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;

    # getter for: Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;->mProvider:Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;
    invoke-static {v1}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;->access$500(Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;)Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;

    invoke-virtual {v0, v2, v2}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->playCameraSound(II)V

    # getter for: Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PLAY RECORDING SOUND START"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine$6;->this$0:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;

    # invokes: Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;->initializeRecord()V
    invoke-static {v0}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;->access$1600(Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine$6;->this$0:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;

    # getter for: Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;->mEngineHandler:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine$EngineHandler;
    invoke-static {v0}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;->access$100(Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;)Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine$EngineHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine$6;->this$0:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;

    # getter for: Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;->mEngineHandler:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine$EngineHandler;
    invoke-static {v0}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;->access$100(Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;)Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine$EngineHandler;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine$ENGINE_MESSAGE;->PREPARE_RECORDING_COMPLETE:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine$ENGINE_MESSAGE;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine$EngineHandler;->sendMessage(Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine$ENGINE_MESSAGE;)V

    :cond_0
    # getter for: Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Preparing record completed..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
