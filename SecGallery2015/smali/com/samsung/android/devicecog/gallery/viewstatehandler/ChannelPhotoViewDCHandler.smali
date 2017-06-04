.class public Lcom/samsung/android/devicecog/gallery/viewstatehandler/ChannelPhotoViewDCHandler;
.super Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;
.source "ChannelPhotoViewDCHandler.java"


# static fields
.field private static SELECTED_STATE:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;Lcom/sec/android/gallery3d/app/ActivityState;)V
    .locals 3

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;-><init>(Landroid/app/Activity;Ljava/util/Observer;)V

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "StoryListEmptySelectedView"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "StoryListSelectedView"

    aput-object v2, v0, v1

    sput-object v0, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ChannelPhotoViewDCHandler;->SELECTED_STATE:[Ljava/lang/String;

    return-void
.end method

.method private checkContentType(Ljava/util/List;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/bixby/data/Parameter;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/bixby/data/Parameter;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/samsung/android/sdk/bixby/data/Parameter;->getParameterName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "contentType"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v1}, Lcom/samsung/android/sdk/bixby/data/Parameter;->getSlotValue()Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method private checkOrderType(Ljava/util/List;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/bixby/data/Parameter;",
            ">;)I"
        }
    .end annotation

    const/4 v3, 0x0

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/bixby/data/Parameter;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/samsung/android/sdk/bixby/data/Parameter;->getParameterName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v5, "selectOrderType"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v1}, Lcom/samsung/android/sdk/bixby/data/Parameter;->getSlotValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v3, v0}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ChannelPhotoViewDCHandler;->getSelectOrderType(ILjava/lang/String;)I

    move-result v3

    :cond_1
    return v3
.end method

.method private getViewModeName(Ljava/util/List;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/bixby/data/Parameter;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/bixby/data/Parameter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/bixby/data/Parameter;->getParameterName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v4, "viewMode"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/bixby/data/Parameter;->getSlotValue()Ljava/lang/String;

    move-result-object v2

    :cond_1
    return-object v2
.end method

.method private handleChangeViewMode(Ljava/lang/String;Ljava/util/List;)V
    .locals 7
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

    const/4 v6, 0x0

    invoke-direct {p0, p2}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ChannelPhotoViewDCHandler;->getViewModeName(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/devicecog/gallery/DCUtils;->isValidParam(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string/jumbo v0, "GRID"

    const-string/jumbo v2, "TIMELINE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    invoke-static {}, Lcom/sec/samsung/gallery/core/Event$Builder;->create()Lcom/sec/samsung/gallery/core/Event;

    move-result-object v4

    sget v5, Lcom/sec/samsung/gallery/core/Event;->EVENT_DC_CMD_STORY_VIEW_MODE_CONTROL:I

    invoke-virtual {v4, v5}, Lcom/sec/samsung/gallery/core/Event;->setType(I)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/sec/samsung/gallery/core/Event;->setData(Ljava/lang/Object;)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ChannelPhotoViewDCHandler;->notifyObservers(Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_1
    iget-object v4, p0, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ChannelPhotoViewDCHandler;->mActivity:Landroid/app/Activity;

    const v5, 0x7f0a07c4

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/samsung/android/devicecog/gallery/controller/DCNlgManager;->getNlgRequestInfo(Landroid/content/Context;I[Ljava/lang/Object;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v1

    iget-object v4, p0, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ChannelPhotoViewDCHandler;->mActivity:Landroid/app/Activity;

    sget-object v5, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->FAILURE:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    invoke-static {v4, p1, v5, v1}, Lcom/samsung/android/devicecog/gallery/DCUtils;->sendResponseDCState(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;)V

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ChannelPhotoViewDCHandler;->mActivity:Landroid/app/Activity;

    const v5, 0x7f0a07c3

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/samsung/android/devicecog/gallery/controller/DCNlgManager;->getNlgRequestInfo(Landroid/content/Context;I[Ljava/lang/Object;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v1

    iget-object v4, p0, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ChannelPhotoViewDCHandler;->mActivity:Landroid/app/Activity;

    sget-object v5, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->FAILURE:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    invoke-static {v4, p1, v5, v1}, Lcom/samsung/android/devicecog/gallery/DCUtils;->sendResponseDCState(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;)V

    goto :goto_0
.end method

.method private handleSetLike(Ljava/lang/String;Ljava/util/List;)V
    .locals 7
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

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-direct {p0, p2}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ChannelPhotoViewDCHandler;->checkOrderType(Ljava/util/List;)I

    move-result v2

    invoke-direct {p0, p2}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ChannelPhotoViewDCHandler;->checkContentType(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v3, 0x3

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v4

    aput-object p1, v1, v5

    aput-object v0, v1, v6

    invoke-static {}, Lcom/sec/samsung/gallery/core/Event$Builder;->create()Lcom/sec/samsung/gallery/core/Event;

    move-result-object v3

    sget v4, Lcom/sec/samsung/gallery/core/Event;->EVENT_DC_CMD_LIKE_OPERATION:I

    invoke-virtual {v3, v4}, Lcom/sec/samsung/gallery/core/Event;->setType(I)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/sec/samsung/gallery/core/Event;->setData(Ljava/lang/Object;)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ChannelPhotoViewDCHandler;->notifyObservers(Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    if-nez v2, :cond_1

    invoke-direct {p0, p1}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ChannelPhotoViewDCHandler;->makeFailNlgForLikeOrComments(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v4

    aput-object p1, v1, v5

    invoke-static {}, Lcom/sec/samsung/gallery/core/Event$Builder;->create()Lcom/sec/samsung/gallery/core/Event;

    move-result-object v3

    sget v4, Lcom/sec/samsung/gallery/core/Event;->EVENT_DC_CMD_LIKE_OPERATION:I

    invoke-virtual {v3, v4}, Lcom/sec/samsung/gallery/core/Event;->setType(I)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/sec/samsung/gallery/core/Event;->setData(Ljava/lang/Object;)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ChannelPhotoViewDCHandler;->notifyObservers(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private handleShowComments(Ljava/lang/String;Ljava/util/List;)V
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

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-direct {p0, p2}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ChannelPhotoViewDCHandler;->checkOrderType(Ljava/util/List;)I

    move-result v2

    invoke-direct {p0, p2}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ChannelPhotoViewDCHandler;->checkContentType(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v3, 0x2

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v4

    aput-object v0, v1, v5

    invoke-static {}, Lcom/sec/samsung/gallery/core/Event$Builder;->create()Lcom/sec/samsung/gallery/core/Event;

    move-result-object v3

    sget v4, Lcom/sec/samsung/gallery/core/Event;->EVENT_DC_CMD_STORY_COMMENTS:I

    invoke-virtual {v3, v4}, Lcom/sec/samsung/gallery/core/Event;->setType(I)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/sec/samsung/gallery/core/Event;->setData(Ljava/lang/Object;)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ChannelPhotoViewDCHandler;->notifyObservers(Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    if-nez v2, :cond_1

    invoke-direct {p0, p1}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ChannelPhotoViewDCHandler;->makeFailNlgForLikeOrComments(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v4

    invoke-static {}, Lcom/sec/samsung/gallery/core/Event$Builder;->create()Lcom/sec/samsung/gallery/core/Event;

    move-result-object v3

    sget v4, Lcom/sec/samsung/gallery/core/Event;->EVENT_DC_CMD_STORY_COMMENTS:I

    invoke-virtual {v3, v4}, Lcom/sec/samsung/gallery/core/Event;->setType(I)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/sec/samsung/gallery/core/Event;->setData(Ljava/lang/Object;)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ChannelPhotoViewDCHandler;->notifyObservers(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private makeFailNlgForLikeOrComments(Ljava/lang/String;)V
    .locals 4

    iget-object v1, p0, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ChannelPhotoViewDCHandler;->mActivity:Landroid/app/Activity;

    const v2, 0x7f0a07d0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/samsung/android/devicecog/gallery/controller/DCNlgManager;->getNlgRequestInfo(Landroid/content/Context;I[Ljava/lang/Object;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ChannelPhotoViewDCHandler;->mActivity:Landroid/app/Activity;

    sget-object v2, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->NLG_ONLY:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    invoke-static {v1, p1, v2, v0}, Lcom/samsung/android/devicecog/gallery/DCUtils;->sendResponseDCState(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;)V

    return-void
.end method


# virtual methods
.method protected createDCSelectItemTask(Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$SelectionListener;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ChannelPhotoViewDCHandler;->mDCSelectItemTask:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ChannelPhotoViewDCHandler;->mDCSelectItemTask:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask;->cancel(Z)Z

    :cond_0
    new-instance v1, Lcom/samsung/android/devicecog/gallery/selectiontask/ChannelPhotoViewDCSelectItemTask;

    iget-object v0, p0, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ChannelPhotoViewDCHandler;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v1, v0}, Lcom/samsung/android/devicecog/gallery/selectiontask/ChannelPhotoViewDCSelectItemTask;-><init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)V

    iput-object v1, p0, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ChannelPhotoViewDCHandler;->mDCSelectItemTask:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask;

    iget-object v0, p0, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ChannelPhotoViewDCHandler;->mDCSelectItemTask:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask;

    invoke-virtual {v0, p1}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask;->setSelectionListener(Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$SelectionListener;)V

    return-void
.end method

.method public getScreenStateId()Ljava/lang/String;
    .locals 3

    iget-object v2, p0, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ChannelPhotoViewDCHandler;->mActivity:Landroid/app/Activity;

    check-cast v2, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getSelectionManager()Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getMediaList()Ljava/util/LinkedList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v0, "StoryDetailSelectedView"

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "StoryDetailEmptySelectedView"

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "StoryDetailView"

    goto :goto_0
.end method

.method public getSelectedStateArray()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ChannelPhotoViewDCHandler;->SELECTED_STATE:[Ljava/lang/String;

    return-object v0
.end method

.method public logDCEnterSelectionMode(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/samsung/android/devicecog/gallery/DCStateLogUtil$LoggingType;->ENTER:Lcom/samsung/android/devicecog/gallery/DCStateLogUtil$LoggingType;

    invoke-static {p1, v0}, Lcom/samsung/android/devicecog/gallery/DCStateLogUtil;->logDCState(Ljava/lang/String;Lcom/samsung/android/devicecog/gallery/DCStateLogUtil$LoggingType;)V

    return-void
.end method

.method public logDCExitSelectionMode(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "StoryDetailSelectedView"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "StoryDetailEmptySelectedView"

    invoke-static {v0, p1}, Lcom/samsung/android/devicecog/gallery/DCStateLogUtil;->logDCStateEnterExit(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p1, "StoryDetailEmptySelectedView"

    :cond_0
    const-string/jumbo v0, "StoryDetailView"

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

    const/4 v2, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v2, :pswitch_data_0

    const-string/jumbo v2, "ChanPhotoViewDCHdler"

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
    const-string/jumbo v3, "DetailView"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :sswitch_1
    const-string/jumbo v3, "StoryDetailEmptySelectedView"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :sswitch_2
    const-string/jumbo v3, "StoryDetailSelectedView"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x2

    goto :goto_0

    :sswitch_3
    const-string/jumbo v3, "Members"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x3

    goto :goto_0

    :sswitch_4
    const-string/jumbo v3, "AddItemsEmptySelectedView"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x4

    goto :goto_0

    :sswitch_5
    const-string/jumbo v3, "RenamePopUp"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x5

    goto :goto_0

    :sswitch_6
    const-string/jumbo v3, "ShareChooserPopUp"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x6

    goto/16 :goto_0

    :sswitch_7
    const-string/jumbo v3, "CrossShare"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x7

    goto/16 :goto_0

    :sswitch_8
    const-string/jumbo v3, "CrossStoryVideoEditorPlayStoryVideo"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v2, 0x8

    goto/16 :goto_0

    :sswitch_9
    const-string/jumbo v3, "CrossContactSinglePickFromInvite"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v2, 0x9

    goto/16 :goto_0

    :sswitch_a
    const-string/jumbo v3, "PicturePickerMulti"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v2, 0xa

    goto/16 :goto_0

    :sswitch_b
    const-string/jumbo v3, "AlbumListPicker"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v2, 0xb

    goto/16 :goto_0

    :sswitch_c
    const-string/jumbo v3, "CrossPhotoEditorAnimationEditor"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v2, 0xc

    goto/16 :goto_0

    :sswitch_d
    const-string/jumbo v3, "CrossPhotoEditorCollageEditor"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v2, 0xd

    goto/16 :goto_0

    :sswitch_e
    const-string/jumbo v3, "StoryViewMode"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v2, 0xe

    goto/16 :goto_0

    :sswitch_f
    const-string/jumbo v3, "AddStoryMember"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v2, 0xf

    goto/16 :goto_0

    :sswitch_10
    const-string/jumbo v3, "Like"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v2, 0x10

    goto/16 :goto_0

    :sswitch_11
    const-string/jumbo v3, "Unlike"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v2, 0x11

    goto/16 :goto_0

    :sswitch_12
    const-string/jumbo v3, "ScrollUp"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v2, 0x12

    goto/16 :goto_0

    :sswitch_13
    const-string/jumbo v3, "ScrollDown"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v2, 0x13

    goto/16 :goto_0

    :sswitch_14
    const-string/jumbo v3, "ZoomIn"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v2, 0x14

    goto/16 :goto_0

    :sswitch_15
    const-string/jumbo v3, "ZoomOut"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v2, 0x15

    goto/16 :goto_0

    :sswitch_16
    const-string/jumbo v3, "ScrollToTop"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v2, 0x16

    goto/16 :goto_0

    :sswitch_17
    const-string/jumbo v3, "ScrollToEnd"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v2, 0x17

    goto/16 :goto_0

    :sswitch_18
    const-string/jumbo v3, "StoryComments"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v2, 0x18

    goto/16 :goto_0

    :sswitch_19
    const-string/jumbo v3, "CreateStory"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v2, 0x19

    goto/16 :goto_0

    :pswitch_0
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ChannelPhotoViewDCHandler;->handleStartDetailView(Ljava/lang/String;Ljava/util/List;)V

    :goto_1
    return-void

    :pswitch_1
    invoke-virtual {p0, p1}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ChannelPhotoViewDCHandler;->enterSelectedView(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_2
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ChannelPhotoViewDCHandler;->handleSelectedView(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_1

    :pswitch_3
    iget-object v2, p0, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ChannelPhotoViewDCHandler;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v2

    const-string/jumbo v3, "SHOW_SHARED_FRIENDS_LIST"

    iget-object v4, p0, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ChannelPhotoViewDCHandler;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2, v3, v4}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_4
    invoke-static {}, Lcom/sec/samsung/gallery/core/Event$Builder;->create()Lcom/sec/samsung/gallery/core/Event;

    move-result-object v2

    sget v3, Lcom/sec/samsung/gallery/core/Event;->EVENT_ADD_CONTENTS:I

    invoke-virtual {v2, v3}, Lcom/sec/samsung/gallery/core/Event;->setType(I)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ChannelPhotoViewDCHandler;->notifyObservers(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ChannelPhotoViewDCHandler;->mActivity:Landroid/app/Activity;

    sget-object v3, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->SUCCESS:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    invoke-static {v2, p1, v3}, Lcom/samsung/android/devicecog/gallery/DCUtils;->sendResponseDCState(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;)V

    goto :goto_1

    :pswitch_5
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ChannelPhotoViewDCHandler;->handleRenamePopUp(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_1

    :pswitch_6
    invoke-virtual {p0, p2}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ChannelPhotoViewDCHandler;->handleShareChooserPopup(Ljava/util/List;)V

    goto :goto_1

    :pswitch_7
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ChannelPhotoViewDCHandler;->handleShare(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_1

    :pswitch_8
    invoke-static {}, Lcom/sec/samsung/gallery/core/Event$Builder;->create()Lcom/sec/samsung/gallery/core/Event;

    move-result-object v2

    sget v3, Lcom/sec/samsung/gallery/core/Event;->EVENT_DC_CMD_PLAY_STORY_VIDEO:I

    invoke-virtual {v2, v3}, Lcom/sec/samsung/gallery/core/Event;->setType(I)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ChannelPhotoViewDCHandler;->notifyObservers(Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_9
    invoke-static {}, Lcom/sec/samsung/gallery/core/Event$Builder;->create()Lcom/sec/samsung/gallery/core/Event;

    move-result-object v2

    sget v3, Lcom/sec/samsung/gallery/core/Event;->EVENT_ADD_CONTACTS:I

    invoke-virtual {v2, v3}, Lcom/sec/samsung/gallery/core/Event;->setType(I)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ChannelPhotoViewDCHandler;->notifyObservers(Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_a
    sget-object v2, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_TIMELINE:Lcom/sec/samsung/gallery/core/TabTagType;

    invoke-static {v2}, Lcom/sec/samsung/gallery/core/TabTagType;->from(Lcom/sec/samsung/gallery/core/TabTagType;)I

    move-result v1

    invoke-static {}, Lcom/sec/samsung/gallery/core/Event$Builder;->create()Lcom/sec/samsung/gallery/core/Event;

    move-result-object v2

    sget v3, Lcom/sec/samsung/gallery/core/Event;->EVENT_DC_CMD_START_PICKER:I

    invoke-virtual {v2, v3}, Lcom/sec/samsung/gallery/core/Event;->setType(I)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/sec/samsung/gallery/core/Event;->setIntData(I)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ChannelPhotoViewDCHandler;->notifyObservers(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ChannelPhotoViewDCHandler;->mActivity:Landroid/app/Activity;

    sget-object v3, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->SUCCESS:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    invoke-static {v2, p1, v3}, Lcom/samsung/android/devicecog/gallery/DCUtils;->sendResponseDCState(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;)V

    goto :goto_1

    :pswitch_b
    sget-object v2, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_ALBUM:Lcom/sec/samsung/gallery/core/TabTagType;

    invoke-static {v2}, Lcom/sec/samsung/gallery/core/TabTagType;->from(Lcom/sec/samsung/gallery/core/TabTagType;)I

    move-result v0

    invoke-static {}, Lcom/sec/samsung/gallery/core/Event$Builder;->create()Lcom/sec/samsung/gallery/core/Event;

    move-result-object v2

    sget v3, Lcom/sec/samsung/gallery/core/Event;->EVENT_DC_CMD_START_PICKER:I

    invoke-virtual {v2, v3}, Lcom/sec/samsung/gallery/core/Event;->setType(I)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/sec/samsung/gallery/core/Event;->setIntData(I)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ChannelPhotoViewDCHandler;->notifyObservers(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ChannelPhotoViewDCHandler;->mActivity:Landroid/app/Activity;

    sget-object v3, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->SUCCESS:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    invoke-static {v2, p1, v3}, Lcom/samsung/android/devicecog/gallery/DCUtils;->sendResponseDCState(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;)V

    goto/16 :goto_1

    :pswitch_c
    invoke-static {}, Lcom/sec/samsung/gallery/core/Event$Builder;->create()Lcom/sec/samsung/gallery/core/Event;

    move-result-object v2

    sget v3, Lcom/sec/samsung/gallery/core/Event;->EVENT_DC_CMD_CREATE_ANIMATE:I

    invoke-virtual {v2, v3}, Lcom/sec/samsung/gallery/core/Event;->setType(I)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ChannelPhotoViewDCHandler;->notifyObservers(Ljava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_d
    invoke-static {}, Lcom/sec/samsung/gallery/core/Event$Builder;->create()Lcom/sec/samsung/gallery/core/Event;

    move-result-object v2

    sget v3, Lcom/sec/samsung/gallery/core/Event;->EVENT_DC_CMD_CREATE_COLLAGE:I

    invoke-virtual {v2, v3}, Lcom/sec/samsung/gallery/core/Event;->setType(I)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ChannelPhotoViewDCHandler;->notifyObservers(Ljava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_e
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ChannelPhotoViewDCHandler;->handleChangeViewMode(Ljava/lang/String;Ljava/util/List;)V

    goto/16 :goto_1

    :pswitch_f
    invoke-static {}, Lcom/sec/samsung/gallery/core/Event$Builder;->create()Lcom/sec/samsung/gallery/core/Event;

    move-result-object v2

    sget v3, Lcom/sec/samsung/gallery/core/Event;->EVENT_DC_CMD_ADD_STORY_MEMBER:I

    invoke-virtual {v2, v3}, Lcom/sec/samsung/gallery/core/Event;->setType(I)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ChannelPhotoViewDCHandler;->notifyObservers(Ljava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_10
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ChannelPhotoViewDCHandler;->handleSetLike(Ljava/lang/String;Ljava/util/List;)V

    goto/16 :goto_1

    :pswitch_11
    invoke-static {}, Lcom/sec/samsung/gallery/core/Event$Builder;->create()Lcom/sec/samsung/gallery/core/Event;

    move-result-object v2

    sget v3, Lcom/sec/samsung/gallery/core/Event;->EVENT_DC_CMD_TOUCH_ACTION:I

    invoke-virtual {v2, v3}, Lcom/sec/samsung/gallery/core/Event;->setType(I)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/sec/samsung/gallery/core/Event;->setData(Ljava/lang/Object;)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ChannelPhotoViewDCHandler;->notifyObservers(Ljava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_12
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ChannelPhotoViewDCHandler;->handleShowComments(Ljava/lang/String;Ljava/util/List;)V

    goto/16 :goto_1

    :pswitch_13
    iget-object v2, p0, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ChannelPhotoViewDCHandler;->mActivity:Landroid/app/Activity;

    sget-object v3, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->FAILURE:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    invoke-static {v2, p1, v3}, Lcom/samsung/android/devicecog/gallery/DCUtils;->sendResponseDCState(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;)V

    goto/16 :goto_1

    :sswitch_data_0
    .sparse-switch
        -0x77b12a23 -> :sswitch_e
        -0x7506b650 -> :sswitch_6
        -0x733f3461 -> :sswitch_7
        -0x6cc3df52 -> :sswitch_f
        -0x68b34a30 -> :sswitch_11
        -0x64389f07 -> :sswitch_3
        -0x601b8f88 -> :sswitch_14
        -0x272cb585 -> :sswitch_b
        -0x2217ca8d -> :sswitch_17
        -0x22179213 -> :sswitch_16
        -0x141e2998 -> :sswitch_12
        -0x51ef9ee -> :sswitch_c
        0x2423b7 -> :sswitch_10
        0x5117086 -> :sswitch_2
        0x10e1a18d -> :sswitch_a
        0x1d22a5e9 -> :sswitch_18
        0x1e27dfce -> :sswitch_4
        0x1f8e18bc -> :sswitch_9
        0x2c828ce7 -> :sswitch_1
        0x390e12b6 -> :sswitch_0
        0x45554d39 -> :sswitch_19
        0x5af0c40e -> :sswitch_5
        0x5ca9b65b -> :sswitch_15
        0x61ee4b8d -> :sswitch_8
        0x7abe2d2f -> :sswitch_13
        0x7ebb8221 -> :sswitch_d
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
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
        :pswitch_f
        :pswitch_10
        :pswitch_10
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_12
        :pswitch_13
    .end packed-switch
.end method
