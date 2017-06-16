.class Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI$1;
.super Landroid/os/Handler;
.source "CameraRecordingUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI$1;->this$0:Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    const/4 v2, 0x2

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI$1;->this$0:Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI;

    # invokes: Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI;->stepSecond()V
    invoke-static {v0}, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI;->access$000(Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI$1;->this$0:Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI;

    # getter for: Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI;->mRecordingProgressHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI;->access$100(Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI$1;->this$0:Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI;

    # invokes: Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI;->updateRecIndicator()V
    invoke-static {v0}, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI;->access$200(Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI;)V

    goto :goto_0
.end method
