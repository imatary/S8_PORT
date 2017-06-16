.class Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$22;
.super Ljava/lang/Object;
.source "StateManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->openSuperImpose()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$22;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    const/high16 v1, 0x80000

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$22;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->mSuperImposeState:Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->access$900(Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;)Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$22;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    new-instance v0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$22;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->access$200(Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;)Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$22;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->mPreviewView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;
    invoke-static {v3}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->access$800(Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;)Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$22;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;
    invoke-static {v4}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->access$600(Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;)Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$22;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->mDialogManager:Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;
    invoke-static {v5}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->access$1100(Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;)Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$22;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->mActionBarManager:Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;
    invoke-static {v6}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->access$1200(Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;)Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$22;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$22;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->mHistoryManager:Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager;
    invoke-static {v8}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->access$700(Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;)Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager;

    move-result-object v8

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;-><init>(ILcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager;I)V

    # setter for: Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->mSuperImposeState:Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;
    invoke-static {v10, v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->access$902(Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;)Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;

    :goto_0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$22;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->setState(I)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$22;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->mSuperImposeState:Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->access$900(Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;)Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->initSuperImpose()V

    goto :goto_0
.end method
