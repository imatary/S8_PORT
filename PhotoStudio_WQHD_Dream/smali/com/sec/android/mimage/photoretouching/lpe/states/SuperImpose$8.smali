.class Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose$8;
.super Ljava/lang/Object;
.source "SuperImpose.java"

# interfaces
.implements Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment$OnAttachInterfaceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->addImageFromGallery()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose$8;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAttachCameraImageSelected(Landroid/net/Uri;)V
    .locals 3

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose$8;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    # setter for: Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->selectedIntent:Landroid/content/Intent;
    invoke-static {v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->access$802(Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;Landroid/content/Intent;)Landroid/content/Intent;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose$8;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->selectedIntent:Landroid/content/Intent;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->access$800(Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "selectedItems"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose$8;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->hideAttachGallery(Z)V

    return-void
.end method

.method public onAttachCameraShutterButtonClicked()V
    .locals 0

    return-void
.end method

.method public onAttachGalleryImageSelected(Landroid/net/Uri;)V
    .locals 4

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose$8;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;

    const/4 v3, 0x0

    # setter for: Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mCurrentDecItem:Lcom/sec/android/mimage/photoretouching/Decoration/DecorationItem;
    invoke-static {v2, v3}, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->access$1002(Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;Lcom/sec/android/mimage/photoretouching/Decoration/DecorationItem;)Lcom/sec/android/mimage/photoretouching/Decoration/DecorationItem;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose$8;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;

    iget-object v2, v2, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getContext()Landroid/content/Context;

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
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose$8;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    # setter for: Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->selectedIntent:Landroid/content/Intent;
    invoke-static {v2, v3}, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->access$802(Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;Landroid/content/Intent;)Landroid/content/Intent;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose$8;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->selectedIntent:Landroid/content/Intent;
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->access$800(Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "selectedItems"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose$8;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->hideAttachGallery(Z)V

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
    .locals 0

    return-void
.end method

.method public onHideAttachSheet()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose$8;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->hideAttachGallery(Z)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose$8;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    const/high16 v1, 0x80000

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->setState(I)V

    return-void
.end method

.method public onOtherAppSelected(Landroid/content/Intent;)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose$8;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->hideAttachGallery(Z)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose$8;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    const/4 v1, 0x1

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->pickGalleryImage(II)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose$8;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;

    # invokes: Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->setSuperImposeState()V
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;->access$1100(Lcom/sec/android/mimage/photoretouching/lpe/states/SuperImpose;)V

    return-void
.end method
