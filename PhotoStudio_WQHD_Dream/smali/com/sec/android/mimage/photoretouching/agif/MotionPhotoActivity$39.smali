.class Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$39;
.super Ljava/lang/Object;
.source "MotionPhotoActivity.java"

# interfaces
.implements Lcom/sec/android/mimage/photoretouching/lpe/attach/AttachSheetFragment$OnAttachInterfaceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->addAgifImages()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;Landroid/content/Intent;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$39;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    iput-object p2, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$39;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAttachCameraImageSelected(Landroid/net/Uri;)V
    .locals 4

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$39;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    # setter for: Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->selectedIntent:Landroid/content/Intent;
    invoke-static {v1, v2}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->access$6202(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;Landroid/content/Intent;)Landroid/content/Intent;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$39;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    # getter for: Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->selectedIntent:Landroid/content/Intent;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->access$6200(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "selectedItems"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$39;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    const/4 v2, 0x1

    const/4 v3, 0x0

    # invokes: Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->hideAttachGallery(ZZ)V
    invoke-static {v1, v2, v3}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->access$6300(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;ZZ)V

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

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$39;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    # setter for: Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->selectedIntent:Landroid/content/Intent;
    invoke-static {v0, v1}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->access$6202(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;Landroid/content/Intent;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$39;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    # getter for: Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->selectedIntent:Landroid/content/Intent;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->access$6200(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "selectedItems"

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$39;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    const/4 v1, 0x1

    const/4 v2, 0x0

    # invokes: Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->hideAttachGallery(ZZ)V
    invoke-static {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->access$6300(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;ZZ)V

    return-void
.end method

.method public onChangedLayoutMode(Z)V
    .locals 0

    return-void
.end method

.method public onHideAttachSheet()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$39;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    const/4 v1, 0x1

    const/4 v2, 0x0

    # invokes: Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->hideAttachGallery(ZZ)V
    invoke-static {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->access$6300(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;ZZ)V

    return-void
.end method

.method public onOtherAppSelected(Landroid/content/Intent;)V
    .locals 4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$39;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$39;->val$intent:Landroid/content/Intent;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->startActivityForResult(Landroid/content/Intent;I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$39;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->bottom_buttons:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$39;->this$0:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    # getter for: Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;->access$6400(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$39$1;

    invoke-direct {v1, p0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$39$1;-><init>(Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity$39;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
