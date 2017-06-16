.class Lcom/samsung/android/sdk/rcl/RclExpansionHelper$4;
.super Ljava/lang/Object;
.source "RclExpansionHelper.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->closeAnimation(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sdk/rcl/RclExpansionHelper;

.field final synthetic val$preState:I


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/rcl/RclExpansionHelper;I)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper$4;->this$0:Lcom/samsung/android/sdk/rcl/RclExpansionHelper;

    iput p2, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper$4;->val$preState:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper$4;->this$0:Lcom/samsung/android/sdk/rcl/RclExpansionHelper;

    # getter for: Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mContainer:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->access$100(Lcom/samsung/android/sdk/rcl/RclExpansionHelper;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    iget-object v0, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper$4;->this$0:Lcom/samsung/android/sdk/rcl/RclExpansionHelper;

    # getter for: Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mContainer:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->access$100(Lcom/samsung/android/sdk/rcl/RclExpansionHelper;)Landroid/view/ViewGroup;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTranslationY(F)V

    iget-object v0, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper$4;->this$0:Lcom/samsung/android/sdk/rcl/RclExpansionHelper;

    # getter for: Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mContainer:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->access$100(Lcom/samsung/android/sdk/rcl/RclExpansionHelper;)Landroid/view/ViewGroup;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper$4;->this$0:Lcom/samsung/android/sdk/rcl/RclExpansionHelper;

    # getter for: Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mContainer:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->access$100(Lcom/samsung/android/sdk/rcl/RclExpansionHelper;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper$4;->this$0:Lcom/samsung/android/sdk/rcl/RclExpansionHelper;

    # getter for: Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mMinHeight:I
    invoke-static {v1}, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->access$700(Lcom/samsung/android/sdk/rcl/RclExpansionHelper;)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v0, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper$4;->this$0:Lcom/samsung/android/sdk/rcl/RclExpansionHelper;

    # getter for: Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mContainer:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->access$100(Lcom/samsung/android/sdk/rcl/RclExpansionHelper;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestLayout()V

    iget-object v0, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper$4;->this$0:Lcom/samsung/android/sdk/rcl/RclExpansionHelper;

    # getter for: Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mInitialized:Z
    invoke-static {v0}, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->access$200(Lcom/samsung/android/sdk/rcl/RclExpansionHelper;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper$4;->val$preState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper$4;->val$preState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper$4;->this$0:Lcom/samsung/android/sdk/rcl/RclExpansionHelper;

    # getter for: Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mOnExpansionStatusListener:Lcom/samsung/android/sdk/rcl/RclExpansionHelper$OnExpansionStatusListener;
    invoke-static {v0}, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->access$1100(Lcom/samsung/android/sdk/rcl/RclExpansionHelper;)Lcom/samsung/android/sdk/rcl/RclExpansionHelper$OnExpansionStatusListener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/samsung/android/sdk/rcl/RclExpansionHelper$OnExpansionStatusListener;->onFinish(Z)V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper$4;->this$0:Lcom/samsung/android/sdk/rcl/RclExpansionHelper;

    # getter for: Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mOnExpansionStatusListener:Lcom/samsung/android/sdk/rcl/RclExpansionHelper$OnExpansionStatusListener;
    invoke-static {v0}, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->access$1100(Lcom/samsung/android/sdk/rcl/RclExpansionHelper;)Lcom/samsung/android/sdk/rcl/RclExpansionHelper$OnExpansionStatusListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/sdk/rcl/RclExpansionHelper$OnExpansionStatusListener;->onClose()V

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper$4;->this$0:Lcom/samsung/android/sdk/rcl/RclExpansionHelper;

    const/4 v1, 0x6

    # setter for: Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mState:I
    invoke-static {v0, v1}, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->access$402(Lcom/samsung/android/sdk/rcl/RclExpansionHelper;I)I

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
