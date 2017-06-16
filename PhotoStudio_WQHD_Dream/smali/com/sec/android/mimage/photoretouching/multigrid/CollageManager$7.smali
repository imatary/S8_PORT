.class Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager$7;
.super Ljava/lang/Object;
.source "CollageManager.java"

# interfaces
.implements Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment$OnAttachInterfaceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->pickImageFromGallery(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;

.field final synthetic val$isReplace:Z


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;Z)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager$7;->this$0:Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;

    iput-boolean p2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager$7;->val$isReplace:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAttachCameraImageSelected(Landroid/net/Uri;)V
    .locals 3

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager$7;->this$0:Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    # setter for: Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->selectedIntent:Landroid/content/Intent;
    invoke-static {v1, v2}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->access$502(Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;Landroid/content/Intent;)Landroid/content/Intent;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager$7;->this$0:Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->selectedIntent:Landroid/content/Intent;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->access$500(Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "selectedItems"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager$7;->this$0:Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;

    const/16 v2, 0xfa1

    # setter for: Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->selectedCode:I
    invoke-static {v1, v2}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->access$602(Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;I)I

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager$7;->this$0:Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->hideAttachGallery(Z)V

    return-void
.end method

.method public onAttachCameraShutterButtonClicked()V
    .locals 0

    return-void
.end method

.method public onAttachGalleryImageSelected(Landroid/net/Uri;)V
    .locals 0

    return-void
.end method

.method public onAttachGalleryMultiImageSelected(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager$7;->this$0:Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    # setter for: Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->selectedIntent:Landroid/content/Intent;
    invoke-static {v0, v1}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->access$502(Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;Landroid/content/Intent;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager$7;->this$0:Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->selectedIntent:Landroid/content/Intent;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->access$500(Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "selectedItems"

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager$7;->this$0:Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;

    const/16 v1, 0xfa1

    # setter for: Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->selectedCode:I
    invoke-static {v0, v1}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->access$602(Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;I)I

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager$7;->this$0:Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->hideAttachGallery(Z)V

    return-void
.end method

.method public onChangedLayoutMode(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager$7;->this$0:Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;

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
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager$7;->this$0:Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;

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

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager$7;->this$0:Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->hideAttachGallery(Z)V

    return-void
.end method

.method public onOtherAppSelected(Landroid/content/Intent;)V
    .locals 6

    const/4 v2, 0x1

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.intent.action.MULTIPLE_PICK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    iget-boolean v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager$7;->val$isReplace:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager$7;->this$0:Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->access$300(Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;)Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->getItemCount()I

    move-result v1

    sget v3, Lcom/sec/android/mimage/photoretouching/multigrid/util/CollageConstants;->MAX_GRIDS:I

    if-ge v1, v3, :cond_1

    const-string v3, "pick-max-item"

    sget v1, Lcom/sec/android/mimage/photoretouching/multigrid/util/CollageConstants;->MAX_GRIDS:I

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager$7;->this$0:Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;
    invoke-static {v4}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->access$300(Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;)Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->getItemCount()I

    move-result v4

    sub-int v4, v1, v4

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager$7;->this$0:Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->access$300(Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;)Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->getEmptyItem()Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    add-int/2addr v1, v4

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager$7;->this$0:Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;

    # setter for: Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mNewActivityStarted:Z
    invoke-static {v1, v2}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->access$702(Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;Z)Z

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager$7;->this$0:Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->access$400(Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;)Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    const/16 v2, 0xfa1

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_1
    new-instance v1, Landroid/os/Handler;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager$7;->this$0:Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->access$400(Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager$7$1;

    invoke-direct {v2, p0}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager$7$1;-><init>(Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager$7;)V

    const-wide/16 v4, 0xc8

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_0
    move v1, v2

    goto :goto_0

    :cond_1
    const-string v1, "pick-max-item"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager$7;->this$0:Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;

    # setter for: Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mNewActivityStarted:Z
    invoke-static {v1, v2}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->access$702(Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;Z)Z

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager$7;->this$0:Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;

    # getter for: Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->access$400(Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;)Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    const/16 v2, 0xfa2

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1
.end method
