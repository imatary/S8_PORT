.class Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager$19;
.super Ljava/lang/Object;
.source "CollageManager.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->shuffle()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field cancelled:Z

.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;

.field final synthetic val$itemCount:I

.field final synthetic val$randomLayout:I


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;II)V
    .locals 1

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager$19;->this$0:Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;

    iput p2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager$19;->val$randomLayout:I

    iput p3, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager$19;->val$itemCount:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager$19;->cancelled:Z

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager$19;->cancelled:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    const v3, 0x7f0e011e

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager$19;->this$0:Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mCurrLayout:I

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager$19;->val$randomLayout:I

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager$19;->cancelled:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager$19;->val$itemCount:I

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager$19;->this$0:Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->access$300(Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;)Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->getItemCount()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager$19;->this$0:Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager$19;->val$randomLayout:I

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->updateLayout(I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager$19;->this$0:Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->updateUI()V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager$19;->this$0:Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->updateAddImagePosition()V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager$19;->this$0:Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;

    # setter for: Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mCollageAnimating:Z
    invoke-static {v0, v2}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->access$2002(Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;Z)Z

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager$19;->this$0:Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager$19;->this$0:Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->plusLayoutListnener:Landroid/view/View$OnClickListener;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->access$2100(Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->setAddImageIconTouchListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager$19;->this$0:Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mSaveAfterShuffle:Z
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->access$1100(Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager$19;->this$0:Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;

    # invokes: Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->doSave()V
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->access$2200(Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager$19;->this$0:Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->access$300(Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;)Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->setCollageSaved(Z)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager$19;->this$0:Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->updateActionBar()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager$19;->this$0:Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->access$400(Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager$19;->this$0:Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->access$400(Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 3

    const v2, 0x7f0e011e

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager$19;->this$0:Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->access$300(Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;)Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->requestRender()V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager$19;->this$0:Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;

    const/4 v1, 0x1

    # setter for: Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mCollageAnimating:Z
    invoke-static {v0, v1}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->access$2002(Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;Z)Z

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager$19;->this$0:Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->setAddImageIconTouchListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager$19;->this$0:Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->updateActionBar()V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager$19;->this$0:Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->access$400(Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager$19;->this$0:Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->access$400(Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method
