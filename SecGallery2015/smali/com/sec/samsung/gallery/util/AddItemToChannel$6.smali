.class Lcom/sec/samsung/gallery/util/AddItemToChannel$6;
.super Ljava/lang/Object;
.source "AddItemToChannel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/util/AddItemToChannel;->startChannelViewMode(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/util/AddItemToChannel;

.field final synthetic val$bundle:Landroid/os/Bundle;

.field final synthetic val$channelId:I


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/util/AddItemToChannel;Landroid/os/Bundle;I)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/util/AddItemToChannel$6;->this$0:Lcom/sec/samsung/gallery/util/AddItemToChannel;

    iput-object p2, p0, Lcom/sec/samsung/gallery/util/AddItemToChannel$6;->val$bundle:Landroid/os/Bundle;

    iput p3, p0, Lcom/sec/samsung/gallery/util/AddItemToChannel$6;->val$channelId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x1

    iget-object v2, p0, Lcom/sec/samsung/gallery/util/AddItemToChannel$6;->this$0:Lcom/sec/samsung/gallery/util/AddItemToChannel;

    invoke-static {v2}, Lcom/sec/samsung/gallery/util/AddItemToChannel;->access$000(Lcom/sec/samsung/gallery/util/AddItemToChannel;)Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v2

    sget-object v3, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_CHANNEL:Lcom/sec/samsung/gallery/core/TabTagType;

    invoke-virtual {v2, v3}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setCurrentTabTagType(Lcom/sec/samsung/gallery/core/TabTagType;)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/util/AddItemToChannel$6;->this$0:Lcom/sec/samsung/gallery/util/AddItemToChannel;

    invoke-static {v2}, Lcom/sec/samsung/gallery/util/AddItemToChannel;->access$000(Lcom/sec/samsung/gallery/util/AddItemToChannel;)Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v2

    const-class v3, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    invoke-virtual {v2, v3}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setPreviousViewState(Ljava/lang/Class;)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/util/AddItemToChannel$6;->val$bundle:Landroid/os/Bundle;

    const-string/jumbo v3, "KEY_MEDIA_SET_PATH"

    const-string/jumbo v4, "/channel/channelalbumset"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/util/AddItemToChannel$6;->val$bundle:Landroid/os/Bundle;

    const-string/jumbo v3, "KEY_MEDIA_ITEM_PATH"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "/channel/channelalbum/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/sec/samsung/gallery/util/AddItemToChannel$6;->val$channelId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/util/AddItemToChannel$6;->val$bundle:Landroid/os/Bundle;

    const-string/jumbo v3, "KEY_MEDIA_SET_POSITION"

    invoke-virtual {v2, v3, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/util/AddItemToChannel$6;->val$bundle:Landroid/os/Bundle;

    const-string/jumbo v3, "KEY_NO_SPLIT_MODE"

    invoke-virtual {v2, v3, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/util/AddItemToChannel$6;->val$bundle:Landroid/os/Bundle;

    const-string/jumbo v3, "KEY_VIEW_REDRAW"

    invoke-virtual {v2, v3, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :goto_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/util/AddItemToChannel$6;->this$0:Lcom/sec/samsung/gallery/util/AddItemToChannel;

    invoke-static {v2}, Lcom/sec/samsung/gallery/util/AddItemToChannel;->access$000(Lcom/sec/samsung/gallery/util/AddItemToChannel;)Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/StateManager;->getStateCount()I

    move-result v2

    if-le v2, v6, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/util/AddItemToChannel$6;->this$0:Lcom/sec/samsung/gallery/util/AddItemToChannel;

    invoke-static {v2}, Lcom/sec/samsung/gallery/util/AddItemToChannel;->access$000(Lcom/sec/samsung/gallery/util/AddItemToChannel;)Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v3

    iget-object v2, p0, Lcom/sec/samsung/gallery/util/AddItemToChannel$6;->this$0:Lcom/sec/samsung/gallery/util/AddItemToChannel;

    invoke-static {v2}, Lcom/sec/samsung/gallery/util/AddItemToChannel;->access$000(Lcom/sec/samsung/gallery/util/AddItemToChannel;)Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/StateManager;->getTopState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/sec/android/gallery3d/app/StateManager;->finishState(Lcom/sec/android/gallery3d/app/ActivityState;)V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/util/AddItemToChannel$6;->this$0:Lcom/sec/samsung/gallery/util/AddItemToChannel;

    invoke-static {v2}, Lcom/sec/samsung/gallery/util/AddItemToChannel;->access$000(Lcom/sec/samsung/gallery/util/AddItemToChannel;)Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getApplication()Landroid/app/Application;

    move-result-object v2

    check-cast v2, Lcom/sec/android/gallery3d/app/GalleryAppImpl;

    invoke-static {v2}, Lcom/sec/android/gallery3d/data/ChannelAlbumManager;->getInstance(Lcom/sec/android/gallery3d/app/GalleryApp;)Lcom/sec/android/gallery3d/data/ChannelAlbumManager;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/samsung/gallery/util/AddItemToChannel$6;->this$0:Lcom/sec/samsung/gallery/util/AddItemToChannel;

    invoke-static {v2}, Lcom/sec/samsung/gallery/util/AddItemToChannel;->access$000(Lcom/sec/samsung/gallery/util/AddItemToChannel;)Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Lcom/sec/samsung/gallery/util/AddItemToChannel$6;->val$channelId:I

    const-string/jumbo v4, "is_visible"

    invoke-virtual {v0, v2, v3, v4, v6}, Lcom/sec/android/gallery3d/data/ChannelAlbumManager;->updateChannelIntColumn(Landroid/content/Context;ILjava/lang/String;I)Z

    invoke-static {}, Lcom/sec/samsung/gallery/util/AddItemToChannel;->access$100()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/samsung/gallery/util/AddItemToChannel$6;->this$0:Lcom/sec/samsung/gallery/util/AddItemToChannel;

    invoke-static {v2}, Lcom/sec/samsung/gallery/util/AddItemToChannel;->access$000(Lcom/sec/samsung/gallery/util/AddItemToChannel;)Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Lcom/sec/samsung/gallery/util/AddItemToChannel$6;->val$channelId:I

    const-string/jumbo v4, "notify_status"

    invoke-virtual {v0, v2, v3, v4, v6}, Lcom/sec/android/gallery3d/data/ChannelAlbumManager;->updateChannelIntColumn(Landroid/content/Context;ILjava/lang/String;I)Z

    :cond_1
    iget-object v2, p0, Lcom/sec/samsung/gallery/util/AddItemToChannel$6;->this$0:Lcom/sec/samsung/gallery/util/AddItemToChannel;

    invoke-static {v2}, Lcom/sec/samsung/gallery/util/AddItemToChannel;->access$000(Lcom/sec/samsung/gallery/util/AddItemToChannel;)Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/sec/android/gallery3d/data/DataManager;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "/channel/channelalbum/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sec/samsung/gallery/util/AddItemToChannel$6;->val$channelId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/gallery3d/data/DataManager;->getMediaSet(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v1

    check-cast v1, Lcom/sec/android/gallery3d/data/ChannelAlbum;

    if-eqz v1, :cond_2

    invoke-virtual {v1, v7}, Lcom/sec/android/gallery3d/data/ChannelAlbum;->setNewChannel(Z)V

    :cond_2
    iget-object v2, p0, Lcom/sec/samsung/gallery/util/AddItemToChannel$6;->this$0:Lcom/sec/samsung/gallery/util/AddItemToChannel;

    invoke-static {v2}, Lcom/sec/samsung/gallery/util/AddItemToChannel;->access$000(Lcom/sec/samsung/gallery/util/AddItemToChannel;)Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryTab()Lcom/sec/samsung/gallery/drawer/GalleryTabable;

    move-result-object v2

    const/4 v3, 0x2

    invoke-interface {v2, v3}, Lcom/sec/samsung/gallery/drawer/GalleryTabable;->moveTab(I)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/util/AddItemToChannel$6;->this$0:Lcom/sec/samsung/gallery/util/AddItemToChannel;

    invoke-static {v2}, Lcom/sec/samsung/gallery/util/AddItemToChannel;->access$000(Lcom/sec/samsung/gallery/util/AddItemToChannel;)Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v2

    const-class v3, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    iget-object v4, p0, Lcom/sec/samsung/gallery/util/AddItemToChannel$6;->val$bundle:Landroid/os/Bundle;

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/gallery3d/app/StateManager;->switchState(Ljava/lang/Class;Landroid/os/Bundle;)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/util/AddItemToChannel$6;->this$0:Lcom/sec/samsung/gallery/util/AddItemToChannel;

    invoke-static {v2}, Lcom/sec/samsung/gallery/util/AddItemToChannel;->access$000(Lcom/sec/samsung/gallery/util/AddItemToChannel;)Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v2

    const-class v3, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/gallery3d/app/StateManager;->pushStateAtBottom(Ljava/lang/Class;Landroid/os/Bundle;)V

    return-void
.end method
