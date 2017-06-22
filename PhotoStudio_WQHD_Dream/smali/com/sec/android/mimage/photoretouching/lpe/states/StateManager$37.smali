.class Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$37;
.super Ljava/lang/Object;
.source "StateManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->updateBottomButtons(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

.field final synthetic val$state:I


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;I)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$37;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    iput p2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$37;->val$state:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const/4 v3, 0x1

    const v7, 0x20004

    const v6, 0x2000e

    const/16 v2, 0x8

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$37;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->mState:I
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->access$100(Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;)I

    move-result v0

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$37;->val$state:I

    if-eq v0, v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$37;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->access$200(Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;)Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v3, :cond_b

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$37;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->mPrevState:I
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->access$3000(Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;)I

    move-result v0

    if-ge v0, v6, :cond_2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$37;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->mAdjustmentLayout:Landroid/view/View;

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$37;->val$state:I

    and-int/lit16 v0, v0, -0x100

    const/high16 v5, 0x20000

    if-ne v0, v5, :cond_a

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$37;->val$state:I

    if-ge v0, v6, :cond_a

    move v0, v1

    :goto_1
    invoke-virtual {v4, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$37;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->mAdjustmentLand:Landroid/view/View;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->access$3100(Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    :goto_2
    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$37;->val$state:I

    const/16 v4, 0x100

    if-ne v0, v4, :cond_4

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$37;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    invoke-virtual {v0, v3}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->enableAutoEnhanceButton(Z)V

    :cond_4
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$37;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->mToneLayout:Landroid/view/View;

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$37;->val$state:I

    and-int/lit16 v0, v0, -0x100

    const/16 v5, 0x800

    if-ne v0, v5, :cond_d

    move v0, v1

    :goto_3
    invoke-virtual {v4, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$37;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->mAdvanceLayout:Landroid/view/View;

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$37;->val$state:I

    and-int/lit16 v0, v0, -0x100

    const/high16 v5, 0x90000

    if-ne v0, v5, :cond_e

    move v0, v1

    :goto_4
    invoke-virtual {v4, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$37;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->mDecorationLayout:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->access$3200(Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;)Landroid/view/ViewGroup;

    move-result-object v4

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$37;->val$state:I

    const/high16 v5, 0x80000

    if-ne v0, v5, :cond_f

    move v0, v1

    :goto_5
    invoke-virtual {v4, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$37;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->mDecorationContainer:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->access$3300(Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;)Landroid/view/ViewGroup;

    move-result-object v4

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$37;->val$state:I

    const v5, 0x80003

    if-ne v0, v5, :cond_10

    move v0, v1

    :goto_6
    invoke-virtual {v4, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$37;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->mDecorationContainer:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->access$3300(Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;)Landroid/view/ViewGroup;

    move-result-object v4

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$37;->val$state:I

    const v5, 0x8000a

    if-ne v0, v5, :cond_11

    move v0, v1

    :goto_7
    invoke-virtual {v4, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$37;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->mDecorationContainer:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->access$3300(Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;)Landroid/view/ViewGroup;

    move-result-object v4

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$37;->val$state:I

    const v5, 0x80002

    if-ne v0, v5, :cond_12

    move v0, v1

    :goto_8
    invoke-virtual {v4, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$37;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->mEffectsLayout:Landroid/view/View;

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$37;->val$state:I

    and-int/lit16 v0, v0, -0x100

    const/16 v5, 0x1000

    if-ne v0, v5, :cond_13

    move v0, v1

    :goto_9
    invoke-virtual {v4, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$37;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->mPortraitLayout:Landroid/view/View;

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$37;->val$state:I

    and-int/lit16 v0, v0, -0x100

    const/16 v5, 0x2000

    if-ne v0, v5, :cond_14

    move v0, v1

    :goto_a
    invoke-virtual {v4, v0}, Landroid/view/View;->setVisibility(I)V

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$37;->val$state:I

    const/16 v4, 0x2002

    if-ne v0, v4, :cond_5

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$37;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->mPortraitLayout:Landroid/view/View;

    const v4, 0x7f0e03a1

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    :cond_5
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$37;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->mAdjustment:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->access$1600(Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;)Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$37;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->mAdjustment:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->access$1600(Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;)Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->isCropLayoutVisible()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$37;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->mAdjustmentLayout:Landroid/view/View;

    const v4, 0x7f0e00a1

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$37;->val$state:I

    if-lt v0, v7, :cond_15

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$37;->val$state:I

    if-ge v0, v6, :cond_15

    move v0, v1

    :goto_b
    invoke-virtual {v4, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$37;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->mAdjustmentLand:Landroid/view/View;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->access$3100(Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;)Landroid/view/View;

    move-result-object v0

    const v4, 0x7f0e00a1

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$37;->val$state:I

    if-lt v4, v7, :cond_6

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$37;->val$state:I

    if-ge v4, v6, :cond_6

    move v2, v1

    :cond_6
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$37;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->mAdjustment:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->access$1600(Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;)Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;

    move-result-object v2

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$37;->val$state:I

    if-lt v0, v7, :cond_16

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$37;->val$state:I

    if-ge v0, v6, :cond_16

    move v0, v3

    :goto_c
    invoke-virtual {v2, v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->setCropLayoutVisible(Z)V

    :cond_7
    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$37;->val$state:I

    if-ne v0, v7, :cond_9

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$37;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->mAdjustmentLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$37;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->mAdjustmentLayout:Landroid/view/View;

    const v2, 0x7f0e00a4

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    :cond_8
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$37;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->mAdjustmentLand:Landroid/view/View;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->access$3100(Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$37;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->mAdjustmentLand:Landroid/view/View;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->access$3100(Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;)Landroid/view/View;

    move-result-object v0

    const v2, 0x7f0e00a4

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    :cond_9
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$37;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->mAdjustmentLayout:Landroid/view/View;

    const v2, 0x7f0e00bc

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$37;->val$state:I

    if-lt v0, v7, :cond_17

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$37;->val$state:I

    if-gt v0, v6, :cond_17

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$37;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->mAdjustment:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->access$1600(Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;)Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->isCropLayoutVisible()Z

    move-result v0

    if-eqz v0, :cond_17

    move v0, v3

    :goto_d
    invoke-virtual {v2, v0}, Landroid/view/View;->setSelected(Z)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$37;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->mAdjustmentLand:Landroid/view/View;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->access$3100(Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;)Landroid/view/View;

    move-result-object v0

    const v2, 0x7f0e00bc

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$37;->val$state:I

    if-lt v2, v7, :cond_18

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$37;->val$state:I

    if-gt v2, v6, :cond_18

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$37;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->mAdjustment:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->access$1600(Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;)Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->isCropLayoutVisible()Z

    move-result v2

    if-eqz v2, :cond_18

    :goto_e
    invoke-virtual {v0, v3}, Landroid/view/View;->setSelected(Z)V

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$37;->val$state:I

    and-int/lit16 v0, v0, -0x100

    const/high16 v1, 0x20000

    if-ne v0, v1, :cond_0

    goto/16 :goto_0

    :cond_a
    move v0, v2

    goto/16 :goto_1

    :cond_b
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$37;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->mAdjustmentLayout:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$37;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->mPrevState:I
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->access$3000(Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;)I

    move-result v0

    if-ge v0, v6, :cond_3

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$37;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->mAdjustmentLand:Landroid/view/View;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->access$3100(Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;)Landroid/view/View;

    move-result-object v4

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$37;->val$state:I

    and-int/lit16 v0, v0, -0x100

    const/high16 v5, 0x20000

    if-ne v0, v5, :cond_c

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$37;->val$state:I

    if-ge v0, v6, :cond_c

    move v0, v1

    :goto_f
    invoke-virtual {v4, v0}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    :cond_c
    move v0, v2

    goto :goto_f

    :cond_d
    move v0, v2

    goto/16 :goto_3

    :cond_e
    move v0, v2

    goto/16 :goto_4

    :cond_f
    move v0, v2

    goto/16 :goto_5

    :cond_10
    move v0, v2

    goto/16 :goto_6

    :cond_11
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$37;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->mDecorationContainer:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->access$3300(Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    goto/16 :goto_7

    :cond_12
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$37;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->mDecorationContainer:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->access$3300(Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    goto/16 :goto_8

    :cond_13
    move v0, v2

    goto/16 :goto_9

    :cond_14
    move v0, v2

    goto/16 :goto_a

    :cond_15
    move v0, v2

    goto/16 :goto_b

    :cond_16
    move v0, v1

    goto/16 :goto_c

    :cond_17
    move v0, v1

    goto/16 :goto_d

    :cond_18
    move v3, v1

    goto :goto_e
.end method
