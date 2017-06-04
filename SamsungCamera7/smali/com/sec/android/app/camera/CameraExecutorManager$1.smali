.class Lcom/sec/android/app/camera/CameraExecutorManager$1;
.super Landroid/content/BroadcastReceiver;
.source "CameraExecutorManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/CameraExecutorManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/CameraExecutorManager;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/CameraExecutorManager;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/CameraExecutorManager$1;->this$0:Lcom/sec/android/app/camera/CameraExecutorManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    const/4 v1, 0x1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const/4 v0, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    :cond_1
    :goto_1
    return-void

    :sswitch_0
    const-string v3, "camera.action.AUDIOFOCUS_LOSS"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string v3, "camera.action.AUDIOFOCUS_GAIN"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraExecutorManager$1;->this$0:Lcom/sec/android/app/camera/CameraExecutorManager;

    # getter for: Lcom/sec/android/app/camera/CameraExecutorManager;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/sec/android/app/camera/CameraExecutorManager;->access$000(Lcom/sec/android/app/camera/CameraExecutorManager;)Landroid/media/AudioManager;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager$1;->this$0:Lcom/sec/android/app/camera/CameraExecutorManager;

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraExecutorManager$1;->this$0:Lcom/sec/android/app/camera/CameraExecutorManager;

    # getter for: Lcom/sec/android/app/camera/CameraExecutorManager;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/android/app/camera/CameraExecutorManager;->access$100(Lcom/sec/android/app/camera/CameraExecutorManager;)Landroid/content/Context;

    move-result-object v0

    const-string v3, "audio"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    # setter for: Lcom/sec/android/app/camera/CameraExecutorManager;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v2, v0}, Lcom/sec/android/app/camera/CameraExecutorManager;->access$002(Lcom/sec/android/app/camera/CameraExecutorManager;Landroid/media/AudioManager;)Landroid/media/AudioManager;

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraExecutorManager$1;->this$0:Lcom/sec/android/app/camera/CameraExecutorManager;

    # getter for: Lcom/sec/android/app/camera/CameraExecutorManager;->mIsCameraActivity:Z
    invoke-static {v0}, Lcom/sec/android/app/camera/CameraExecutorManager;->access$200(Lcom/sec/android/app/camera/CameraExecutorManager;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraExecutorManager$1;->this$0:Lcom/sec/android/app/camera/CameraExecutorManager;

    # getter for: Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {v0}, Lcom/sec/android/app/camera/CameraExecutorManager;->access$300(Lcom/sec/android/app/camera/CameraExecutorManager;)Lcom/sec/android/app/camera/Camera;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraExecutorManager$1;->this$0:Lcom/sec/android/app/camera/CameraExecutorManager;

    # getter for: Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {v0}, Lcom/sec/android/app/camera/CameraExecutorManager;->access$300(Lcom/sec/android/app/camera/CameraExecutorManager;)Lcom/sec/android/app/camera/Camera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraVoiceCommand()I

    move-result v0

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraExecutorManager$1;->this$0:Lcom/sec/android/app/camera/CameraExecutorManager;

    # getter for: Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {v0}, Lcom/sec/android/app/camera/CameraExecutorManager;->access$300(Lcom/sec/android/app/camera/CameraExecutorManager;)Lcom/sec/android/app/camera/Camera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->stopVoiceRecognizer()V

    goto :goto_1

    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraExecutorManager$1;->this$0:Lcom/sec/android/app/camera/CameraExecutorManager;

    # getter for: Lcom/sec/android/app/camera/CameraExecutorManager;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/sec/android/app/camera/CameraExecutorManager;->access$000(Lcom/sec/android/app/camera/CameraExecutorManager;)Landroid/media/AudioManager;

    move-result-object v0

    if-nez v0, :cond_3

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraExecutorManager$1;->this$0:Lcom/sec/android/app/camera/CameraExecutorManager;

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraExecutorManager$1;->this$0:Lcom/sec/android/app/camera/CameraExecutorManager;

    # getter for: Lcom/sec/android/app/camera/CameraExecutorManager;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/android/app/camera/CameraExecutorManager;->access$100(Lcom/sec/android/app/camera/CameraExecutorManager;)Landroid/content/Context;

    move-result-object v0

    const-string v3, "audio"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    # setter for: Lcom/sec/android/app/camera/CameraExecutorManager;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v2, v0}, Lcom/sec/android/app/camera/CameraExecutorManager;->access$002(Lcom/sec/android/app/camera/CameraExecutorManager;Landroid/media/AudioManager;)Landroid/media/AudioManager;

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraExecutorManager$1;->this$0:Lcom/sec/android/app/camera/CameraExecutorManager;

    # getter for: Lcom/sec/android/app/camera/CameraExecutorManager;->mIsCameraActivity:Z
    invoke-static {v0}, Lcom/sec/android/app/camera/CameraExecutorManager;->access$200(Lcom/sec/android/app/camera/CameraExecutorManager;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraExecutorManager$1;->this$0:Lcom/sec/android/app/camera/CameraExecutorManager;

    # getter for: Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {v0}, Lcom/sec/android/app/camera/CameraExecutorManager;->access$300(Lcom/sec/android/app/camera/CameraExecutorManager;)Lcom/sec/android/app/camera/Camera;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraExecutorManager$1;->this$0:Lcom/sec/android/app/camera/CameraExecutorManager;

    # getter for: Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {v0}, Lcom/sec/android/app/camera/CameraExecutorManager;->access$300(Lcom/sec/android/app/camera/CameraExecutorManager;)Lcom/sec/android/app/camera/Camera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraVoiceCommand()I

    move-result v0

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraExecutorManager$1;->this$0:Lcom/sec/android/app/camera/CameraExecutorManager;

    # getter for: Lcom/sec/android/app/camera/CameraExecutorManager;->mCameraContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {v0}, Lcom/sec/android/app/camera/CameraExecutorManager;->access$300(Lcom/sec/android/app/camera/CameraExecutorManager;)Lcom/sec/android/app/camera/Camera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->startVoiceRecognizer()V

    goto/16 :goto_1

    :sswitch_data_0
    .sparse-switch
        -0x322ef7f3 -> :sswitch_1
        -0x322c7c4f -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
