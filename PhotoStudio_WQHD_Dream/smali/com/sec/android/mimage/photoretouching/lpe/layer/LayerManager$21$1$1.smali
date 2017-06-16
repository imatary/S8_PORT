.class Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$21$1$1;
.super Ljava/lang/Object;
.source "LayerManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$21$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$21$1;


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$21$1;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$21$1$1;->this$2:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$21$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$21$1$1;->this$2:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$21$1;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$21$1;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$21;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$21;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->access$100(Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;)Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->getState()I

    move-result v0

    const/high16 v1, 0x80000

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$21$1$1;->this$2:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$21$1;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$21$1;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$21;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$21;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->access$100(Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;)Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->clearSuperImpose()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$21$1$1;->this$2:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$21$1;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$21$1;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$21;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$21;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->access$100(Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;)Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->getState()I

    move-result v0

    const/high16 v1, 0x40000

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$21$1$1;->this$2:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$21$1;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$21$1;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$21;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$21;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->access$100(Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;)Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->reLoadPenSettingView()V

    :cond_1
    const/4 v0, 0x1

    sput-boolean v0, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isNewInstance:Z

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$21$1$1;->this$2:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$21$1;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$21$1;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$21;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$21;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$21$1$1;->this$2:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$21$1;

    iget-object v1, v1, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$21$1;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$21;

    iget-object v1, v1, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$21;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mCurrLayer:I
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->access$700(Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;)I

    move-result v1

    # invokes: Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->deleteLayer(I)V
    invoke-static {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->access$2100(Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;I)V

    sput-boolean v2, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isNewInstance:Z

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$21$1$1;->this$2:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$21$1;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$21$1;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$21;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$21;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    # setter for: Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->layerCounter:I
    invoke-static {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->access$2302(Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;I)I

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$21$1$1;->this$2:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$21$1;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$21$1;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$21;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$21;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$21$1$1;->this$2:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$21$1;

    iget-object v1, v1, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$21$1;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$21;

    iget-object v1, v1, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$21;->val$intent:Landroid/content/Intent;

    # invokes: Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->processInput(Landroid/content/Intent;)V
    invoke-static {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->access$2400(Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$21$1$1;->this$2:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$21$1;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$21$1;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$21;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$21;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$21$1$1;->this$2:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$21$1;

    iget-object v1, v1, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$21$1;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$21;

    iget-object v1, v1, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$21;->val$intent:Landroid/content/Intent;

    # setter for: Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mIntent:Landroid/content/Intent;
    invoke-static {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->access$2502(Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;Landroid/content/Intent;)Landroid/content/Intent;

    sget-boolean v0, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isNewIntentFromGallery:Z

    sput-boolean v0, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isIntentFromGallery:Z

    sget v0, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->newInstanceTaskId:I

    sput v0, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->parentTaskId:I

    return-void
.end method
