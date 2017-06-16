.class Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$19$1;
.super Ljava/lang/Object;
.source "StateManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$19;->onJobDone()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$19;

.field final synthetic val$finalPath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$19;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$19$1;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$19;

    iput-object p2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$19$1;->val$finalPath:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$19$1;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$19;

    iget-object v1, v1, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$19;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->access$200(Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;)Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$19$1;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$19;

    iget-object v1, v1, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$19;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->access$600(Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;)Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    move-result-object v1

    const/4 v2, 0x2

    sget-object v3, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->STATE_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->sendResponseToExecutor(ILcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$19$1;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$19;

    iget-object v1, v1, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$19;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->getProgressDialog()Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->hide()V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$19$1;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$19;

    iget-object v1, v1, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$19;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->access$200(Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;)Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07000e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$19$1;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$19;

    iget-object v4, v4, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$19;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;
    invoke-static {v4}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->access$200(Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;)Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$19$1;->val$finalPath:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getDirFromSavePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$19$1;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$19;

    iget-object v1, v1, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$19;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->access$200(Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;)Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->showToastShort(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$19$1;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$19;

    iget-boolean v1, v1, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$19;->val$forcedFinish:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$19$1;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$19;

    iget-object v1, v1, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$19;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager$19$1;->val$finalPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->shareToGallery(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
