.class Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$20;
.super Ljava/lang/Object;
.source "LayerManager.java"

# interfaces
.implements Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager$DialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->onBackPressed(Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

.field final synthetic val$isFromExecutor:Z


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;Z)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$20;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    iput-boolean p2, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$20;->val$isFromExecutor:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 3

    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->SCREEN_MAIN:Ljava/lang/String;

    sget-object v1, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->FEATURE_CANCEL_DIALOG:Ljava/lang/String;

    const-string v2, "Cancel"

    invoke-static {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->insertEventSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onOk()V
    .locals 6

    sget-object v3, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->SCREEN_MAIN:Ljava/lang/String;

    sget-object v4, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->FEATURE_SAVE_DIALOG:Ljava/lang/String;

    const-string v5, "Save"

    invoke-static {v3, v4, v5}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->insertEventSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$20;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;
    invoke-static {v3}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->access$200(Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;)Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->launchPermissionForSaveShare()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$20;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mHistoryManager:Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager;
    invoke-static {v3}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->access$1500(Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;)Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$20;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->getCurrLayer()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager;->saved(I)V

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$20;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->getImageData()Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPrivateSaveFolder()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$20;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;
    invoke-static {v3}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->access$100(Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;)Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    move-result-object v3

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->isFromPersonalPage()Z

    move-result v4

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v2, v5}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->saveFile(ZLjava/lang/String;Z)V

    goto :goto_0
.end method

.method public onOther(Ljava/lang/Object;)V
    .locals 3

    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->SCREEN_MAIN:Ljava/lang/String;

    sget-object v1, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->FEATURE_DISCARD_DIALOG:Ljava/lang/String;

    const-string v2, "Discard"

    invoke-static {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->insertEventSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$20;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->isLauncher:Z
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->access$2200(Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$20;->val$isFromExecutor:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$20;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    const/4 v1, 0x1

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->pickGalleryImage(II)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager$20;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->access$200(Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;)Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method
