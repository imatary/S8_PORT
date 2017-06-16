.class Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine$7;
.super Ljava/lang/Object;
.source "CameraEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;->doStartPreviewAsync(Z)V
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

    iput-object p1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine$7;->this$0:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    # getter for: Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Starting preview..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "StartPreviewThread"

    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine$7;->this$0:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;

    # getter for: Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;->mPreviewSurfaceState:I
    invoke-static {v1}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;->access$1700(Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;)I

    move-result v1

    if-nez v1, :cond_1

    # getter for: Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "return. TextureView is destroyed."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine$7;->this$0:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;

    # getter for: Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;->mEngineHandler:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine$EngineHandler;
    invoke-static {v1}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;->access$100(Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;)Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine$EngineHandler;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine$7;->this$0:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;

    # getter for: Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;->mEngineHandler:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine$EngineHandler;
    invoke-static {v1}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;->access$100(Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;)Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine$EngineHandler;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine$ENGINE_MESSAGE;->START_PREVIEW_CANCELED:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine$ENGINE_MESSAGE;

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine$EngineHandler;->sendMessage(Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine$ENGINE_MESSAGE;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine$7;->this$0:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;->isCameraErrorHappened()Z

    move-result v1

    if-eqz v1, :cond_3

    # getter for: Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "camera in error state."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine$7;->this$0:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;

    # getter for: Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;->mEngineHandler:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine$EngineHandler;
    invoke-static {v1}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;->access$100(Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;)Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine$EngineHandler;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine$7;->this$0:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;

    # getter for: Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;->mEngineHandler:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine$EngineHandler;
    invoke-static {v1}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;->access$100(Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;)Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine$EngineHandler;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine$ENGINE_MESSAGE;->START_PREVIEW_CANCELED:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine$ENGINE_MESSAGE;

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine$EngineHandler;->sendMessage(Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine$ENGINE_MESSAGE;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    # getter for: Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "start preview fail."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine$7;->this$0:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;

    # getter for: Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;->mProvider:Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;
    invoke-static {v1}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;->access$500(Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;)Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->onErrorOccurred(I)V

    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine$7;->this$0:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;

    # getter for: Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;->mEngineHandler:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine$EngineHandler;
    invoke-static {v1}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;->access$100(Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;)Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine$EngineHandler;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine$7;->this$0:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;

    # getter for: Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;->mEngineHandler:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine$EngineHandler;
    invoke-static {v1}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;->access$100(Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;)Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine$EngineHandler;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine$ENGINE_MESSAGE;->START_PREVIEW_CANCELED:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine$ENGINE_MESSAGE;

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine$EngineHandler;->sendMessage(Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine$ENGINE_MESSAGE;)V

    :cond_2
    :goto_1
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto :goto_0

    :cond_3
    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine$7;->this$0:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;

    # getter for: Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;->mCamera:Lcom/sec/android/seccamera/SecCamera;
    invoke-static {v1}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;->access$200(Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;)Lcom/sec/android/seccamera/SecCamera;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine$7$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine$7$1;-><init>(Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine$7;)V

    invoke-virtual {v1, v2}, Lcom/sec/android/seccamera/SecCamera;->setOneShotPreviewCallback(Lcom/sec/android/seccamera/SecCamera$PreviewCallback;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine$7;->this$0:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;

    # getter for: Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;->mCamera:Lcom/sec/android/seccamera/SecCamera;
    invoke-static {v1}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;->access$200(Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;)Lcom/sec/android/seccamera/SecCamera;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/seccamera/SecCamera;->startPreview()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
