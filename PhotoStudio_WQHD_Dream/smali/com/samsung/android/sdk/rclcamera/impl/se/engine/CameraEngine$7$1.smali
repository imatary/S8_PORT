.class Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$7$1;
.super Ljava/lang/Object;
.source "CameraEngine.java"

# interfaces
.implements Lcom/samsung/android/camera/core/SemCamera$PreviewCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$7;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$7;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$7;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$7$1;->this$1:Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreviewFrame([BLcom/samsung/android/camera/core/SemCamera;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$7$1;->this$1:Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$7;

    iget-object v0, v0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$7;->this$0:Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;

    # getter for: Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mEngineHandler:Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$EngineHandler;
    invoke-static {v0}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->access$100(Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;)Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$EngineHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$7$1;->this$1:Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$7;

    iget-object v0, v0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$7;->this$0:Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;

    # getter for: Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mEngineHandler:Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$EngineHandler;
    invoke-static {v0}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->access$100(Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;)Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$EngineHandler;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$ENGINE_MESSAGE;->START_PREVIEW_COMPLETED:Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$ENGINE_MESSAGE;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$EngineHandler;->sendMessage(Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$ENGINE_MESSAGE;)V

    :cond_0
    # getter for: Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Preview completed..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
