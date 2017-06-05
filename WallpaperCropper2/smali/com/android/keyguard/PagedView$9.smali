.class Lcom/android/keyguard/PagedView$9;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/PagedView;->createPostDeleteAnimationRunnable(Landroid/view/View;)Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/PagedView;

.field final synthetic val$dragView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/keyguard/PagedView;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/PagedView$9;->this$0:Lcom/android/keyguard/PagedView;

    iput-object p2, p0, Lcom/android/keyguard/PagedView$9;->val$dragView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    const/4 v7, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/keyguard/PagedView$9;->this$0:Lcom/android/keyguard/PagedView;

    iget-object v2, p0, Lcom/android/keyguard/PagedView$9;->val$dragView:Landroid/view/View;

    invoke-virtual {v0, v2}, Lcom/android/keyguard/PagedView;->indexOfChild(Landroid/view/View;)I

    move-result v4

    iget-object v0, p0, Lcom/android/keyguard/PagedView$9;->this$0:Lcom/android/keyguard/PagedView;

    iget-object v2, p0, Lcom/android/keyguard/PagedView$9;->this$0:Lcom/android/keyguard/PagedView;

    iget-object v2, v2, Lcom/android/keyguard/PagedView;->mTempVisiblePagesRange:[I

    invoke-virtual {v0, v2}, Lcom/android/keyguard/PagedView;->getVisiblePages([I)V

    iget-object v0, p0, Lcom/android/keyguard/PagedView$9;->this$0:Lcom/android/keyguard/PagedView;

    iget-object v2, p0, Lcom/android/keyguard/PagedView$9;->this$0:Lcom/android/keyguard/PagedView;

    iget-object v2, v2, Lcom/android/keyguard/PagedView;->mTempVisiblePagesRange:[I

    invoke-virtual {v0, v7, v2}, Lcom/android/keyguard/PagedView;->boundByReorderablePages(Z[I)V

    iget-object v0, p0, Lcom/android/keyguard/PagedView$9;->this$0:Lcom/android/keyguard/PagedView;

    iget-object v0, v0, Lcom/android/keyguard/PagedView;->mTempVisiblePagesRange:[I

    aget v0, v0, v1

    iget-object v2, p0, Lcom/android/keyguard/PagedView$9;->this$0:Lcom/android/keyguard/PagedView;

    iget-object v2, v2, Lcom/android/keyguard/PagedView;->mTempVisiblePagesRange:[I

    aget v2, v2, v7

    if-eq v0, v2, :cond_1

    move v0, v1

    :goto_0
    if-eqz v0, :cond_2

    :cond_0
    move v6, v7

    :goto_1
    if-nez v6, :cond_3

    :goto_2
    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/keyguard/PagedView$9;->this$0:Lcom/android/keyguard/PagedView;

    iget-object v0, v0, Lcom/android/keyguard/PagedView;->mTempVisiblePagesRange:[I

    aget v0, v0, v1

    :goto_3
    iget-object v2, p0, Lcom/android/keyguard/PagedView$9;->this$0:Lcom/android/keyguard/PagedView;

    iget-object v2, v2, Lcom/android/keyguard/PagedView;->mTempVisiblePagesRange:[I

    aget v2, v2, v7

    iget-object v3, p0, Lcom/android/keyguard/PagedView$9;->this$0:Lcom/android/keyguard/PagedView;

    invoke-virtual {v3}, Lcom/android/keyguard/PagedView;->getPageCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    if-nez v6, :cond_5

    add-int/lit8 v3, v4, 0x1

    :goto_4
    if-nez v6, :cond_6

    :goto_5
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    move v5, v3

    :goto_6
    if-le v5, v2, :cond_7

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual {v0, v8}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    iget-object v1, p0, Lcom/android/keyguard/PagedView$9;->this$0:Lcom/android/keyguard/PagedView;

    # getter for: Lcom/android/keyguard/PagedView;->DELETE_SLIDE_IN_SIDE_PAGE_DURATION:I
    invoke-static {v1}, Lcom/android/keyguard/PagedView;->access$700(Lcom/android/keyguard/PagedView;)I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/android/keyguard/PagedView$9$1;

    invoke-direct {v1, p0}, Lcom/android/keyguard/PagedView$9$1;-><init>(Lcom/android/keyguard/PagedView$9;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    iget-object v0, p0, Lcom/android/keyguard/PagedView$9;->this$0:Lcom/android/keyguard/PagedView;

    iget-object v1, p0, Lcom/android/keyguard/PagedView$9;->val$dragView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/PagedView;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/keyguard/PagedView$9;->this$0:Lcom/android/keyguard/PagedView;

    iget-object v1, p0, Lcom/android/keyguard/PagedView$9;->val$dragView:Landroid/view/View;

    invoke-virtual {v0, v1, v7}, Lcom/android/keyguard/PagedView;->onRemoveView(Landroid/view/View;Z)V

    return-void

    :cond_1
    move v0, v7

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/keyguard/PagedView$9;->this$0:Lcom/android/keyguard/PagedView;

    iget-object v2, v2, Lcom/android/keyguard/PagedView;->mTempVisiblePagesRange:[I

    aget v2, v2, v1

    if-gt v4, v2, :cond_0

    move v6, v1

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/android/keyguard/PagedView$9;->this$0:Lcom/android/keyguard/PagedView;

    add-int/lit8 v3, v4, -0x1

    invoke-virtual {v2, v3}, Lcom/android/keyguard/PagedView;->snapToPageImmediately(I)V

    goto :goto_2

    :cond_4
    move v0, v1

    goto :goto_3

    :cond_5
    move v3, v0

    goto :goto_4

    :cond_6
    add-int/lit8 v0, v4, -0x1

    move v2, v0

    goto :goto_5

    :cond_7
    iget-object v0, p0, Lcom/android/keyguard/PagedView$9;->this$0:Lcom/android/keyguard/PagedView;

    invoke-virtual {v0, v5}, Lcom/android/keyguard/PagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    if-nez v6, :cond_8

    iget-object v0, p0, Lcom/android/keyguard/PagedView$9;->this$0:Lcom/android/keyguard/PagedView;

    invoke-virtual {v0, v5}, Lcom/android/keyguard/PagedView;->getChildOffset(I)I

    move-result v0

    iget-object v3, p0, Lcom/android/keyguard/PagedView$9;->this$0:Lcom/android/keyguard/PagedView;

    add-int/lit8 v4, v5, -0x1

    invoke-virtual {v3, v4}, Lcom/android/keyguard/PagedView;->getChildOffset(I)I

    move-result v3

    sub-int/2addr v0, v3

    move v3, v1

    move v4, v0

    :goto_7
    invoke-virtual {v9}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/AnimatorSet;

    if-nez v0, :cond_a

    :goto_8
    invoke-virtual {v9}, Landroid/view/View;->getAlpha()F

    move-result v0

    const v10, 0x3c23d70a    # 0.01f

    invoke-static {v0, v10}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-virtual {v9, v0}, Landroid/view/View;->setAlpha(F)V

    sub-int v0, v4, v3

    int-to-float v0, v0

    invoke-virtual {v9, v0}, Landroid/view/View;->setTranslationX(F)V

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/animation/Animator;

    const-string/jumbo v4, "translationX"

    new-array v10, v7, [F

    const/4 v11, 0x0

    aput v11, v10, v1

    invoke-static {v9, v4, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v1

    const-string/jumbo v4, "alpha"

    new-array v10, v7, [F

    const/high16 v11, 0x3f800000    # 1.0f

    aput v11, v10, v1

    invoke-static {v9, v4, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v9, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto/16 :goto_6

    :cond_8
    if-eqz v5, :cond_9

    iget-object v0, p0, Lcom/android/keyguard/PagedView$9;->this$0:Lcom/android/keyguard/PagedView;

    invoke-virtual {v0}, Lcom/android/keyguard/PagedView;->getViewportOffsetX()I

    move-result v0

    iget-object v3, p0, Lcom/android/keyguard/PagedView$9;->this$0:Lcom/android/keyguard/PagedView;

    add-int/lit8 v4, v5, -0x1

    invoke-virtual {v3, v4}, Lcom/android/keyguard/PagedView;->getChildOffset(I)I

    move-result v3

    add-int/2addr v0, v3

    :goto_9
    iget-object v3, p0, Lcom/android/keyguard/PagedView$9;->this$0:Lcom/android/keyguard/PagedView;

    invoke-virtual {v3}, Lcom/android/keyguard/PagedView;->getViewportOffsetX()I

    move-result v3

    iget-object v4, p0, Lcom/android/keyguard/PagedView$9;->this$0:Lcom/android/keyguard/PagedView;

    invoke-virtual {v4, v5}, Lcom/android/keyguard/PagedView;->getChildOffset(I)I

    move-result v4

    add-int/2addr v3, v4

    move v4, v0

    goto :goto_7

    :cond_9
    iget-object v0, p0, Lcom/android/keyguard/PagedView$9;->this$0:Lcom/android/keyguard/PagedView;

    invoke-virtual {v0}, Lcom/android/keyguard/PagedView;->getViewportOffsetX()I

    move-result v0

    iget-object v3, p0, Lcom/android/keyguard/PagedView$9;->this$0:Lcom/android/keyguard/PagedView;

    invoke-virtual {v3, v5}, Lcom/android/keyguard/PagedView;->getChildOffset(I)I

    move-result v3

    add-int/2addr v0, v3

    iget-object v3, p0, Lcom/android/keyguard/PagedView$9;->this$0:Lcom/android/keyguard/PagedView;

    invoke-virtual {v3, v5}, Lcom/android/keyguard/PagedView;->getChildWidth(I)I

    move-result v3

    sub-int/2addr v0, v3

    iget-object v3, p0, Lcom/android/keyguard/PagedView$9;->this$0:Lcom/android/keyguard/PagedView;

    iget v3, v3, Lcom/android/keyguard/PagedView;->mPageSpacing:I

    sub-int/2addr v0, v3

    goto :goto_9

    :cond_a
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    goto/16 :goto_8
.end method
