.class Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$22;
.super Ljava/lang/Object;
.source "LayerManager.java"

# interfaces
.implements Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager$DialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->onNewIntent(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$22;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    iput-object p2, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$22;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$22;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 0

    return-void
.end method

.method public onOk()V
    .locals 3

    const/4 v2, 0x1

    sget v0, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->newInstanceTaskId:I

    sput v0, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->parentTaskId:I

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$22;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->access$100(Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;)Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->getMainState()I

    move-result v0

    const/high16 v1, 0x80000

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$22;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->access$100(Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;)Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->hideAllSuperImposeDialogs()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$22;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->access$100(Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;)Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->getMainState()I

    move-result v0

    const/high16 v1, 0x40000

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$22;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->access$100(Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;)Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->doDone(Z)V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$22;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->access$100(Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;)Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->doDone(Z)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$22;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    new-instance v1, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$22$2;

    invoke-direct {v1, p0}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$22$2;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$22;)V

    # setter for: Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mPendingRunnable:Ljava/lang/Runnable;
    invoke-static {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->access$2602(Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    return-void
.end method

.method public onOther(Ljava/lang/Object;)V
    .locals 2

    sget v0, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->newInstanceTaskId:I

    sput v0, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->parentTaskId:I

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$22;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->access$100(Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;)Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->getMainState()I

    move-result v0

    const/high16 v1, 0x80000

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$22;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->access$100(Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;)Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->hideAllSuperImposeDialogs()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$22;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->access$100(Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;)Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->getMainState()I

    move-result v0

    const/high16 v1, 0x40000

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$22;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->access$100(Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;)Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->doCancel()V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$22;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->access$100(Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;)Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->doCancel()V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$22;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    new-instance v1, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$22$1;

    invoke-direct {v1, p0}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$22$1;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$22;)V

    # setter for: Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mPendingRunnable:Ljava/lang/Runnable;
    invoke-static {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->access$2602(Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    return-void
.end method
