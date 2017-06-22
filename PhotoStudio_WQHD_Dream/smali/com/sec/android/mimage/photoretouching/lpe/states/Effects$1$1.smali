.class Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$1$1;
.super Ljava/lang/Object;
.source "Effects.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$1;->onMove(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$1;

.field final synthetic val$params:Landroid/widget/LinearLayout$LayoutParams;

.field final synthetic val$sideMargin:I


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$1;Landroid/widget/LinearLayout$LayoutParams;I)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$1$1;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$1;

    iput-object p2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$1$1;->val$params:Landroid/widget/LinearLayout$LayoutParams;

    iput p3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$1$1;->val$sideMargin:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$1$1;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$1;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mSelection:Landroid/view/View;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->access$400(Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$1$1;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$1;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mSelection:Landroid/view/View;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->access$400(Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$1$1;->val$params:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$1$1;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$1;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mScrollView:Landroid/widget/HorizontalScrollView;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->access$700(Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;)Landroid/widget/HorizontalScrollView;

    move-result-object v0

    invoke-virtual {v0, v3, v3}, Landroid/widget/HorizontalScrollView;->measure(II)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$1$1;->val$params:Landroid/widget/LinearLayout$LayoutParams;

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$1$1;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$1;

    iget-object v1, v1, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mScrollView:Landroid/widget/HorizontalScrollView;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->access$700(Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;)Landroid/widget/HorizontalScrollView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v1

    if-ge v0, v1, :cond_3

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$1$1;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$1;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mScrollView:Landroid/widget/HorizontalScrollView;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->access$700(Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;)Landroid/widget/HorizontalScrollView;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$1$1;->val$params:Landroid/widget/LinearLayout$LayoutParams;

    iget v1, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    invoke-virtual {v0, v1, v3}, Landroid/widget/HorizontalScrollView;->scrollTo(II)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$1$1;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$1;

    iget-boolean v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$1;->isEffectCheckEnable:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$1$1;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$1;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mSelection:Landroid/view/View;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->access$400(Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$1$1;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$1;

    iput-boolean v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$1;->isEffectCheckEnable:Z

    :cond_1
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$1$1;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$1;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mActionBarHidden:Z
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->access$800(Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$1$1;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$1;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mPreview:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->access$900(Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;)Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->isAnimating()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$1$1;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$1;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    const/4 v1, 0x1

    # setter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mActionBarHidden:Z
    invoke-static {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->access$802(Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;Z)Z

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isGraceUX()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$1$1;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$1;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    invoke-virtual {v0, v3}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->setActionBarEnable(Z)V

    :goto_1
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$1$1;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$1;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    invoke-virtual {v0, v3}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->setSeekVisibility(Z)V

    :cond_2
    return-void

    :cond_3
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$1$1;->val$params:Landroid/widget/LinearLayout$LayoutParams;

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$1$1;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$1;

    iget-object v1, v1, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mSelection:Landroid/view/View;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->access$400(Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$1$1;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$1;

    iget-object v1, v1, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mScrollView:Landroid/widget/HorizontalScrollView;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->access$700(Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;)Landroid/widget/HorizontalScrollView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$1$1;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$1;

    iget-object v2, v2, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mScrollView:Landroid/widget/HorizontalScrollView;
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->access$700(Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;)Landroid/widget/HorizontalScrollView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v2

    add-int/2addr v1, v2

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$1$1;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$1;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mScrollView:Landroid/widget/HorizontalScrollView;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->access$700(Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;)Landroid/widget/HorizontalScrollView;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$1$1;->val$params:Landroid/widget/LinearLayout$LayoutParams;

    iget v1, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$1$1;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$1;

    iget-object v2, v2, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mSelection:Landroid/view/View;
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->access$400(Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$1$1;->val$sideMargin:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$1$1;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$1;

    iget-object v2, v2, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mScrollView:Landroid/widget/HorizontalScrollView;
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->access$700(Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;)Landroid/widget/HorizontalScrollView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1, v3}, Landroid/widget/HorizontalScrollView;->scrollTo(II)V

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$1$1;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$1;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mActionBarManager:Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;

    invoke-virtual {v0, v3}, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->showApplyCancel(Z)V

    goto :goto_1
.end method
