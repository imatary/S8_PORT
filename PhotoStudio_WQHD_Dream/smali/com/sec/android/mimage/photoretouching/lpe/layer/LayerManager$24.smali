.class Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$24;
.super Ljava/lang/Object;
.source "LayerManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->updateActionBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$24;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$24;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mActionBarManager:Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->access$2700(Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;)Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$24;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->access$100(Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;)Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->getState()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$24;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mLayers:Landroid/util/SparseArray;
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->access$000(Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;->update(II)V

    return-void
.end method
