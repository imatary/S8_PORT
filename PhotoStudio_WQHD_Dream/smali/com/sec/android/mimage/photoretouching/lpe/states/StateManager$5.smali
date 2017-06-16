.class Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$5;
.super Ljava/lang/Object;
.source "StateManager.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->hideCardViewWithAnim(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

.field final synthetic val$dumpView:Landroid/widget/ImageView;

.field final synthetic val$id:I

.field final synthetic val$params:Landroid/widget/FrameLayout$LayoutParams;


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;ILandroid/widget/FrameLayout$LayoutParams;Landroid/widget/ImageView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$5;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    iput p2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$5;->val$id:I

    iput-object p3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$5;->val$params:Landroid/widget/FrameLayout$LayoutParams;

    iput-object p4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$5;->val$dumpView:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 7

    const/16 v6, 0x8

    const/4 v5, 0x0

    const/4 v4, -0x1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$5;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->mHistoryManager:Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->access$700(Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;)Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$5;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->access$600(Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;)Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->getCurrLayer()I

    move-result v1

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$5;->val$id:I

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$5;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    iget-object v3, v3, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->mHistoryAdapter:Lcom/sec/android/mimage/photoretouching/lpe/view/HistoryViewAdapter;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/lpe/view/HistoryViewAdapter;->getCount()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager;->undoToID(III)Z

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$5;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->access$600(Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;)Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->updateMenuUndoRedo()V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$5;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->access$600(Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;)Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->getImageData()Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->updateOriginalFromFile()V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$5;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->updatePortraitState()V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$5;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->checkValidStates()V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$5;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->access$600(Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;)Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->showMainButton(Z)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$5;->val$params:Landroid/widget/FrameLayout$LayoutParams;

    iput v4, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$5;->val$params:Landroid/widget/FrameLayout$LayoutParams;

    iput v4, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$5;->val$params:Landroid/widget/FrameLayout$LayoutParams;

    iput v5, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$5;->val$params:Landroid/widget/FrameLayout$LayoutParams;

    iput v5, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$5;->val$dumpView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$5;->val$params:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$5;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->historyLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v6}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$5;->val$dumpView:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$5;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->historyLayout:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$5$1;

    invoke-direct {v1, p0}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$5$1;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$5;)V

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->isRuningAnim:Z

    return-void
.end method
