.class public Lcom/samsung/android/devicecog/gallery/selectiontask/PhotoSplitViewDCSelectItemTask;
.super Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask;
.source "PhotoSplitViewDCSelectItemTask.java"


# direct methods
.method public constructor <init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask;-><init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)V

    return-void
.end method

.method private selectItemWithCount(Lcom/sec/android/gallery3d/data/MediaItem;II)I
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/PhotoSplitViewDCSelectItemTask;->mSelectionListener:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$SelectionListener;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$SelectionListener;->onEventHandleItemClick([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/PhotoSplitViewDCSelectItemTask;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentLaunchMode()Lcom/sec/samsung/gallery/core/LaunchModeType;

    move-result-object v0

    sget-object v1, Lcom/sec/samsung/gallery/core/LaunchModeType;->ACTION_PICK:Lcom/sec/samsung/gallery/core/LaunchModeType;

    if-ne v0, v1, :cond_1

    const/4 p3, 0x0

    :cond_0
    :goto_0
    return p3

    :cond_1
    add-int/lit8 p3, p3, -0x1

    goto :goto_0
.end method

.method private selectLatestDetailViewItemWithContentType(Ljava/lang/String;)V
    .locals 9

    iget-object v7, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/PhotoSplitViewDCSelectItemTask;->mSelectionListener:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$SelectionListener;

    invoke-interface {v7}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$SelectionListener;->getComposeMediaItemAdapter()Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    move-result-object v6

    if-eqz v6, :cond_0

    move-object v7, v6

    check-cast v7, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    invoke-virtual {v7}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->getSource()Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v7

    if-nez v7, :cond_1

    :cond_0
    iget-object v7, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/PhotoSplitViewDCSelectItemTask;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    iget-object v8, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/PhotoSplitViewDCSelectItemTask;->mSelectionParam:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;

    invoke-virtual {v8}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;->getExecutingStateId()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/samsung/android/devicecog/gallery/DCUtils;->requestCommonErrorNlg(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->getCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_4

    const/4 v7, 0x1

    invoke-virtual {v6, v1, v7}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->getAllItem(IZ)Ljava/util/ArrayList;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v3, :cond_3

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-static {v5, p1}, Lcom/samsung/android/devicecog/gallery/DCUtils;->isMatchContent(Lcom/sec/android/gallery3d/data/MediaItem;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/PhotoSplitViewDCSelectItemTask;->mSelectionListener:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$SelectionListener;

    const/4 v8, 0x0

    invoke-interface {v7, v8, v2}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$SelectionListener;->startDetailView(II)V

    goto :goto_0

    :cond_2
    iget-boolean v7, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/PhotoSplitViewDCSelectItemTask;->mOnCancelRequested:Z

    if-eqz v7, :cond_5

    :cond_3
    iget-boolean v7, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/PhotoSplitViewDCSelectItemTask;->mOnCancelRequested:Z

    if-eqz v7, :cond_6

    :cond_4
    invoke-virtual {p0, p1}, Lcom/samsung/android/devicecog/gallery/selectiontask/PhotoSplitViewDCSelectItemTask;->sendDCResponseForEnterDetailViewIfContentTypeNotMatched(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private selectLatestDetailViewItemWithOrdinalAndContentType(Ljava/lang/String;I)V
    .locals 10

    const/4 v9, 0x0

    iget-object v8, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/PhotoSplitViewDCSelectItemTask;->mSelectionListener:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$SelectionListener;

    invoke-interface {v8}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$SelectionListener;->getComposeMediaItemAdapter()Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    move-result-object v6

    if-eqz v6, :cond_0

    move-object v8, v6

    check-cast v8, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    invoke-virtual {v8}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->getSource()Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v8

    if-nez v8, :cond_1

    :cond_0
    iget-object v8, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/PhotoSplitViewDCSelectItemTask;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    iget-object v9, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/PhotoSplitViewDCSelectItemTask;->mSelectionParam:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;

    invoke-virtual {v9}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;->getExecutingStateId()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/samsung/android/devicecog/gallery/DCUtils;->requestCommonErrorNlg(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    new-instance v3, Lcom/sec/android/gallery3d/app/MediaSetInterfaceInfo;

    invoke-direct {v3}, Lcom/sec/android/gallery3d/app/MediaSetInterfaceInfo;-><init>()V

    invoke-virtual {v6, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->getVisibleInfo(Lcom/sec/android/gallery3d/app/MediaSetInterfaceInfo;)V

    iget v8, v3, Lcom/sec/android/gallery3d/app/MediaSetInterfaceInfo;->mVisibleStart:I

    invoke-static {v8}, Lcom/sec/android/gallery3d/util/GlIndex;->getItemIndex(I)I

    move-result v7

    iget v8, v3, Lcom/sec/android/gallery3d/app/MediaSetInterfaceInfo;->mVisibleEnd:I

    invoke-static {v8}, Lcom/sec/android/gallery3d/util/GlIndex;->getItemIndex(I)I

    move-result v1

    sub-int v8, v1, v7

    add-int/lit8 v8, v8, 0x1

    if-le p2, v8, :cond_2

    iget-object v8, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/PhotoSplitViewDCSelectItemTask;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-string/jumbo v9, "DetailView"

    invoke-static {v8, v9}, Lcom/samsung/android/devicecog/gallery/DCUtils;->requestOrdinalFailNlg(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    const/4 v8, 0x1

    invoke-virtual {v6, v9, v8}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->getAllItem(IZ)Ljava/util/ArrayList;

    move-result-object v4

    if-eqz v4, :cond_5

    move v2, v7

    :goto_1
    if-gt v2, v1, :cond_5

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-static {v5, p1}, Lcom/samsung/android/devicecog/gallery/DCUtils;->isMatchContent(Lcom/sec/android/gallery3d/data/MediaItem;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    add-int/lit8 v0, v0, 0x1

    :cond_3
    if-ne p2, v0, :cond_4

    iget-object v8, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/PhotoSplitViewDCSelectItemTask;->mSelectionListener:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$SelectionListener;

    invoke-interface {v8, v9, v2}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$SelectionListener;->startDetailView(II)V

    goto :goto_0

    :cond_4
    iget-boolean v8, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/PhotoSplitViewDCSelectItemTask;->mOnCancelRequested:Z

    if-eqz v8, :cond_6

    :cond_5
    invoke-virtual {p0, p1}, Lcom/samsung/android/devicecog/gallery/selectiontask/PhotoSplitViewDCSelectItemTask;->sendDCResponseForEnterDetailViewIfContentTypeNotMatched(Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private selectLatestItemWithCountAndContentType(ILjava/lang/String;Ljava/lang/String;)V
    .locals 9

    const/4 v6, 0x0

    iget-object v8, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/PhotoSplitViewDCSelectItemTask;->mSelectionListener:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$SelectionListener;

    invoke-interface {v8}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$SelectionListener;->getComposeMediaItemAdapter()Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object v8, v2

    check-cast v8, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    invoke-virtual {v8}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->getSource()Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v8

    if-nez v8, :cond_1

    :cond_0
    iget-object v8, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/PhotoSplitViewDCSelectItemTask;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v8, p3}, Lcom/samsung/android/devicecog/gallery/DCUtils;->requestCommonErrorNlg(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    move v5, p1

    invoke-virtual {v2, v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->getSubMediaSet(I)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/data/MediaSet;->getAllItems()Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v7, :cond_3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-static {v1, p2}, Lcom/samsung/android/devicecog/gallery/DCUtils;->isMatchContent(Lcom/sec/android/gallery3d/data/MediaItem;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-direct {p0, v1, v0, v5}, Lcom/samsung/android/devicecog/gallery/selectiontask/PhotoSplitViewDCSelectItemTask;->selectItemWithCount(Lcom/sec/android/gallery3d/data/MediaItem;II)I

    move-result v5

    :cond_2
    if-eqz v5, :cond_3

    iget-object v8, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/PhotoSplitViewDCSelectItemTask;->mSelectionListener:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$SelectionListener;

    invoke-interface {v8}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$SelectionListener;->isMaxCountSelectedInPickerMode()Z

    move-result v8

    if-nez v8, :cond_3

    iget-boolean v8, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/PhotoSplitViewDCSelectItemTask;->mOnCancelRequested:Z

    if-eqz v8, :cond_5

    :cond_3
    if-eq v5, p1, :cond_4

    const/4 v6, 0x1

    :cond_4
    invoke-virtual {p0, v6, p2}, Lcom/samsung/android/devicecog/gallery/selectiontask/PhotoSplitViewDCSelectItemTask;->sendDCResponseForSelectContentTypeWithUpdateCheckState(ZLjava/lang/String;)V

    goto :goto_0

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private selectLatestItemWithOrdinalAndContentType(ILjava/lang/String;Ljava/lang/String;)V
    .locals 12

    const/4 v9, 0x1

    const/4 v11, 0x0

    iget-object v10, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/PhotoSplitViewDCSelectItemTask;->mSelectionListener:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$SelectionListener;

    invoke-interface {v10}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$SelectionListener;->getComposeMediaItemAdapter()Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    move-result-object v5

    if-eqz v5, :cond_0

    move-object v10, v5

    check-cast v10, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    invoke-virtual {v10}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->getSource()Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v10

    if-nez v10, :cond_1

    :cond_0
    iget-object v10, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/PhotoSplitViewDCSelectItemTask;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v10, p3}, Lcom/samsung/android/devicecog/gallery/DCUtils;->requestCommonErrorNlg(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    new-instance v3, Lcom/sec/android/gallery3d/app/MediaSetInterfaceInfo;

    invoke-direct {v3}, Lcom/sec/android/gallery3d/app/MediaSetInterfaceInfo;-><init>()V

    invoke-virtual {v5, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->getVisibleInfo(Lcom/sec/android/gallery3d/app/MediaSetInterfaceInfo;)V

    iget v10, v3, Lcom/sec/android/gallery3d/app/MediaSetInterfaceInfo;->mVisibleStart:I

    invoke-static {v10}, Lcom/sec/android/gallery3d/util/GlIndex;->getItemIndex(I)I

    move-result v8

    iget v10, v3, Lcom/sec/android/gallery3d/app/MediaSetInterfaceInfo;->mVisibleEnd:I

    invoke-static {v10}, Lcom/sec/android/gallery3d/util/GlIndex;->getItemIndex(I)I

    move-result v1

    sub-int v10, v1, v8

    add-int/lit8 v10, v10, 0x1

    if-le p1, v10, :cond_2

    iget-object v10, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/PhotoSplitViewDCSelectItemTask;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v10, p3}, Lcom/samsung/android/devicecog/gallery/DCUtils;->requestOrdinalFailNlg(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    invoke-virtual {v5, v11}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->getSubMediaSet(I)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v7

    if-eqz v7, :cond_4

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/data/MediaSet;->getAllItems()Ljava/util/ArrayList;

    move-result-object v6

    if-eqz v6, :cond_4

    move v2, v8

    :goto_1
    if-gt v2, v1, :cond_4

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-static {v4, p2}, Lcom/samsung/android/devicecog/gallery/DCUtils;->isMatchContent(Lcom/sec/android/gallery3d/data/MediaItem;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    add-int/lit8 v0, v0, 0x1

    :cond_3
    if-ne v0, p1, :cond_5

    invoke-direct {p0, v4, v2, v9}, Lcom/samsung/android/devicecog/gallery/selectiontask/PhotoSplitViewDCSelectItemTask;->selectItemWithCount(Lcom/sec/android/gallery3d/data/MediaItem;II)I

    :cond_4
    if-ne v0, p1, :cond_6

    :goto_2
    invoke-virtual {p0, v9, p2}, Lcom/samsung/android/devicecog/gallery/selectiontask/PhotoSplitViewDCSelectItemTask;->sendDCResponseForSelectContentTypeWithUpdateCheckState(ZLjava/lang/String;)V

    goto :goto_0

    :cond_5
    iget-boolean v10, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/PhotoSplitViewDCSelectItemTask;->mOnCancelRequested:Z

    if-nez v10, :cond_4

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_6
    move v9, v11

    goto :goto_2
.end method

.method private selectOldestDetailViewItemWithContentType(Ljava/lang/String;)V
    .locals 9

    iget-object v7, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/PhotoSplitViewDCSelectItemTask;->mSelectionListener:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$SelectionListener;

    invoke-interface {v7}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$SelectionListener;->getComposeMediaItemAdapter()Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    move-result-object v6

    if-eqz v6, :cond_0

    move-object v7, v6

    check-cast v7, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    invoke-virtual {v7}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->getSource()Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v7

    if-nez v7, :cond_1

    :cond_0
    iget-object v7, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/PhotoSplitViewDCSelectItemTask;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    iget-object v8, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/PhotoSplitViewDCSelectItemTask;->mSelectionParam:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;

    invoke-virtual {v8}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;->getExecutingStateId()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/samsung/android/devicecog/gallery/DCUtils;->requestCommonErrorNlg(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->getCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_4

    const/4 v7, 0x1

    invoke-virtual {v6, v1, v7}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->getAllItem(IZ)Ljava/util/ArrayList;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    :goto_2
    if-ltz v2, :cond_3

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-static {v5, p1}, Lcom/samsung/android/devicecog/gallery/DCUtils;->isMatchContent(Lcom/sec/android/gallery3d/data/MediaItem;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/PhotoSplitViewDCSelectItemTask;->mSelectionListener:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$SelectionListener;

    const/4 v8, 0x0

    invoke-interface {v7, v8, v2}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$SelectionListener;->startDetailView(II)V

    goto :goto_0

    :cond_2
    iget-boolean v7, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/PhotoSplitViewDCSelectItemTask;->mOnCancelRequested:Z

    if-eqz v7, :cond_5

    :cond_3
    iget-boolean v7, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/PhotoSplitViewDCSelectItemTask;->mOnCancelRequested:Z

    if-eqz v7, :cond_6

    :cond_4
    invoke-virtual {p0, p1}, Lcom/samsung/android/devicecog/gallery/selectiontask/PhotoSplitViewDCSelectItemTask;->sendDCResponseForEnterDetailViewIfContentTypeNotMatched(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private selectOldestItemWithCountAndContentType(ILjava/lang/String;Ljava/lang/String;)V
    .locals 9

    const/4 v6, 0x0

    iget-object v8, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/PhotoSplitViewDCSelectItemTask;->mSelectionListener:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$SelectionListener;

    invoke-interface {v8}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$SelectionListener;->getComposeMediaItemAdapter()Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object v8, v2

    check-cast v8, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    invoke-virtual {v8}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->getSource()Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v8

    if-nez v8, :cond_1

    :cond_0
    iget-object v8, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/PhotoSplitViewDCSelectItemTask;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v8, p3}, Lcom/samsung/android/devicecog/gallery/DCUtils;->requestCommonErrorNlg(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    move v5, p1

    invoke-virtual {v2, v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->getSubMediaSet(I)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/data/MediaSet;->getAllItems()Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v0, v7, -0x1

    :goto_1
    if-ltz v0, :cond_3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-static {v1, p2}, Lcom/samsung/android/devicecog/gallery/DCUtils;->isMatchContent(Lcom/sec/android/gallery3d/data/MediaItem;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-direct {p0, v1, v0, v5}, Lcom/samsung/android/devicecog/gallery/selectiontask/PhotoSplitViewDCSelectItemTask;->selectItemWithCount(Lcom/sec/android/gallery3d/data/MediaItem;II)I

    move-result v5

    :cond_2
    if-eqz v5, :cond_3

    iget-object v8, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/PhotoSplitViewDCSelectItemTask;->mSelectionListener:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$SelectionListener;

    invoke-interface {v8}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$SelectionListener;->isMaxCountSelectedInPickerMode()Z

    move-result v8

    if-nez v8, :cond_3

    iget-boolean v8, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/PhotoSplitViewDCSelectItemTask;->mOnCancelRequested:Z

    if-eqz v8, :cond_5

    :cond_3
    if-eq v5, p1, :cond_4

    const/4 v6, 0x1

    :cond_4
    invoke-virtual {p0, v6, p2}, Lcom/samsung/android/devicecog/gallery/selectiontask/PhotoSplitViewDCSelectItemTask;->sendDCResponseForSelectContentTypeWithUpdateCheckState(ZLjava/lang/String;)V

    goto :goto_0

    :cond_5
    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method


# virtual methods
.method protected selectAllWithParameter()V
    .locals 13

    const/4 v7, 0x1

    const/4 v10, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/devicecog/gallery/selectiontask/PhotoSplitViewDCSelectItemTask;->isAvailableSelectItem()Z

    move-result v9

    if-nez v9, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v9, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/PhotoSplitViewDCSelectItemTask;->mSelectionListener:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$SelectionListener;

    invoke-interface {v9}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$SelectionListener;->getComposeMediaItemAdapter()Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    move-result-object v3

    if-eqz v3, :cond_1

    move-object v9, v3

    check-cast v9, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    invoke-virtual {v9}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->getSource()Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v9

    if-nez v9, :cond_2

    :cond_1
    iget-object v9, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/PhotoSplitViewDCSelectItemTask;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    iget-object v10, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/PhotoSplitViewDCSelectItemTask;->mSelectionParam:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;

    invoke-virtual {v10}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;->getExecutingStateId()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/samsung/android/devicecog/gallery/DCUtils;->requestCommonErrorNlg(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 v6, 0x0

    iget-object v9, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/PhotoSplitViewDCSelectItemTask;->mSelectionParam:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;

    invoke-virtual {v9}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;->getContentType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v10}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->getSubMediaSet(I)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v5

    if-eqz v5, :cond_5

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/data/MediaSet;->getAllItems()Ljava/util/ArrayList;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v8, :cond_5

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-static {v2, v0}, Lcom/samsung/android/devicecog/gallery/DCUtils;->isMatchContent(Lcom/sec/android/gallery3d/data/MediaItem;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    iget-object v9, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/PhotoSplitViewDCSelectItemTask;->mSelectionListener:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$SelectionListener;

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    aput-object v2, v11, v10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v7

    invoke-interface {v9, v11}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$SelectionListener;->onEventHandleItemClick([Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    add-int/lit8 v6, v6, 0x1

    :cond_3
    iget-object v9, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/PhotoSplitViewDCSelectItemTask;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v9}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentLaunchMode()Lcom/sec/samsung/gallery/core/LaunchModeType;

    move-result-object v9

    sget-object v11, Lcom/sec/samsung/gallery/core/LaunchModeType;->ACTION_PICK:Lcom/sec/samsung/gallery/core/LaunchModeType;

    if-ne v9, v11, :cond_4

    if-eq v6, v7, :cond_5

    :cond_4
    iget-object v9, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/PhotoSplitViewDCSelectItemTask;->mSelectionListener:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$SelectionListener;

    invoke-interface {v9}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$SelectionListener;->isMaxCountSelectedInPickerMode()Z

    move-result v9

    if-nez v9, :cond_5

    iget-boolean v9, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/PhotoSplitViewDCSelectItemTask;->mOnCancelRequested:Z

    if-eqz v9, :cond_6

    :cond_5
    if-lez v6, :cond_7

    :goto_2
    invoke-virtual {p0, v7, v0}, Lcom/samsung/android/devicecog/gallery/selectiontask/PhotoSplitViewDCSelectItemTask;->sendDCResponseForSelectContentTypeWithUpdateCheckState(ZLjava/lang/String;)V

    goto :goto_0

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_7
    move v7, v10

    goto :goto_2
.end method

.method protected selectItemNormal()V
    .locals 5

    invoke-virtual {p0}, Lcom/samsung/android/devicecog/gallery/selectiontask/PhotoSplitViewDCSelectItemTask;->isAvailableSelectItem()Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/PhotoSplitViewDCSelectItemTask;->mSelectionListener:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$SelectionListener;

    invoke-interface {v2}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$SelectionListener;->getComposeMediaItemAdapter()Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    move-object v2, v0

    check-cast v2, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->getSource()Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v2

    if-nez v2, :cond_2

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/PhotoSplitViewDCSelectItemTask;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    iget-object v3, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/PhotoSplitViewDCSelectItemTask;->mSelectionParam:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;

    invoke-virtual {v3}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;->getExecutingStateId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/devicecog/gallery/DCUtils;->requestCommonErrorNlg(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    check-cast v0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->getSource()Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/PhotoSplitViewDCSelectItemTask;->mSelectionParam:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;

    invoke-virtual {v2}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;->getSelectOrderType()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    iget-object v2, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/PhotoSplitViewDCSelectItemTask;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    iget-object v3, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/PhotoSplitViewDCSelectItemTask;->mSelectionParam:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;

    invoke-virtual {v3}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;->getExecutingStateId()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->FAILURE:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    invoke-static {v2, v3, v4}, Lcom/samsung/android/devicecog/gallery/DCUtils;->sendResponseDCState(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;)V

    goto :goto_0

    :pswitch_0
    invoke-static {v1}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isSortedByTimeAscendingOrder(Lcom/sec/android/gallery3d/data/MediaSet;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/PhotoSplitViewDCSelectItemTask;->mSelectionParam:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;

    invoke-virtual {v2}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;->getSelectCount()I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/PhotoSplitViewDCSelectItemTask;->mSelectionParam:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;

    invoke-virtual {v3}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;->getContentType()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/PhotoSplitViewDCSelectItemTask;->mSelectionParam:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;

    invoke-virtual {v4}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;->getExecutingStateId()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v2, v3, v4}, Lcom/samsung/android/devicecog/gallery/selectiontask/PhotoSplitViewDCSelectItemTask;->selectOldestItemWithCountAndContentType(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/PhotoSplitViewDCSelectItemTask;->mSelectionParam:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;

    invoke-virtual {v2}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;->getSelectCount()I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/PhotoSplitViewDCSelectItemTask;->mSelectionParam:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;

    invoke-virtual {v3}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;->getContentType()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/PhotoSplitViewDCSelectItemTask;->mSelectionParam:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;

    invoke-virtual {v4}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;->getExecutingStateId()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v2, v3, v4}, Lcom/samsung/android/devicecog/gallery/selectiontask/PhotoSplitViewDCSelectItemTask;->selectLatestItemWithCountAndContentType(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    invoke-static {v1}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isSortedByTimeAscendingOrder(Lcom/sec/android/gallery3d/data/MediaSet;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/PhotoSplitViewDCSelectItemTask;->mSelectionParam:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;

    invoke-virtual {v2}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;->getSelectCount()I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/PhotoSplitViewDCSelectItemTask;->mSelectionParam:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;

    invoke-virtual {v3}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;->getContentType()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/PhotoSplitViewDCSelectItemTask;->mSelectionParam:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;

    invoke-virtual {v4}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;->getExecutingStateId()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v2, v3, v4}, Lcom/samsung/android/devicecog/gallery/selectiontask/PhotoSplitViewDCSelectItemTask;->selectLatestItemWithCountAndContentType(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    iget-object v2, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/PhotoSplitViewDCSelectItemTask;->mSelectionParam:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;

    invoke-virtual {v2}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;->getSelectCount()I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/PhotoSplitViewDCSelectItemTask;->mSelectionParam:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;

    invoke-virtual {v3}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;->getContentType()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/PhotoSplitViewDCSelectItemTask;->mSelectionParam:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;

    invoke-virtual {v4}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;->getExecutingStateId()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v2, v3, v4}, Lcom/samsung/android/devicecog/gallery/selectiontask/PhotoSplitViewDCSelectItemTask;->selectOldestItemWithCountAndContentType(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

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
    .locals 4

    invoke-virtual {p0}, Lcom/samsung/android/devicecog/gallery/selectiontask/PhotoSplitViewDCSelectItemTask;->isAvailableSelectItem()Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/PhotoSplitViewDCSelectItemTask;->mSelectionParam:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;

    invoke-virtual {v1}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;->getOrdinal()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/PhotoSplitViewDCSelectItemTask;->mSelectionParam:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;

    invoke-virtual {v1}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;->getContentType()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/PhotoSplitViewDCSelectItemTask;->mSelectionParam:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;

    invoke-virtual {v2}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;->getExecutingStateId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/devicecog/gallery/selectiontask/PhotoSplitViewDCSelectItemTask;->selectLatestItemWithOrdinalAndContentType(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/PhotoSplitViewDCSelectItemTask;->mSelectionParam:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;

    invoke-virtual {v2}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;->getContentType()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/PhotoSplitViewDCSelectItemTask;->mSelectionParam:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;

    invoke-virtual {v3}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;->getExecutingStateId()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/samsung/android/devicecog/gallery/selectiontask/PhotoSplitViewDCSelectItemTask;->selectOldestItemWithCountAndContentType(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public startDetailView()V
    .locals 4

    invoke-virtual {p0}, Lcom/samsung/android/devicecog/gallery/selectiontask/PhotoSplitViewDCSelectItemTask;->isAvailableSelectItem()Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/PhotoSplitViewDCSelectItemTask;->mSelectionListener:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$SelectionListener;

    invoke-interface {v2}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$SelectionListener;->getComposeMediaItemAdapter()Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    move-object v2, v0

    check-cast v2, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->getSource()Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v2

    if-nez v2, :cond_2

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/PhotoSplitViewDCSelectItemTask;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    iget-object v3, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/PhotoSplitViewDCSelectItemTask;->mSelectionParam:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;

    invoke-virtual {v3}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;->getExecutingStateId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/devicecog/gallery/DCUtils;->requestCommonErrorNlg(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    check-cast v0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->getSource()Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/PhotoSplitViewDCSelectItemTask;->mSelectionParam:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;

    invoke-virtual {v2}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;->getSelectOrderType()I

    move-result v2

    invoke-static {v2}, Lcom/samsung/android/devicecog/gallery/DCUtils;->isLatest(I)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {v1}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isSortedByTimeAscendingOrder(Lcom/sec/android/gallery3d/data/MediaSet;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/PhotoSplitViewDCSelectItemTask;->mSelectionParam:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;

    invoke-virtual {v2}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;->getContentType()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/samsung/android/devicecog/gallery/selectiontask/PhotoSplitViewDCSelectItemTask;->selectLatestDetailViewItemWithContentType(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/PhotoSplitViewDCSelectItemTask;->mSelectionParam:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;

    invoke-virtual {v2}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;->getContentType()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/samsung/android/devicecog/gallery/selectiontask/PhotoSplitViewDCSelectItemTask;->selectOldestDetailViewItemWithContentType(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected startDetailViewWithOrdinal()V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/devicecog/gallery/selectiontask/PhotoSplitViewDCSelectItemTask;->isAvailableSelectItem()Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/PhotoSplitViewDCSelectItemTask;->mSelectionParam:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;

    invoke-virtual {v1}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;->getOrdinal()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/PhotoSplitViewDCSelectItemTask;->mSelectionParam:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;

    invoke-virtual {v1}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;->getContentType()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/devicecog/gallery/selectiontask/PhotoSplitViewDCSelectItemTask;->selectLatestDetailViewItemWithOrdinalAndContentType(Ljava/lang/String;I)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/PhotoSplitViewDCSelectItemTask;->mSelectionParam:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;

    invoke-virtual {v1}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;->getContentType()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/android/devicecog/gallery/selectiontask/PhotoSplitViewDCSelectItemTask;->selectOldestDetailViewItemWithContentType(Ljava/lang/String;)V

    goto :goto_0
.end method
