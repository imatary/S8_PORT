.class Lcom/samsung/android/sdk/rclcamera/impl/se/CameraBroadcastReceiver$1;
.super Landroid/content/BroadcastReceiver;
.source "CameraBroadcastReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/rclcamera/impl/se/CameraBroadcastReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sdk/rclcamera/impl/se/CameraBroadcastReceiver;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/rclcamera/impl/se/CameraBroadcastReceiver;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/CameraBroadcastReceiver$1;->this$0:Lcom/samsung/android/sdk/rclcamera/impl/se/CameraBroadcastReceiver;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    # getter for: Lcom/samsung/android/sdk/rclcamera/impl/se/CameraBroadcastReceiver;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/sdk/rclcamera/impl/se/CameraBroadcastReceiver;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onReceive ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/CameraBroadcastReceiver$1;->this$0:Lcom/samsung/android/sdk/rclcamera/impl/se/CameraBroadcastReceiver;

    # getter for: Lcom/samsung/android/sdk/rclcamera/impl/se/CameraBroadcastReceiver;->mProvider:Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;
    invoke-static {v2}, Lcom/samsung/android/sdk/rclcamera/impl/se/CameraBroadcastReceiver;->access$100(Lcom/samsung/android/sdk/rclcamera/impl/se/CameraBroadcastReceiver;)Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;->handleBatteryChanged(Landroid/content/Intent;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v2, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "microphone"

    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "state"

    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/CameraBroadcastReceiver$1;->this$0:Lcom/samsung/android/sdk/rclcamera/impl/se/CameraBroadcastReceiver;

    # getter for: Lcom/samsung/android/sdk/rclcamera/impl/se/CameraBroadcastReceiver;->mProvider:Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;
    invoke-static {v2}, Lcom/samsung/android/sdk/rclcamera/impl/se/CameraBroadcastReceiver;->access$100(Lcom/samsung/android/sdk/rclcamera/impl/se/CameraBroadcastReceiver;)Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;

    move-result-object v5

    if-ne v1, v3, :cond_2

    move v2, v3

    :goto_1
    invoke-virtual {v5, v2}, Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;->setMicrophonePlugged(Z)V

    if-ne v1, v3, :cond_0

    # getter for: Lcom/samsung/android/sdk/rclcamera/impl/se/CameraBroadcastReceiver;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/sdk/rclcamera/impl/se/CameraBroadcastReceiver;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Headset with microphone is plugged"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/CameraBroadcastReceiver$1;->this$0:Lcom/samsung/android/sdk/rclcamera/impl/se/CameraBroadcastReceiver;

    # getter for: Lcom/samsung/android/sdk/rclcamera/impl/se/CameraBroadcastReceiver;->mProvider:Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;
    invoke-static {v2}, Lcom/samsung/android/sdk/rclcamera/impl/se/CameraBroadcastReceiver;->access$100(Lcom/samsung/android/sdk/rclcamera/impl/se/CameraBroadcastReceiver;)Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;->getEngine()Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->isRecording()Z

    move-result v2

    if-eqz v2, :cond_0

    # getter for: Lcom/samsung/android/sdk/rclcamera/impl/se/CameraBroadcastReceiver;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/sdk/rclcamera/impl/se/CameraBroadcastReceiver;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Headset with microphone is plugged during recording"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/CameraBroadcastReceiver$1;->this$0:Lcom/samsung/android/sdk/rclcamera/impl/se/CameraBroadcastReceiver;

    # getter for: Lcom/samsung/android/sdk/rclcamera/impl/se/CameraBroadcastReceiver;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/samsung/android/sdk/rclcamera/impl/se/CameraBroadcastReceiver;->access$200(Lcom/samsung/android/sdk/rclcamera/impl/se/CameraBroadcastReceiver;)Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/samsung/android/sdk/rclcamera/impl/se/R$string;->__cp__recording_using_earphone_mic:I

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_2
    move v2, v4

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/CameraBroadcastReceiver$1;->this$0:Lcom/samsung/android/sdk/rclcamera/impl/se/CameraBroadcastReceiver;

    # getter for: Lcom/samsung/android/sdk/rclcamera/impl/se/CameraBroadcastReceiver;->mProvider:Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;
    invoke-static {v2}, Lcom/samsung/android/sdk/rclcamera/impl/se/CameraBroadcastReceiver;->access$100(Lcom/samsung/android/sdk/rclcamera/impl/se/CameraBroadcastReceiver;)Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;->setMicrophonePlugged(Z)V

    goto :goto_0
.end method
