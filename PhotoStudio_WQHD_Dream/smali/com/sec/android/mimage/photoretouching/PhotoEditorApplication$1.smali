.class Lcom/sec/android/mimage/photoretouching/PhotoEditorApplication$1;
.super Ljava/lang/Object;
.source "PhotoEditorApplication.java"

# interfaces
.implements Lcom/samsung/android/sdk/bixby/BixbyApi$StartStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/mimage/photoretouching/PhotoEditorApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/PhotoEditorApplication;


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/PhotoEditorApplication;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/PhotoEditorApplication$1;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoEditorApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRuleCanceled(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StartStateListener onRuleCanceled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->log(Ljava/lang/String;)V

    return-void
.end method

.method public onStateReceived(Lcom/samsung/android/sdk/bixby/data/State;)V
    .locals 7

    const v6, 0x10008000

    const/4 v5, 0x2

    const/4 v4, 0x1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/bixby/data/State;->getStateId()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "StartStateListener onStateReceived: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->log(Ljava/lang/String;)V

    const-string v2, "PhotoEditor"

    invoke-static {v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->checkEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-boolean v2, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->isToastShown:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/PhotoEditorApplication$1;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoEditorApplication;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/PhotoEditorApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->showToast(Landroid/content/Context;)V

    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/PhotoEditorApplication$1;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoEditorApplication;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/PhotoEditorApplication;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "android.intent.action.MAIN"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v2, "call_from_executor"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/PhotoEditorApplication$1;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoEditorApplication;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/PhotoEditorApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v4}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getMostRecentImageUrisList(Landroid/content/Context;I)Ljava/util/ArrayList;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/PhotoEditorApplication$1;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoEditorApplication;

    invoke-virtual {v2, v0}, Lcom/sec/android/mimage/photoretouching/PhotoEditorApplication;->startActivity(Landroid/content/Intent;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string v2, "CollageEditor"

    invoke-static {v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->checkEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    sget-object v2, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;->mInstance:Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;

    if-eqz v2, :cond_3

    sget-object v2, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;->mInstance:Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;->moveToFront()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CollageEditor stateId = CollageEditor, sendResponse "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->STATE_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->log(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/PhotoEditorApplication$1;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoEditorApplication;

    # getter for: Lcom/sec/android/mimage/photoretouching/PhotoEditorApplication;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/PhotoEditorApplication;->access$000(Lcom/sec/android/mimage/photoretouching/PhotoEditorApplication;)Lcom/samsung/android/sdk/bixby/BixbyApi;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->STATE_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/sdk/bixby/BixbyApi;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_0

    :cond_3
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/PhotoEditorApplication$1;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoEditorApplication;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/PhotoEditorApplication;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v2, "call_from_executor"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v2, "selected_count"

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "selectedItems"

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/PhotoEditorApplication$1;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoEditorApplication;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/PhotoEditorApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v5}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getMostRecentImageUrisList(Landroid/content/Context;I)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/PhotoEditorApplication$1;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoEditorApplication;

    invoke-virtual {v2, v0}, Lcom/sec/android/mimage/photoretouching/PhotoEditorApplication;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_4
    const-string v2, "AnimationEditor"

    invoke-static {v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/BixByUtils;->checkEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/PhotoEditorApplication$1;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoEditorApplication;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/PhotoEditorApplication;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v2, "call_from_executor"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v2, "selected_count"

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "selectedItems"

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/PhotoEditorApplication$1;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoEditorApplication;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/PhotoEditorApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v5}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getMostRecentImageUrisList(Landroid/content/Context;I)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/PhotoEditorApplication$1;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoEditorApplication;

    invoke-virtual {v2, v0}, Lcom/sec/android/mimage/photoretouching/PhotoEditorApplication;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method
