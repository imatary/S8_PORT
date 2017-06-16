.class Lcom/samsung/android/sdk/rcl/RclExpansionHelper$3;
.super Ljava/lang/Object;
.source "RclExpansionHelper.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->startAnimation(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mNotifyEnd:Z

.field final synthetic this$0:Lcom/samsung/android/sdk/rcl/RclExpansionHelper;

.field final synthetic val$expansion:Z


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/rcl/RclExpansionHelper;Z)V
    .locals 1

    iput-object p1, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper$3;->this$0:Lcom/samsung/android/sdk/rcl/RclExpansionHelper;

    iput-boolean p2, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper$3;->val$expansion:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper$3;->mNotifyEnd:Z

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper$3;->mNotifyEnd:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper$3;->this$0:Lcom/samsung/android/sdk/rcl/RclExpansionHelper;

    const/4 v1, 0x0

    # setter for: Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mAnimator:Landroid/animation/ValueAnimator;
    invoke-static {v0, v1}, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->access$2102(Lcom/samsung/android/sdk/rcl/RclExpansionHelper;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    iget-boolean v0, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper$3;->mNotifyEnd:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper$3;->this$0:Lcom/samsung/android/sdk/rcl/RclExpansionHelper;

    iget-boolean v1, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper$3;->val$expansion:Z

    # invokes: Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->notifyExpansionEnd(Z)V
    invoke-static {v0, v1}, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->access$2200(Lcom/samsung/android/sdk/rcl/RclExpansionHelper;Z)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper$3;->this$0:Lcom/samsung/android/sdk/rcl/RclExpansionHelper;

    iget-object v1, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper$3;->this$0:Lcom/samsung/android/sdk/rcl/RclExpansionHelper;

    # getter for: Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mContainer:Landroid/view/ViewGroup;
    invoke-static {v1}, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->access$100(Lcom/samsung/android/sdk/rcl/RclExpansionHelper;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    # setter for: Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mLatestNotifyHeight:I
    invoke-static {v0, v1}, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->access$1502(Lcom/samsung/android/sdk/rcl/RclExpansionHelper;I)I

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
