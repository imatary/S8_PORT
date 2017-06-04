.class Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingTopToast$1;
.super Ljava/lang/Object;
.source "RecordingTopToast.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingTopToast;->recordStartAnim()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingTopToast;

.field final synthetic val$dp55:I


# direct methods
.method constructor <init>(Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingTopToast;I)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingTopToast$1;->this$0:Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingTopToast;

    iput p2, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingTopToast$1;->val$dp55:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingTopToast$1;->this$0:Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingTopToast;

    # getter for: Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingTopToast;->mInsideView:Landroid/view/View;
    invoke-static {v0}, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingTopToast;->access$100(Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingTopToast;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingTopToast$1;->val$dp55:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/PathInterpolator;

    const v2, 0x3ea8f5c3    # 0.33f

    const/4 v3, 0x0

    const v4, 0x3e99999a    # 0.3f

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingTopToast$1$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingTopToast$1$1;-><init>(Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingTopToast$1;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method
