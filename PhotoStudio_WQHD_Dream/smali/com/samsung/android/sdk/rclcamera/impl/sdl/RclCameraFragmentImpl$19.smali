.class Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl$19;
.super Ljava/lang/Object;
.source "RclCameraFragmentImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->startShutterAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl$19;->this$0:Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl$19;->this$0:Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;

    # getter for: Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mPreviewBlackOverlay:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->access$1600(Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;)Landroid/widget/ImageView;

    move-result-object v1

    if-eqz v1, :cond_0

    const/16 v1, 0x64

    invoke-static {v1}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/util/AnimationUtil;->getAlphaOffAnimation(I)Landroid/view/animation/Animation;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    new-instance v1, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl$19$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl$19$1;-><init>(Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl$19;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl$19;->this$0:Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;

    # getter for: Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mPreviewBlackOverlay:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->access$1600(Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl$19;->this$0:Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;

    # getter for: Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mPreviewBlackOverlay:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->access$1600(Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;)Landroid/widget/ImageView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    return-void
.end method
