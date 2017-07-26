.class Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingEndAnim$1;
.super Ljava/lang/Object;
.source "RecordingEndAnim.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingEndAnim;->startAnim(JLcom/samsung/android/game/gametools/floatingui/view/module/RecordingEndAnim$AnimListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingEndAnim;


# direct methods
.method constructor <init>(Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingEndAnim;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingEndAnim$1;->this$0:Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingEndAnim;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingEndAnim$1;->this$0:Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingEndAnim;

    invoke-static {v0}, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingEndAnim;->access$000(Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingEndAnim;)Landroid/graphics/drawable/ClipDrawable;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/ClipDrawable;->setLevel(I)Z

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingEndAnim$1;->this$0:Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingEndAnim;

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingEndAnim$1;->this$0:Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingEndAnim;

    invoke-static {v1}, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingEndAnim;->access$000(Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingEndAnim;)Landroid/graphics/drawable/ClipDrawable;

    move-result-object v1

    const-string/jumbo v2, "level"

    const/4 v3, 0x2

    new-array v3, v3, [I

    fill-array-data v3, :array_0

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingEndAnim;->access$102(Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingEndAnim;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingEndAnim$1;->this$0:Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingEndAnim;

    invoke-static {v0}, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingEndAnim;->access$100(Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingEndAnim;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v2, 0x1ae

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingEndAnim$1;->this$0:Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingEndAnim;

    invoke-static {v0}, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingEndAnim;->access$100(Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingEndAnim;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingEndAnim$1;->this$0:Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingEndAnim;

    invoke-static {v0}, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingEndAnim;->access$100(Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingEndAnim;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->removeAllListeners()V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingEndAnim$1;->this$0:Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingEndAnim;

    invoke-static {v0}, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingEndAnim;->access$100(Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingEndAnim;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingEndAnim$1$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingEndAnim$1$1;-><init>(Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingEndAnim$1;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingEndAnim$1;->this$0:Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingEndAnim;

    invoke-static {v0}, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingEndAnim;->access$100(Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingEndAnim;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x2710
    .end array-data
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
