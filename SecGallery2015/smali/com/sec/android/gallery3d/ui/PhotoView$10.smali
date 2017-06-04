.class Lcom/sec/android/gallery3d/ui/PhotoView$10;
.super Lcom/sec/android/gallery3d/ui/PositionController$SimpleAnimationListener;
.source "PhotoView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/gallery3d/ui/PhotoView;->setAnimationListenerForSlide()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/gallery3d/ui/PhotoView;


# direct methods
.method constructor <init>(Lcom/sec/android/gallery3d/ui/PhotoView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/ui/PhotoView$10;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-direct {p0}, Lcom/sec/android/gallery3d/ui/PositionController$SimpleAnimationListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd()V
    .locals 5

    const/4 v4, 0x3

    const/4 v3, 0x0

    # getter for: Lcom/sec/android/gallery3d/ui/PhotoView;->CARD_EFFECT:Z
    invoke-static {}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$4400()Z

    move-result v0

    if-eqz v0, :cond_0

    # setter for: Lcom/sec/android/gallery3d/ui/PhotoView;->CARD_EFFECT:Z
    invoke-static {v3}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$4402(Z)Z

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView$10;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    const/4 v1, 0x1

    # invokes: Lcom/sec/android/gallery3d/ui/PhotoView;->setSwipingEnabled(Z)V
    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$8100(Lcom/sec/android/gallery3d/ui/PhotoView;Z)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView$10;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    # getter for: Lcom/sec/android/gallery3d/ui/PhotoView;->mListener:Lcom/sec/android/gallery3d/ui/PhotoView$Listener;
    invoke-static {v0}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$1700(Lcom/sec/android/gallery3d/ui/PhotoView;)Lcom/sec/android/gallery3d/ui/PhotoView$Listener;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/gallery3d/ui/PhotoView$Listener;->onDeleteImage()V

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView$10;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    # getter for: Lcom/sec/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/sec/android/gallery3d/ui/PositionController;
    invoke-static {v0}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$2600(Lcom/sec/android/gallery3d/ui/PhotoView;)Lcom/sec/android/gallery3d/ui/PositionController;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/PhotoView$10;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    # getter for: Lcom/sec/android/gallery3d/ui/PhotoView;->mAnimationInterface:Lcom/sec/samsung/gallery/decoder/AnimationInterface;
    invoke-static {v1}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$5200(Lcom/sec/android/gallery3d/ui/PhotoView;)Lcom/sec/samsung/gallery/decoder/AnimationInterface;

    move-result-object v1

    const/16 v2, 0xfa

    invoke-virtual {v1, v4, v2}, Lcom/sec/samsung/gallery/decoder/AnimationInterface;->getAnimationDuration(II)I

    move-result v1

    invoke-virtual {v0, v4, v1}, Lcom/sec/android/gallery3d/ui/PositionController;->setAnimationDuration(II)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView$10;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    # getter for: Lcom/sec/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/sec/android/gallery3d/ui/PositionController;
    invoke-static {v0}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$2600(Lcom/sec/android/gallery3d/ui/PhotoView;)Lcom/sec/android/gallery3d/ui/PositionController;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/ui/PositionController;->setAnimationListener(Lcom/sec/android/gallery3d/ui/PositionController$SimpleAnimationListener;)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView$10;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    # getter for: Lcom/sec/android/gallery3d/ui/PhotoView;->mModel:Lcom/sec/android/gallery3d/ui/PhotoView$Model;
    invoke-static {v0}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$1300(Lcom/sec/android/gallery3d/ui/PhotoView;)Lcom/sec/android/gallery3d/ui/PhotoView$Model;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->completeSlideAnimation()V

    iput-boolean v3, p0, Lcom/sec/android/gallery3d/ui/PhotoView$10;->isRunning:Z

    return-void
.end method

.method public onAnimationStart()V
    .locals 3

    const/4 v1, 0x0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView$10;->isRunning:Z

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView$10;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    # getter for: Lcom/sec/android/gallery3d/ui/PhotoView;->mPictures:Lcom/sec/android/gallery3d/util/RangeArray;
    invoke-static {v0}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$4500(Lcom/sec/android/gallery3d/ui/PhotoView;)Lcom/sec/android/gallery3d/util/RangeArray;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/ui/PhotoView$Picture;

    invoke-interface {v0}, Lcom/sec/android/gallery3d/ui/PhotoView$Picture;->isCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView$10;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    # getter for: Lcom/sec/android/gallery3d/ui/PhotoView;->mListener:Lcom/sec/android/gallery3d/ui/PhotoView$Listener;
    invoke-static {v0}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$1700(Lcom/sec/android/gallery3d/ui/PhotoView;)Lcom/sec/android/gallery3d/ui/PhotoView$Listener;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/gallery3d/ui/PhotoView$Listener;->onStartTransitionEffect()V

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView$10;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    # getter for: Lcom/sec/android/gallery3d/ui/PhotoView;->mListener:Lcom/sec/android/gallery3d/ui/PhotoView$Listener;
    invoke-static {v0}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$1700(Lcom/sec/android/gallery3d/ui/PhotoView;)Lcom/sec/android/gallery3d/ui/PhotoView$Listener;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/gallery3d/ui/PhotoView$Listener;->onStartCameraVIEffect()V

    :cond_0
    # getter for: Lcom/sec/android/gallery3d/ui/PhotoView;->CARD_EFFECT:Z
    invoke-static {}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$4400()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView$10;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    # invokes: Lcom/sec/android/gallery3d/ui/PhotoView;->setSwipingEnabled(Z)V
    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$8100(Lcom/sec/android/gallery3d/ui/PhotoView;Z)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView$10;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    # getter for: Lcom/sec/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/sec/android/gallery3d/ui/PositionController;
    invoke-static {v0}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$2600(Lcom/sec/android/gallery3d/ui/PhotoView;)Lcom/sec/android/gallery3d/ui/PositionController;

    move-result-object v0

    const/4 v1, 0x3

    const/16 v2, 0x2bc

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/ui/PositionController;->setAnimationDuration(II)V

    :cond_1
    return-void
.end method

.method public onAnimationStop()V
    .locals 5

    const/4 v4, 0x3

    const/4 v3, 0x0

    # getter for: Lcom/sec/android/gallery3d/ui/PhotoView;->CARD_EFFECT:Z
    invoke-static {}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$4400()Z

    move-result v0

    if-eqz v0, :cond_0

    # setter for: Lcom/sec/android/gallery3d/ui/PhotoView;->CARD_EFFECT:Z
    invoke-static {v3}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$4402(Z)Z

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView$10;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    const/4 v1, 0x1

    # invokes: Lcom/sec/android/gallery3d/ui/PhotoView;->setSwipingEnabled(Z)V
    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$8100(Lcom/sec/android/gallery3d/ui/PhotoView;Z)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView$10;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    # getter for: Lcom/sec/android/gallery3d/ui/PhotoView;->mListener:Lcom/sec/android/gallery3d/ui/PhotoView$Listener;
    invoke-static {v0}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$1700(Lcom/sec/android/gallery3d/ui/PhotoView;)Lcom/sec/android/gallery3d/ui/PhotoView$Listener;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/gallery3d/ui/PhotoView$Listener;->onDeleteImage()V

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView$10;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    # getter for: Lcom/sec/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/sec/android/gallery3d/ui/PositionController;
    invoke-static {v0}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$2600(Lcom/sec/android/gallery3d/ui/PhotoView;)Lcom/sec/android/gallery3d/ui/PositionController;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/PhotoView$10;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    # getter for: Lcom/sec/android/gallery3d/ui/PhotoView;->mAnimationInterface:Lcom/sec/samsung/gallery/decoder/AnimationInterface;
    invoke-static {v1}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$5200(Lcom/sec/android/gallery3d/ui/PhotoView;)Lcom/sec/samsung/gallery/decoder/AnimationInterface;

    move-result-object v1

    const/16 v2, 0xfa

    invoke-virtual {v1, v4, v2}, Lcom/sec/samsung/gallery/decoder/AnimationInterface;->getAnimationDuration(II)I

    move-result v1

    invoke-virtual {v0, v4, v1}, Lcom/sec/android/gallery3d/ui/PositionController;->setAnimationDuration(II)V

    :cond_0
    iput-boolean v3, p0, Lcom/sec/android/gallery3d/ui/PhotoView$10;->isRunning:Z

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView$10;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    # getter for: Lcom/sec/android/gallery3d/ui/PhotoView;->mModel:Lcom/sec/android/gallery3d/ui/PhotoView$Model;
    invoke-static {v0}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$1300(Lcom/sec/android/gallery3d/ui/PhotoView;)Lcom/sec/android/gallery3d/ui/PhotoView$Model;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->completeSlideAnimation()V

    return-void
.end method
