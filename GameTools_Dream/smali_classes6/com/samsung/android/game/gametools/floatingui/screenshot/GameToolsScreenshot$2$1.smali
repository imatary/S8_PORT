.class Lcom/samsung/android/game/gametools/floatingui/screenshot/GameToolsScreenshot$2$1;
.super Ljava/lang/Object;
.source "GameToolsScreenshot.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/game/gametools/floatingui/screenshot/GameToolsScreenshot$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/game/gametools/floatingui/screenshot/GameToolsScreenshot$2;


# direct methods
.method constructor <init>(Lcom/samsung/android/game/gametools/floatingui/screenshot/GameToolsScreenshot$2;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/game/gametools/floatingui/screenshot/GameToolsScreenshot$2$1;->this$1:Lcom/samsung/android/game/gametools/floatingui/screenshot/GameToolsScreenshot$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/screenshot/GameToolsScreenshot$2$1;->this$1:Lcom/samsung/android/game/gametools/floatingui/screenshot/GameToolsScreenshot$2;

    iget-object v0, v0, Lcom/samsung/android/game/gametools/floatingui/screenshot/GameToolsScreenshot$2;->val$captureImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x85

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/screenshot/GameToolsScreenshot$2$1;->this$1:Lcom/samsung/android/game/gametools/floatingui/screenshot/GameToolsScreenshot$2;

    iget-object v1, v1, Lcom/samsung/android/game/gametools/floatingui/screenshot/GameToolsScreenshot$2;->val$captureImageView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getHeight()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->y(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/game/gametools/floatingui/screenshot/GameToolsScreenshot$2$1$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/game/gametools/floatingui/screenshot/GameToolsScreenshot$2$1$2;-><init>(Lcom/samsung/android/game/gametools/floatingui/screenshot/GameToolsScreenshot$2$1;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/screenshot/GameToolsScreenshot$2$1;->this$1:Lcom/samsung/android/game/gametools/floatingui/screenshot/GameToolsScreenshot$2;

    iget-object v0, v0, Lcom/samsung/android/game/gametools/floatingui/screenshot/GameToolsScreenshot$2;->val$captureImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x14d

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/game/gametools/floatingui/screenshot/GameToolsScreenshot$2$1$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/game/gametools/floatingui/screenshot/GameToolsScreenshot$2$1$1;-><init>(Lcom/samsung/android/game/gametools/floatingui/screenshot/GameToolsScreenshot$2$1;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

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
