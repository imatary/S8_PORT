.class public Lcom/samsung/android/devicecog/gallery/viewstatehandler/DetailViewDCHandler;
.super Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;
.source "DetailViewDCHandler.java"


# direct methods
.method public constructor <init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;Lcom/sec/android/gallery3d/app/ActivityState;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;-><init>(Landroid/app/Activity;Ljava/util/Observer;)V

    return-void
.end method

.method private getFileNameFromParam(Ljava/util/List;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v4, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/DetailViewDCHandler;->getParamName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v5, "fileName"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {p0, v1}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/DetailViewDCHandler;->getSlotValue(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    :cond_0
    return-object v4

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private handleFavorite(Ljava/lang/String;Z)V
    .locals 9

    const v8, 0x7f1202a2

    invoke-virtual {p0, v8}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/DetailViewDCHandler;->checkMenuOptionEnabled(I)Z

    move-result v7

    if-eqz v7, :cond_3

    const/4 v6, 0x0

    const/4 v1, 0x0

    iget-object v7, p0, Lcom/samsung/android/devicecog/gallery/viewstatehandler/DetailViewDCHandler;->mActivity:Landroid/app/Activity;

    check-cast v7, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getSelectionManager()Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getMediaList()Ljava/util/LinkedList;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_1

    const/4 v7, 0x0

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/gallery3d/data/MediaItem;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/MediaItem;->isFavorite()Z

    move-result v0

    new-instance v5, Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgMenuFavorite;

    invoke-direct {v5, p2, v0}, Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgMenuFavorite;-><init>(ZZ)V

    const-string/jumbo v7, "DetailView"

    invoke-interface {v5, v7}, Lcom/samsung/android/devicecog/gallery/nlgparam/NlgRequestInfoParamAppendable;->addRequestInfoParam(Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v1

    if-eq p2, v0, :cond_0

    iget-object v7, p0, Lcom/samsung/android/devicecog/gallery/viewstatehandler/DetailViewDCHandler;->mActivity:Landroid/app/Activity;

    check-cast v7, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getMenu()Landroid/view/Menu;

    move-result-object v7

    invoke-interface {v7, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    iget-object v7, p0, Lcom/samsung/android/devicecog/gallery/viewstatehandler/DetailViewDCHandler;->mActivity:Landroid/app/Activity;

    invoke-virtual {v7, v3}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    :cond_0
    const/4 v6, 0x1

    :cond_1
    iget-object v8, p0, Lcom/samsung/android/devicecog/gallery/viewstatehandler/DetailViewDCHandler;->mActivity:Landroid/app/Activity;

    if-eqz v6, :cond_2

    sget-object v7, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->SUCCESS:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    :goto_0
    invoke-static {v8, p1, v7, v1}, Lcom/samsung/android/devicecog/gallery/DCUtils;->sendResponseDCState(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;)V

    :goto_1
    return-void

    :cond_2
    sget-object v7, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->FAILURE:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    goto :goto_0

    :cond_3
    new-instance v5, Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgMenuFavorite;

    invoke-direct {v5}, Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgMenuFavorite;-><init>()V

    const-string/jumbo v7, "DetailView"

    invoke-interface {v5, v7}, Lcom/samsung/android/devicecog/gallery/nlgparam/NlgRequestInfoParamAppendable;->addRequestInfoParam(Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v1

    iget-object v7, p0, Lcom/samsung/android/devicecog/gallery/viewstatehandler/DetailViewDCHandler;->mActivity:Landroid/app/Activity;

    sget-object v8, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->FAILURE:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    invoke-static {v7, p1, v8, v1}, Lcom/samsung/android/devicecog/gallery/DCUtils;->sendResponseDCState(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;)V

    goto :goto_1
.end method

.method private handleFileRename(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<*>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/DetailViewDCHandler;->getFileNameFromParam(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/sec/samsung/gallery/core/Event$Builder;->create()Lcom/sec/samsung/gallery/core/Event;

    move-result-object v1

    sget v2, Lcom/sec/samsung/gallery/core/Event;->EVENT_DC_CMD_RENAME_EDIT_INFO:I

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/core/Event;->setType(I)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/samsung/gallery/core/Event;->setData(Ljava/lang/Object;)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/DetailViewDCHandler;->notifyObservers(Ljava/lang/Object;)V

    return-void
.end method

.method private handlePlayVideo()V
    .locals 10

    const/4 v4, 0x0

    iget-object v3, p0, Lcom/samsung/android/devicecog/gallery/viewstatehandler/DetailViewDCHandler;->mActivity:Landroid/app/Activity;

    instance-of v3, v3, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/samsung/android/devicecog/gallery/viewstatehandler/DetailViewDCHandler;->mActivity:Landroid/app/Activity;

    check-cast v3, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getSelectionManager()Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getMediaList()Ljava/util/LinkedList;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/data/MediaItem;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/MediaItem;->getSupportedOperations()J

    move-result-wide v6

    const-wide/16 v8, 0x80

    and-long/2addr v6, v8

    const-wide/16 v8, 0x0

    cmp-long v3, v6, v8

    if-eqz v3, :cond_1

    const/4 v1, 0x1

    :goto_0
    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/MediaItem;->getMediaType()I

    move-result v3

    const/4 v5, 0x4

    if-ne v3, v5, :cond_2

    instance-of v3, v0, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;

    if-eqz v3, :cond_2

    :cond_0
    invoke-static {}, Lcom/sec/samsung/gallery/core/Event$Builder;->create()Lcom/sec/samsung/gallery/core/Event;

    move-result-object v3

    sget v4, Lcom/sec/samsung/gallery/core/Event;->EVENT_DC_PLAY_VIDEO:I

    invoke-virtual {v3, v4}, Lcom/sec/samsung/gallery/core/Event;->setType(I)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/DetailViewDCHandler;->notifyObservers(Ljava/lang/Object;)V

    :goto_1
    return-void

    :cond_1
    move v1, v4

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/samsung/android/devicecog/gallery/viewstatehandler/DetailViewDCHandler;->mActivity:Landroid/app/Activity;

    const-string/jumbo v5, "CrossVideoPlayer"

    sget-object v6, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->FAILURE:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    iget-object v7, p0, Lcom/samsung/android/devicecog/gallery/viewstatehandler/DetailViewDCHandler;->mActivity:Landroid/app/Activity;

    const v8, 0x7f0a0577

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v7, v8, v4}, Lcom/samsung/android/devicecog/gallery/controller/DCNlgManager;->getNlgRequestInfo(Landroid/content/Context;I[Ljava/lang/Object;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v4

    invoke-static {v3, v5, v6, v4}, Lcom/samsung/android/devicecog/gallery/DCUtils;->sendResponseDCState(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;)V

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lcom/samsung/android/devicecog/gallery/viewstatehandler/DetailViewDCHandler;->mActivity:Landroid/app/Activity;

    const-string/jumbo v4, "CrossVideoPlayer"

    sget-object v5, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->FAILURE:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    invoke-static {v3, v4, v5}, Lcom/samsung/android/devicecog/gallery/DCUtils;->sendResponseDCState(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;)V

    goto :goto_1
.end method

.method private handleRotate(Ljava/lang/String;Ljava/util/List;)V
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

    const/4 v3, 0x0

    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/bixby/data/Parameter;

    if-eqz v0, :cond_0

    const-string/jumbo v5, "direction"

    invoke-virtual {v0}, Lcom/samsung/android/sdk/bixby/data/Parameter;->getParameterName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/bixby/data/Parameter;->getSlotValue()Ljava/lang/String;

    move-result-object v3

    :cond_1
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    const-string/jumbo v4, "left"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    const v2, 0x7f1202a5

    :goto_0
    invoke-virtual {p0, v2}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/DetailViewDCHandler;->checkMenuOptionEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-static {}, Lcom/sec/samsung/gallery/core/Event$Builder;->create()Lcom/sec/samsung/gallery/core/Event;

    move-result-object v4

    sget v5, Lcom/sec/samsung/gallery/core/Event;->EVENT_ROTATE_MEDIA:I

    invoke-virtual {v4, v5}, Lcom/sec/samsung/gallery/core/Event;->setType(I)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/sec/samsung/gallery/core/Event;->setIntData(I)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/DetailViewDCHandler;->notifyObservers(Ljava/lang/Object;)V

    :goto_1
    return-void

    :cond_2
    const v2, 0x7f1202a6

    goto :goto_0

    :cond_3
    const-string/jumbo v4, "DetailViewDcCommandCtrl"

    const-string/jumbo v5, "rotation = null, default : rotate left"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const v2, 0x7f1202a5

    goto :goto_0

    :cond_4
    new-instance v1, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    const-string/jumbo v4, "DetailView"

    invoke-direct {v1, v4}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "Rotate"

    const-string/jumbo v5, "Available"

    const-string/jumbo v6, "no"

    invoke-virtual {v1, v4, v5, v6}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    iget-object v4, p0, Lcom/samsung/android/devicecog/gallery/viewstatehandler/DetailViewDCHandler;->mActivity:Landroid/app/Activity;

    sget-object v5, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->FAILURE:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    invoke-static {v4, p1, v5, v1}, Lcom/samsung/android/devicecog/gallery/DCUtils;->sendResponseDCState(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;)V

    goto :goto_1
.end method

.method private handleSetAsWallpaper(Ljava/lang/String;Ljava/util/List;)V
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

    const v4, 0x7f1202ac

    invoke-virtual {p0, v4}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/DetailViewDCHandler;->checkMenuOptionEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p2}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/DetailViewDCHandler;->makeSetAsTargetName(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/sec/samsung/gallery/core/Event$Builder;->create()Lcom/sec/samsung/gallery/core/Event;

    move-result-object v4

    sget v5, Lcom/sec/samsung/gallery/core/Event;->EVENT_DC_CMD_SET_AS:I

    invoke-virtual {v4, v5}, Lcom/sec/samsung/gallery/core/Event;->setType(I)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/sec/samsung/gallery/core/Event;->setData(Ljava/lang/Object;)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/DetailViewDCHandler;->notifyObservers(Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    new-instance v3, Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgSetAsWallpaperState;

    invoke-direct {v3, v0}, Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgSetAsWallpaperState;-><init>(Z)V

    const-string/jumbo v4, "DetailView"

    invoke-interface {v3, v4}, Lcom/samsung/android/devicecog/gallery/nlgparam/NlgRequestInfoParamAppendable;->addRequestInfoParam(Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v1

    iget-object v4, p0, Lcom/samsung/android/devicecog/gallery/viewstatehandler/DetailViewDCHandler;->mActivity:Landroid/app/Activity;

    sget-object v5, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->FAILURE:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    invoke-static {v4, p1, v5, v1}, Lcom/samsung/android/devicecog/gallery/DCUtils;->sendResponseDCState(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;)V

    goto :goto_0
.end method

.method private handleShareForDetailView(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/bixby/data/Parameter;",
            ">;)V"
        }
    .end annotation

    const/4 v3, 0x0

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/bixby/data/Parameter;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/samsung/android/sdk/bixby/data/Parameter;->getParameterName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v5, "packages"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v1}, Lcom/samsung/android/sdk/bixby/data/Parameter;->getSlotValue()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/samsung/android/devicecog/gallery/viewstatehandler/DetailViewDCHandler;->mActivity:Landroid/app/Activity;

    check-cast v4, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getDCShareParam()Lcom/samsung/android/devicecog/gallery/DCShareParameter;

    move-result-object v0

    if-nez v0, :cond_2

    new-instance v0, Lcom/samsung/android/devicecog/gallery/DCShareParameter;

    invoke-direct {v0}, Lcom/samsung/android/devicecog/gallery/DCShareParameter;-><init>()V

    :cond_2
    invoke-virtual {v0, v3}, Lcom/samsung/android/devicecog/gallery/DCShareParameter;->setDefaultPackageForShare(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/devicecog/gallery/viewstatehandler/DetailViewDCHandler;->mActivity:Landroid/app/Activity;

    check-cast v4, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setDCShareParam(Lcom/samsung/android/devicecog/gallery/DCShareParameter;)V

    invoke-static {}, Lcom/sec/samsung/gallery/core/Event$Builder;->create()Lcom/sec/samsung/gallery/core/Event;

    move-result-object v4

    sget v5, Lcom/sec/samsung/gallery/core/Event;->EVENT_DC_CMD_DETAILVIEW_SHARE:I

    invoke-virtual {v4, v5}, Lcom/sec/samsung/gallery/core/Event;->setType(I)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/DetailViewDCHandler;->notifyObservers(Ljava/lang/Object;)V

    return-void
.end method

.method private makeSetAsTargetName(Ljava/util/List;)Ljava/lang/String;
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

    const-string/jumbo v2, "home"

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/bixby/data/Parameter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/bixby/data/Parameter;->getParameterName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v4, "wallpaperType"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/bixby/data/Parameter;->getSlotValue()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/devicecog/gallery/DCStateParameter$CrossWallpaper;->getValidValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    return-object v2
.end method


# virtual methods
.method public getNextExpectedState(Ljava/util/List;Lcom/sec/android/gallery3d/data/MediaItem;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/sec/android/gallery3d/data/MediaItem;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    if-nez p2, :cond_0

    const-string/jumbo v0, "DetailViewDcCommandCtrl"

    const-string/jumbo v1, "BixbyGallery : getNextExpectedState() : mediaItem is null!!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1, p2}, Lcom/samsung/android/devicecog/gallery/controller/DCSplitStateChecker;->getNextState(Ljava/util/List;Lcom/sec/android/gallery3d/data/MediaItem;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public startCommand(Ljava/lang/String;Ljava/util/List;)V
    .locals 9
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

    const/16 v7, 0xd

    const/16 v6, 0xa

    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x0

    const/4 v2, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v8

    sparse-switch v8, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v2, :pswitch_data_0

    const-string/jumbo v2, "DetailViewDcCommandCtrl"

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
    const-string/jumbo v8, "CrossShareForDetailView"

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    move v2, v3

    goto :goto_0

    :sswitch_1
    const-string/jumbo v8, "ShareChooserPopUp"

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :sswitch_2
    const-string/jumbo v8, "AutoAdjustOn"

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v2, 0x2

    goto :goto_0

    :sswitch_3
    const-string/jumbo v8, "AutoAdjustOff"

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    move v2, v4

    goto :goto_0

    :sswitch_4
    const-string/jumbo v8, "DeletePopUp"

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    move v2, v5

    goto :goto_0

    :sswitch_5
    const-string/jumbo v8, "DeletePopUpForDetailView"

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v2, 0x5

    goto :goto_0

    :sswitch_6
    const-string/jumbo v8, "CrossPhotoEditorPhotoEditor"

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v2, 0x6

    goto/16 :goto_0

    :sswitch_7
    const-string/jumbo v8, "CrossPhotoEditorPhoto360Editor"

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v2, 0x7

    goto/16 :goto_0

    :sswitch_8
    const-string/jumbo v8, "CrossVideoEditorVideoEditorView"

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/16 v2, 0x8

    goto/16 :goto_0

    :sswitch_9
    const-string/jumbo v8, "CrossVideoEditorVideo360EditorView"

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/16 v2, 0x9

    goto/16 :goto_0

    :sswitch_a
    const-string/jumbo v8, "Rotate"

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    move v2, v6

    goto/16 :goto_0

    :sswitch_b
    const-string/jumbo v8, "EditInfo"

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/16 v2, 0xb

    goto/16 :goto_0

    :sswitch_c
    const-string/jumbo v8, "RemoveLocationSave"

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/16 v2, 0xc

    goto/16 :goto_0

    :sswitch_d
    const-string/jumbo v8, "MapSearchView"

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    move v2, v7

    goto/16 :goto_0

    :sswitch_e
    const-string/jumbo v8, "CrossVideoPlayer"

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/16 v2, 0xe

    goto/16 :goto_0

    :sswitch_f
    const-string/jumbo v8, "FavoriteOn"

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/16 v2, 0xf

    goto/16 :goto_0

    :sswitch_10
    const-string/jumbo v8, "FavoriteOff"

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/16 v2, 0x10

    goto/16 :goto_0

    :sswitch_11
    const-string/jumbo v8, "DateLocationOn"

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/16 v2, 0x11

    goto/16 :goto_0

    :sswitch_12
    const-string/jumbo v8, "DateLocationOff"

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/16 v2, 0x12

    goto/16 :goto_0

    :sswitch_13
    const-string/jumbo v8, "RemoveCategorySave"

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/16 v2, 0x13

    goto/16 :goto_0

    :sswitch_14
    const-string/jumbo v8, "RemoveTagsSave"

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/16 v2, 0x14

    goto/16 :goto_0

    :sswitch_15
    const-string/jumbo v8, "RenameEditInfoSave"

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/16 v2, 0x15

    goto/16 :goto_0

    :sswitch_16
    const-string/jumbo v8, "SetAOD"

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/16 v2, 0x16

    goto/16 :goto_0

    :sswitch_17
    const-string/jumbo v8, "WallpaperCropper"

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/16 v2, 0x17

    goto/16 :goto_0

    :sswitch_18
    const-string/jumbo v8, "360PhotoViewer"

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/16 v2, 0x18

    goto/16 :goto_0

    :sswitch_19
    const-string/jumbo v8, "BurstShotViewer"

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/16 v2, 0x19

    goto/16 :goto_0

    :sswitch_1a
    const-string/jumbo v8, "SaveImage"

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/16 v2, 0x1a

    goto/16 :goto_0

    :sswitch_1b
    const-string/jumbo v8, "CrossPhotoEditorAnimationEditor"

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/16 v2, 0x1b

    goto/16 :goto_0

    :sswitch_1c
    const-string/jumbo v8, "GoToUrl"

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/16 v2, 0x1c

    goto/16 :goto_0

    :sswitch_1d
    const-string/jumbo v8, "RemoveUrlSave"

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/16 v2, 0x1d

    goto/16 :goto_0

    :sswitch_1e
    const-string/jumbo v8, "CrossVisionIntelligenceVisionIntelligenceDetected"

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/16 v2, 0x1e

    goto/16 :goto_0

    :sswitch_1f
    const-string/jumbo v8, "MapView"

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/16 v2, 0x1f

    goto/16 :goto_0

    :sswitch_20
    const-string/jumbo v8, "AddTagForMoreInfo"

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/16 v2, 0x20

    goto/16 :goto_0

    :sswitch_21
    const-string/jumbo v8, "MoveToSecureFolder"

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/16 v2, 0x21

    goto/16 :goto_0

    :sswitch_22
    const-string/jumbo v8, "Like"

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/16 v2, 0x22

    goto/16 :goto_0

    :sswitch_23
    const-string/jumbo v8, "Unlike"

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/16 v2, 0x23

    goto/16 :goto_0

    :sswitch_24
    const-string/jumbo v8, "StoryComments"

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/16 v2, 0x24

    goto/16 :goto_0

    :sswitch_25
    const-string/jumbo v8, "DOWNLOAD_SHARED_STORY_CONTENTS_IN_DETAIL_VIEW"

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/16 v2, 0x25

    goto/16 :goto_0

    :sswitch_26
    const-string/jumbo v8, "ScrollUp"

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/16 v2, 0x26

    goto/16 :goto_0

    :sswitch_27
    const-string/jumbo v8, "ScrollDown"

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/16 v2, 0x27

    goto/16 :goto_0

    :sswitch_28
    const-string/jumbo v8, "ZoomIn"

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/16 v2, 0x28

    goto/16 :goto_0

    :sswitch_29
    const-string/jumbo v8, "ZoomOut"

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/16 v2, 0x29

    goto/16 :goto_0

    :sswitch_2a
    const-string/jumbo v8, "SwipeLeft"

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/16 v2, 0x2a

    goto/16 :goto_0

    :sswitch_2b
    const-string/jumbo v8, "SwipeRight"

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/16 v2, 0x2b

    goto/16 :goto_0

    :pswitch_0
    invoke-direct {p0, p2}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/DetailViewDCHandler;->handleShareForDetailView(Ljava/util/List;)V

    :goto_1
    return-void

    :pswitch_1
    invoke-virtual {p0, p2}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/DetailViewDCHandler;->handleShareChooserPopup(Ljava/util/List;)V

    goto :goto_1

    :pswitch_2
    const-string/jumbo v2, "AutoAdjustOn"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    invoke-static {}, Lcom/sec/samsung/gallery/core/Event$Builder;->create()Lcom/sec/samsung/gallery/core/Event;

    move-result-object v2

    sget v3, Lcom/sec/samsung/gallery/core/Event;->EVENT_FASTOPTION_MENU:I

    invoke-virtual {v2, v3}, Lcom/sec/samsung/gallery/core/Event;->setType(I)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/sec/samsung/gallery/core/Event;->setIntData(I)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/samsung/gallery/core/Event;->setData(Ljava/lang/Object;)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/DetailViewDCHandler;->notifyObservers(Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_3
    invoke-static {}, Lcom/sec/samsung/gallery/core/Event$Builder;->create()Lcom/sec/samsung/gallery/core/Event;

    move-result-object v2

    sget v3, Lcom/sec/samsung/gallery/core/Event;->EVENT_FASTOPTION_MENU:I

    invoke-virtual {v2, v3}, Lcom/sec/samsung/gallery/core/Event;->setType(I)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/sec/samsung/gallery/core/Event;->setIntData(I)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/DetailViewDCHandler;->notifyObservers(Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_4
    invoke-static {}, Lcom/sec/samsung/gallery/core/Event$Builder;->create()Lcom/sec/samsung/gallery/core/Event;

    move-result-object v2

    sget v3, Lcom/sec/samsung/gallery/core/Event;->EVENT_FASTOPTION_MENU:I

    invoke-virtual {v2, v3}, Lcom/sec/samsung/gallery/core/Event;->setType(I)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/sec/samsung/gallery/core/Event;->setIntData(I)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/DetailViewDCHandler;->notifyObservers(Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_5
    invoke-static {}, Lcom/sec/samsung/gallery/core/Event$Builder;->create()Lcom/sec/samsung/gallery/core/Event;

    move-result-object v2

    sget v3, Lcom/sec/samsung/gallery/core/Event;->EVENT_FASTOPTION_MENU:I

    invoke-virtual {v2, v3}, Lcom/sec/samsung/gallery/core/Event;->setType(I)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/sec/samsung/gallery/core/Event;->setIntData(I)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/DetailViewDCHandler;->notifyObservers(Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_6
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/DetailViewDCHandler;->handleRotate(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_1

    :pswitch_7
    const v2, 0x7f120299

    invoke-virtual {p0, v2}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/DetailViewDCHandler;->checkMenuOptionEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/sec/samsung/gallery/core/Event$Builder;->create()Lcom/sec/samsung/gallery/core/Event;

    move-result-object v2

    sget v4, Lcom/sec/samsung/gallery/core/Event;->EVENT_DC_CMD_EDIT_MORE_INFO:I

    invoke-virtual {v2, v4}, Lcom/sec/samsung/gallery/core/Event;->setType(I)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/DetailViewDCHandler;->notifyObservers(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/samsung/android/devicecog/gallery/viewstatehandler/DetailViewDCHandler;->mActivity:Landroid/app/Activity;

    const v4, 0x7f0a054d

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v4, v3}, Lcom/samsung/android/devicecog/gallery/controller/DCNlgManager;->getNlgRequestInfo(Landroid/content/Context;I[Ljava/lang/Object;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/devicecog/gallery/viewstatehandler/DetailViewDCHandler;->mActivity:Landroid/app/Activity;

    const-string/jumbo v3, "EditInfo"

    sget-object v4, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->SUCCESS:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    invoke-static {v2, v3, v4, v1}, Lcom/samsung/android/devicecog/gallery/DCUtils;->sendResponseDCState(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;)V

    goto/16 :goto_1

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/devicecog/gallery/viewstatehandler/DetailViewDCHandler;->mActivity:Landroid/app/Activity;

    const v4, 0x7f0a054e

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v4, v3}, Lcom/samsung/android/devicecog/gallery/controller/DCNlgManager;->getNlgRequestInfo(Landroid/content/Context;I[Ljava/lang/Object;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/devicecog/gallery/viewstatehandler/DetailViewDCHandler;->mActivity:Landroid/app/Activity;

    const-string/jumbo v3, "EditInfo"

    sget-object v4, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->FAILURE:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    invoke-static {v2, v3, v4, v1}, Lcom/samsung/android/devicecog/gallery/DCUtils;->sendResponseDCState(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;)V

    goto/16 :goto_1

    :pswitch_8
    invoke-static {}, Lcom/sec/samsung/gallery/core/Event$Builder;->create()Lcom/sec/samsung/gallery/core/Event;

    move-result-object v2

    sget v3, Lcom/sec/samsung/gallery/core/Event;->EVENT_DC_CMD_REMOVE_LOCATION_INFO:I

    invoke-virtual {v2, v3}, Lcom/sec/samsung/gallery/core/Event;->setType(I)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/DetailViewDCHandler;->notifyObservers(Ljava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_9
    invoke-static {}, Lcom/sec/samsung/gallery/core/Event$Builder;->create()Lcom/sec/samsung/gallery/core/Event;

    move-result-object v2

    sget v3, Lcom/sec/samsung/gallery/core/Event;->EVENT_DC_CMD_MAP_VIEW_EDIT:I

    invoke-virtual {v2, v3}, Lcom/sec/samsung/gallery/core/Event;->setType(I)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/DetailViewDCHandler;->notifyObservers(Ljava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_a
    invoke-direct {p0}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/DetailViewDCHandler;->handlePlayVideo()V

    goto/16 :goto_1

    :pswitch_b
    const-string/jumbo v2, "FavoriteOn"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/DetailViewDCHandler;->handleFavorite(Ljava/lang/String;Z)V

    goto/16 :goto_1

    :pswitch_c
    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->UseDisplayDateLocation:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo v2, "DateLocationOn"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    invoke-static {}, Lcom/sec/samsung/gallery/core/Event$Builder;->create()Lcom/sec/samsung/gallery/core/Event;

    move-result-object v2

    sget v3, Lcom/sec/samsung/gallery/core/Event;->EVENT_DC_UPDATE_DATE_LOCATION:I

    invoke-virtual {v2, v3}, Lcom/sec/samsung/gallery/core/Event;->setType(I)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/samsung/gallery/core/Event;->setData(Ljava/lang/Object;)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/DetailViewDCHandler;->notifyObservers(Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_2
    const-string/jumbo v2, "DetailViewDcCommandCtrl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "disabled state, stateId: "

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

    const-string/jumbo v4, "disabled state, stateId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    :pswitch_d
    invoke-static {}, Lcom/sec/samsung/gallery/core/Event$Builder;->create()Lcom/sec/samsung/gallery/core/Event;

    move-result-object v2

    sget v3, Lcom/sec/samsung/gallery/core/Event;->EVENT_DC_CMD_REMOVE_CATEGORY:I

    invoke-virtual {v2, v3}, Lcom/sec/samsung/gallery/core/Event;->setType(I)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/DetailViewDCHandler;->notifyObservers(Ljava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_e
    invoke-static {}, Lcom/sec/samsung/gallery/core/Event$Builder;->create()Lcom/sec/samsung/gallery/core/Event;

    move-result-object v2

    sget v3, Lcom/sec/samsung/gallery/core/Event;->EVENT_DC_CMD_REMOVE_TAGS:I

    invoke-virtual {v2, v3}, Lcom/sec/samsung/gallery/core/Event;->setType(I)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/DetailViewDCHandler;->notifyObservers(Ljava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_f
    invoke-direct {p0, p2}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/DetailViewDCHandler;->handleFileRename(Ljava/util/List;)V

    goto/16 :goto_1

    :pswitch_10
    invoke-static {}, Lcom/sec/samsung/gallery/core/Event$Builder;->create()Lcom/sec/samsung/gallery/core/Event;

    move-result-object v2

    sget v3, Lcom/sec/samsung/gallery/core/Event;->EVENT_DC_CMD_SET_AOD:I

    invoke-virtual {v2, v3}, Lcom/sec/samsung/gallery/core/Event;->setType(I)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/DetailViewDCHandler;->notifyObservers(Ljava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_11
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/DetailViewDCHandler;->handleSetAsWallpaper(Ljava/lang/String;Ljava/util/List;)V

    goto/16 :goto_1

    :pswitch_12
    invoke-static {}, Lcom/sec/samsung/gallery/core/Event$Builder;->create()Lcom/sec/samsung/gallery/core/Event;

    move-result-object v2

    sget v3, Lcom/sec/samsung/gallery/core/Event;->EVENT_DC_CMD_EVENT_360_VIEWER_START:I

    invoke-virtual {v2, v3}, Lcom/sec/samsung/gallery/core/Event;->setType(I)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/DetailViewDCHandler;->notifyObservers(Ljava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_13
    invoke-static {}, Lcom/sec/samsung/gallery/core/Event$Builder;->create()Lcom/sec/samsung/gallery/core/Event;

    move-result-object v2

    sget v3, Lcom/sec/samsung/gallery/core/Event;->EVENT_DC_CMD_EVENT_BURST_SHOT_VIEWER_START:I

    invoke-virtual {v2, v3}, Lcom/sec/samsung/gallery/core/Event;->setType(I)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/DetailViewDCHandler;->notifyObservers(Ljava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_14
    invoke-static {}, Lcom/sec/samsung/gallery/core/Event$Builder;->create()Lcom/sec/samsung/gallery/core/Event;

    move-result-object v2

    sget v3, Lcom/sec/samsung/gallery/core/Event;->EVENT_DC_CMD_EVENT_BURST_SHOT_SAVE_IMAGE:I

    invoke-virtual {v2, v3}, Lcom/sec/samsung/gallery/core/Event;->setType(I)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/DetailViewDCHandler;->notifyObservers(Ljava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_15
    invoke-static {}, Lcom/sec/samsung/gallery/core/Event$Builder;->create()Lcom/sec/samsung/gallery/core/Event;

    move-result-object v2

    sget v3, Lcom/sec/samsung/gallery/core/Event;->EVENT_DC_CMD_CREATE_ANIMATE:I

    invoke-virtual {v2, v3}, Lcom/sec/samsung/gallery/core/Event;->setType(I)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/DetailViewDCHandler;->notifyObservers(Ljava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_16
    invoke-static {}, Lcom/sec/samsung/gallery/core/Event$Builder;->create()Lcom/sec/samsung/gallery/core/Event;

    move-result-object v2

    sget v3, Lcom/sec/samsung/gallery/core/Event;->EVENT_FASTOPTION_MENU:I

    invoke-virtual {v2, v3}, Lcom/sec/samsung/gallery/core/Event;->setType(I)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v2

    const/16 v3, 0x14

    invoke-virtual {v2, v3}, Lcom/sec/samsung/gallery/core/Event;->setIntData(I)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/DetailViewDCHandler;->notifyObservers(Ljava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_17
    invoke-static {}, Lcom/sec/samsung/gallery/core/Event$Builder;->create()Lcom/sec/samsung/gallery/core/Event;

    move-result-object v2

    sget v3, Lcom/sec/samsung/gallery/core/Event;->EVENT_DC_CMD_REMOVE_URL:I

    invoke-virtual {v2, v3}, Lcom/sec/samsung/gallery/core/Event;->setType(I)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/DetailViewDCHandler;->notifyObservers(Ljava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_18
    invoke-static {}, Lcom/sec/samsung/gallery/core/Event$Builder;->create()Lcom/sec/samsung/gallery/core/Event;

    move-result-object v2

    sget v3, Lcom/sec/samsung/gallery/core/Event;->EVENT_FASTOPTION_MENU:I

    invoke-virtual {v2, v3}, Lcom/sec/samsung/gallery/core/Event;->setType(I)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v2

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Lcom/sec/samsung/gallery/core/Event;->setIntData(I)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/DetailViewDCHandler;->notifyObservers(Ljava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_19
    invoke-static {}, Lcom/sec/samsung/gallery/core/Event$Builder;->create()Lcom/sec/samsung/gallery/core/Event;

    move-result-object v2

    sget v3, Lcom/sec/samsung/gallery/core/Event;->EVENT_DC_CMD_START_MAP_VIEW:I

    invoke-virtual {v2, v3}, Lcom/sec/samsung/gallery/core/Event;->setType(I)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/DetailViewDCHandler;->notifyObservers(Ljava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_1a
    invoke-static {}, Lcom/sec/samsung/gallery/core/Event$Builder;->create()Lcom/sec/samsung/gallery/core/Event;

    move-result-object v2

    sget v3, Lcom/sec/samsung/gallery/core/Event;->EVENT_DC_CMD_ADD_TAGS:I

    invoke-virtual {v2, v3}, Lcom/sec/samsung/gallery/core/Event;->setType(I)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/DetailViewDCHandler;->notifyObservers(Ljava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_1b
    invoke-virtual {p0}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/DetailViewDCHandler;->handleSecureFolder()V

    goto/16 :goto_1

    :pswitch_1c
    invoke-static {}, Lcom/sec/samsung/gallery/core/Event$Builder;->create()Lcom/sec/samsung/gallery/core/Event;

    move-result-object v2

    sget v3, Lcom/sec/samsung/gallery/core/Event;->EVENT_DC_CMD_LIKE_OPERATION:I

    invoke-virtual {v2, v3}, Lcom/sec/samsung/gallery/core/Event;->setType(I)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/sec/samsung/gallery/core/Event;->setData(Ljava/lang/Object;)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/DetailViewDCHandler;->notifyObservers(Ljava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_1d
    invoke-static {}, Lcom/sec/samsung/gallery/core/Event$Builder;->create()Lcom/sec/samsung/gallery/core/Event;

    move-result-object v2

    sget v3, Lcom/sec/samsung/gallery/core/Event;->EVENT_DC_CMD_STORY_COMMENTS:I

    invoke-virtual {v2, v3}, Lcom/sec/samsung/gallery/core/Event;->setType(I)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/DetailViewDCHandler;->notifyObservers(Ljava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_1e
    invoke-static {}, Lcom/sec/samsung/gallery/core/Event$Builder;->create()Lcom/sec/samsung/gallery/core/Event;

    move-result-object v2

    sget v3, Lcom/sec/samsung/gallery/core/Event;->EVENT_DC_CMD_DOWNLOAD_SHARED_STORY_CONTENTS:I

    invoke-virtual {v2, v3}, Lcom/sec/samsung/gallery/core/Event;->setType(I)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/DetailViewDCHandler;->notifyObservers(Ljava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_1f
    invoke-static {}, Lcom/sec/samsung/gallery/core/Event$Builder;->create()Lcom/sec/samsung/gallery/core/Event;

    move-result-object v2

    sget v3, Lcom/sec/samsung/gallery/core/Event;->EVENT_DC_CMD_TOUCH_ACTION:I

    invoke-virtual {v2, v3}, Lcom/sec/samsung/gallery/core/Event;->setType(I)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/sec/samsung/gallery/core/Event;->setData(Ljava/lang/Object;)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/DetailViewDCHandler;->notifyObservers(Ljava/lang/Object;)V

    goto/16 :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7ecd8242 -> :sswitch_1a
        -0x7506b650 -> :sswitch_1
        -0x6f3d1cde -> :sswitch_2b
        -0x6dc03685 -> :sswitch_a
        -0x6d001534 -> :sswitch_19
        -0x6c98c5ac -> :sswitch_16
        -0x6bd84745 -> :sswitch_f
        -0x6ae721ff -> :sswitch_1f
        -0x68b34a30 -> :sswitch_23
        -0x601b8f88 -> :sswitch_28
        -0x57906bb5 -> :sswitch_17
        -0x56b0bc19 -> :sswitch_7
        -0x4c81ea0d -> :sswitch_15
        -0x3ec7ef43 -> :sswitch_2
        -0x36292930 -> :sswitch_1e
        -0x2ce3b9bf -> :sswitch_2a
        -0x2501a802 -> :sswitch_5
        -0x19a62b8d -> :sswitch_20
        -0x170b2a1b -> :sswitch_8
        -0x141e2998 -> :sswitch_26
        -0xf30a1ed -> :sswitch_10
        -0x51ef9ee -> :sswitch_1b
        0x2423b7 -> :sswitch_22
        0x73b5596 -> :sswitch_c
        0x141bf4cc -> :sswitch_12
        0x1840aec9 -> :sswitch_d
        0x1d22a5e9 -> :sswitch_24
        0x1fb671c1 -> :sswitch_4
        0x22ee16c0 -> :sswitch_6
        0x241ca65f -> :sswitch_13
        0x25497331 -> :sswitch_21
        0x31b2befc -> :sswitch_e
        0x38c119fa -> :sswitch_14
        0x55c96f11 -> :sswitch_25
        0x5ca9b65b -> :sswitch_29
        0x635295f8 -> :sswitch_b
        0x65ca0651 -> :sswitch_3
        0x67a176e0 -> :sswitch_0
        0x69afa277 -> :sswitch_18
        0x6c00e6e2 -> :sswitch_11
        0x6cbb9e48 -> :sswitch_1d
        0x6e17d4cc -> :sswitch_1c
        0x7443dacc -> :sswitch_9
        0x7abe2d2f -> :sswitch_27
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_b
        :pswitch_c
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
    .end packed-switch
.end method

.method public startParamFilling(Lcom/samsung/android/sdk/bixby/data/ParamFilling;)V
    .locals 6

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/samsung/android/sdk/bixby/data/ParamFilling;->getScreenStates()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v4, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    :cond_0
    move v3, v4

    :goto_0
    packed-switch v3, :pswitch_data_0

    :cond_1
    :goto_1
    return-void

    :sswitch_0
    const-string/jumbo v5, "EditInfo"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_0

    :sswitch_1
    const-string/jumbo v3, "RenameEditInfoSave"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :pswitch_0
    const-string/jumbo v3, "DetailViewDcCommandCtrl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "BixbyGallery : startParamFilling() : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/samsung/android/sdk/bixby/data/ParamFilling;->getScreenParameters()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/DetailViewDCHandler;->handleFileRename(Ljava/util/List;)V

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4c81ea0d -> :sswitch_1
        0x635295f8 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
