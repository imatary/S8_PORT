.class Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager$3;
.super Ljava/lang/Object;
.source "CollageManager.java"

# interfaces
.implements Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment$OnAttachInterfaceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->sendGallery(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$i:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager$3;->this$0:Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;

    iput-object p2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager$3;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager$3;->val$i:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAttachCameraImageSelected(Landroid/net/Uri;)V
    .locals 3

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager$3;->this$0:Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    # setter for: Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->selectedIntent:Landroid/content/Intent;
    invoke-static {v1, v2}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->access$502(Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;Landroid/content/Intent;)Landroid/content/Intent;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager$3;->this$0:Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->selectedIntent:Landroid/content/Intent;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->access$500(Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "selectedItems"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager$3;->this$0:Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;

    const/16 v2, 0xfa2

    # setter for: Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->selectedCode:I
    invoke-static {v1, v2}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->access$602(Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;I)I

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager$3;->this$0:Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->hideAttachGallery(Z)V

    return-void
.end method

.method public onAttachCameraShutterButtonClicked()V
    .locals 0

    return-void
.end method

.method public onAttachGalleryImageSelected(Landroid/net/Uri;)V
    .locals 4

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager$3;->this$0:Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->access$400(Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;)Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    const v3, 0x7f0e00de

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v2

    if-eqz v2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager$3;->this$0:Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    # setter for: Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->selectedIntent:Landroid/content/Intent;
    invoke-static {v2, v3}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->access$502(Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;Landroid/content/Intent;)Landroid/content/Intent;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager$3;->this$0:Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->selectedIntent:Landroid/content/Intent;
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->access$500(Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "selectedItems"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager$3;->this$0:Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;

    const/16 v3, 0xfa2

    # setter for: Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->selectedCode:I
    invoke-static {v2, v3}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->access$602(Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;I)I

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager$3;->this$0:Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->hideAttachGallery(Z)V

    goto :goto_0
.end method

.method public onAttachGalleryMultiImageSelected(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onChangedLayoutMode(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager$3;->this$0:Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->access$400(Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar;->hide()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager$3;->this$0:Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->access$400(Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar;->show()V

    goto :goto_0
.end method

.method public onHideAttachSheet()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager$3;->this$0:Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->hideAttachGallery(Z)V

    return-void
.end method

.method public onOtherAppSelected(Landroid/content/Intent;)V
    .locals 6

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager$3;->this$0:Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;

    const/4 v2, 0x1

    # setter for: Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mNewActivityStarted:Z
    invoke-static {v1, v2}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->access$702(Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;Z)Z

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager$3;->val$context:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager$3;->val$i:Landroid/content/Intent;

    const/16 v3, 0xfa2

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance v1, Landroid/os/Handler;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager$3;->this$0:Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->access$400(Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager$3$1;

    invoke-direct {v2, p0}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager$3$1;-><init>(Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager$3;)V

    const-wide/16 v4, 0xc8

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager$3;->this$0:Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;

    const/4 v2, 0x0

    # setter for: Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mNewActivityStarted:Z
    invoke-static {v1, v2}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->access$702(Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;Z)Z

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/multigrid/QuramUtil;->logE(Ljava/lang/String;)V

    goto :goto_0
.end method
