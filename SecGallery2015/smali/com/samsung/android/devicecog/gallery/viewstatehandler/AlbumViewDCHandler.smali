.class public Lcom/samsung/android/devicecog/gallery/viewstatehandler/AlbumViewDCHandler;
.super Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;
.source "AlbumViewDCHandler.java"


# static fields
.field private static HIDE_ALBUM_SELECTED_STATE:[Ljava/lang/String;

.field private static SELECTED_STATE:[Ljava/lang/String;

.field private static SHOW_HIDDEN_ALBUM_SELECTED_STATE:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;Lcom/sec/android/gallery3d/app/ActivityState;)V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;-><init>(Landroid/app/Activity;Ljava/util/Observer;)V

    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "AlbumListEmptySelectedView"

    aput-object v1, v0, v2

    const-string/jumbo v1, "AlbumListSelectedView"

    aput-object v1, v0, v3

    sput-object v0, Lcom/samsung/android/devicecog/gallery/viewstatehandler/AlbumViewDCHandler;->SELECTED_STATE:[Ljava/lang/String;

    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "AlbumListEmptySelectedViewForHideAlbum"

    aput-object v1, v0, v2

    const-string/jumbo v1, "AlbumListSelectedViewForHideAlbum"

    aput-object v1, v0, v3

    sput-object v0, Lcom/samsung/android/devicecog/gallery/viewstatehandler/AlbumViewDCHandler;->HIDE_ALBUM_SELECTED_STATE:[Ljava/lang/String;

    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "AlbumListEmptySelectedViewForShowHiddenAlbum"

    aput-object v1, v0, v2

    const-string/jumbo v1, "AlbumListSelectedViewForShowHiddenAlbum"

    aput-object v1, v0, v3

    sput-object v0, Lcom/samsung/android/devicecog/gallery/viewstatehandler/AlbumViewDCHandler;->SHOW_HIDDEN_ALBUM_SELECTED_STATE:[Ljava/lang/String;

    return-void
.end method

.method private handleAlbumEmptySelectedViewForHideAlbum(Ljava/lang/String;)V
    .locals 4

    iget-object v1, p0, Lcom/samsung/android/devicecog/gallery/viewstatehandler/AlbumViewDCHandler;->mActivity:Landroid/app/Activity;

    check-cast v1, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/StateManager;->getTopState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v0

    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->UseAlbumHide:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/ActivityState;->isNoItemViewMode()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/AlbumViewDCHandler;->sendDCResponseForNoItem(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/sec/samsung/gallery/core/Event$Builder;->create()Lcom/sec/samsung/gallery/core/Event;

    move-result-object v1

    sget v2, Lcom/sec/samsung/gallery/core/Event;->EVENT_HIDE_ALBUMS:I

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/core/Event;->setType(I)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/AlbumViewDCHandler;->notifyObservers(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    const-string/jumbo v1, "AlbumViewDCHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "disabled stateId, stateId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "disabled stateId, stateId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private handleAlbumSelectedViewForShowHiddenAlbum(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseAlbumHide:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/devicecog/gallery/viewstatehandler/AlbumViewDCHandler;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-string/jumbo v1, "AlbumViewDCHandler"

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isContainsHiddenItems(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/devicecog/gallery/viewstatehandler/AlbumViewDCHandler;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-string/jumbo v1, "AlbumViewDCHandler"

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isContainsHiddenItemsForSCloud(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {}, Lcom/sec/samsung/gallery/core/Event$Builder;->create()Lcom/sec/samsung/gallery/core/Event;

    move-result-object v0

    sget v1, Lcom/sec/samsung/gallery/core/Event;->EVENT_DC_SHOW_HIDDEN_ALBUM:I

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/core/Event;->setType(I)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/AlbumViewDCHandler;->notifyObservers(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/samsung/android/devicecog/gallery/viewstatehandler/AlbumViewDCHandler;->mActivity:Landroid/app/Activity;

    sget-object v1, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->SUCCESS:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    invoke-static {v0, p1, v1}, Lcom/samsung/android/devicecog/gallery/DCUtils;->sendResponseDCState(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/devicecog/gallery/viewstatehandler/AlbumViewDCHandler;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/samsung/android/devicecog/gallery/viewstatehandler/AlbumViewDCHandler;->mActivity:Landroid/app/Activity;

    const v2, 0x7f0a0448

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/AlbumViewDCHandler;->sendDCResponseForNoItem(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "AlbumViewDCHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "disabled stateId, stateId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "disabled stateId, stateId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private handleAlbumSelection(Ljava/lang/String;Ljava/util/List;)V
    .locals 11
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

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x0

    if-eqz p2, :cond_5

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/sdk/bixby/data/Parameter;

    if-eqz v9, :cond_0

    invoke-virtual {v9}, Lcom/samsung/android/sdk/bixby/data/Parameter;->getParameterName()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v1, "selectAll"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v9}, Lcom/samsung/android/sdk/bixby/data/Parameter;->getSlotValue()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_1
    const-string/jumbo v1, "selectCount"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v9}, Lcom/samsung/android/sdk/bixby/data/Parameter;->getSlotValue()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_2
    const-string/jumbo v1, "selectOrderType"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v9}, Lcom/samsung/android/sdk/bixby/data/Parameter;->getSlotValue()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v5, v7}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/AlbumViewDCHandler;->getSelectOrderType(ILjava/lang/String;)I

    move-result v5

    goto :goto_0

    :cond_3
    const-string/jumbo v1, "albumName"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v9}, Lcom/samsung/android/sdk/bixby/data/Parameter;->getSlotValue()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_4
    const-string/jumbo v1, "ordinal"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v9}, Lcom/samsung/android/sdk/bixby/data/Parameter;->getSlotValue()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/AlbumViewDCHandler;->checkValidOrdinalParam(Ljava/lang/String;)I

    move-result v6

    goto :goto_0

    :cond_5
    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/AlbumViewDCHandler;->processSelectedView(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    return-void
.end method

.method private handleAlbumThumbnailView(Ljava/lang/String;Ljava/util/List;)V
    .locals 10
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

    const/4 v0, 0x0

    const/4 v2, 0x0

    if-eqz p2, :cond_2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/sdk/bixby/data/Parameter;

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/samsung/android/sdk/bixby/data/Parameter;->getParameterName()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v8, "albumName"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {v4}, Lcom/samsung/android/sdk/bixby/data/Parameter;->getSlotValue()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string/jumbo v8, "ordinal"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v4}, Lcom/samsung/android/sdk/bixby/data/Parameter;->getSlotValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/AlbumViewDCHandler;->checkValidOrdinalParam(Ljava/lang/String;)I

    move-result v2

    goto :goto_0

    :cond_2
    invoke-static {v0}, Lcom/samsung/android/devicecog/gallery/DCUtils;->isValidParam(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3

    if-eqz v2, :cond_4

    :cond_3
    iget-object v7, p0, Lcom/samsung/android/devicecog/gallery/viewstatehandler/AlbumViewDCHandler;->mActivity:Landroid/app/Activity;

    invoke-static {v7}, Lcom/samsung/android/devicecog/gallery/DCUtils;->setExtendRuleTimeOut(Landroid/content/Context;)V

    invoke-static {}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter$Builder;->create()Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;

    move-result-object v7

    invoke-virtual {v7, p1}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;->setExecutingStateId(Ljava/lang/String;)Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;

    move-result-object v7

    invoke-virtual {v7, v0}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;->setAlbumName(Ljava/lang/String;)Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;

    move-result-object v7

    invoke-virtual {v7, v2}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;->setOrdinal(I)Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;

    move-result-object v6

    invoke-static {}, Lcom/sec/samsung/gallery/core/Event$Builder;->create()Lcom/sec/samsung/gallery/core/Event;

    move-result-object v7

    sget v8, Lcom/sec/samsung/gallery/core/Event;->EVENT_DC_CMD_START_PHOTOSPLITVIEW:I

    invoke-virtual {v7, v8}, Lcom/sec/samsung/gallery/core/Event;->setType(I)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/sec/samsung/gallery/core/Event;->setData(Ljava/lang/Object;)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/AlbumViewDCHandler;->notifyObservers(Ljava/lang/Object;)V

    :goto_1
    return-void

    :cond_4
    iget-object v8, p0, Lcom/samsung/android/devicecog/gallery/viewstatehandler/AlbumViewDCHandler;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/AlbumViewDCHandler;->isPickMode()Z

    move-result v7

    if-eqz v7, :cond_5

    const v7, 0x7f0a07a0

    :goto_2
    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v8, v7, v9}, Lcom/samsung/android/devicecog/gallery/controller/DCNlgManager;->getNlgRequestInfo(Landroid/content/Context;I[Ljava/lang/Object;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v1

    iget-object v7, p0, Lcom/samsung/android/devicecog/gallery/viewstatehandler/AlbumViewDCHandler;->mActivity:Landroid/app/Activity;

    sget-object v8, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->NLG_ONLY:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    invoke-static {v7, p1, v8, v1}, Lcom/samsung/android/devicecog/gallery/DCUtils;->sendResponseDCState(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;)V

    goto :goto_1

    :cond_5
    const v7, 0x7f0a0746

    goto :goto_2
.end method

.method private processSelectedView(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 6

    iget-object v3, p0, Lcom/samsung/android/devicecog/gallery/viewstatehandler/AlbumViewDCHandler;->mActivity:Landroid/app/Activity;

    invoke-static {v3}, Lcom/samsung/android/devicecog/gallery/DCUtils;->setExtendRuleTimeOut(Landroid/content/Context;)V

    if-eqz p6, :cond_0

    invoke-static {}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter$Builder;->create()Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;->setExecutingStateId(Ljava/lang/String;)Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;

    move-result-object v3

    invoke-virtual {v3, p6}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;->setOrdinal(I)Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;

    move-result-object v2

    invoke-static {}, Lcom/sec/samsung/gallery/core/Event$Builder;->create()Lcom/sec/samsung/gallery/core/Event;

    move-result-object v3

    sget v4, Lcom/sec/samsung/gallery/core/Event;->EVENT_DC_CMD_SELECT_ALBUM:I

    invoke-virtual {v3, v4}, Lcom/sec/samsung/gallery/core/Event;->setType(I)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/sec/samsung/gallery/core/Event;->setData(Ljava/lang/Object;)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/AlbumViewDCHandler;->notifyObservers(Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {p3}, Lcom/samsung/android/devicecog/gallery/DCUtils;->isValidParam(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {p3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {p2}, Lcom/samsung/android/devicecog/gallery/DCUtils;->isValidParam(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {}, Lcom/sec/samsung/gallery/core/Event$Builder;->create()Lcom/sec/samsung/gallery/core/Event;

    move-result-object v3

    sget v4, Lcom/sec/samsung/gallery/core/Event;->EVENT_SELECT_ALL:I

    invoke-virtual {v3, v4}, Lcom/sec/samsung/gallery/core/Event;->setType(I)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/AlbumViewDCHandler;->notifyObservers(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-static {p2}, Lcom/samsung/android/devicecog/gallery/DCUtils;->isValidParam(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter$Builder;->create()Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;->setExecutingStateId(Ljava/lang/String;)Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;->setAlbumName(Ljava/lang/String;)Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;

    move-result-object v2

    invoke-static {}, Lcom/sec/samsung/gallery/core/Event$Builder;->create()Lcom/sec/samsung/gallery/core/Event;

    move-result-object v3

    sget v4, Lcom/sec/samsung/gallery/core/Event;->EVENT_DC_CMD_SELECT_ALBUM:I

    invoke-virtual {v3, v4}, Lcom/sec/samsung/gallery/core/Event;->setType(I)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/sec/samsung/gallery/core/Event;->setData(Ljava/lang/Object;)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/AlbumViewDCHandler;->notifyObservers(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p4}, Lcom/samsung/android/devicecog/gallery/DCUtils;->isValidParam(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    if-nez p5, :cond_3

    const/4 p5, 0x1

    :cond_3
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter$Builder;->create()Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;->setExecutingStateId(Ljava/lang/String;)Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;->setSelectCount(I)Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;

    move-result-object v3

    invoke-virtual {v3, p5}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;->setSelectOrderType(I)Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;

    move-result-object v2

    invoke-static {}, Lcom/sec/samsung/gallery/core/Event$Builder;->create()Lcom/sec/samsung/gallery/core/Event;

    move-result-object v3

    sget v4, Lcom/sec/samsung/gallery/core/Event;->EVENT_DC_CMD_SELECT_ALBUM:I

    invoke-virtual {v3, v4}, Lcom/sec/samsung/gallery/core/Event;->setType(I)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/sec/samsung/gallery/core/Event;->setData(Ljava/lang/Object;)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/AlbumViewDCHandler;->notifyObservers(Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/samsung/android/devicecog/gallery/viewstatehandler/AlbumViewDCHandler;->mActivity:Landroid/app/Activity;

    const v4, 0x7f0a0757

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/samsung/android/devicecog/gallery/controller/DCNlgManager;->getNlgRequestInfo(Landroid/content/Context;I[Ljava/lang/Object;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/devicecog/gallery/viewstatehandler/AlbumViewDCHandler;->mActivity:Landroid/app/Activity;

    sget-object v4, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->NLG_ONLY:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    invoke-static {v3, p1, v4, v1}, Lcom/samsung/android/devicecog/gallery/DCUtils;->sendResponseDCState(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;)V

    goto/16 :goto_0
.end method


# virtual methods
.method protected createDCSelectItemTask(Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$SelectionListener;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/devicecog/gallery/viewstatehandler/AlbumViewDCHandler;->mDCSelectItemTask:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/devicecog/gallery/viewstatehandler/AlbumViewDCHandler;->mDCSelectItemTask:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask;->cancel(Z)Z

    :cond_0
    new-instance v1, Lcom/samsung/android/devicecog/gallery/selectiontask/AlbumViewDCSelectItemTask;

    iget-object v0, p0, Lcom/samsung/android/devicecog/gallery/viewstatehandler/AlbumViewDCHandler;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v1, v0}, Lcom/samsung/android/devicecog/gallery/selectiontask/AlbumViewDCSelectItemTask;-><init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)V

    iput-object v1, p0, Lcom/samsung/android/devicecog/gallery/viewstatehandler/AlbumViewDCHandler;->mDCSelectItemTask:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask;

    iget-object v0, p0, Lcom/samsung/android/devicecog/gallery/viewstatehandler/AlbumViewDCHandler;->mDCSelectItemTask:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask;

    invoke-virtual {v0, p1}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask;->setSelectionListener(Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$SelectionListener;)V

    return-void
.end method

.method protected getNlgRequestInfoForSelectedView(Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;
    .locals 6

    if-nez p1, :cond_1

    const/4 v1, 0x0

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/AlbumViewDCHandler;->getScreenStateId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/devicecog/gallery/nlgidmap/DCSelectedViewNlgIdMap;->getNlgId(Ljava/lang/String;)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/devicecog/gallery/viewstatehandler/AlbumViewDCHandler;->mActivity:Landroid/app/Activity;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "AlbumName"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v2, v0, v3}, Lcom/samsung/android/devicecog/gallery/controller/DCNlgManager;->getNlgRequestInfo(Landroid/content/Context;I[Ljava/lang/Object;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v1

    goto :goto_0
.end method

.method public getScreenStateId()Ljava/lang/String;
    .locals 4

    iget-object v2, p0, Lcom/samsung/android/devicecog/gallery/viewstatehandler/AlbumViewDCHandler;->mActivity:Landroid/app/Activity;

    check-cast v2, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getSelectionManager()Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/AlbumViewDCHandler;->isPickMode()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v0, "AlbumListPicker"

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v1}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v2

    if-eqz v2, :cond_6

    iget v2, v1, Lcom/sec/android/gallery3d/ui/SelectionManager;->mSelectionMode:I

    const/16 v3, 0x8

    if-ne v2, v3, :cond_2

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getMediaList()Ljava/util/LinkedList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v0, "AlbumListSelectedViewForHideAlbum"

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "AlbumListEmptySelectedViewForHideAlbum"

    goto :goto_0

    :cond_2
    iget v2, v1, Lcom/sec/android/gallery3d/ui/SelectionManager;->mSelectionMode:I

    const/16 v3, 0x9

    if-ne v2, v3, :cond_4

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getMediaList()Ljava/util/LinkedList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    const-string/jumbo v0, "AlbumListSelectedViewForShowHiddenAlbum"

    goto :goto_0

    :cond_3
    const-string/jumbo v0, "AlbumListEmptySelectedViewForShowHiddenAlbum"

    goto :goto_0

    :cond_4
    invoke-virtual {v1}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getMediaList()Ljava/util/LinkedList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    const-string/jumbo v0, "AlbumListSelectedView"

    goto :goto_0

    :cond_5
    const-string/jumbo v0, "AlbumListEmptySelectedView"

    goto :goto_0

    :cond_6
    const-string/jumbo v0, "AlbumsListView"

    goto :goto_0
.end method

.method public getSelectedStateArray()[Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/AlbumViewDCHandler;->isPickMode()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/devicecog/gallery/viewstatehandler/AlbumViewDCHandler;->mActivity:Landroid/app/Activity;

    check-cast v1, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getSelectionManager()Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v0

    iget v1, v0, Lcom/sec/android/gallery3d/ui/SelectionManager;->mSelectionMode:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_1

    sget-object v1, Lcom/samsung/android/devicecog/gallery/viewstatehandler/AlbumViewDCHandler;->HIDE_ALBUM_SELECTED_STATE:[Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget v1, v0, Lcom/sec/android/gallery3d/ui/SelectionManager;->mSelectionMode:I

    const/16 v2, 0x9

    if-ne v1, v2, :cond_2

    sget-object v1, Lcom/samsung/android/devicecog/gallery/viewstatehandler/AlbumViewDCHandler;->SHOW_HIDDEN_ALBUM_SELECTED_STATE:[Ljava/lang/String;

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/samsung/android/devicecog/gallery/viewstatehandler/AlbumViewDCHandler;->SELECTED_STATE:[Ljava/lang/String;

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

    const-string/jumbo v0, "AlbumListSelectedView"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "AlbumListEmptySelectedView"

    invoke-static {v0, p1}, Lcom/samsung/android/devicecog/gallery/DCStateLogUtil;->logDCStateEnterExit(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p1, "AlbumListEmptySelectedView"

    :cond_0
    :goto_0
    const-string/jumbo v0, "AlbumsListView"

    invoke-static {v0, p1}, Lcom/samsung/android/devicecog/gallery/DCStateLogUtil;->logDCStateEnterExit(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    const-string/jumbo v0, "AlbumListEmptySelectedViewForHideAlbum"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "AlbumListEmptySelectedViewForHideAlbum"

    invoke-static {v0, p1}, Lcom/samsung/android/devicecog/gallery/DCStateLogUtil;->logDCStateEnterExit(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p1, "AlbumListEmptySelectedViewForHideAlbum"

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "AlbumListEmptySelectedViewForShowHiddenAlbum"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "AlbumListEmptySelectedViewForShowHiddenAlbum"

    invoke-static {v0, p1}, Lcom/samsung/android/devicecog/gallery/DCStateLogUtil;->logDCStateEnterExit(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p1, "AlbumListEmptySelectedViewForShowHiddenAlbum"

    goto :goto_0
.end method

.method public startCommand(Ljava/lang/String;Ljava/util/List;)V
    .locals 8
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

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v4, p0, Lcom/samsung/android/devicecog/gallery/viewstatehandler/AlbumViewDCHandler;->mActivity:Landroid/app/Activity;

    check-cast v4, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/StateManager;->getTopState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v3

    if-nez v3, :cond_0

    const-string/jumbo v4, "AlbumViewDCHandler"

    const-string/jumbo v5, "startCommand() : topState is null!!"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/samsung/android/devicecog/gallery/viewstatehandler/AlbumViewDCHandler;->mActivity:Landroid/app/Activity;

    sget-object v5, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->FAILURE:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    invoke-static {v4, p1, v5}, Lcom/samsung/android/devicecog/gallery/DCUtils;->sendResponseDCState(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;)V

    :goto_0
    return-void

    :cond_0
    const/4 v4, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    :cond_1
    :goto_1
    packed-switch v4, :pswitch_data_0

    const-string/jumbo v4, "AlbumViewDCHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "stateId is wrong, stateId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Ljava/lang/UnsupportedOperationException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "stateId is wrong, stateId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v4

    :sswitch_0
    const-string/jumbo v7, "AlbumThumbnailView"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    move v4, v5

    goto :goto_1

    :sswitch_1
    const-string/jumbo v7, "AlbumThumbnailsPickerSingle"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    move v4, v6

    goto :goto_1

    :sswitch_2
    const-string/jumbo v7, "AlbumThumbnailsPickerMulti"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v4, 0x2

    goto :goto_1

    :sswitch_3
    const-string/jumbo v7, "AlbumListEmptySelectedView"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v4, 0x3

    goto :goto_1

    :sswitch_4
    const-string/jumbo v7, "AlbumListEmptySelectedViewForHideAlbum"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v4, 0x4

    goto :goto_1

    :sswitch_5
    const-string/jumbo v7, "AlbumListEmptySelectedViewForShowHiddenAlbum"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v4, 0x5

    goto :goto_1

    :sswitch_6
    const-string/jumbo v7, "AlbumListSelectedView"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v4, 0x6

    goto/16 :goto_1

    :sswitch_7
    const-string/jumbo v7, "AddItemsSelectedView"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v4, 0x7

    goto/16 :goto_1

    :sswitch_8
    const-string/jumbo v7, "CreateStorySelectedView"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/16 v4, 0x8

    goto/16 :goto_1

    :sswitch_9
    const-string/jumbo v7, "AlbumListSelectedViewForHideAlbum"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/16 v4, 0x9

    goto/16 :goto_1

    :sswitch_a
    const-string/jumbo v7, "AlbumListSelectedViewForShowHiddenAlbum"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/16 v4, 0xa

    goto/16 :goto_1

    :sswitch_b
    const-string/jumbo v7, "RenamePopUp"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/16 v4, 0xb

    goto/16 :goto_1

    :sswitch_c
    const-string/jumbo v7, "PicturesView"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/16 v4, 0xc

    goto/16 :goto_1

    :sswitch_d
    const-string/jumbo v7, "AlbumsListView"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/16 v4, 0xd

    goto/16 :goto_1

    :sswitch_e
    const-string/jumbo v7, "StoryListView"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/16 v4, 0xe

    goto/16 :goto_1

    :sswitch_f
    const-string/jumbo v7, "MtpView"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/16 v4, 0xf

    goto/16 :goto_1

    :sswitch_10
    const-string/jumbo v7, "AlbumListPicker"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/16 v4, 0x10

    goto/16 :goto_1

    :sswitch_11
    const-string/jumbo v7, "PicturePickerSingle"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/16 v4, 0x11

    goto/16 :goto_1

    :sswitch_12
    const-string/jumbo v7, "PicturePickerMulti"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/16 v4, 0x12

    goto/16 :goto_1

    :sswitch_13
    const-string/jumbo v7, "AlbumFold"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/16 v4, 0x13

    goto/16 :goto_1

    :sswitch_14
    const-string/jumbo v7, "AlbumUnfold"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/16 v4, 0x14

    goto/16 :goto_1

    :sswitch_15
    const-string/jumbo v7, "MoveToSecureFolder"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/16 v4, 0x15

    goto/16 :goto_1

    :sswitch_16
    const-string/jumbo v7, "ScrollUp"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/16 v4, 0x16

    goto/16 :goto_1

    :sswitch_17
    const-string/jumbo v7, "ScrollDown"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/16 v4, 0x17

    goto/16 :goto_1

    :sswitch_18
    const-string/jumbo v7, "ZoomIn"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/16 v4, 0x18

    goto/16 :goto_1

    :sswitch_19
    const-string/jumbo v7, "ZoomOut"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/16 v4, 0x19

    goto/16 :goto_1

    :sswitch_1a
    const-string/jumbo v7, "SwipeLeft"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/16 v4, 0x1a

    goto/16 :goto_1

    :sswitch_1b
    const-string/jumbo v7, "SwipeRight"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/16 v4, 0x1b

    goto/16 :goto_1

    :sswitch_1c
    const-string/jumbo v7, "ScrollToTop"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/16 v4, 0x1c

    goto/16 :goto_1

    :sswitch_1d
    const-string/jumbo v7, "ScrollToEnd"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/16 v4, 0x1d

    goto/16 :goto_1

    :pswitch_0
    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/ActivityState;->isNoItemViewMode()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p0, p1}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/AlbumViewDCHandler;->sendDCResponseForNoItem(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/AlbumViewDCHandler;->handleAlbumThumbnailView(Ljava/lang/String;Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_1
    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/ActivityState;->isNoItemViewMode()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p0, p1}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/AlbumViewDCHandler;->sendDCResponseForNoItem(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    invoke-virtual {p0, p1}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/AlbumViewDCHandler;->enterSelectedView(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_2
    invoke-direct {p0, p1}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/AlbumViewDCHandler;->handleAlbumEmptySelectedViewForHideAlbum(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_3
    invoke-direct {p0, p1}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/AlbumViewDCHandler;->handleAlbumSelectedViewForShowHiddenAlbum(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_4
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/AlbumViewDCHandler;->handleAlbumSelection(Ljava/lang/String;Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_5
    const v4, 0x7f120276

    invoke-virtual {p0, v4}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/AlbumViewDCHandler;->checkMenuOptionEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/AlbumViewDCHandler;->handleRenamePopUp(Ljava/lang/String;Ljava/util/List;)V

    goto/16 :goto_0

    :cond_4
    iget-object v4, p0, Lcom/samsung/android/devicecog/gallery/viewstatehandler/AlbumViewDCHandler;->mActivity:Landroid/app/Activity;

    check-cast v4, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getSelectionManager()Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getMediaList()Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-le v2, v6, :cond_5

    const v0, 0x7f0a0760

    :goto_2
    iget-object v4, p0, Lcom/samsung/android/devicecog/gallery/viewstatehandler/AlbumViewDCHandler;->mActivity:Landroid/app/Activity;

    sget-object v6, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->FAILURE:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    iget-object v7, p0, Lcom/samsung/android/devicecog/gallery/viewstatehandler/AlbumViewDCHandler;->mActivity:Landroid/app/Activity;

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v7, v0, v5}, Lcom/samsung/android/devicecog/gallery/controller/DCNlgManager;->getNlgRequestInfo(Landroid/content/Context;I[Ljava/lang/Object;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v5

    invoke-static {v4, p1, v6, v5}, Lcom/samsung/android/devicecog/gallery/DCUtils;->sendResponseDCState(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;)V

    goto/16 :goto_0

    :cond_5
    const v0, 0x7f0a075c

    goto :goto_2

    :pswitch_6
    invoke-virtual {p0, p1}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/AlbumViewDCHandler;->handleSwitchViewState(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/AlbumViewDCHandler;->getNlgRequestInfoForLaunch(Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v1

    iget-object v4, p0, Lcom/samsung/android/devicecog/gallery/viewstatehandler/AlbumViewDCHandler;->mActivity:Landroid/app/Activity;

    sget-object v5, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->SUCCESS:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    invoke-static {v4, p1, v5, v1}, Lcom/samsung/android/devicecog/gallery/DCUtils;->sendResponseDCState(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;)V

    goto/16 :goto_0

    :pswitch_7
    iget-object v4, p0, Lcom/samsung/android/devicecog/gallery/viewstatehandler/AlbumViewDCHandler;->mActivity:Landroid/app/Activity;

    sget-object v5, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->SUCCESS:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    invoke-static {v4, p1, v5}, Lcom/samsung/android/devicecog/gallery/DCUtils;->sendResponseDCState(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;)V

    goto/16 :goto_0

    :pswitch_8
    invoke-virtual {p0, p1}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/AlbumViewDCHandler;->handleSwitchViewState(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/devicecog/gallery/viewstatehandler/AlbumViewDCHandler;->mActivity:Landroid/app/Activity;

    sget-object v5, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->SUCCESS:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    invoke-static {v4, p1, v5}, Lcom/samsung/android/devicecog/gallery/DCUtils;->sendResponseDCState(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;)V

    goto/16 :goto_0

    :pswitch_9
    invoke-static {}, Lcom/sec/samsung/gallery/core/Event$Builder;->create()Lcom/sec/samsung/gallery/core/Event;

    move-result-object v4

    sget v5, Lcom/sec/samsung/gallery/core/Event;->EVENT_DC_CMD_MORE_ALBUM:I

    invoke-virtual {v4, v5}, Lcom/sec/samsung/gallery/core/Event;->setType(I)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/sec/samsung/gallery/core/Event;->setData(Ljava/lang/Object;)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/AlbumViewDCHandler;->notifyObservers(Ljava/lang/Object;)V

    goto/16 :goto_0

    :pswitch_a
    invoke-virtual {p0}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/AlbumViewDCHandler;->handleSecureFolder()V

    goto/16 :goto_0

    :pswitch_b
    invoke-static {}, Lcom/sec/samsung/gallery/core/Event$Builder;->create()Lcom/sec/samsung/gallery/core/Event;

    move-result-object v4

    sget v5, Lcom/sec/samsung/gallery/core/Event;->EVENT_DC_CMD_TOUCH_ACTION:I

    invoke-virtual {v4, v5}, Lcom/sec/samsung/gallery/core/Event;->setType(I)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/sec/samsung/gallery/core/Event;->setData(Ljava/lang/Object;)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/AlbumViewDCHandler;->notifyObservers(Ljava/lang/Object;)V

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7b70a14b -> :sswitch_2
        -0x79b5b110 -> :sswitch_13
        -0x74c056c1 -> :sswitch_7
        -0x6f3d1cde -> :sswitch_1b
        -0x6ebf57a8 -> :sswitch_e
        -0x601b8f88 -> :sswitch_18
        -0x4a7b0e32 -> :sswitch_f
        -0x3c6f5a9c -> :sswitch_4
        -0x2d23c7f3 -> :sswitch_6
        -0x2ce3b9bf -> :sswitch_1a
        -0x272cb585 -> :sswitch_10
        -0x23ff5c66 -> :sswitch_c
        -0x2217ca8d -> :sswitch_1d
        -0x22179213 -> :sswitch_1c
        -0x18459e40 -> :sswitch_3
        -0x16cec379 -> :sswitch_d
        -0x141e2998 -> :sswitch_16
        0x10e1a18d -> :sswitch_12
        0x132f6fb9 -> :sswitch_8
        0x14e74274 -> :sswitch_11
        0x16f12a4c -> :sswitch_1
        0x23ad43a2 -> :sswitch_0
        0x25497331 -> :sswitch_15
        0x367a6949 -> :sswitch_14
        0x3aa1f57f -> :sswitch_5
        0x4979b28c -> :sswitch_a
        0x4a0a7031 -> :sswitch_9
        0x5af0c40e -> :sswitch_b
        0x5ca9b65b -> :sswitch_19
        0x7abe2d2f -> :sswitch_17
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_8
        :pswitch_9
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
    .end packed-switch
.end method
