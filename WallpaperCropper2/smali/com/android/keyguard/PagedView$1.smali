.class Lcom/android/keyguard/PagedView$1;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/PagedView;->onTouchEvent(Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/PagedView;

.field final synthetic val$dragViewIndex:I

.field final synthetic val$pageUnderPointIndex:I


# direct methods
.method constructor <init>(Lcom/android/keyguard/PagedView;II)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/PagedView$1;->this$0:Lcom/android/keyguard/PagedView;

    iput p2, p0, Lcom/android/keyguard/PagedView$1;->val$pageUnderPointIndex:I

    iput p3, p0, Lcom/android/keyguard/PagedView$1;->val$dragViewIndex:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    const/4 v3, -0x1

    const/4 v2, 0x1

    const/4 v11, 0x0

    iget-object v0, p0, Lcom/android/keyguard/PagedView$1;->this$0:Lcom/android/keyguard/PagedView;

    iget-object v1, p0, Lcom/android/keyguard/PagedView$1;->this$0:Lcom/android/keyguard/PagedView;

    iget v4, p0, Lcom/android/keyguard/PagedView$1;->val$pageUnderPointIndex:I

    invoke-virtual {v1, v4}, Lcom/android/keyguard/PagedView;->getChildOffset(I)I

    move-result v1

    iget-object v4, p0, Lcom/android/keyguard/PagedView$1;->this$0:Lcom/android/keyguard/PagedView;

    iget v5, p0, Lcom/android/keyguard/PagedView$1;->val$pageUnderPointIndex:I

    invoke-virtual {v4, v5}, Lcom/android/keyguard/PagedView;->getRelativeChildOffset(I)I

    move-result v4

    sub-int/2addr v1, v4

    int-to-float v1, v1

    # setter for: Lcom/android/keyguard/PagedView;->mDownScrollX:F
    invoke-static {v0, v1}, Lcom/android/keyguard/PagedView;->access$002(Lcom/android/keyguard/PagedView;F)F

    iget-object v0, p0, Lcom/android/keyguard/PagedView$1;->this$0:Lcom/android/keyguard/PagedView;

    iget v1, p0, Lcom/android/keyguard/PagedView$1;->val$pageUnderPointIndex:I

    invoke-virtual {v0, v1}, Lcom/android/keyguard/PagedView;->snapToPage(I)V

    iget v0, p0, Lcom/android/keyguard/PagedView$1;->val$dragViewIndex:I

    iget v1, p0, Lcom/android/keyguard/PagedView$1;->val$pageUnderPointIndex:I

    if-lt v0, v1, :cond_0

    move v1, v2

    :goto_0
    iget v0, p0, Lcom/android/keyguard/PagedView$1;->val$dragViewIndex:I

    iget v4, p0, Lcom/android/keyguard/PagedView$1;->val$pageUnderPointIndex:I

    if-lt v0, v4, :cond_1

    iget v0, p0, Lcom/android/keyguard/PagedView$1;->val$pageUnderPointIndex:I

    :goto_1
    iget v4, p0, Lcom/android/keyguard/PagedView$1;->val$dragViewIndex:I

    iget v5, p0, Lcom/android/keyguard/PagedView$1;->val$pageUnderPointIndex:I

    if-gt v4, v5, :cond_2

    iget v4, p0, Lcom/android/keyguard/PagedView$1;->val$pageUnderPointIndex:I

    :goto_2
    move v5, v0

    :goto_3
    if-le v5, v4, :cond_3

    iget-object v0, p0, Lcom/android/keyguard/PagedView$1;->this$0:Lcom/android/keyguard/PagedView;

    iget-object v1, p0, Lcom/android/keyguard/PagedView$1;->this$0:Lcom/android/keyguard/PagedView;

    iget-object v1, v1, Lcom/android/keyguard/PagedView;->mDragView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/PagedView;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/keyguard/PagedView$1;->this$0:Lcom/android/keyguard/PagedView;

    iget-object v1, p0, Lcom/android/keyguard/PagedView$1;->this$0:Lcom/android/keyguard/PagedView;

    iget-object v1, v1, Lcom/android/keyguard/PagedView;->mDragView:Landroid/view/View;

    invoke-virtual {v0, v1, v11}, Lcom/android/keyguard/PagedView;->onRemoveView(Landroid/view/View;Z)V

    iget-object v0, p0, Lcom/android/keyguard/PagedView$1;->this$0:Lcom/android/keyguard/PagedView;

    iget-object v1, p0, Lcom/android/keyguard/PagedView$1;->this$0:Lcom/android/keyguard/PagedView;

    iget-object v1, v1, Lcom/android/keyguard/PagedView;->mDragView:Landroid/view/View;

    iget v2, p0, Lcom/android/keyguard/PagedView$1;->val$pageUnderPointIndex:I

    invoke-virtual {v0, v1, v2}, Lcom/android/keyguard/PagedView;->addView(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/android/keyguard/PagedView$1;->this$0:Lcom/android/keyguard/PagedView;

    iget-object v1, p0, Lcom/android/keyguard/PagedView$1;->this$0:Lcom/android/keyguard/PagedView;

    iget-object v1, v1, Lcom/android/keyguard/PagedView;->mDragView:Landroid/view/View;

    iget v2, p0, Lcom/android/keyguard/PagedView$1;->val$pageUnderPointIndex:I

    invoke-virtual {v0, v1, v2}, Lcom/android/keyguard/PagedView;->onAddView(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/android/keyguard/PagedView$1;->this$0:Lcom/android/keyguard/PagedView;

    # setter for: Lcom/android/keyguard/PagedView;->mSidePageHoverIndex:I
    invoke-static {v0, v3}, Lcom/android/keyguard/PagedView;->access$102(Lcom/android/keyguard/PagedView;I)I

    return-void

    :cond_0
    move v1, v3

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/android/keyguard/PagedView$1;->val$dragViewIndex:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    iget v4, p0, Lcom/android/keyguard/PagedView$1;->val$dragViewIndex:I

    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/android/keyguard/PagedView$1;->this$0:Lcom/android/keyguard/PagedView;

    invoke-virtual {v0, v5}, Lcom/android/keyguard/PagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    iget-object v0, p0, Lcom/android/keyguard/PagedView$1;->this$0:Lcom/android/keyguard/PagedView;

    invoke-virtual {v0}, Lcom/android/keyguard/PagedView;->getViewportOffsetX()I

    move-result v0

    iget-object v7, p0, Lcom/android/keyguard/PagedView$1;->this$0:Lcom/android/keyguard/PagedView;

    invoke-virtual {v7, v5}, Lcom/android/keyguard/PagedView;->getChildOffset(I)I

    move-result v7

    add-int/2addr v7, v0

    iget-object v0, p0, Lcom/android/keyguard/PagedView$1;->this$0:Lcom/android/keyguard/PagedView;

    invoke-virtual {v0}, Lcom/android/keyguard/PagedView;->getViewportOffsetX()I

    move-result v0

    iget-object v8, p0, Lcom/android/keyguard/PagedView$1;->this$0:Lcom/android/keyguard/PagedView;

    add-int v9, v5, v1

    invoke-virtual {v8, v9}, Lcom/android/keyguard/PagedView;->getChildOffset(I)I

    move-result v8

    add-int/2addr v8, v0

    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/AnimatorSet;

    if-nez v0, :cond_4

    :goto_4
    sub-int v0, v7, v8

    int-to-float v0, v0

    invoke-virtual {v6, v0}, Landroid/view/View;->setTranslationX(F)V

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iget-object v7, p0, Lcom/android/keyguard/PagedView$1;->this$0:Lcom/android/keyguard/PagedView;

    iget v7, v7, Lcom/android/keyguard/PagedView;->REORDERING_REORDER_REPOSITION_DURATION:I

    int-to-long v8, v7

    invoke-virtual {v0, v8, v9}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-array v7, v2, [Landroid/animation/Animator;

    const-string/jumbo v8, "translationX"

    new-array v9, v2, [F

    const/4 v10, 0x0

    aput v10, v9, v11

    invoke-static {v6, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    aput-object v8, v7, v11

    invoke-virtual {v0, v7}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    invoke-virtual {v6, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto/16 :goto_3

    :cond_4
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    goto :goto_4
.end method
