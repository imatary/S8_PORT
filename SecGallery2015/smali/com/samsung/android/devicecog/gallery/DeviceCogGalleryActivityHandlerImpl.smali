.class Lcom/samsung/android/devicecog/gallery/DeviceCogGalleryActivityHandlerImpl;
.super Lcom/samsung/android/devicecog/gallery/AbsDeviceCogActivityHandlerImpl;
.source "DeviceCogGalleryActivityHandlerImpl.java"


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/devicecog/gallery/AbsDeviceCogActivityHandlerImpl;-><init>(Landroid/app/Activity;)V

    return-void
.end method

.method private convertStateId(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    move-object v0, p1

    iget-object v4, p0, Lcom/samsung/android/devicecog/gallery/DeviceCogGalleryActivityHandlerImpl;->mActivity:Landroid/app/Activity;

    check-cast v4, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/StateManager;->getTopState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v3

    instance-of v4, v3, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    if-eqz v4, :cond_7

    const-string/jumbo v4, "DeletePopUp"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/ActivityState;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v4, "is_burstshot_viewer"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string/jumbo v0, "DeletePopupForBurstViewer"

    :cond_0
    :goto_0
    const-string/jumbo v4, "DCActivityHandleImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "convertStateId() : stateId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_1
    const-string/jumbo v0, "DeletePopUpForDetailView"

    goto :goto_0

    :cond_2
    const-string/jumbo v4, "CrossShare"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string/jumbo v0, "CrossShareForDetailView"

    goto :goto_0

    :cond_3
    const-string/jumbo v4, "CrossContactsSinglePick"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string/jumbo v0, "CrossContactSinglePickFromSetAsContact"

    goto :goto_0

    :cond_4
    const-string/jumbo v4, "RemoveFromStory"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    const-string/jumbo v0, "RemoveFromStoryForDetailView"

    goto :goto_0

    :cond_5
    const-string/jumbo v4, "AddTag"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    const-string/jumbo v0, "AddTagForMoreInfo"

    goto :goto_0

    :cond_6
    const-string/jumbo v4, "Download"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string/jumbo v0, "DOWNLOAD_CLOUD_CONTENT_IN_DETAIL_VIEW"

    iget-object v4, p0, Lcom/samsung/android/devicecog/gallery/DeviceCogGalleryActivityHandlerImpl;->mActivity:Landroid/app/Activity;

    check-cast v4, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getSelectionManager()Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getMediaItemArrayList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;

    if-eqz v4, :cond_0

    const-string/jumbo v0, "DOWNLOAD_SHARED_STORY_CONTENTS_IN_DETAIL_VIEW"

    goto :goto_0

    :cond_7
    instance-of v4, v3, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    if-eqz v4, :cond_9

    const-string/jumbo v4, "CrossContactsMultiPick"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    const-string/jumbo v0, "CrossContactSinglePickFromInvite"

    goto/16 :goto_0

    :cond_8
    const-string/jumbo v4, "Download"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string/jumbo v0, "DOWNLOAD_SHARED_STORY_CONTENTS"

    goto/16 :goto_0

    :cond_9
    instance-of v4, v3, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListViewState;

    if-eqz v4, :cond_a

    const-string/jumbo v4, "CrossContactsMultiPick"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string/jumbo v0, "CrossContactSinglePickFromAddMember"

    goto/16 :goto_0

    :cond_a
    instance-of v4, v3, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;

    if-eqz v4, :cond_b

    const-string/jumbo v4, "Download"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string/jumbo v0, "DOWNLOAD_CLOUD_CONTENT_IN_CLOUD_VIEW"

    goto/16 :goto_0

    :cond_b
    instance-of v4, v3, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    if-eqz v4, :cond_c

    const-string/jumbo v4, "Download"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string/jumbo v0, "DOWNLOAD_CLOUD_CONTENT_IN_PICTURES"

    goto/16 :goto_0

    :cond_c
    instance-of v4, v3, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

    if-eqz v4, :cond_0

    const-string/jumbo v4, "Download"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string/jumbo v0, "DOWNLOAD_CLOUD_CONTENT_IN_ALBUM_THUMBNAILS"

    goto/16 :goto_0
.end method

.method private getCurrentContextId()Ljava/lang/String;
    .locals 2

    iget-object v1, p0, Lcom/samsung/android/devicecog/gallery/DeviceCogGalleryActivityHandlerImpl;->mActivity:Landroid/app/Activity;

    check-cast v1, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/StateManager;->getTopState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getCurrentScreenStateIdOnTopState()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/devicecog/gallery/DeviceCogGalleryActivityHandlerImpl;->getDCCommandExecutable()Lcom/samsung/android/devicecog/gallery/DCCommandExecutable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/devicecog/gallery/DeviceCogGalleryActivityHandlerImpl;->getDCCommandExecutable()Lcom/samsung/android/devicecog/gallery/DCCommandExecutable;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/devicecog/gallery/DCCommandExecutable;->getDCScreenStateId()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getDCCommandExecutable()Lcom/samsung/android/devicecog/gallery/DCCommandExecutable;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/devicecog/gallery/DeviceCogGalleryActivityHandlerImpl;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/StateManager;->getTopState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v0

    return-object v0
.end method

.method public handleParamFilling(Lcom/samsung/android/sdk/bixby/data/ParamFilling;)V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/devicecog/gallery/DeviceCogGalleryActivityHandlerImpl;->getDCCommandExecutable()Lcom/samsung/android/devicecog/gallery/DCCommandExecutable;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/devicecog/gallery/DCCommandExecutable;->onDCParamFilling(Lcom/samsung/android/sdk/bixby/data/ParamFilling;)V

    return-void
.end method

.method public handleState(Ljava/lang/String;Ljava/util/List;)V
    .locals 4
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

    const-string/jumbo v1, "DCActivityHandleImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "BixbyGallery : handleState() : stateId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/samsung/android/devicecog/gallery/DeviceCogGalleryActivityHandlerImpl;->convertStateId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0, p2}, Lcom/samsung/android/devicecog/gallery/AbsDeviceCogActivityHandlerImpl;->handleState(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public init()V
    .locals 4

    iget-object v1, p0, Lcom/samsung/android/devicecog/gallery/DeviceCogGalleryActivityHandlerImpl;->CMD_MAP:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-static {}, Lcom/samsung/android/devicecog/gallery/controller/DCStateMenuActions;->getStateIds()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/devicecog/gallery/DeviceCogGalleryActivityHandlerImpl;->CMD_MAP:Ljava/util/HashMap;

    const-string/jumbo v3, "EXECUTE_OPTION_MENU"

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/samsung/android/devicecog/gallery/controller/DCStateViewStateActions;->getStateIds()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/devicecog/gallery/DeviceCogGalleryActivityHandlerImpl;->CMD_MAP:Ljava/util/HashMap;

    const-string/jumbo v3, "EXECUTE_DC_HANDLER"

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method public onScreenStates()Lcom/samsung/android/sdk/bixby/data/ScreenStateInfo;
    .locals 3

    invoke-super {p0}, Lcom/samsung/android/devicecog/gallery/AbsDeviceCogActivityHandlerImpl;->onScreenStates()Lcom/samsung/android/sdk/bixby/data/ScreenStateInfo;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/sdk/bixby/data/ScreenStateInfo;->STATE_NOT_APPLICABLE:Lcom/samsung/android/sdk/bixby/data/ScreenStateInfo;

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/devicecog/gallery/DeviceCogGalleryActivityHandlerImpl;->mActivity:Landroid/app/Activity;

    check-cast v2, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getDCNestingCallerAppName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/bixby/data/ScreenStateInfo;->setCallerAppName(Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/ScreenStateInfo;

    goto :goto_0
.end method

.method public setCurrentDCState(Lcom/samsung/android/sdk/bixby/data/State;)V
    .locals 7

    iget-object v2, p0, Lcom/samsung/android/devicecog/gallery/DeviceCogGalleryActivityHandlerImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/devicecog/gallery/DCUtils;->setExtraExecuteFromBixby(Landroid/content/Intent;)V

    invoke-direct {p0}, Lcom/samsung/android/devicecog/gallery/DeviceCogGalleryActivityHandlerImpl;->getCurrentContextId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/devicecog/gallery/DeviceCogGalleryActivityHandlerImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v3

    const-string/jumbo v4, "SET_CURRENT_DC_STATE"

    const/4 v2, 0x4

    new-array v5, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v6, p0, Lcom/samsung/android/devicecog/gallery/DeviceCogGalleryActivityHandlerImpl;->mActivity:Landroid/app/Activity;

    aput-object v6, v5, v2

    const/4 v2, 0x1

    aput-object p1, v5, v2

    const/4 v2, 0x2

    aput-object v1, v5, v2

    const/4 v6, 0x3

    invoke-virtual {p0}, Lcom/samsung/android/devicecog/gallery/DeviceCogGalleryActivityHandlerImpl;->getDCCommandExecutable()Lcom/samsung/android/devicecog/gallery/DCCommandExecutable;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/devicecog/gallery/DeviceCogGalleryActivityHandlerImpl;->getDCCommandExecutable()Lcom/samsung/android/devicecog/gallery/DCCommandExecutable;

    move-result-object v2

    invoke-interface {v2}, Lcom/samsung/android/devicecog/gallery/DCCommandExecutable;->getDCScreenStateId()Ljava/lang/String;

    move-result-object v2

    :goto_0
    aput-object v2, v5, v6

    invoke-virtual {v3, v4, v5}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_0
    const-string/jumbo v2, ""

    goto :goto_0
.end method
