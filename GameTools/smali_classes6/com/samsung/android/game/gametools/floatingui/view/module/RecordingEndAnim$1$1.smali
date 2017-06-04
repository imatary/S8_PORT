.class Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingEndAnim$1$1;
.super Lcom/sec/game/gamecast/common/view/AnimationDrawableCallback;
.source "RecordingEndAnim.java"


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
.method constructor <init>(Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingEndAnim$1;Landroid/graphics/drawable/AnimationDrawable;Landroid/graphics/drawable/Drawable$Callback;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingEndAnim$1$1;->this$1:Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingEndAnim$1;

    invoke-direct {p0, p2, p3}, Lcom/sec/game/gamecast/common/view/AnimationDrawableCallback;-><init>(Landroid/graphics/drawable/AnimationDrawable;Landroid/graphics/drawable/Drawable$Callback;)V

    return-void
.end method


# virtual methods
.method public onAnimationComplete()V
    .locals 4

    const-string/jumbo v0, "RecordingEndAnim"

    const-string/jumbo v1, "Check animation ended"

    invoke-static {v0, v1}, Lcom/sec/game/gamecast/common/logger/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingEndAnim$1$1;->this$1:Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingEndAnim$1;

    iget-object v0, v0, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingEndAnim$1;->this$0:Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingEndAnim;

    # getter for: Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingEndAnim;->mMainView:Landroid/view/View;
    invoke-static {v0}, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingEndAnim;->access$400(Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingEndAnim;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

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
