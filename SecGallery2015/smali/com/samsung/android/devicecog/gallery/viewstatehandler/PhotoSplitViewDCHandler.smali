.class public Lcom/samsung/android/devicecog/gallery/viewstatehandler/PhotoSplitViewDCHandler;
.super Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;
.source "PhotoSplitViewDCHandler.java"


# static fields
.field private static MULTI_PICKER_SELECTED_STATE:[Ljava/lang/String;

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

    sput-object v0, Lcom/samsung/android/devicecog/gallery/viewstatehandler/PhotoSplitViewDCHandler;->SELECTED_STATE:[Ljava/lang/String;

    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "AlbumThumbnailsPickerMulti"

    aput-object v1, v0, v2

    const-string/jumbo v1, "AlbumThumbnailsSelectMultipleItems"

    aput-object v1, v0, v3

    sput-object v0, Lcom/samsung/android/devicecog/gallery/viewstatehandler/PhotoSplitViewDCHandler;->MULTI_PICKER_SELECTED_STATE:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected createDCSelectItemTask(Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$SelectionListener;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/devicecog/gallery/viewstatehandler/PhotoSplitViewDCHandler;->mDCSelectItemTask:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/devicecog/gallery/viewstatehandler/PhotoSplitViewDCHandler;->mDCSelectItemTask:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask;->cancel(Z)Z

    :cond_0
    new-instance v1, Lcom/samsung/android/devicecog/gallery/selectiontask/PhotoSplitViewDCSelectItemTask;

    iget-object v0, p0, Lcom/samsung/android/devicecog/gallery/viewstatehandler/PhotoSplitViewDCHandler;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v1, v0}, Lcom/samsung/android/devicecog/gallery/selectiontask/PhotoSplitViewDCSelectItemTask;-><init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)V

    iput-object v1, p0, Lcom/samsung/android/devicecog/gallery/viewstatehandler/PhotoSplitViewDCHandler;->mDCSelectItemTask:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask;

    iget-object v0, p0, Lcom/samsung/android/devicecog/gallery/viewstatehandler/PhotoSplitViewDCHandler;->mDCSelectItemTask:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask;

    invoke-virtual {v0, p1}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask;->setSelectionListener(Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$SelectionListener;)V

    return-void
.end method

.method public getScreenStateId()Ljava/lang/String;
    .locals 5

    iget-object v3, p0, Lcom/samsung/android/devicecog/gallery/viewstatehandler/PhotoSplitViewDCHandler;->mActivity:Landroid/app/Activity;

    check-cast v3, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/devicecog/gallery/viewstatehandler/PhotoSplitViewDCHandler;->mActivity:Landroid/app/Activity;

    check-cast v3, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getSelectionManager()Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/PhotoSplitViewDCHandler;->isPickMode()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentLaunchMode()Lcom/sec/samsung/gallery/core/LaunchModeType;

    move-result-object v3

    sget-object v4, Lcom/sec/samsung/gallery/core/LaunchModeType;->ACTION_MULTIPLE_PICK:Lcom/sec/samsung/gallery/core/LaunchModeType;

    if-ne v3, v4, :cond_1

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getMediaList()Ljava/util/LinkedList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v0, "AlbumThumbnailsSelectMultipleItems"

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "AlbumThumbnailsPickerMulti"

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "AlbumThumbnailsPickerSingle"

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getMediaList()Ljava/util/LinkedList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    const-string/jumbo v0, "AlbumThumbnailsSelectedView"

    goto :goto_0

    :cond_3
    const-string/jumbo v0, "AlbumThumbnailsEmptySelectedView"

    goto :goto_0

    :cond_4
    const-string/jumbo v0, "AlbumThumbnailView"

    goto :goto_0
.end method

.method public getSelectedStateArray()[Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/PhotoSplitViewDCHandler;->isPickMode()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/PhotoSplitViewDCHandler;->isMultiPickMode()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/devicecog/gallery/viewstatehandler/PhotoSplitViewDCHandler;->MULTI_PICKER_SELECTED_STATE:[Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/samsung/android/devicecog/gallery/viewstatehandler/PhotoSplitViewDCHandler;->SELECTED_STATE:[Ljava/lang/String;

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
    .locals 6
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

    const/4 v4, 0x0

    const/4 v3, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v3, :pswitch_data_0

    const-string/jumbo v3, "PhotoSplitViewDCH"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "stateId is wrong, stateId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/lang/UnsupportedOperationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "stateId is wrong, stateId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3

    :sswitch_0
    const-string/jumbo v5, "AlbumThumbnailsEmptySelectedView"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v3, v4

    goto :goto_0

    :sswitch_1
    const-string/jumbo v5, "AlbumThumbnailsSelectedView"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :sswitch_2
    const-string/jumbo v5, "AddItemsSelectedView"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v3, 0x2

    goto :goto_0

    :sswitch_3
    const-string/jumbo v5, "CreateStorySelectedView"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v3, 0x3

    goto :goto_0

    :sswitch_4
    const-string/jumbo v5, "AlbumThumbnailsSelectMultipleItems"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v3, 0x4

    goto :goto_0

    :sswitch_5
    const-string/jumbo v5, "AlbumThumbnailsSelectSingleItem"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v3, 0x5

    goto :goto_0

    :sswitch_6
    const-string/jumbo v5, "DetailView"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v3, 0x6

    goto/16 :goto_0

    :sswitch_7
    const-string/jumbo v5, "RenamePopUp"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v3, 0x7

    goto/16 :goto_0

    :sswitch_8
    const-string/jumbo v5, "CreateStoryPopUp"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v3, 0x8

    goto/16 :goto_0

    :sswitch_9
    const-string/jumbo v5, "ShareChooserPopUp"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v3, 0x9

    goto/16 :goto_0

    :sswitch_a
    const-string/jumbo v5, "CrossShare"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v3, 0xa

    goto/16 :goto_0

    :sswitch_b
    const-string/jumbo v5, "AlbumChooseDone"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v3, 0xb

    goto/16 :goto_0

    :sswitch_c
    const-string/jumbo v5, "CreateStory"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v3, 0xc

    goto/16 :goto_0

    :sswitch_d
    const-string/jumbo v5, "CrossPhotoEditorAnimationEditor"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v3, 0xd

    goto/16 :goto_0

    :sswitch_e
    const-string/jumbo v5, "CrossPhotoEditorCollageEditor"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v3, 0xe

    goto/16 :goto_0

    :sswitch_f
    const-string/jumbo v5, "AddToHomeScreen"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v3, 0xf

    goto/16 :goto_0

    :sswitch_10
    const-string/jumbo v5, "Sortby"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v3, 0x10

    goto/16 :goto_0

    :sswitch_11
    const-string/jumbo v5, "MoveToSecureFolder"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v3, 0x11

    goto/16 :goto_0

    :sswitch_12
    const-string/jumbo v5, "ScrollUp"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v3, 0x12

    goto/16 :goto_0

    :sswitch_13
    const-string/jumbo v5, "ScrollDown"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v3, 0x13

    goto/16 :goto_0

    :sswitch_14
    const-string/jumbo v5, "ZoomIn"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v3, 0x14

    goto/16 :goto_0

    :sswitch_15
    const-string/jumbo v5, "ZoomOut"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v3, 0x15

    goto/16 :goto_0

    :sswitch_16
    const-string/jumbo v5, "SwipeLeft"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v3, 0x16

    goto/16 :goto_0

    :sswitch_17
    const-string/jumbo v5, "SwipeRight"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v3, 0x17

    goto/16 :goto_0

    :sswitch_18
    const-string/jumbo v5, "ScrollToTop"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v3, 0x18

    goto/16 :goto_0

    :sswitch_19
    const-string/jumbo v5, "ScrollToEnd"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v3, 0x19

    goto/16 :goto_0

    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/PhotoSplitViewDCHandler;->enterSelectedView(Ljava/lang/String;)V

    :goto_1
    return-void

    :pswitch_1
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/PhotoSplitViewDCHandler;->handleSelectedView(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_1

    :pswitch_2
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/PhotoSplitViewDCHandler;->handleStartDetailView(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_1

    :pswitch_3
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/PhotoSplitViewDCHandler;->handleRenamePopUp(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_1

    :pswitch_4
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/PhotoSplitViewDCHandler;->handleCreateStoryPopUp(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_1

    :pswitch_5
    invoke-virtual {p0, p2}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/PhotoSplitViewDCHandler;->handleShareChooserPopup(Ljava/util/List;)V

    goto :goto_1

    :pswitch_6
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/PhotoSplitViewDCHandler;->handleShare(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_1

    :pswitch_7
    const v3, 0x7f12007a

    invoke-virtual {p0, v3}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/PhotoSplitViewDCHandler;->checkMenuOptionEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/samsung/android/devicecog/gallery/viewstatehandler/PhotoSplitViewDCHandler;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string/jumbo v3, "dc_ignore_done"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {}, Lcom/sec/samsung/gallery/core/Event$Builder;->create()Lcom/sec/samsung/gallery/core/Event;

    move-result-object v3

    sget v5, Lcom/sec/samsung/gallery/core/Event;->EVENT_DC_CMD_CHOOSE_DONE:I

    invoke-virtual {v3, v5}, Lcom/sec/samsung/gallery/core/Event;->setType(I)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/PhotoSplitViewDCHandler;->notifyObservers(Ljava/lang/Object;)V

    :cond_1
    const-string/jumbo v5, "Gallery"

    iget-object v3, p0, Lcom/samsung/android/devicecog/gallery/viewstatehandler/PhotoSplitViewDCHandler;->mActivity:Landroid/app/Activity;

    check-cast v3, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getDCNestingCallerAppName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/samsung/android/devicecog/gallery/viewstatehandler/PhotoSplitViewDCHandler;->mActivity:Landroid/app/Activity;

    const v5, 0x7f0a079f

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v5, v4}, Lcom/samsung/android/devicecog/gallery/controller/DCNlgManager;->getNlgRequestInfo(Landroid/content/Context;I[Ljava/lang/Object;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/devicecog/gallery/viewstatehandler/PhotoSplitViewDCHandler;->mActivity:Landroid/app/Activity;

    sget-object v4, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->SUCCESS:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    invoke-static {v3, p1, v4, v2}, Lcom/samsung/android/devicecog/gallery/DCUtils;->sendResponseDCState(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;)V

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lcom/samsung/android/devicecog/gallery/viewstatehandler/PhotoSplitViewDCHandler;->mActivity:Landroid/app/Activity;

    sget-object v4, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->SUCCESS:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    invoke-static {v3, p1, v4}, Lcom/samsung/android/devicecog/gallery/DCUtils;->sendResponseDCState(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;)V

    goto :goto_1

    :cond_3
    const-string/jumbo v3, "PhotoSplitViewDCH"

    const-string/jumbo v4, "Done options is not enabled"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/samsung/android/devicecog/gallery/viewstatehandler/PhotoSplitViewDCHandler;->mActivity:Landroid/app/Activity;

    sget-object v4, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->FAILURE:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    invoke-static {v3, p1, v4}, Lcom/samsung/android/devicecog/gallery/DCUtils;->sendResponseDCState(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;)V

    goto/16 :goto_1

    :pswitch_8
    invoke-virtual {p0, p2}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/PhotoSplitViewDCHandler;->getNewStoryName(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_4
    invoke-static {}, Lcom/sec/samsung/gallery/core/Event$Builder;->create()Lcom/sec/samsung/gallery/core/Event;

    move-result-object v3

    sget v5, Lcom/sec/samsung/gallery/core/Event;->EVENT_DC_CMD_CHOOSE_DONE:I

    invoke-virtual {v3, v5}, Lcom/sec/samsung/gallery/core/Event;->setType(I)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/PhotoSplitViewDCHandler;->notifyObservers(Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/samsung/android/devicecog/gallery/viewstatehandler/PhotoSplitViewDCHandler;->mActivity:Landroid/app/Activity;

    const v5, 0x7f0a07b2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v5, v4}, Lcom/samsung/android/devicecog/gallery/controller/DCNlgManager;->getNlgRequestInfo(Landroid/content/Context;I[Ljava/lang/Object;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/devicecog/gallery/viewstatehandler/PhotoSplitViewDCHandler;->mActivity:Landroid/app/Activity;

    sget-object v4, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->FAILURE:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    invoke-static {v3, p1, v4, v2}, Lcom/samsung/android/devicecog/gallery/DCUtils;->sendResponseDCState(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;)V

    goto/16 :goto_1

    :cond_5
    iget-object v3, p0, Lcom/samsung/android/devicecog/gallery/viewstatehandler/PhotoSplitViewDCHandler;->mActivity:Landroid/app/Activity;

    check-cast v3, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setDCCurrentParameterValue(Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/samsung/gallery/core/Event$Builder;->create()Lcom/sec/samsung/gallery/core/Event;

    move-result-object v3

    sget v4, Lcom/sec/samsung/gallery/core/Event;->EVENT_DC_CMD_CHOOSE_DONE:I

    invoke-virtual {v3, v4}, Lcom/sec/samsung/gallery/core/Event;->setType(I)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/PhotoSplitViewDCHandler;->notifyObservers(Ljava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_9
    invoke-static {}, Lcom/sec/samsung/gallery/core/Event$Builder;->create()Lcom/sec/samsung/gallery/core/Event;

    move-result-object v3

    sget v4, Lcom/sec/samsung/gallery/core/Event;->EVENT_DC_CMD_CREATE_ANIMATE:I

    invoke-virtual {v3, v4}, Lcom/sec/samsung/gallery/core/Event;->setType(I)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/PhotoSplitViewDCHandler;->notifyObservers(Ljava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_a
    invoke-static {}, Lcom/sec/samsung/gallery/core/Event$Builder;->create()Lcom/sec/samsung/gallery/core/Event;

    move-result-object v3

    sget v4, Lcom/sec/samsung/gallery/core/Event;->EVENT_DC_CMD_CREATE_COLLAGE:I

    invoke-virtual {v3, v4}, Lcom/sec/samsung/gallery/core/Event;->setType(I)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/PhotoSplitViewDCHandler;->notifyObservers(Ljava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_b
    invoke-static {}, Lcom/sec/samsung/gallery/core/Event$Builder;->create()Lcom/sec/samsung/gallery/core/Event;

    move-result-object v3

    sget v4, Lcom/sec/samsung/gallery/core/Event;->EVENT_ADD_SHORT_ON_HOMESCREEN:I

    invoke-virtual {v3, v4}, Lcom/sec/samsung/gallery/core/Event;->setType(I)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/PhotoSplitViewDCHandler;->notifyObservers(Ljava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_c
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/PhotoSplitViewDCHandler;->handleSortBy(Ljava/lang/String;Ljava/util/List;)V

    goto/16 :goto_1

    :pswitch_d
    invoke-virtual {p0}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/PhotoSplitViewDCHandler;->handleSecureFolder()V

    goto/16 :goto_1

    :pswitch_e
    invoke-static {}, Lcom/sec/samsung/gallery/core/Event$Builder;->create()Lcom/sec/samsung/gallery/core/Event;

    move-result-object v3

    sget v4, Lcom/sec/samsung/gallery/core/Event;->EVENT_DC_CMD_TOUCH_ACTION:I

    invoke-virtual {v3, v4}, Lcom/sec/samsung/gallery/core/Event;->setType(I)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/sec/samsung/gallery/core/Event;->setData(Ljava/lang/Object;)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/PhotoSplitViewDCHandler;->notifyObservers(Ljava/lang/Object;)V

    goto/16 :goto_1

    :sswitch_data_0
    .sparse-switch
        -0x7506b650 -> :sswitch_9
        -0x74c056c1 -> :sswitch_2
        -0x733f3461 -> :sswitch_a
        -0x6f3d1cde -> :sswitch_17
        -0x6d2d74ed -> :sswitch_8
        -0x6c0c016b -> :sswitch_10
        -0x601b8f88 -> :sswitch_14
        -0x5022504a -> :sswitch_1
        -0x2ce3b9bf -> :sswitch_16
        -0x2217ca8d -> :sswitch_19
        -0x22179213 -> :sswitch_18
        -0x1dc920a2 -> :sswitch_4
        -0x141e2998 -> :sswitch_12
        -0x8b0d9d9 -> :sswitch_f
        -0x51ef9ee -> :sswitch_d
        0x132f6fb9 -> :sswitch_3
        0x25497331 -> :sswitch_11
        0x346e4bb7 -> :sswitch_0
        0x390e12b6 -> :sswitch_6
        0x3c060e6d -> :sswitch_5
        0x41693de8 -> :sswitch_b
        0x45554d39 -> :sswitch_c
        0x5af0c40e -> :sswitch_7
        0x5ca9b65b -> :sswitch_15
        0x7abe2d2f -> :sswitch_13
        0x7ebb8221 -> :sswitch_e
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
    .end packed-switch
.end method
