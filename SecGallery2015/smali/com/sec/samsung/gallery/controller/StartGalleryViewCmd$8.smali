.class Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd$8;
.super Ljava/lang/Object;
.source "StartGalleryViewCmd.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;->startChannelViewMode(IIZZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;

.field final synthetic val$bundle:Landroid/os/Bundle;

.field final synthetic val$channelId:I

.field final synthetic val$fileId:I

.field final synthetic val$isAcceptedStory:Z

.field final synthetic val$isFromReminder:Z

.field final synthetic val$stoyDetailAlone:Z


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;Landroid/os/Bundle;IIZZZ)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd$8;->this$0:Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;

    iput-object p2, p0, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd$8;->val$bundle:Landroid/os/Bundle;

    iput p3, p0, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd$8;->val$channelId:I

    iput p4, p0, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd$8;->val$fileId:I

    iput-boolean p5, p0, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd$8;->val$stoyDetailAlone:Z

    iput-boolean p6, p0, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd$8;->val$isFromReminder:Z

    iput-boolean p7, p0, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd$8;->val$isAcceptedStory:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v5, 0x1

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd$8;->this$0:Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;

    invoke-static {v0}, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;->access$100(Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v0

    sget-object v1, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_CHANNEL:Lcom/sec/samsung/gallery/core/TabTagType;

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setCurrentTabTagType(Lcom/sec/samsung/gallery/core/TabTagType;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd$8;->this$0:Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;

    invoke-static {v0}, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;->access$100(Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v0

    const-class v1, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setPreviousViewState(Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd$8;->val$bundle:Landroid/os/Bundle;

    const-string/jumbo v1, "KEY_MEDIA_SET_PATH"

    const-string/jumbo v2, "/channel/channelalbumset"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd$8;->val$bundle:Landroid/os/Bundle;

    const-string/jumbo v1, "KEY_MEDIA_ITEM_PATH"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "/channel/channelalbum/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd$8;->val$channelId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd$8;->val$bundle:Landroid/os/Bundle;

    const-string/jumbo v1, "KEY_MEDIA_SET_POSITION"

    iget v2, p0, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd$8;->val$fileId:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd$8;->val$bundle:Landroid/os/Bundle;

    const-string/jumbo v1, "KEY_NO_SPLIT_MODE"

    invoke-virtual {v0, v1, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd$8;->val$bundle:Landroid/os/Bundle;

    const-string/jumbo v1, "KEY_VIEW_REDRAW"

    invoke-virtual {v0, v1, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd$8;->val$bundle:Landroid/os/Bundle;

    const-string/jumbo v1, "story_detail_alone"

    iget-boolean v2, p0, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd$8;->val$stoyDetailAlone:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd$8;->val$bundle:Landroid/os/Bundle;

    const-string/jumbo v1, "from_reminder"

    iget-boolean v2, p0, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd$8;->val$isFromReminder:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :goto_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd$8;->this$0:Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;

    invoke-static {v0}, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;->access$100(Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/StateManager;->getStateCount()I

    move-result v0

    if-le v0, v5, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd$8;->this$0:Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;

    invoke-static {v0}, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;->access$100(Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd$8;->this$0:Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;

    invoke-static {v1}, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;->access$100(Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/StateManager;->getTopState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/StateManager;->finishState(Lcom/sec/android/gallery3d/app/ActivityState;)V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseEventNotificationView:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd$8;->val$isAcceptedStory:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd$8;->this$0:Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;

    invoke-static {v0}, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;->access$100(Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryApplication()Lcom/sec/android/gallery3d/app/GalleryApp;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/gallery3d/data/ChannelAlbumManager;->getInstance(Lcom/sec/android/gallery3d/app/GalleryApp;)Lcom/sec/android/gallery3d/data/ChannelAlbumManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd$8;->this$0:Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;

    invoke-static {v1}, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;->access$100(Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd$8;->val$channelId:I

    const-string/jumbo v3, "is_visible"

    invoke-virtual {v0, v1, v2, v3, v5}, Lcom/sec/android/gallery3d/data/ChannelAlbumManager;->updateChannelIntColumn(Landroid/content/Context;ILjava/lang/String;I)Z

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd$8;->this$0:Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;

    invoke-static {v0}, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;->access$100(Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryApplication()Lcom/sec/android/gallery3d/app/GalleryApp;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/gallery3d/data/ChannelAlbumManager;->getInstance(Lcom/sec/android/gallery3d/app/GalleryApp;)Lcom/sec/android/gallery3d/data/ChannelAlbumManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd$8;->this$0:Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;

    invoke-static {v1}, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;->access$100(Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd$8;->val$channelId:I

    const-string/jumbo v3, "type"

    sget-object v4, Lcom/sec/samsung/gallery/access/cmh/CMHInterface$STORY_TYPES;->MANUAL:Lcom/sec/samsung/gallery/access/cmh/CMHInterface$STORY_TYPES;

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface$STORY_TYPES;->ordinal()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/gallery3d/data/ChannelAlbumManager;->updateChannelIntColumn(Landroid/content/Context;ILjava/lang/String;I)Z

    :cond_1
    invoke-static {}, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;->access$200()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd$8;->this$0:Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;

    invoke-static {v0}, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;->access$100(Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryTab()Lcom/sec/samsung/gallery/drawer/GalleryTabable;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/sec/samsung/gallery/drawer/GalleryTabable;->moveTab(I)V

    :cond_2
    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd$8;->this$0:Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;

    invoke-static {v0}, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;->access$100(Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/StateManager;->getTopState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd$8;->this$0:Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;

    invoke-static {v0}, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;->access$100(Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v0

    const-class v1, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd$8;->val$bundle:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/app/StateManager;->switchState(Ljava/lang/Class;Landroid/os/Bundle;)V

    :goto_1
    iget-boolean v0, p0, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd$8;->val$stoyDetailAlone:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd$8;->this$0:Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;

    invoke-static {v0}, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;->access$100(Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v0

    const-class v1, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/app/StateManager;->pushStateAtBottom(Ljava/lang/Class;Landroid/os/Bundle;)V

    :cond_3
    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd$8;->this$0:Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;

    invoke-static {v0}, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;->access$100(Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getSelectionManager()Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd$8;->this$0:Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;

    invoke-static {v0}, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;->access$100(Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getSelectionManager()Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/SelectionManager;->leaveSelectionMode()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd$8;->this$0:Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;

    invoke-static {v0}, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;->access$100(Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryTab()Lcom/sec/samsung/gallery/drawer/GalleryTabable;

    move-result-object v0

    invoke-interface {v0, v5}, Lcom/sec/samsung/gallery/drawer/GalleryTabable;->setEnableTab(Z)V

    :cond_4
    return-void

    :cond_5
    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd$8;->this$0:Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;

    invoke-static {v0}, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;->access$100(Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v0

    const-class v1, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd$8;->val$bundle:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/app/StateManager;->startState(Ljava/lang/Class;Landroid/os/Bundle;)V

    goto :goto_1
.end method
