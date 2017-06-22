.class Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl$17;
.super Ljava/lang/Object;
.source "RclCameraFragmentImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->showBlackOverlayWithAnimation(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;

.field final synthetic val$show:Z


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;Z)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl$17;->this$0:Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;

    iput-boolean p2, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl$17;->val$show:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-boolean v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl$17;->val$show:Z

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/util/AnimationUtil;->getAlphaOnAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl$17$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl$17$1;-><init>(Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl$17;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl$17;->this$0:Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;

    # getter for: Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mPreviewBlackOverlay:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->access$1600(Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl$17;->this$0:Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;

    # getter for: Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mPreviewBlackOverlay:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->access$1600(Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;)Landroid/widget/ImageView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/util/AnimationUtil;->getAlphaOffAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl$17$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl$17$2;-><init>(Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl$17;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl$17;->this$0:Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;

    # getter for: Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->mPreviewBlackOverlay:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->access$1600(Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method
