.class Lcom/sec/android/app/camera/menu/Review$4;
.super Ljava/lang/Object;
.source "Review.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/menu/Review;->startShowReviewAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/menu/Review;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/menu/Review;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/menu/Review$4;->this$0:Lcom/sec/android/app/camera/menu/Review;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Review$4;->this$0:Lcom/sec/android/app/camera/menu/Review;

    # getter for: Lcom/sec/android/app/camera/menu/Review;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;
    invoke-static {v0}, Lcom/sec/android/app/camera/menu/Review;->access$200(Lcom/sec/android/app/camera/menu/Review;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Review$4;->this$0:Lcom/sec/android/app/camera/menu/Review;

    # getter for: Lcom/sec/android/app/camera/menu/Review;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;
    invoke-static {v0}, Lcom/sec/android/app/camera/menu/Review;->access$200(Lcom/sec/android/app/camera/menu/Review;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Review$4;->this$0:Lcom/sec/android/app/camera/menu/Review;

    # getter for: Lcom/sec/android/app/camera/menu/Review;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;
    invoke-static {v0}, Lcom/sec/android/app/camera/menu/Review;->access$200(Lcom/sec/android/app/camera/menu/Review;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/Review$4;->this$0:Lcom/sec/android/app/camera/menu/Review;

    # getter for: Lcom/sec/android/app/camera/menu/Review;->mReviewTimeOutCallback:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/sec/android/app/camera/menu/Review;->access$400(Lcom/sec/android/app/camera/menu/Review;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const-string v0, "Review"

    const-string v1, "mReviewTimeOutCallback postDelayed"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/Review$4;->this$0:Lcom/sec/android/app/camera/menu/Review;

    # getter for: Lcom/sec/android/app/camera/menu/Review;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;
    invoke-static {v0}, Lcom/sec/android/app/camera/menu/Review;->access$200(Lcom/sec/android/app/camera/menu/Review;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/Review$4;->this$0:Lcom/sec/android/app/camera/menu/Review;

    # getter for: Lcom/sec/android/app/camera/menu/Review;->mReviewTimeOutCallback:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/sec/android/app/camera/menu/Review;->access$400(Lcom/sec/android/app/camera/menu/Review;)Ljava/lang/Runnable;

    move-result-object v1

    # getter for: Lcom/sec/android/app/camera/menu/Review;->REVIEW_DISPLAY_TIMEOUT:I
    invoke-static {}, Lcom/sec/android/app/camera/menu/Review;->access$500()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
