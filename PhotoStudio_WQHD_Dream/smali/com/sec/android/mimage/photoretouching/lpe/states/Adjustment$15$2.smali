.class Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15$2;
.super Ljava/lang/Object;
.source "Adjustment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15;


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15$2;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15$2;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->mPinchHelper:Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->access$400(Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;)Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;

    move-result-object v7

    monitor-enter v7

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15$2;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;

    const/16 v1, 0xc

    # invokes: Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->setMode(I)V
    invoke-static {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->access$1500(Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15$2;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15;->val$data:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15$2;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15;

    iget-object v1, v1, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15;->val$newBuffer:[I

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15$2;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15;

    iget v2, v2, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15;->val$width:I

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15$2;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15;

    iget v3, v3, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15;->val$height:I

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->setPreviewBuffer([IIIZ)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15$2;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->getImageData()Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->isPng()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15$2;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->mSmartCropDone:Z
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->access$3200(Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15$2;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->getImageData()Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->setIsLasso(Z)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15$2;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15$2;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15;

    iget-object v1, v1, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15;->val$event:Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15$2;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15;

    iget-object v2, v2, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15;->val$data:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewBuffer()[I

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15$2;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15;

    iget-object v3, v3, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15;->val$data:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewWidth()I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15$2;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15;

    iget-object v4, v4, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15;->val$data:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewHeight()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->addPreviewToHistory(Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;[IIIZ)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15$2;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->checkValidStates()V

    new-instance v6, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15$2$1;

    invoke-direct {v6, p0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15$2$1;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15$2;)V

    const/4 v0, 0x0

    invoke-static {v6, v0}, Lcom/sec/android/mimage/photoretouching/lpe/core/OriginalThreadManager;->addJob(Ljava/lang/Runnable;Lcom/sec/android/mimage/photoretouching/lpe/core/OriginalThreadManager$JobDoneCallBack;)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15$2;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->setState(I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15$2;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    const/4 v1, 0x2

    sget-object v2, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->STATE_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->sendResponseToExecutor(ILcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15$2;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$15;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->updateMenuUndoRedo()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
