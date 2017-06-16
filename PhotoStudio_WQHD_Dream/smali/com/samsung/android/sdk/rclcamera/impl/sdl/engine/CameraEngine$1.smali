.class Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine$1;
.super Ljava/lang/Object;
.source "CameraEngine.java"

# interfaces
.implements Lcom/sec/android/seccamera/SecCamera$AutoFocusCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;
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

    iput-object p1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine$1;->this$0:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAutoFocus(ILcom/sec/android/seccamera/SecCamera;)V
    .locals 3

    # getter for: Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AutoFocusCallback.onAutoFocus : msg["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine$1;->this$0:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;

    # getter for: Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;->mEngineHandler:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine$EngineHandler;
    invoke-static {v0}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;->access$100(Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;)Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine$EngineHandler;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine$ENGINE_MESSAGE;->RESET_AUTO_FOCUS_COMPLETE:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine$ENGINE_MESSAGE;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine$EngineHandler;->hasMessages(Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine$ENGINE_MESSAGE;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine$1;->this$0:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;

    # getter for: Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;->mEngineHandler:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine$EngineHandler;
    invoke-static {v0}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;->access$100(Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;)Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine$EngineHandler;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine$ENGINE_MESSAGE;->RESET_AUTO_FOCUS_COMPLETE:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine$ENGINE_MESSAGE;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine$EngineHandler;->removeMessages(Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine$ENGINE_MESSAGE;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine$1;->this$0:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;

    # getter for: Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;->mEngineHandler:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine$EngineHandler;
    invoke-static {v0}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;->access$100(Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;)Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine$EngineHandler;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine$ENGINE_MESSAGE;->RESET_AUTO_FOCUS_COMPLETE:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine$ENGINE_MESSAGE;

    const/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine$EngineHandler;->sendEmptyMessageDelayed(Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine$ENGINE_MESSAGE;I)V

    return-void
.end method
