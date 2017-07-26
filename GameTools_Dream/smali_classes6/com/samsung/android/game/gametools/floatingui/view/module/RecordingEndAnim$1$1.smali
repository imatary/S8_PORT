.class Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingEndAnim$1$1;
.super Ljava/lang/Object;
.source "RecordingEndAnim.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingEndAnim$1;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingEndAnim$1;


# direct methods
.method constructor <init>(Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingEndAnim$1;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingEndAnim$1$1;->this$1:Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingEndAnim$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingEndAnim$1$1;->this$1:Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingEndAnim$1;

    iget-object v0, v0, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingEndAnim$1;->this$0:Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingEndAnim;

    invoke-static {v0}, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingEndAnim;->access$300(Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingEndAnim;)Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingEndAnim$AnimListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingEndAnim$1$1;->this$1:Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingEndAnim$1;

    iget-object v0, v0, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingEndAnim$1;->this$0:Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingEndAnim;

    invoke-static {v0}, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingEndAnim;->access$300(Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingEndAnim;)Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingEndAnim$AnimListener;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingEndAnim$AnimListener;->onAnimChanged(I)Z

    :cond_0
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    const-string/jumbo v0, "RecordingEndAnim"

    const-string/jumbo v1, "Check animation ended"

    invoke-static {v0, v1}, Lcom/sec/game/gamecast/common/logger/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingEndAnim$1$1;->this$1:Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingEndAnim$1;

    iget-object v0, v0, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingEndAnim$1;->this$0:Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingEndAnim;

    invoke-static {v0}, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingEndAnim;->access$400(Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingEndAnim;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingEndAnim$1$1$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingEndAnim$1$1$1;-><init>(Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingEndAnim$1$1;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
