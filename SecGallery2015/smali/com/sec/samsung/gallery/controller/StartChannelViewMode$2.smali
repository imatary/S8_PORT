.class Lcom/sec/samsung/gallery/controller/StartChannelViewMode$2;
.super Ljava/lang/Object;
.source "StartChannelViewMode.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/controller/StartChannelViewMode;->startChannelViewMode(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/controller/StartChannelViewMode;

.field final synthetic val$bundle:Landroid/os/Bundle;

.field final synthetic val$channelId:I


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/controller/StartChannelViewMode;Landroid/os/Bundle;I)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/controller/StartChannelViewMode$2;->this$0:Lcom/sec/samsung/gallery/controller/StartChannelViewMode;

    iput-object p2, p0, Lcom/sec/samsung/gallery/controller/StartChannelViewMode$2;->val$bundle:Landroid/os/Bundle;

    iput p3, p0, Lcom/sec/samsung/gallery/controller/StartChannelViewMode$2;->val$channelId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/StartChannelViewMode$2;->this$0:Lcom/sec/samsung/gallery/controller/StartChannelViewMode;

    # getter for: Lcom/sec/samsung/gallery/controller/StartChannelViewMode;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v0}, Lcom/sec/samsung/gallery/controller/StartChannelViewMode;->access$000(Lcom/sec/samsung/gallery/controller/StartChannelViewMode;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v0

    const-class v1, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setPreviousViewState(Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/StartChannelViewMode$2;->val$bundle:Landroid/os/Bundle;

    const-string/jumbo v1, "KEY_MEDIA_SET_PATH"

    const-string/jumbo v2, "/channel/channelalbumset"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/StartChannelViewMode$2;->val$bundle:Landroid/os/Bundle;

    const-string/jumbo v1, "KEY_MEDIA_ITEM_PATH"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "/channel/channelalbum/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/samsung/gallery/controller/StartChannelViewMode$2;->val$channelId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/StartChannelViewMode$2;->val$bundle:Landroid/os/Bundle;

    const-string/jumbo v1, "KEY_MEDIA_SET_POSITION"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/StartChannelViewMode$2;->val$bundle:Landroid/os/Bundle;

    const-string/jumbo v1, "KEY_NO_SPLIT_MODE"

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/StartChannelViewMode$2;->val$bundle:Landroid/os/Bundle;

    const-string/jumbo v1, "KEY_VIEW_REDRAW"

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :goto_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/StartChannelViewMode$2;->this$0:Lcom/sec/samsung/gallery/controller/StartChannelViewMode;

    # getter for: Lcom/sec/samsung/gallery/controller/StartChannelViewMode;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v0}, Lcom/sec/samsung/gallery/controller/StartChannelViewMode;->access$000(Lcom/sec/samsung/gallery/controller/StartChannelViewMode;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/StateManager;->getStateCount()I

    move-result v0

    if-le v0, v4, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/StartChannelViewMode$2;->this$0:Lcom/sec/samsung/gallery/controller/StartChannelViewMode;

    # getter for: Lcom/sec/samsung/gallery/controller/StartChannelViewMode;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v0}, Lcom/sec/samsung/gallery/controller/StartChannelViewMode;->access$000(Lcom/sec/samsung/gallery/controller/StartChannelViewMode;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/StartChannelViewMode$2;->this$0:Lcom/sec/samsung/gallery/controller/StartChannelViewMode;

    # getter for: Lcom/sec/samsung/gallery/controller/StartChannelViewMode;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v1}, Lcom/sec/samsung/gallery/controller/StartChannelViewMode;->access$000(Lcom/sec/samsung/gallery/controller/StartChannelViewMode;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/StateManager;->getTopState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/StateManager;->finishState(Lcom/sec/android/gallery3d/app/ActivityState;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/StartChannelViewMode$2;->this$0:Lcom/sec/samsung/gallery/controller/StartChannelViewMode;

    # getter for: Lcom/sec/samsung/gallery/controller/StartChannelViewMode;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v0}, Lcom/sec/samsung/gallery/controller/StartChannelViewMode;->access$000(Lcom/sec/samsung/gallery/controller/StartChannelViewMode;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v0

    const-class v1, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/app/StateManager;->pushStateAtBottom(Ljava/lang/Class;Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/StartChannelViewMode$2;->this$0:Lcom/sec/samsung/gallery/controller/StartChannelViewMode;

    # getter for: Lcom/sec/samsung/gallery/controller/StartChannelViewMode;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v0}, Lcom/sec/samsung/gallery/controller/StartChannelViewMode;->access$000(Lcom/sec/samsung/gallery/controller/StartChannelViewMode;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/StateManager;->getTopState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/StartChannelViewMode$2;->this$0:Lcom/sec/samsung/gallery/controller/StartChannelViewMode;

    # getter for: Lcom/sec/samsung/gallery/controller/StartChannelViewMode;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v0}, Lcom/sec/samsung/gallery/controller/StartChannelViewMode;->access$000(Lcom/sec/samsung/gallery/controller/StartChannelViewMode;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v0

    const-class v1, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/StartChannelViewMode$2;->val$bundle:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/app/StateManager;->switchState(Ljava/lang/Class;Landroid/os/Bundle;)V

    :goto_1
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/StartChannelViewMode$2;->this$0:Lcom/sec/samsung/gallery/controller/StartChannelViewMode;

    # getter for: Lcom/sec/samsung/gallery/controller/StartChannelViewMode;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v0}, Lcom/sec/samsung/gallery/controller/StartChannelViewMode;->access$000(Lcom/sec/samsung/gallery/controller/StartChannelViewMode;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v0

    const-class v1, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/StartChannelViewMode$2;->val$bundle:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/app/StateManager;->startState(Ljava/lang/Class;Landroid/os/Bundle;)V

    goto :goto_1
.end method
