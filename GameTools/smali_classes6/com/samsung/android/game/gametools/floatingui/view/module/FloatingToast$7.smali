.class Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast$7;
.super Ljava/lang/Object;
.source "FloatingToast.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast;->initAnims()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast;


# direct methods
.method constructor <init>(Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast$7;->this$0:Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 4

    const-string/jumbo v0, "mTransHideAnim:onAnimationStart"

    invoke-static {v0}, Lcom/sec/game/gamecast/common/logger/TLog;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast$7;->this$0:Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast;

    # getter for: Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast;->access$000(Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast$7;->this$0:Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast;

    const/4 v1, 0x1

    # setter for: Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast;->mIsHiding:Z
    invoke-static {v0, v1}, Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast;->access$902(Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast;Z)Z

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast$7;->this$0:Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast;

    # getter for: Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast;->mDirection:Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast$TOAST_DIRECTION;
    invoke-static {v0}, Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast;->access$1000(Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast;)Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast$TOAST_DIRECTION;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast$TOAST_DIRECTION;->TO_DOWN:Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast$TOAST_DIRECTION;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast$7;->this$0:Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast;

    # getter for: Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast;->mLayout:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast;->access$300(Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast;)Landroid/widget/LinearLayout;

    move-result-object v0

    sget v1, Lcom/samsung/android/game/gametools/floatingui/R$id;->background:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    :cond_0
    return-void
.end method
