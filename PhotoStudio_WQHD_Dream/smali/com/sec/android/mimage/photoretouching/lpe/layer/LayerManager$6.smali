.class Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$6;
.super Ljava/lang/Object;
.source "LayerManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->doUndoRedoFromExecutor(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

.field final synthetic val$isUndo:Z


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;Z)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$6;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    iput-boolean p2, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$6;->val$isUndo:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$6;->val$isUndo:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$6;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mHistoryManager:Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->access$1500(Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;)Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$6;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mCurrLayer:I
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->access$700(Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager;->hasUndoHistory(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$6;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->access$100(Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;)Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->doUndo()V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$6;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->access$200(Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;)Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    move-result-object v0

    new-instance v1, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$6$1;

    invoke-direct {v1, p0}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$6$1;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$6;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$6;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mHistoryManager:Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->access$1500(Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;)Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$6;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mCurrLayer:I
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->access$700(Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager;->hasRedoHistory(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$6;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->access$100(Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;)Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->doRedo()V

    goto :goto_0
.end method
