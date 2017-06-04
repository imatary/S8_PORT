.class public Lcom/samsung/android/devicecog/gallery/selectiontask/AlbumViewDCSelectItemTask;
.super Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask;
.source "AlbumViewDCSelectItemTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/devicecog/gallery/selectiontask/AlbumViewDCSelectItemTask$ComparatorName;
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask;-><init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)V

    return-void
.end method

.method private checkExactName(Ljava/lang/String;Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;)Z
    .locals 1

    new-instance v0, Lcom/samsung/android/devicecog/gallery/selectiontask/AlbumViewDCSelectItemTask$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/devicecog/gallery/selectiontask/AlbumViewDCSelectItemTask$1;-><init>(Lcom/samsung/android/devicecog/gallery/selectiontask/AlbumViewDCSelectItemTask;)V

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/devicecog/gallery/selectiontask/AlbumViewDCSelectItemTask;->findAlbumAndStartPhotoSplitView(Ljava/lang/String;Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;Lcom/samsung/android/devicecog/gallery/selectiontask/AlbumViewDCSelectItemTask$ComparatorName;)Z

    move-result v0

    return v0
.end method

.method private checkNameAfterDeleteSpace(Ljava/lang/String;Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;)Z
    .locals 1

    new-instance v0, Lcom/samsung/android/devicecog/gallery/selectiontask/AlbumViewDCSelectItemTask$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/devicecog/gallery/selectiontask/AlbumViewDCSelectItemTask$2;-><init>(Lcom/samsung/android/devicecog/gallery/selectiontask/AlbumViewDCSelectItemTask;)V

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/devicecog/gallery/selectiontask/AlbumViewDCSelectItemTask;->findAlbumAndStartPhotoSplitView(Ljava/lang/String;Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;Lcom/samsung/android/devicecog/gallery/selectiontask/AlbumViewDCSelectItemTask$ComparatorName;)Z

    move-result v0

    return v0
.end method

.method private checkNameUsingPattern(Ljava/lang/String;Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;)Z
    .locals 1

    new-instance v0, Lcom/samsung/android/devicecog/gallery/selectiontask/AlbumViewDCSelectItemTask$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/devicecog/gallery/selectiontask/AlbumViewDCSelectItemTask$3;-><init>(Lcom/samsung/android/devicecog/gallery/selectiontask/AlbumViewDCSelectItemTask;)V

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/devicecog/gallery/selectiontask/AlbumViewDCSelectItemTask;->findAlbumAndStartPhotoSplitView(Ljava/lang/String;Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;Lcom/samsung/android/devicecog/gallery/selectiontask/AlbumViewDCSelectItemTask$ComparatorName;)Z

    move-result v0

    return v0
.end method

.method private findAlbumAndStartPhotoSplitView(Ljava/lang/String;Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;Lcom/samsung/android/devicecog/gallery/selectiontask/AlbumViewDCSelectItemTask$ComparatorName;)Z
    .locals 5

    const/4 v3, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->getCount()I

    move-result v4

    if-ge v1, v4, :cond_0

    invoke-virtual {p2, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->getSubMediaSet(I)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/MediaSet;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, p1, v0}, Lcom/samsung/android/devicecog/gallery/selectiontask/AlbumViewDCSelectItemTask$ComparatorName;->compareName(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v3, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/AlbumViewDCSelectItemTask;->mSelectionListener:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$SelectionListener;

    invoke-interface {v3, v1}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$SelectionListener;->startPhotoSplitView(I)V

    const/4 v3, 0x1

    :cond_0
    return v3

    :cond_1
    iget-boolean v4, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/AlbumViewDCSelectItemTask;->mOnCancelRequested:Z

    if-nez v4, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private handleDCStartPhotoView(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    iget-object v4, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/AlbumViewDCSelectItemTask;->mSelectionListener:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$SelectionListener;

    invoke-interface {v4}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$SelectionListener;->getComposeMediaItemAdapter()Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    move-result-object v1

    if-eqz v1, :cond_0

    move-object v4, v1

    check-cast v4, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->getSource()Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v4

    if-nez v4, :cond_2

    :cond_0
    iget-object v4, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/AlbumViewDCSelectItemTask;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    iget-object v5, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/AlbumViewDCSelectItemTask;->mSelectionParam:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;

    invoke-virtual {v5}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;->getExecutingStateId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/devicecog/gallery/DCUtils;->requestCommonErrorNlg(Landroid/content/Context;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-direct {p0, p2, v1}, Lcom/samsung/android/devicecog/gallery/selectiontask/AlbumViewDCSelectItemTask;->checkExactName(Ljava/lang/String;Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-direct {p0, p2, v1}, Lcom/samsung/android/devicecog/gallery/selectiontask/AlbumViewDCSelectItemTask;->checkNameAfterDeleteSpace(Ljava/lang/String;Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-direct {p0, p2, v1}, Lcom/samsung/android/devicecog/gallery/selectiontask/AlbumViewDCSelectItemTask;->checkNameUsingPattern(Ljava/lang/String;Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/devicecog/gallery/selectiontask/AlbumViewDCSelectItemTask;->getDCHandler()Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;->isPickMode()Z

    move-result v4

    if-eqz v4, :cond_3

    const v2, 0x7f0a079a

    :goto_1
    iget-object v4, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/AlbumViewDCSelectItemTask;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string/jumbo v7, "AlbumSelectName"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object p2, v5, v6

    invoke-static {v4, v2, v5}, Lcom/samsung/android/devicecog/gallery/controller/DCNlgManager;->getNlgRequestInfo(Landroid/content/Context;I[Ljava/lang/Object;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/AlbumViewDCSelectItemTask;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    sget-object v5, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->FAILURE:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    invoke-static {v4, p1, v5, v3}, Lcom/samsung/android/devicecog/gallery/DCUtils;->sendResponseDCState(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;)V

    goto :goto_0

    :cond_3
    const v2, 0x7f0a0744

    goto :goto_1
.end method

.method private handleDCStartPhotoViewWithOrdinal(Ljava/lang/String;I)V
    .locals 8

    new-instance v1, Lcom/sec/android/gallery3d/app/MediaSetInterfaceInfo;

    invoke-direct {v1}, Lcom/sec/android/gallery3d/app/MediaSetInterfaceInfo;-><init>()V

    iget-object v6, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/AlbumViewDCSelectItemTask;->mSelectionListener:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$SelectionListener;

    invoke-interface {v6}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$SelectionListener;->getComposeMediaItemAdapter()Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object v6, v2

    check-cast v6, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;

    invoke-virtual {v6}, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->getSource()Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v6

    if-nez v6, :cond_1

    :cond_0
    iget-object v6, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/AlbumViewDCSelectItemTask;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    iget-object v7, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/AlbumViewDCSelectItemTask;->mSelectionParam:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;

    invoke-virtual {v7}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;->getExecutingStateId()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/devicecog/gallery/DCUtils;->requestCommonErrorNlg(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {v2, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->getVisibleInfo(Lcom/sec/android/gallery3d/app/MediaSetInterfaceInfo;)V

    iget v6, v1, Lcom/sec/android/gallery3d/app/MediaSetInterfaceInfo;->mVisibleStart:I

    invoke-static {v6}, Lcom/sec/android/gallery3d/util/GlIndex;->getGroupIndex(I)I

    move-result v5

    iget v6, v1, Lcom/sec/android/gallery3d/app/MediaSetInterfaceInfo;->mVisibleEnd:I

    invoke-static {v6}, Lcom/sec/android/gallery3d/util/GlIndex;->getGroupIndex(I)I

    move-result v0

    sub-int v6, v0, v5

    add-int/lit8 v6, v6, 0x1

    if-le p2, v6, :cond_2

    iget-object v6, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/AlbumViewDCSelectItemTask;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v6, p1}, Lcom/samsung/android/devicecog/gallery/DCUtils;->requestOrdinalFailNlg(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 v6, -0x1

    if-ne p2, v6, :cond_3

    move v4, v0

    :goto_1
    invoke-virtual {v2, v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->getSubMediaSet(I)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v3

    if-eqz v3, :cond_4

    iget-object v6, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/AlbumViewDCSelectItemTask;->mSelectionListener:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$SelectionListener;

    invoke-interface {v6, v4}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$SelectionListener;->startPhotoSplitView(I)V

    goto :goto_0

    :cond_3
    add-int v6, v5, p2

    add-int/lit8 v4, v6, -0x1

    goto :goto_1

    :cond_4
    iget-object v6, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/AlbumViewDCSelectItemTask;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    sget-object v7, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->FAILURE:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    invoke-static {v6, p1, v7}, Lcom/samsung/android/devicecog/gallery/DCUtils;->sendResponseDCState(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;)V

    goto :goto_0
.end method

.method private handleSelectItemWithOrdinal(Ljava/lang/String;I)V
    .locals 12

    const/4 v8, 0x1

    const/4 v9, 0x0

    iget-object v7, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/AlbumViewDCSelectItemTask;->mSelectionListener:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$SelectionListener;

    invoke-interface {v7}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$SelectionListener;->getComposeMediaItemAdapter()Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object v7, v2

    check-cast v7, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;

    invoke-virtual {v7}, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->getSource()Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v7

    if-nez v7, :cond_1

    :cond_0
    iget-object v7, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/AlbumViewDCSelectItemTask;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    iget-object v8, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/AlbumViewDCSelectItemTask;->mSelectionParam:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;

    invoke-virtual {v8}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;->getExecutingStateId()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/samsung/android/devicecog/gallery/DCUtils;->requestCommonErrorNlg(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    new-instance v1, Lcom/sec/android/gallery3d/app/MediaSetInterfaceInfo;

    invoke-direct {v1}, Lcom/sec/android/gallery3d/app/MediaSetInterfaceInfo;-><init>()V

    invoke-virtual {v2, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->getVisibleInfo(Lcom/sec/android/gallery3d/app/MediaSetInterfaceInfo;)V

    iget v7, v1, Lcom/sec/android/gallery3d/app/MediaSetInterfaceInfo;->mVisibleStart:I

    invoke-static {v7}, Lcom/sec/android/gallery3d/util/GlIndex;->getGroupIndex(I)I

    move-result v6

    iget v7, v1, Lcom/sec/android/gallery3d/app/MediaSetInterfaceInfo;->mVisibleEnd:I

    invoke-static {v7}, Lcom/sec/android/gallery3d/util/GlIndex;->getGroupIndex(I)I

    move-result v0

    sub-int v7, v0, v6

    add-int/lit8 v7, v7, 0x1

    if-le p2, v7, :cond_2

    iget-object v7, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/AlbumViewDCSelectItemTask;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v7, p1}, Lcom/samsung/android/devicecog/gallery/DCUtils;->requestOrdinalFailNlg(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 v7, -0x1

    if-ne p2, v7, :cond_3

    move v5, v0

    :goto_1
    invoke-virtual {v2, v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->getSubMediaSet(I)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isSelectableAlbum(Lcom/sec/android/gallery3d/data/MediaSet;)Z

    move-result v7

    if-nez v7, :cond_4

    iget-object v7, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/AlbumViewDCSelectItemTask;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v8, 0x7f0a075b

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v7, v8, v9}, Lcom/samsung/android/devicecog/gallery/controller/DCNlgManager;->getNlgRequestInfo(Landroid/content/Context;I[Ljava/lang/Object;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v4

    iget-object v7, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/AlbumViewDCSelectItemTask;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    sget-object v8, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->FAILURE:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    invoke-static {v7, p1, v8, v4}, Lcom/samsung/android/devicecog/gallery/DCUtils;->sendResponseDCState(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;)V

    goto :goto_0

    :cond_3
    add-int v7, v6, p2

    add-int/lit8 v5, v7, -0x1

    goto :goto_1

    :cond_4
    if-eqz v3, :cond_5

    iget-object v7, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/AlbumViewDCSelectItemTask;->mSelectionListener:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$SelectionListener;

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v9

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    aput-object v11, v10, v8

    invoke-interface {v7, v10}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$SelectionListener;->onEventHandleItemClick([Ljava/lang/Object;)Z

    :cond_5
    if-eqz v3, :cond_6

    move v7, v8

    :goto_2
    const/4 v8, 0x0

    invoke-virtual {p0, v7, v8}, Lcom/samsung/android/devicecog/gallery/selectiontask/AlbumViewDCSelectItemTask;->sendDCResponseForSelectContentTypeWithUpdateCheckState(ZLjava/lang/String;)V

    goto :goto_0

    :cond_6
    move v7, v9

    goto :goto_2
.end method

.method private selectAlbumWithTitle(Ljava/lang/String;Ljava/lang/String;)V
    .locals 13

    const/4 v12, 0x1

    const/4 v11, 0x0

    iget-object v8, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/AlbumViewDCSelectItemTask;->mSelectionListener:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$SelectionListener;

    invoke-interface {v8}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$SelectionListener;->getComposeMediaItemAdapter()Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    move-result-object v4

    if-eqz v4, :cond_0

    move-object v8, v4

    check-cast v8, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;

    invoke-virtual {v8}, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->getSource()Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v8

    if-nez v8, :cond_1

    :cond_0
    iget-object v8, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/AlbumViewDCSelectItemTask;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    iget-object v9, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/AlbumViewDCSelectItemTask;->mSelectionParam:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;

    invoke-virtual {v9}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;->getExecutingStateId()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/samsung/android/devicecog/gallery/DCUtils;->requestCommonErrorNlg(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->getCount()I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_4

    invoke-virtual {v4, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->getSubMediaSet(I)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/data/MediaSet;->getMediaItemCount()I

    move-result v8

    if-lez v8, :cond_3

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/data/MediaSet;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2

    invoke-static {p2, v6}, Lcom/samsung/android/devicecog/gallery/DCUtils;->compareStoryName(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2

    invoke-static {p2, v6}, Lcom/samsung/android/devicecog/gallery/DCUtils;->checkStoryNameUsingPattern(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    :cond_2
    iget-object v8, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/AlbumViewDCSelectItemTask;->mSelectionListener:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$SelectionListener;

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v11

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    aput-object v10, v9, v12

    invoke-interface {v8, v9}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$SelectionListener;->onEventHandleItemClick([Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    const/4 v2, 0x1

    :cond_3
    :goto_2
    iget-boolean v8, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/AlbumViewDCSelectItemTask;->mOnCancelRequested:Z

    if-eqz v8, :cond_6

    :cond_4
    if-eqz v3, :cond_7

    iget-object v8, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/AlbumViewDCSelectItemTask;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v8}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getSelectionManager()Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getNumberOfMarkedAsSelected()I

    move-result v8

    if-nez v8, :cond_7

    iget-boolean v8, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/AlbumViewDCSelectItemTask;->mOnCancelRequested:Z

    if-nez v8, :cond_7

    iget-object v8, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/AlbumViewDCSelectItemTask;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v9, 0x7f0a075b

    new-array v10, v11, [Ljava/lang/Object;

    invoke-static {v8, v9, v10}, Lcom/samsung/android/devicecog/gallery/controller/DCNlgManager;->getNlgRequestInfo(Landroid/content/Context;I[Ljava/lang/Object;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/AlbumViewDCSelectItemTask;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    sget-object v9, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->FAILURE:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    invoke-static {v8, p1, v9, v7}, Lcom/samsung/android/devicecog/gallery/DCUtils;->sendResponseDCState(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;)V

    goto :goto_0

    :cond_5
    const/4 v3, 0x1

    goto :goto_2

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_7
    invoke-virtual {p0, v2, p2}, Lcom/samsung/android/devicecog/gallery/selectiontask/AlbumViewDCSelectItemTask;->sendDCResponseForSelectContentTypeWithUpdateCheckState(ZLjava/lang/String;)V

    goto :goto_0
.end method

.method private selectLatestAlbumWithCount(I)V
    .locals 8

    const/4 v5, 0x0

    const/4 v4, 0x1

    iget-object v3, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/AlbumViewDCSelectItemTask;->mSelectionListener:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$SelectionListener;

    invoke-interface {v3}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$SelectionListener;->getComposeMediaItemAdapter()Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    move-result-object v1

    if-eqz v1, :cond_0

    move-object v3, v1

    check-cast v3, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->getSource()Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v3

    if-nez v3, :cond_1

    :cond_0
    iget-object v3, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/AlbumViewDCSelectItemTask;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    iget-object v4, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/AlbumViewDCSelectItemTask;->mSelectionParam:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;

    invoke-virtual {v4}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;->getExecutingStateId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/devicecog/gallery/DCUtils;->requestCommonErrorNlg(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    move v2, p1

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->getCount()I

    move-result v3

    if-ge v0, v3, :cond_3

    iget-object v3, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/AlbumViewDCSelectItemTask;->mSelectionListener:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$SelectionListener;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v5

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-interface {v3, v6}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$SelectionListener;->onEventHandleItemClick([Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    add-int/lit8 v2, v2, -0x1

    :cond_2
    if-eqz v2, :cond_3

    iget-boolean v3, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/AlbumViewDCSelectItemTask;->mOnCancelRequested:Z

    if-eqz v3, :cond_4

    :cond_3
    if-eq v2, p1, :cond_5

    move v3, v4

    :goto_2
    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/samsung/android/devicecog/gallery/selectiontask/AlbumViewDCSelectItemTask;->sendDCResponseForSelectContentTypeWithUpdateCheckState(ZLjava/lang/String;)V

    goto :goto_0

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    move v3, v5

    goto :goto_2
.end method

.method private selectOldestAlbumWithCount(I)V
    .locals 9

    const/4 v6, 0x0

    const/4 v5, 0x1

    iget-object v4, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/AlbumViewDCSelectItemTask;->mSelectionListener:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$SelectionListener;

    invoke-interface {v4}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$SelectionListener;->getComposeMediaItemAdapter()Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object v4, v2

    check-cast v4, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->getSource()Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v4

    if-nez v4, :cond_1

    :cond_0
    iget-object v4, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/AlbumViewDCSelectItemTask;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    iget-object v5, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/AlbumViewDCSelectItemTask;->mSelectionParam:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;

    invoke-virtual {v5}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;->getExecutingStateId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/devicecog/gallery/DCUtils;->requestCommonErrorNlg(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    move v3, p1

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->getCount()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    :goto_1
    if-ltz v1, :cond_3

    iget-object v4, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/AlbumViewDCSelectItemTask;->mSelectionListener:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$SelectionListener;

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v6

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v7, v5

    invoke-interface {v4, v7}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$SelectionListener;->onEventHandleItemClick([Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    add-int/lit8 v3, v3, -0x1

    :cond_2
    if-eqz v3, :cond_3

    iget-boolean v4, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/AlbumViewDCSelectItemTask;->mOnCancelRequested:Z

    if-eqz v4, :cond_4

    :cond_3
    if-eq v3, p1, :cond_5

    move v4, v5

    :goto_2
    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Lcom/samsung/android/devicecog/gallery/selectiontask/AlbumViewDCSelectItemTask;->sendDCResponseForSelectContentTypeWithUpdateCheckState(ZLjava/lang/String;)V

    goto :goto_0

    :cond_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_5
    move v4, v6

    goto :goto_2
.end method


# virtual methods
.method protected handleSelectItem()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/AlbumViewDCSelectItemTask;->mJobType:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$JobType;

    sget-object v1, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$JobType;->TYPE_ENTER_ALBUM_THUMBNAILS_VIEW:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$JobType;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/AlbumViewDCSelectItemTask;->mSelectionParam:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/AlbumViewDCSelectItemTask;->mSelectionParam:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;

    invoke-virtual {v0}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;->isUseOrdinal()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/AlbumViewDCSelectItemTask;->mSelectionParam:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;

    invoke-virtual {v0}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;->getOrdinal()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/AlbumViewDCSelectItemTask;->mSelectionParam:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;

    invoke-virtual {v0}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;->getExecutingStateId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/AlbumViewDCSelectItemTask;->mSelectionParam:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;

    invoke-virtual {v1}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;->getOrdinal()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/devicecog/gallery/selectiontask/AlbumViewDCSelectItemTask;->handleDCStartPhotoViewWithOrdinal(Ljava/lang/String;I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/AlbumViewDCSelectItemTask;->mSelectionParam:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;

    invoke-virtual {v0}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;->getExecutingStateId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/AlbumViewDCSelectItemTask;->mSelectionParam:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;

    invoke-virtual {v1}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;->getAlbumName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/devicecog/gallery/selectiontask/AlbumViewDCSelectItemTask;->handleDCStartPhotoView(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-super {p0}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask;->handleSelectItem()V

    goto :goto_0
.end method

.method protected selectItemNormal()V
    .locals 6

    iget-object v4, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/AlbumViewDCSelectItemTask;->mSelectionParam:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;

    invoke-virtual {v4}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;->getAlbumName()Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/AlbumViewDCSelectItemTask;->mSelectionParam:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;

    invoke-virtual {v4}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;->getExecutingStateId()Ljava/lang/String;

    move-result-object v3

    if-eqz v0, :cond_0

    invoke-direct {p0, v3, v0}, Lcom/samsung/android/devicecog/gallery/selectiontask/AlbumViewDCSelectItemTask;->selectAlbumWithTitle(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v4, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/AlbumViewDCSelectItemTask;->mSelectionParam:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;

    invoke-virtual {v4}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;->getSelectOrderType()I

    move-result v2

    iget-object v4, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/AlbumViewDCSelectItemTask;->mSelectionParam:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;

    invoke-virtual {v4}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;->getSelectCount()I

    move-result v1

    packed-switch v2, :pswitch_data_0

    iget-object v4, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/AlbumViewDCSelectItemTask;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    sget-object v5, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->FAILURE:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    invoke-static {v4, v3, v5}, Lcom/samsung/android/devicecog/gallery/DCUtils;->sendResponseDCState(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;)V

    goto :goto_0

    :pswitch_0
    invoke-direct {p0, v1}, Lcom/samsung/android/devicecog/gallery/selectiontask/AlbumViewDCSelectItemTask;->selectLatestAlbumWithCount(I)V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, v1}, Lcom/samsung/android/devicecog/gallery/selectiontask/AlbumViewDCSelectItemTask;->selectOldestAlbumWithCount(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected selectItemWithOrdinal()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/AlbumViewDCSelectItemTask;->mSelectionParam:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;

    invoke-virtual {v0}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;->getExecutingStateId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/AlbumViewDCSelectItemTask;->mSelectionParam:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;

    invoke-virtual {v1}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;->getOrdinal()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/devicecog/gallery/selectiontask/AlbumViewDCSelectItemTask;->handleSelectItemWithOrdinal(Ljava/lang/String;I)V

    return-void
.end method
