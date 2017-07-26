.class Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingStartAnim$1;
.super Ljava/lang/Object;
.source "RecordingStartAnim.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingStartAnim;->startAnim(JLcom/samsung/android/game/gametools/floatingui/view/module/RecordingStartAnim$AnimListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingStartAnim;


# direct methods
.method constructor <init>(Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingStartAnim;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingStartAnim$1;->this$0:Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingStartAnim;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/high16 v4, 0x3f800000    # 1.0f

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingStartAnim$1;->this$0:Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingStartAnim;

    invoke-static {v0}, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingStartAnim;->access$000(Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingStartAnim;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingStartAnim$1;->this$0:Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingStartAnim;

    invoke-static {v0}, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingStartAnim;->access$000(Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingStartAnim;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingStartAnim$1$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingStartAnim$1$1;-><init>(Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingStartAnim$1;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingStartAnim$1;->this$0:Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingStartAnim;

    invoke-static {v0}, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingStartAnim;->access$000(Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingStartAnim;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x14d

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method
