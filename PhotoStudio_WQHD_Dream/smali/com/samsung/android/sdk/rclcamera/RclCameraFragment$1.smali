.class Lcom/samsung/android/sdk/rclcamera/RclCameraFragment$1;
.super Ljava/lang/Object;
.source "RclCameraFragment.java"

# interfaces
.implements Lcom/samsung/android/sdk/rclcamera/interfaces/RclCameraFragmentInterface$OnCameraBridgeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/rclcamera/RclCameraFragment;->onAttach(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sdk/rclcamera/RclCameraFragment;

.field final synthetic val$actualListener:Lcom/samsung/android/sdk/rclcamera/RclCameraFragment$OnCameraListener;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/rclcamera/RclCameraFragment;Lcom/samsung/android/sdk/rclcamera/RclCameraFragment$OnCameraListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/rclcamera/RclCameraFragment$1;->this$0:Lcom/samsung/android/sdk/rclcamera/RclCameraFragment;

    iput-object p2, p0, Lcom/samsung/android/sdk/rclcamera/RclCameraFragment$1;->val$actualListener:Lcom/samsung/android/sdk/rclcamera/RclCameraFragment$OnCameraListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCameraOpened(Landroid/app/Fragment;)V
    .locals 2

    instance-of v0, p1, Lcom/samsung/android/sdk/rclcamera/RclCameraFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/RclCameraFragment$1;->val$actualListener:Lcom/samsung/android/sdk/rclcamera/RclCameraFragment$OnCameraListener;

    check-cast p1, Lcom/samsung/android/sdk/rclcamera/RclCameraFragment;

    invoke-interface {v0, p1}, Lcom/samsung/android/sdk/rclcamera/RclCameraFragment$OnCameraListener;->onCameraOpened(Lcom/samsung/android/sdk/rclcamera/RclCameraFragment;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Internal Error. Invalid fragment"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onCaptureAvailable()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/RclCameraFragment$1;->val$actualListener:Lcom/samsung/android/sdk/rclcamera/RclCameraFragment$OnCameraListener;

    invoke-interface {v0}, Lcom/samsung/android/sdk/rclcamera/RclCameraFragment$OnCameraListener;->onCaptureAvailable()Z

    move-result v0

    return v0
.end method

.method public onError(Landroid/app/Fragment;I)V
    .locals 2

    instance-of v0, p1, Lcom/samsung/android/sdk/rclcamera/RclCameraFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/RclCameraFragment$1;->val$actualListener:Lcom/samsung/android/sdk/rclcamera/RclCameraFragment$OnCameraListener;

    check-cast p1, Lcom/samsung/android/sdk/rclcamera/RclCameraFragment;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/sdk/rclcamera/RclCameraFragment$OnCameraListener;->onError(Lcom/samsung/android/sdk/rclcamera/RclCameraFragment;I)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Internal Error. Invalid fragment"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onGalleryButtonClicked(Landroid/app/Fragment;)V
    .locals 2

    instance-of v0, p1, Lcom/samsung/android/sdk/rclcamera/RclCameraFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/RclCameraFragment$1;->val$actualListener:Lcom/samsung/android/sdk/rclcamera/RclCameraFragment$OnCameraListener;

    check-cast p1, Lcom/samsung/android/sdk/rclcamera/RclCameraFragment;

    invoke-interface {v0, p1}, Lcom/samsung/android/sdk/rclcamera/RclCameraFragment$OnCameraListener;->onGalleryButtonClicked(Lcom/samsung/android/sdk/rclcamera/RclCameraFragment;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Internal Error. Invalid fragment"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onPictureTaken(Landroid/app/Fragment;Landroid/net/Uri;)V
    .locals 2

    instance-of v0, p1, Lcom/samsung/android/sdk/rclcamera/RclCameraFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/RclCameraFragment$1;->val$actualListener:Lcom/samsung/android/sdk/rclcamera/RclCameraFragment$OnCameraListener;

    check-cast p1, Lcom/samsung/android/sdk/rclcamera/RclCameraFragment;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/sdk/rclcamera/RclCameraFragment$OnCameraListener;->onPictureTaken(Lcom/samsung/android/sdk/rclcamera/RclCameraFragment;Landroid/net/Uri;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Internal Error. Invalid fragment"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onRecordAvailable()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/RclCameraFragment$1;->val$actualListener:Lcom/samsung/android/sdk/rclcamera/RclCameraFragment$OnCameraListener;

    invoke-interface {v0}, Lcom/samsung/android/sdk/rclcamera/RclCameraFragment$OnCameraListener;->onRecordAvailable()Z

    move-result v0

    return v0
.end method

.method public onRecordButtonClicked(Landroid/app/Fragment;)V
    .locals 2

    instance-of v0, p1, Lcom/samsung/android/sdk/rclcamera/RclCameraFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/RclCameraFragment$1;->val$actualListener:Lcom/samsung/android/sdk/rclcamera/RclCameraFragment$OnCameraListener;

    check-cast p1, Lcom/samsung/android/sdk/rclcamera/RclCameraFragment;

    invoke-interface {v0, p1}, Lcom/samsung/android/sdk/rclcamera/RclCameraFragment$OnCameraListener;->onRecordButtonClicked(Lcom/samsung/android/sdk/rclcamera/RclCameraFragment;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Internal Error. Invalid fragment"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onRecordingFinished(Landroid/app/Fragment;)V
    .locals 2

    instance-of v0, p1, Lcom/samsung/android/sdk/rclcamera/RclCameraFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/RclCameraFragment$1;->val$actualListener:Lcom/samsung/android/sdk/rclcamera/RclCameraFragment$OnCameraListener;

    check-cast p1, Lcom/samsung/android/sdk/rclcamera/RclCameraFragment;

    invoke-interface {v0, p1}, Lcom/samsung/android/sdk/rclcamera/RclCameraFragment$OnCameraListener;->onRecordingFinished(Lcom/samsung/android/sdk/rclcamera/RclCameraFragment;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Internal Error. Invalid fragment"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onRecordingStarted(Landroid/app/Fragment;)V
    .locals 2

    instance-of v0, p1, Lcom/samsung/android/sdk/rclcamera/RclCameraFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/RclCameraFragment$1;->val$actualListener:Lcom/samsung/android/sdk/rclcamera/RclCameraFragment$OnCameraListener;

    check-cast p1, Lcom/samsung/android/sdk/rclcamera/RclCameraFragment;

    invoke-interface {v0, p1}, Lcom/samsung/android/sdk/rclcamera/RclCameraFragment$OnCameraListener;->onRecordingStarted(Lcom/samsung/android/sdk/rclcamera/RclCameraFragment;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Internal Error. Invalid fragment"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onShutterButtonClicked(Landroid/app/Fragment;)V
    .locals 2

    instance-of v0, p1, Lcom/samsung/android/sdk/rclcamera/RclCameraFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/RclCameraFragment$1;->val$actualListener:Lcom/samsung/android/sdk/rclcamera/RclCameraFragment$OnCameraListener;

    check-cast p1, Lcom/samsung/android/sdk/rclcamera/RclCameraFragment;

    invoke-interface {v0, p1}, Lcom/samsung/android/sdk/rclcamera/RclCameraFragment$OnCameraListener;->onShutterButtonClicked(Lcom/samsung/android/sdk/rclcamera/RclCameraFragment;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Internal Error. Invalid fragment"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onSwitchButtonClicked(Landroid/app/Fragment;)V
    .locals 2

    instance-of v0, p1, Lcom/samsung/android/sdk/rclcamera/RclCameraFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/RclCameraFragment$1;->val$actualListener:Lcom/samsung/android/sdk/rclcamera/RclCameraFragment$OnCameraListener;

    check-cast p1, Lcom/samsung/android/sdk/rclcamera/RclCameraFragment;

    invoke-interface {v0, p1}, Lcom/samsung/android/sdk/rclcamera/RclCameraFragment$OnCameraListener;->onSwitchButtonClicked(Lcom/samsung/android/sdk/rclcamera/RclCameraFragment;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Internal Error. Invalid fragment"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onVideoTaken(Landroid/app/Fragment;Landroid/net/Uri;)V
    .locals 2

    instance-of v0, p1, Lcom/samsung/android/sdk/rclcamera/RclCameraFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/RclCameraFragment$1;->val$actualListener:Lcom/samsung/android/sdk/rclcamera/RclCameraFragment$OnCameraListener;

    check-cast p1, Lcom/samsung/android/sdk/rclcamera/RclCameraFragment;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/sdk/rclcamera/RclCameraFragment$OnCameraListener;->onVideoTaken(Lcom/samsung/android/sdk/rclcamera/RclCameraFragment;Landroid/net/Uri;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Internal Error. Invalid fragment"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
