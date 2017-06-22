.class Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl$18;
.super Ljava/lang/Object;
.source "RclCameraFragmentImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->showErrorMessage(Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl$MSG_TYPE;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;

.field final synthetic val$msg:Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl$MSG_TYPE;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl$MSG_TYPE;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl$18;->this$0:Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;

    iput-object p2, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl$18;->val$msg:Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl$MSG_TYPE;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v4, 0x4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl$18;->this$0:Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;

    # getter for: Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mMessageUI:Landroid/view/ViewGroup;
    invoke-static {v1}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->access$1700(Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;)Landroid/view/ViewGroup;

    move-result-object v1

    if-nez v1, :cond_1

    # getter for: Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Message view is null. Unable to show message."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl$18;->this$0:Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;

    # getter for: Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mMessageUI:Landroid/view/ViewGroup;
    invoke-static {v1}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->access$1700(Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;)Landroid/view/ViewGroup;

    move-result-object v1

    sget v2, Lcom/samsung/android/sdk/rclcamera/impl/sdl/R$id;->error_status_text:I

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl$18;->val$msg:Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl$MSG_TYPE;

    sget-object v2, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl$MSG_TYPE;->MESSAGE_NONE:Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl$MSG_TYPE;

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl$18;->this$0:Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;

    invoke-virtual {v1, v3}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->showBlackOverlayWithAnimation(Z)V

    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl$18;->this$0:Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;

    # getter for: Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mExpansionHelper:Lcom/samsung/android/sdk/rcl/RclExpansionHelper;
    invoke-static {v1}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->access$1000(Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;)Lcom/samsung/android/sdk/rcl/RclExpansionHelper;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl$18;->this$0:Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;

    # getter for: Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mExpansionHelper:Lcom/samsung/android/sdk/rcl/RclExpansionHelper;
    invoke-static {v1}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->access$1000(Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;)Lcom/samsung/android/sdk/rcl/RclExpansionHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->unlock()V

    :cond_2
    sget-object v1, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl$21;->$SwitchMap$com$samsung$android$sdk$rclcamera$impl$sdl$RclCameraFragmentImpl$MSG_TYPE:[I

    iget-object v2, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl$18;->val$msg:Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl$MSG_TYPE;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl$MSG_TYPE;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl$18;->this$0:Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;

    # getter for: Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mTextureView:Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/widget/AutoFitTextureView;
    invoke-static {v1}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->access$1800(Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;)Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/widget/AutoFitTextureView;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl$18;->this$0:Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;

    # getter for: Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mTextureView:Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/widget/AutoFitTextureView;
    invoke-static {v1}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->access$1800(Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;)Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/widget/AutoFitTextureView;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/widget/AutoFitTextureView;->setVisibility(I)V

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl$18;->this$0:Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;

    # getter for: Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mMessageUI:Landroid/view/ViewGroup;
    invoke-static {v1}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->access$1700(Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;)Landroid/view/ViewGroup;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl$18;->this$0:Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;

    # getter for: Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mMessageUI:Landroid/view/ViewGroup;
    invoke-static {v1}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->access$1700(Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;)Landroid/view/ViewGroup;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0

    :pswitch_0
    sget v1, Lcom/samsung/android/sdk/rclcamera/impl/sdl/R$string;->__cp__cannot_start_camera_msg_during_video_call:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :goto_1
    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl$18;->this$0:Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;

    # getter for: Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mTextureView:Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/widget/AutoFitTextureView;
    invoke-static {v1}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->access$1800(Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;)Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/widget/AutoFitTextureView;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl$18;->this$0:Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;

    # getter for: Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mTextureView:Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/widget/AutoFitTextureView;
    invoke-static {v1}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->access$1800(Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;)Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/widget/AutoFitTextureView;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/widget/AutoFitTextureView;->setVisibility(I)V

    :cond_4
    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl$18;->this$0:Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;

    # getter for: Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mCameraUI:Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/CameraMainUI;
    invoke-static {v1}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->access$1400(Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;)Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/CameraMainUI;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl$18;->this$0:Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;

    # getter for: Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mCameraUI:Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/CameraMainUI;
    invoke-static {v1}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->access$1400(Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;)Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/CameraMainUI;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/CameraMainUI;->setVisibility(I)V

    :cond_5
    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl$18;->this$0:Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;

    # getter for: Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mRecordingUI:Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/CameraRecordingUI;
    invoke-static {v1}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->access$1300(Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;)Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/CameraRecordingUI;

    move-result-object v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl$18;->this$0:Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;

    # getter for: Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mRecordingUI:Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/CameraRecordingUI;
    invoke-static {v1}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->access$1300(Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;)Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/CameraRecordingUI;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/CameraRecordingUI;->setVisibility(I)V

    :cond_6
    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl$18;->this$0:Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;

    # getter for: Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mMessageUI:Landroid/view/ViewGroup;
    invoke-static {v1}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->access$1700(Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;)Landroid/view/ViewGroup;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl$18;->this$0:Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;

    # getter for: Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mMessageUI:Landroid/view/ViewGroup;
    invoke-static {v1}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->access$1700(Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_0

    :pswitch_1
    sget v1, Lcom/samsung/android/sdk/rclcamera/impl/sdl/R$string;->__cp__camera_unable_to_use:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    :pswitch_2
    sget v1, Lcom/samsung/android/sdk/rclcamera/impl/sdl/R$string;->__cp__camera_security_enter:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
