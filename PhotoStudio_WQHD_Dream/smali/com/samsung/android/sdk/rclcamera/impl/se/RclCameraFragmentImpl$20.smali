.class Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl$20;
.super Ljava/lang/Object;
.source "RclCameraFragmentImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;->handleRecordingStop(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl$20;->this$0:Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl$20;->this$0:Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;

    # getter for: Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;->mRecordingUI:Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI;
    invoke-static {v0}, Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;->access$1200(Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;)Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI;->hide()V

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl$20;->this$0:Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;

    # getter for: Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;->mCameraUI:Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraMainUI;
    invoke-static {v0}, Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;->access$1300(Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;)Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraMainUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraMainUI;->show()V

    return-void
.end method
