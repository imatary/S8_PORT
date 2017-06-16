.class Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager$10$1;
.super Ljava/lang/Object;
.source "CollageManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager$10;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager$10;


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager$10;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager$10$1;->this$1:Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager$10;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v5, 0x0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager$10$1;->this$1:Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager$10;

    iget-object v1, v1, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager$10;->this$0:Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->access$400(Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07000e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager$10$1;->this$1:Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager$10;

    iget-object v3, v3, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager$10;->this$0:Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->access$400(Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager$10$1;->this$1:Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager$10;

    iget-object v4, v4, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager$10;->this$0:Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->savePath:Ljava/lang/String;
    invoke-static {v4}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->access$1200(Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getDirFromSavePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager$10$1;->this$1:Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager$10;

    iget-object v1, v1, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager$10;->this$0:Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->access$400(Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager$10$1;->this$1:Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager$10;

    iget-object v1, v1, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager$10;->this$0:Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->access$400(Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;)Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;

    sget-object v2, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->STATE_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;->sendExecutorResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager$10$1;->this$1:Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager$10;

    iget-object v1, v1, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager$10;->this$0:Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->access$400(Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;)Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;

    const-string v2, "CollageSave"

    invoke-virtual {v1, v2}, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;->requestNlgWithoutParameters(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager$10$1;->this$1:Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager$10;

    iget-object v1, v1, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager$10;->val$dialog:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager$10$1;->this$1:Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager$10;

    iget-object v1, v1, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager$10;->val$dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager$10$1;->this$1:Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager$10;

    iget-object v1, v1, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager$10;->this$0:Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->access$400(Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;)Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager$10$1;->this$1:Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager$10;

    iget-object v1, v1, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager$10;->this$0:Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->access$400(Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;)Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager$10$1;->this$1:Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager$10;

    iget-object v1, v1, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager$10;->val$dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->cancel()V

    :cond_0
    return-void
.end method
