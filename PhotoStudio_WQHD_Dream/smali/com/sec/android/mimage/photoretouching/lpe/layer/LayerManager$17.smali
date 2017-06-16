.class Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$17;
.super Ljava/lang/Thread;
.source "LayerManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->processInput(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

.field final synthetic val$executor:Ljava/util/concurrent/ExecutorService;


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;Ljava/util/concurrent/ExecutorService;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$17;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    iput-object p2, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$17;->val$executor:Ljava/util/concurrent/ExecutorService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    :goto_0
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$17;->val$executor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v2}, Ljava/util/concurrent/ExecutorService;->isTerminated()Z

    move-result v2

    if-nez v2, :cond_0

    const-wide/16 v2, 0x32

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/core/OriginalThreadManager;->release()V

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryThreadManager;->release()V

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$17;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->getNumLayers()I

    move-result v2

    if-lez v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$17;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->access$100(Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;)Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$17;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->checkValidStates()V

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$17;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    # invokes: Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->prepareEffectThumbs()V
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->access$1600(Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;)V

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$17;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->getImageData()Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$17;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->access$100(Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;)Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    move-result-object v2

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewWidth()I

    move-result v3

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewHeight()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->onPreviewUpdate(II)V

    :cond_1
    return-void
.end method
