.class Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$4;
.super Landroid/view/OrientationEventListener;
.source "CameraEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$4;->this$0:Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;

    invoke-direct {p0, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 2

    sget-object v0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$CAMERA_STATE;->IDLE:Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$CAMERA_STATE;

    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$4;->this$0:Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->getCameraState()Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$CAMERA_STATE;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$4;->this$0:Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;

    # getter for: Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mProvider:Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;
    invoke-static {v0}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->access$500(Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;)Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;->checkRotation(Z)V

    :cond_0
    return-void
.end method
