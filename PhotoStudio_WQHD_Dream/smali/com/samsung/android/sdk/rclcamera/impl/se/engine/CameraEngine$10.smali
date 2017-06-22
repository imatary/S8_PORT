.class Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$10;
.super Ljava/lang/Object;
.source "CameraEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->doSwitchCamera(I)V
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

    iput-object p1, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$10;->this$0:Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine$10;->this$0:Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;

    # getter for: Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->mProvider:Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;
    invoke-static {v0}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->access$500(Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;)Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;->updateUIforCameraChange()V

    return-void
.end method
