.class Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$7$1$1;
.super Ljava/lang/Object;
.source "RecordingController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$7$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$7$1;


# direct methods
.method constructor <init>(Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$7$1;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$7$1$1;->this$2:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$7$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/high16 v3, 0x3f800000    # 1.0f

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$7$1$1;->this$2:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$7$1;

    iget-object v1, v1, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$7$1;->this$1:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$7;

    iget-object v1, v1, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$7;->this$0:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;

    # getter for: Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mRecCameraBlackView:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->access$1500(Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setScaleX(F)V

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$7$1$1;->this$2:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$7$1;

    iget-object v1, v1, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$7$1;->this$1:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$7;

    iget-object v1, v1, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$7;->this$0:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;

    # getter for: Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mRecCameraBlackView:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->access$1500(Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setScaleY(F)V

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$7$1$1;->this$2:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$7$1;

    iget-object v1, v1, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$7$1;->this$1:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$7;

    iget-object v1, v1, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$7;->this$0:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;

    # getter for: Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mRecCameraBlackView:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->access$1500(Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;)Landroid/widget/ImageView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$7$1$1;->this$2:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$7$1;

    iget-object v1, v1, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$7$1;->this$1:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$7;

    iget-object v1, v1, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$7;->this$0:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;

    # getter for: Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mRecCameraBlackView:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->access$1500(Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$7$1$1;->this$2:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$7$1;

    iget-object v1, v1, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$7$1;->this$1:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$7;

    iget-object v1, v1, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$7;->this$0:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;

    # getter for: Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->vpAnimatorList:Ljava/util/List;
    invoke-static {v1}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->access$1400(Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v2, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$7$1$1$2;

    invoke-direct {v2, p0}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$7$1$1$2;-><init>(Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$7$1$1;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->withStartAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$7$1$1$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$7$1$1$1;-><init>(Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$7$1$1;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method
