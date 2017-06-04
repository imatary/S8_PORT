.class Lcom/sec/samsung/gallery/view/detailview/FastOptionView$5;
.super Ljava/lang/Object;
.source "FastOptionView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->childViewSetListener(ILandroid/widget/TextView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/detailview/FastOptionView;

.field final synthetic val$commandType:I

.field final synthetic val$editChildView:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/detailview/FastOptionView;Landroid/widget/TextView;I)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView$5;->this$0:Lcom/sec/samsung/gallery/view/detailview/FastOptionView;

    iput-object p2, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView$5;->val$editChildView:Landroid/widget/TextView;

    iput p3, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView$5;->val$commandType:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView$5;->val$editChildView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isClickable()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView$5;->this$0:Lcom/sec/samsung/gallery/view/detailview/FastOptionView;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mAnimSet:Landroid/animation/AnimatorSet;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->access$1400(Lcom/sec/samsung/gallery/view/detailview/FastOptionView;)Landroid/animation/AnimatorSet;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView$5;->this$0:Lcom/sec/samsung/gallery/view/detailview/FastOptionView;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mAnimSet:Landroid/animation/AnimatorSet;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->access$1400(Lcom/sec/samsung/gallery/view/detailview/FastOptionView;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView$5;->val$commandType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView$5;->this$0:Lcom/sec/samsung/gallery/view/detailview/FastOptionView;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mAnimSet:Landroid/animation/AnimatorSet;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->access$1400(Lcom/sec/samsung/gallery/view/detailview/FastOptionView;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView$5;->this$0:Lcom/sec/samsung/gallery/view/detailview/FastOptionView;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mListener:Lcom/sec/samsung/gallery/view/detailview/FastOptionView$Listener;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->access$1300(Lcom/sec/samsung/gallery/view/detailview/FastOptionView;)Lcom/sec/samsung/gallery/view/detailview/FastOptionView$Listener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView$5;->this$0:Lcom/sec/samsung/gallery/view/detailview/FastOptionView;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mListener:Lcom/sec/samsung/gallery/view/detailview/FastOptionView$Listener;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->access$1300(Lcom/sec/samsung/gallery/view/detailview/FastOptionView;)Lcom/sec/samsung/gallery/view/detailview/FastOptionView$Listener;

    move-result-object v0

    iget v1, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView$5;->val$commandType:I

    invoke-interface {v0, v1}, Lcom/sec/samsung/gallery/view/detailview/FastOptionView$Listener;->onItemSelected(I)Z

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView$5;->this$0:Lcom/sec/samsung/gallery/view/detailview/FastOptionView;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mAutoAdjustView:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->access$1500(Lcom/sec/samsung/gallery/view/detailview/FastOptionView;)Landroid/widget/FrameLayout;

    move-result-object v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView$5;->val$commandType:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView$5;->this$0:Lcom/sec/samsung/gallery/view/detailview/FastOptionView;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mAutoAdjustView:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->access$1500(Lcom/sec/samsung/gallery/view/detailview/FastOptionView;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->requestFocus()Z

    :cond_2
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView$5;->this$0:Lcom/sec/samsung/gallery/view/detailview/FastOptionView;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mVisionView:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->access$1600(Lcom/sec/samsung/gallery/view/detailview/FastOptionView;)Landroid/widget/FrameLayout;

    move-result-object v0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView$5;->val$commandType:I

    const/16 v1, 0x11

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView$5;->this$0:Lcom/sec/samsung/gallery/view/detailview/FastOptionView;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mVisionView:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->access$1600(Lcom/sec/samsung/gallery/view/detailview/FastOptionView;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->requestFocus()Z

    :cond_3
    return-void
.end method
