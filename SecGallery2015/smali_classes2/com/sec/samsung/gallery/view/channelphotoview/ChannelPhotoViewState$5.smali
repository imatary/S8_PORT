.class Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$5;
.super Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$SimpleModelListener;
.source "ChannelPhotoViewState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$5;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$SimpleModelListener;-><init>()V

    return-void
.end method

.method private loadAllContentsAfterFakeLoading()V
    .locals 3

    sget-boolean v0, Lcom/sec/android/gallery3d/data/LocalAlbumSet;->sbNeedFullLoading:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/android/gallery3d/data/LocalAlbumSet;->sbNeedFullLoading:Z

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$5;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    # getter for: Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$6800(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "content://force_reload"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onAllContentReady()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$5;->loadAllContentsAfterFakeLoading()V

    return-void
.end method

.method public onContentChanged(II)V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$5;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$5;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->updateCover()V

    :cond_0
    return-void
.end method

.method public onSizeChanged(I)V
    .locals 12

    const/4 v11, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$5;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    # getter for: Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mChannelAlbum:Lcom/sec/android/gallery3d/data/ChannelAlbum;
    invoke-static {v6}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$1900(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/android/gallery3d/data/ChannelAlbum;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/data/ChannelAlbum;->getChannelType()I

    move-result v5

    if-nez p1, :cond_3

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$5;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    # getter for: Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v6}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$5200(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$5;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    # getter for: Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mStoryId:I
    invoke-static {v7}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$3200(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)I

    move-result v7

    const-string/jumbo v8, "type"

    invoke-static {v6, v7, v8}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->getChannelInfo(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_2

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$5;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    # getter for: Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;
    invoke-static {v6}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$1800(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$5;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    # getter for: Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;
    invoke-static {v6}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$1800(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$5;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    # invokes: Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->exitSelectionMode()V
    invoke-static {v6}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$3600(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)V

    :cond_0
    const-string/jumbo v6, "ChannelPhotoViewState"

    const-string/jumbo v7, "Finish State : removed channel!!"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$5;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    # invokes: Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->postFinishPhotoViewState()V
    invoke-static {v6}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$5300(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    :cond_3
    sget-object v6, Lcom/sec/samsung/gallery/access/cmh/CMHInterface$STORY_TYPES;->LIVE:Lcom/sec/samsung/gallery/access/cmh/CMHInterface$STORY_TYPES;

    invoke-virtual {v6}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface$STORY_TYPES;->ordinal()I

    move-result v6

    if-eq v5, v6, :cond_4

    sget-object v6, Lcom/sec/samsung/gallery/access/cmh/CMHInterface$STORY_TYPES;->SHARE_FOR_LIVE:Lcom/sec/samsung/gallery/access/cmh/CMHInterface$STORY_TYPES;

    invoke-virtual {v6}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface$STORY_TYPES;->ordinal()I

    move-result v6

    if-ne v5, v6, :cond_b

    :cond_4
    if-nez p1, :cond_a

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$5;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    # invokes: Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->initNoItemView()V
    invoke-static {v6}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$5400(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)V

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$5;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    # setter for: Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mIsHideRemoveMenu:Z
    invoke-static {v6, v10}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$5502(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;Z)Z

    :cond_5
    :goto_1
    if-nez p1, :cond_6

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$5;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    # getter for: Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mIsNeedToDownloadEvent:Z
    invoke-static {v6}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$6000(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Z

    move-result v6

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$5;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    # setter for: Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mIsNeedToDownloadEvent:Z
    invoke-static {v6, v9}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$6002(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;Z)Z

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$5;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    # invokes: Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->downloadEvent()V
    invoke-static {v6}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$6100(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)V

    :cond_6
    iget-object v6, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$5;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    # invokes: Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->checkMediaAvailability()V
    invoke-static {v6}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$6200(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)V

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$5;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    # getter for: Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;
    invoke-static {v6}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$1800(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v6

    if-eqz v6, :cond_14

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$5;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    # getter for: Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;
    invoke-static {v6}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$1800(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getNumberOfMarkedAsSelected()I

    move-result v6

    if-lez v6, :cond_8

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$5;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    # getter for: Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mUpdateSelectionModeTask:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$UpdateSelectionModeTask;
    invoke-static {v6}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$6300(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$UpdateSelectionModeTask;

    move-result-object v6

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$5;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    # getter for: Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mUpdateSelectionModeTask:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$UpdateSelectionModeTask;
    invoke-static {v6}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$6300(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$UpdateSelectionModeTask;

    move-result-object v6

    invoke-virtual {v6, v10}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$UpdateSelectionModeTask;->cancel(Z)Z

    :cond_7
    iget-object v6, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$5;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    new-instance v7, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$UpdateSelectionModeTask;

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$5;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    invoke-direct {v7, v8, v11}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$UpdateSelectionModeTask;-><init>(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$1;)V

    # setter for: Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mUpdateSelectionModeTask:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$UpdateSelectionModeTask;
    invoke-static {v6, v7}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$6302(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$UpdateSelectionModeTask;)Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$UpdateSelectionModeTask;

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$5;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    # getter for: Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mUpdateSelectionModeTask:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$UpdateSelectionModeTask;
    invoke-static {v6}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$6300(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$UpdateSelectionModeTask;

    move-result-object v6

    new-array v7, v9, [Ljava/lang/Void;

    invoke-virtual {v6, v7}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$UpdateSelectionModeTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$5;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    # invokes: Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->postUpdateCountOnActionBar()V
    invoke-static {v6}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$6500(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)V

    :cond_8
    :goto_2
    invoke-static {}, Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil;->isDualScreenMode()Z

    move-result v6

    if-eqz v6, :cond_9

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$5;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    iget-object v6, v6, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$5;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    # invokes: Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->getItemIndexFromDualScreenFocusPath()I
    invoke-static {v7}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$6600(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->setDualScreenFocus(I)V

    :cond_9
    if-eqz p1, :cond_1

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$5;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    # invokes: Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->setDatePeriod()V
    invoke-static {v6}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$700(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)V

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$5;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    # invokes: Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->setItemCount()V
    invoke-static {v6}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$900(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)V

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$5;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    # getter for: Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v6}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$6700(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/app/StateManager;->getTopState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v1

    instance-of v6, v1, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    if-eqz v6, :cond_1

    # getter for: Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->USE_GRACE_LAYOUT:Z
    invoke-static {}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$800()Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$5;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    # invokes: Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->showFloatingTextView()V
    invoke-static {v6}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$1100(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)V

    goto/16 :goto_0

    :cond_a
    iget-object v6, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$5;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    # invokes: Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->removeNoItemView()V
    invoke-static {v6}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$5600(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)V

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$5;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    # setter for: Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mIsHideRemoveMenu:Z
    invoke-static {v6, v9}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$5502(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;Z)Z

    goto/16 :goto_1

    :cond_b
    sget-object v6, Lcom/sec/samsung/gallery/access/cmh/CMHInterface$STORY_TYPES;->MANUAL:Lcom/sec/samsung/gallery/access/cmh/CMHInterface$STORY_TYPES;

    invoke-virtual {v6}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface$STORY_TYPES;->ordinal()I

    move-result v6

    if-ne v5, v6, :cond_c

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$5;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    # getter for: Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mChannelAlbum:Lcom/sec/android/gallery3d/data/ChannelAlbum;
    invoke-static {v6}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$1900(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/android/gallery3d/data/ChannelAlbum;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/data/ChannelAlbum;->getChannelSharedStatus()Z

    move-result v6

    if-nez v6, :cond_d

    :cond_c
    iget-object v6, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$5;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    # getter for: Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mIsReceivedEventView:Z
    invoke-static {v6}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$5700(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Z

    move-result v6

    if-eqz v6, :cond_11

    :cond_d
    if-nez p1, :cond_10

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$5;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    # invokes: Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->removeNoItemView()V
    invoke-static {v6}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$5600(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)V

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$5;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    # invokes: Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->initNoItemView()V
    invoke-static {v6}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$5400(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)V

    # getter for: Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->USE_GRACE_LAYOUT:Z
    invoke-static {}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$800()Z

    move-result v6

    if-eqz v6, :cond_e

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$5;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    iget-object v6, v6, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    invoke-virtual {v6, v11}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->setChannelDatePeriod(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$5;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    # invokes: Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->setItemCount()V
    invoke-static {v6}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$900(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)V

    :cond_e
    iget-object v6, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$5;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    # setter for: Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mIsHideRemoveMenu:Z
    invoke-static {v6, v10}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$5502(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;Z)Z

    const/4 v6, 0x2

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$5;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    invoke-virtual {v7}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->getActionBarStyle()I

    move-result v7

    if-eq v6, v7, :cond_f

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$5;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    # invokes: Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->initNoItemActionBarTheme()V
    invoke-static {v6}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$5800(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)V

    :cond_f
    :goto_3
    iget-object v6, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$5;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    # getter for: Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;
    invoke-static {v6}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$5900(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/samsung/gallery/view/ActionBarManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/samsung/gallery/view/ActionBarManager;->invalidateOptionsMenu()V

    goto/16 :goto_1

    :cond_10
    iget-object v6, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$5;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    # invokes: Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->removeNoItemView()V
    invoke-static {v6}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$5600(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)V

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$5;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    # setter for: Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mIsHideRemoveMenu:Z
    invoke-static {v6, v9}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$5502(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;Z)Z

    goto :goto_3

    :cond_11
    iget-object v6, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$5;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    # getter for: Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mChannelAlbum:Lcom/sec/android/gallery3d/data/ChannelAlbum;
    invoke-static {v6}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$1900(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/android/gallery3d/data/ChannelAlbum;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/data/ChannelAlbum;->getChannelSharedStatus()Z

    move-result v6

    if-eqz v6, :cond_13

    if-nez p1, :cond_12

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$5;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    # invokes: Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->removeNoItemView()V
    invoke-static {v6}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$5600(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)V

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$5;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    # invokes: Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->initNoItemView()V
    invoke-static {v6}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$5400(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)V

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$5;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    # setter for: Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mIsHideRemoveMenu:Z
    invoke-static {v6, v10}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$5502(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;Z)Z

    goto/16 :goto_1

    :cond_12
    iget-object v6, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$5;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    # invokes: Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->removeNoItemView()V
    invoke-static {v6}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$5600(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)V

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$5;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    # setter for: Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mIsHideRemoveMenu:Z
    invoke-static {v6, v9}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$5502(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;Z)Z

    goto/16 :goto_1

    :cond_13
    if-nez p1, :cond_5

    const-string/jumbo v6, "ChannelPhotoViewState"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Finish State : size = 0 and event type is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$5;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    # invokes: Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->postFinishPhotoViewState()V
    invoke-static {v6}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$5300(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)V

    goto/16 :goto_1

    :cond_14
    iget-object v6, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$5;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    # getter for: Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;
    invoke-static {v6}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$1800(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v6

    invoke-virtual {v6, v9}, Lcom/sec/android/gallery3d/ui/SelectionManager;->get(I)Lcom/sec/android/gallery3d/data/MediaObject;

    move-result-object v3

    instance-of v6, v3, Lcom/sec/android/gallery3d/data/MediaItem;

    if-eqz v6, :cond_8

    move-object v2, v3

    check-cast v2, Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_8

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_8

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$5;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    # getter for: Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;
    invoke-static {v6}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$2000(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->dismissDialogs()V

    goto/16 :goto_2
.end method
