.class Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/AfView$3;
.super Ljava/lang/Object;
.source "AfView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/AfView;->setTouchAfPosition(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/AfView;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/AfView;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/AfView$3;->this$0:Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/AfView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/AfView$3;->this$0:Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/AfView;

    # getter for: Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/AfView;->mAfBaseView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/AfView;->access$200(Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/AfView;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/AfView$3;->this$0:Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/AfView;

    # getter for: Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/AfView;->mShrinkScaleAnimation:Landroid/view/animation/Animation;
    invoke-static {v1}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/AfView;->access$100(Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/AfView;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/AfView$3;->this$0:Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/AfView;

    # getter for: Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/AfView;->mAfBaseView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/AfView;->access$200(Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/AfView;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/AfView$3;->this$0:Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/AfView;

    # getter for: Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/AfView;->mShrinkScaleAnimation:Landroid/view/animation/Animation;
    invoke-static {v1}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/AfView;->access$100(Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/AfView;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/AfView$3;->this$0:Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/AfView;

    const/4 v1, 0x0

    # setter for: Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/AfView;->mMode:I
    invoke-static {v0, v1}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/AfView;->access$002(Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/AfView;I)I

    return-void
.end method
