.class public Lcom/samsung/android/devicecog/gallery/viewstatehandler/PhotoViewDCHandler;
.super Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;
.source "PhotoViewDCHandler.java"


# static fields
.field private static RECYCLE_BIN_SELECTED_STATE:[Ljava/lang/String;

.field private static SELECTED_STATE:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;Lcom/sec/android/gallery3d/app/ActivityState;)V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;-><init>(Landroid/app/Activity;Ljava/util/Observer;)V

    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "AlbumThumbnailsEmptySelectedView"

    aput-object v1, v0, v2

    const-string/jumbo v1, "AlbumThumbnailsSelectedView"

    aput-object v1, v0, v3

    sput-object v0, Lcom/samsung/android/devicecog/gallery/viewstatehandler/PhotoViewDCHandler;->SELECTED_STATE:[Ljava/lang/String;

    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "RecycleBinEmptySelectedView"

    aput-object v1, v0, v2

    const-string/jumbo v1, "RecycleBinSelectedView"

    aput-object v1, v0, v3

    sput-object v0, Lcom/samsung/android/devicecog/gallery/viewstatehandler/PhotoViewDCHandler;->RECYCLE_BIN_SELECTED_STATE:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected createDCSelectItemTask(Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$SelectionListener;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/devicecog/gallery/viewstatehandler/PhotoViewDCHandler;->mDCSelectItemTask:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/devicecog/gallery/viewstatehandler/PhotoViewDCHandler;->mDCSelectItemTask:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask;->cancel(Z)Z

    :cond_0
    new-instance v1, Lcom/samsung/android/devicecog/gallery/selectiontask/PhotoViewDCSelectItemTask;

    iget-object v0, p0, Lcom/samsung/android/devicecog/gallery/viewstatehandler/PhotoViewDCHandler;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v1, v0}, Lcom/samsung/android/devicecog/gallery/selectiontask/PhotoViewDCSelectItemTask;-><init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)V

    iput-object v1, p0, Lcom/samsung/android/devicecog/gallery/viewstatehandler/PhotoViewDCHandler;->mDCSelectItemTask:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask;

    iget-object v0, p0, Lcom/samsung/android/devicecog/gallery/viewstatehandler/PhotoViewDCHandler;->mDCSelectItemTask:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask;

    invoke-virtual {v0, p1}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask;->setSelectionListener(Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$SelectionListener;)V

    return-void
.end method

.method public getScreenStateId()Ljava/lang/String;
    .locals 4

    iget-object v3, p0, Lcom/samsung/android/devicecog/gallery/viewstatehandler/PhotoViewDCHandler;->mActivity:Landroid/app/Activity;

    check-cast v3, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getSelectionManager()Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/devicecog/gallery/viewstatehandler/PhotoViewDCHandler;->mActivity:Landroid/app/Activity;

    check-cast v3, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentTabTagType()Lcom/sec/samsung/gallery/core/TabTagType;

    move-result-object v0

    sget-object v3, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_RECYCLEBIN:Lcom/sec/samsung/gallery/core/TabTagType;

    if-ne v0, v3, :cond_2

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getMediaList()Ljava/util/LinkedList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo v1, "RecycleBinEmptySelectedView"

    :goto_0
    return-object v1

    :cond_0
    const-string/jumbo v1, "RecycleBinSelectedView"

    goto :goto_0

    :cond_1
    const-string/jumbo v1, "RecycleBin"

    goto :goto_0

    :cond_2
    sget-object v3, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_SCLOUDVIEW:Lcom/sec/samsung/gallery/core/TabTagType;

    if-ne v0, v3, :cond_5

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getMediaList()Ljava/util/LinkedList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    const-string/jumbo v1, "CloudEmptySelectedView"

    :goto_1
    goto :goto_0

    :cond_3
    const-string/jumbo v1, "CloudSelectedView"

    goto :goto_1

    :cond_4
    const-string/jumbo v1, "CloudView"

    goto :goto_0

    :cond_5
    sget-object v3, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_MTP:Lcom/sec/samsung/gallery/core/TabTagType;

    if-ne v0, v3, :cond_6

    const-string/jumbo v1, "MtpView"

    goto :goto_0

    :cond_6
    invoke-virtual {v2}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getMediaList()Ljava/util/LinkedList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_7

    const-string/jumbo v1, "AlbumThumbnailsEmptySelectedView"

    :goto_2
    goto :goto_0

    :cond_7
    const-string/jumbo v1, "AlbumThumbnailsSelectedView"

    goto :goto_2

    :cond_8
    const-string/jumbo v1, "AlbumThumbnailView"

    goto :goto_0
.end method

.method public getSelectedStateArray()[Ljava/lang/String;
    .locals 2

    iget-object v1, p0, Lcom/samsung/android/devicecog/gallery/viewstatehandler/PhotoViewDCHandler;->mActivity:Landroid/app/Activity;

    check-cast v1, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentTabTagType()Lcom/sec/samsung/gallery/core/TabTagType;

    move-result-object v0

    sget-object v1, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_RECYCLEBIN:Lcom/sec/samsung/gallery/core/TabTagType;

    if-ne v0, v1, :cond_0

    sget-object v1, Lcom/samsung/android/devicecog/gallery/viewstatehandler/PhotoViewDCHandler;->RECYCLE_BIN_SELECTED_STATE:[Ljava/lang/String;

    :goto_0
    return-object v1

    :cond_0
    sget-object v1, Lcom/samsung/android/devicecog/gallery/viewstatehandler/PhotoViewDCHandler;->SELECTED_STATE:[Ljava/lang/String;

    goto :goto_0
.end method

.method public logDCEnterSelectionMode(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/samsung/android/devicecog/gallery/DCStateLogUtil$LoggingType;->ENTER:Lcom/samsung/android/devicecog/gallery/DCStateLogUtil$LoggingType;

    invoke-static {p1, v0}, Lcom/samsung/android/devicecog/gallery/DCStateLogUtil;->logDCState(Ljava/lang/String;Lcom/samsung/android/devicecog/gallery/DCStateLogUtil$LoggingType;)V

    return-void
.end method

.method public logDCExitSelectionMode(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "AlbumThumbnailsSelectedView"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "AlbumThumbnailsEmptySelectedView"

    invoke-static {v0, p1}, Lcom/samsung/android/devicecog/gallery/DCStateLogUtil;->logDCStateEnterExit(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p1, "AlbumThumbnailsEmptySelectedView"

    :cond_0
    const-string/jumbo v0, "AlbumThumbnailView"

    invoke-static {v0, p1}, Lcom/samsung/android/devicecog/gallery/DCStateLogUtil;->logDCStateEnterExit(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public startCommand(Ljava/lang/String;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/bixby/data/Parameter;",
            ">;)V"
        }
    .end annotation

    iget-object v2, p0, Lcom/samsung/android/devicecog/gallery/viewstatehandler/PhotoViewDCHandler;->mActivity:Landroid/app/Activity;

    check-cast v2, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/StateManager;->getTopState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v1

    if-nez v1, :cond_0

    const-string/jumbo v2, "PhotoViewDCH"

    const-string/jumbo v3, "startCommand() : topState is null!!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/devicecog/gallery/viewstatehandler/PhotoViewDCHandler;->mActivity:Landroid/app/Activity;

    sget-object v3, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->FAILURE:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    invoke-static {v2, p1, v3}, Lcom/samsung/android/devicecog/gallery/DCUtils;->sendResponseDCState(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;)V

    :goto_0
    return-void

    :cond_0
    const/4 v2, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_1
    :goto_1
    packed-switch v2, :pswitch_data_0

    const-string/jumbo v2, "PhotoViewDCH"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "stateId is wrong, stateId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/UnsupportedOperationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "stateId is wrong, stateId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    :sswitch_0
    const-string/jumbo v3, "AlbumThumbnailsEmptySelectedView"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :sswitch_1
    const-string/jumbo v3, "RecycleBinEmptySelectedView"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :sswitch_2
    const-string/jumbo v3, "CloudEmptySelectedView"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x2

    goto :goto_1

    :sswitch_3
    const-string/jumbo v3, "AlbumThumbnailsSelectedView"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x3

    goto :goto_1

    :sswitch_4
    const-string/jumbo v3, "RecycleBinSelectedView"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x4

    goto :goto_1

    :sswitch_5
    const-string/jumbo v3, "CloudSelectedView"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x5

    goto :goto_1

    :sswitch_6
    const-string/jumbo v3, "DetailView"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x6

    goto/16 :goto_1

    :sswitch_7
    const-string/jumbo v3, "ShareChooserPopUp"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x7

    goto/16 :goto_1

    :sswitch_8
    const-string/jumbo v3, "CrossShare"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v2, 0x8

    goto/16 :goto_1

    :sswitch_9
    const-string/jumbo v3, "Sortby"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v2, 0x9

    goto/16 :goto_1

    :sswitch_a
    const-string/jumbo v3, "PicturesView"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v2, 0xa

    goto/16 :goto_1

    :sswitch_b
    const-string/jumbo v3, "AlbumsListView"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v2, 0xb

    goto/16 :goto_1

    :sswitch_c
    const-string/jumbo v3, "StoryListView"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v2, 0xc

    goto/16 :goto_1

    :sswitch_d
    const-string/jumbo v3, "MtpView"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v2, 0xd

    goto/16 :goto_1

    :sswitch_e
    const-string/jumbo v3, "ScrollUp"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v2, 0xe

    goto/16 :goto_1

    :sswitch_f
    const-string/jumbo v3, "ScrollDown"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v2, 0xf

    goto/16 :goto_1

    :sswitch_10
    const-string/jumbo v3, "ScrollToTop"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v2, 0x10

    goto/16 :goto_1

    :sswitch_11
    const-string/jumbo v3, "ScrollToEnd"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v2, 0x11

    goto/16 :goto_1

    :sswitch_12
    const-string/jumbo v3, "ZoomIn"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v2, 0x12

    goto/16 :goto_1

    :sswitch_13
    const-string/jumbo v3, "ZoomOut"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v2, 0x13

    goto/16 :goto_1

    :pswitch_0
    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/ActivityState;->isNoItemViewMode()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0, p1}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/PhotoViewDCHandler;->sendDCResponseForNoItem(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2
    invoke-virtual {p0, p1}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/PhotoViewDCHandler;->enterSelectedView(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_1
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/PhotoViewDCHandler;->handleSelectedView(Ljava/lang/String;Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_2
    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/ActivityState;->isNoItemViewMode()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0, p1}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/PhotoViewDCHandler;->sendDCResponseForNoItem(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/PhotoViewDCHandler;->handleStartDetailView(Ljava/lang/String;Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_3
    invoke-virtual {p0, p2}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/PhotoViewDCHandler;->handleShareChooserPopup(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_4
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/PhotoViewDCHandler;->handleShare(Ljava/lang/String;Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_5
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/PhotoViewDCHandler;->handleSortBy(Ljava/lang/String;Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_6
    invoke-virtual {p0, p1}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/PhotoViewDCHandler;->handleSwitchViewState(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/PhotoViewDCHandler;->getNlgRequestInfoForLaunch(Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/devicecog/gallery/viewstatehandler/PhotoViewDCHandler;->mActivity:Landroid/app/Activity;

    sget-object v3, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->SUCCESS:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    invoke-static {v2, p1, v3, v0}, Lcom/samsung/android/devicecog/gallery/DCUtils;->sendResponseDCState(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;)V

    goto/16 :goto_0

    :pswitch_7
    invoke-static {}, Lcom/sec/samsung/gallery/core/Event$Builder;->create()Lcom/sec/samsung/gallery/core/Event;

    move-result-object v2

    sget v3, Lcom/sec/samsung/gallery/core/Event;->EVENT_DC_CMD_TOUCH_ACTION:I

    invoke-virtual {v2, v3}, Lcom/sec/samsung/gallery/core/Event;->setType(I)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/sec/samsung/gallery/core/Event;->setData(Ljava/lang/Object;)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/PhotoViewDCHandler;->notifyObservers(Ljava/lang/Object;)V

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7506b650 -> :sswitch_7
        -0x74e837c8 -> :sswitch_2
        -0x733f3461 -> :sswitch_8
        -0x6ebf57a8 -> :sswitch_c
        -0x6c0c016b -> :sswitch_9
        -0x601b8f88 -> :sswitch_12
        -0x5022504a -> :sswitch_3
        -0x4a7b0e32 -> :sswitch_d
        -0x31038c6c -> :sswitch_4
        -0x23ff5c66 -> :sswitch_a
        -0x2217ca8d -> :sswitch_11
        -0x22179213 -> :sswitch_10
        -0x16cec379 -> :sswitch_b
        -0x141e2998 -> :sswitch_e
        0x13e54299 -> :sswitch_1
        0x346e4bb7 -> :sswitch_0
        0x390e12b6 -> :sswitch_6
        0x42e6a695 -> :sswitch_5
        0x5ca9b65b -> :sswitch_13
        0x7abe2d2f -> :sswitch_f
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
    .end packed-switch
.end method
