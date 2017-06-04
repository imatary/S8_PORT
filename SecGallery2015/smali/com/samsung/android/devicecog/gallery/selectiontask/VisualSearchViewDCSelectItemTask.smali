.class public Lcom/samsung/android/devicecog/gallery/selectiontask/VisualSearchViewDCSelectItemTask;
.super Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask;
.source "VisualSearchViewDCSelectItemTask.java"


# direct methods
.method public constructor <init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask;-><init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)V

    return-void
.end method

.method private checkSelectItemForDetailView(ILjava/lang/String;)Z
    .locals 7

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/VisualSearchViewDCSelectItemTask;->mSelectionListener:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$SelectionListener;

    invoke-interface {v5}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$SelectionListener;->getComposeMediaItemAdapter()Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    move-result-object v1

    if-nez v1, :cond_1

    iget-object v5, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/VisualSearchViewDCSelectItemTask;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    iget-object v6, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/VisualSearchViewDCSelectItemTask;->mSelectionParam:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;

    invoke-virtual {v6}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;->getExecutingStateId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/devicecog/gallery/DCUtils;->requestCommonErrorNlg(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return v4

    :cond_1
    invoke-virtual {v1, v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->getSubMediaSet(I)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/data/MediaSet;->getAllItems()Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-static {v0, p2}, Lcom/samsung/android/devicecog/gallery/DCUtils;->isMatchContent(Lcom/sec/android/gallery3d/data/MediaItem;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/VisualSearchViewDCSelectItemTask;->mSelectionListener:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$SelectionListener;

    invoke-interface {v5, v4, p1}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$SelectionListener;->startDetailView(II)V

    const/4 v4, 0x1

    goto :goto_0
.end method

.method private selectItemWithCountAndMediaType(Lcom/sec/android/gallery3d/data/MediaItem;IILjava/lang/String;)I
    .locals 6

    iget-object v2, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/VisualSearchViewDCSelectItemTask;->mSelectionListener:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$SelectionListener;

    invoke-interface {v2}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$SelectionListener;->getComposeMediaItemAdapter()Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v2, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/VisualSearchViewDCSelectItemTask;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    iget-object v3, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/VisualSearchViewDCSelectItemTask;->mSelectionParam:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;

    invoke-virtual {v3}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;->getExecutingStateId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/devicecog/gallery/DCUtils;->requestCommonErrorNlg(Landroid/content/Context;Ljava/lang/String;)V

    move v1, p3

    :goto_0
    return v1

    :cond_0
    invoke-static {p1, p4}, Lcom/samsung/android/devicecog/gallery/DCUtils;->isMatchContent(Lcom/sec/android/gallery3d/data/MediaItem;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/VisualSearchViewDCSelectItemTask;->mSelectionListener:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$SelectionListener;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-interface {v2, v3}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$SelectionListener;->onEventHandleItemClick([Ljava/lang/Object;)Z

    add-int/lit8 p3, p3, -0x1

    :cond_1
    move v1, p3

    goto :goto_0
.end method

.method private selectLatestDetailViewItemWithContentType(Ljava/lang/String;)V
    .locals 5

    iget-object v3, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/VisualSearchViewDCSelectItemTask;->mSelectionListener:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$SelectionListener;

    invoke-interface {v3}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$SelectionListener;->getComposeMediaItemAdapter()Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    move-result-object v1

    if-nez v1, :cond_1

    iget-object v3, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/VisualSearchViewDCSelectItemTask;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    iget-object v4, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/VisualSearchViewDCSelectItemTask;->mSelectionParam:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;

    invoke-virtual {v4}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;->getExecutingStateId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/devicecog/gallery/DCUtils;->requestCommonErrorNlg(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->getAllCount()I

    move-result v2

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_2

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/devicecog/gallery/selectiontask/VisualSearchViewDCSelectItemTask;->checkSelectItemForDetailView(ILjava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/VisualSearchViewDCSelectItemTask;->mOnCancelRequested:Z

    if-eqz v3, :cond_3

    :cond_2
    invoke-virtual {p0, p1}, Lcom/samsung/android/devicecog/gallery/selectiontask/VisualSearchViewDCSelectItemTask;->sendDCResponseForEnterDetailViewIfContentTypeNotMatched(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private selectLatestDetailViewItemWithOrdinalAndContentType(Ljava/lang/String;I)V
    .locals 9

    const/4 v8, 0x0

    iget-object v7, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/VisualSearchViewDCSelectItemTask;->mSelectionListener:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$SelectionListener;

    invoke-interface {v7}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$SelectionListener;->getComposeMediaItemAdapter()Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    move-result-object v5

    if-nez v5, :cond_0

    iget-object v7, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/VisualSearchViewDCSelectItemTask;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    iget-object v8, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/VisualSearchViewDCSelectItemTask;->mSelectionParam:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;

    invoke-virtual {v8}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;->getExecutingStateId()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/samsung/android/devicecog/gallery/DCUtils;->requestCommonErrorNlg(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    new-instance v3, Lcom/sec/android/gallery3d/app/MediaSetInterfaceInfo;

    invoke-direct {v3}, Lcom/sec/android/gallery3d/app/MediaSetInterfaceInfo;-><init>()V

    invoke-virtual {v5, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->getVisibleInfo(Lcom/sec/android/gallery3d/app/MediaSetInterfaceInfo;)V

    iget v7, v3, Lcom/sec/android/gallery3d/app/MediaSetInterfaceInfo;->mVisibleStart:I

    invoke-static {v7}, Lcom/sec/android/gallery3d/util/GlIndex;->getItemIndex(I)I

    move-result v6

    iget v7, v3, Lcom/sec/android/gallery3d/app/MediaSetInterfaceInfo;->mVisibleEnd:I

    invoke-static {v7}, Lcom/sec/android/gallery3d/util/GlIndex;->getItemIndex(I)I

    move-result v1

    sub-int v7, v1, v6

    add-int/lit8 v7, v7, 0x1

    if-le p2, v7, :cond_1

    iget-object v7, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/VisualSearchViewDCSelectItemTask;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-string/jumbo v8, "DetailView"

    invoke-static {v7, v8}, Lcom/samsung/android/devicecog/gallery/DCUtils;->requestOrdinalFailNlg(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    move v2, v6

    :goto_1
    if-gt v2, v1, :cond_4

    invoke-virtual {v5, v8, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->getItem(II)Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v4

    invoke-static {v4, p1}, Lcom/samsung/android/devicecog/gallery/DCUtils;->isMatchContent(Lcom/sec/android/gallery3d/data/MediaItem;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    add-int/lit8 v0, v0, 0x1

    :cond_2
    if-ne v0, p2, :cond_3

    iget-object v7, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/VisualSearchViewDCSelectItemTask;->mSelectionListener:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$SelectionListener;

    invoke-interface {v7, v8, v2}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$SelectionListener;->startDetailView(II)V

    goto :goto_0

    :cond_3
    iget-boolean v7, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/VisualSearchViewDCSelectItemTask;->mOnCancelRequested:Z

    if-eqz v7, :cond_5

    :cond_4
    invoke-virtual {p0, p1}, Lcom/samsung/android/devicecog/gallery/selectiontask/VisualSearchViewDCSelectItemTask;->sendDCResponseForEnterDetailViewIfContentTypeNotMatched(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private selectLatestItemWithCountAndContentType(ILjava/lang/String;)V
    .locals 10

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/VisualSearchViewDCSelectItemTask;->mSelectionListener:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$SelectionListener;

    invoke-interface {v8}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$SelectionListener;->getComposeMediaItemAdapter()Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    move-result-object v2

    if-nez v2, :cond_0

    iget-object v8, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/VisualSearchViewDCSelectItemTask;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    iget-object v9, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/VisualSearchViewDCSelectItemTask;->mSelectionParam:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;

    invoke-virtual {v9}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;->getExecutingStateId()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/samsung/android/devicecog/gallery/DCUtils;->requestCommonErrorNlg(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    move v5, p1

    invoke-virtual {v2, v7}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->getSubMediaSet(I)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/data/MediaSet;->getAllItems()Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v6, :cond_1

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-direct {p0, v1, v0, v5, p2}, Lcom/samsung/android/devicecog/gallery/selectiontask/VisualSearchViewDCSelectItemTask;->selectItemWithCountAndMediaType(Lcom/sec/android/gallery3d/data/MediaItem;IILjava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_1

    iget-boolean v8, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/VisualSearchViewDCSelectItemTask;->mOnCancelRequested:Z

    if-eqz v8, :cond_3

    :cond_1
    if-eq v5, p1, :cond_2

    const/4 v7, 0x1

    :cond_2
    invoke-virtual {p0, v7, p2}, Lcom/samsung/android/devicecog/gallery/selectiontask/VisualSearchViewDCSelectItemTask;->sendDCResponseForSelectContentTypeWithUpdateCheckState(ZLjava/lang/String;)V

    goto :goto_0

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private selectLatestItemWithOrdinalAndContentType(Ljava/lang/String;I)V
    .locals 12

    const/4 v7, 0x1

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/VisualSearchViewDCSelectItemTask;->mSelectionListener:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$SelectionListener;

    invoke-interface {v9}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$SelectionListener;->getComposeMediaItemAdapter()Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    move-result-object v5

    if-nez v5, :cond_0

    iget-object v8, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/VisualSearchViewDCSelectItemTask;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    iget-object v9, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/VisualSearchViewDCSelectItemTask;->mSelectionParam:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;

    invoke-virtual {v9}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;->getExecutingStateId()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/samsung/android/devicecog/gallery/DCUtils;->requestCommonErrorNlg(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    new-instance v3, Lcom/sec/android/gallery3d/app/MediaSetInterfaceInfo;

    invoke-direct {v3}, Lcom/sec/android/gallery3d/app/MediaSetInterfaceInfo;-><init>()V

    invoke-virtual {v5, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->getVisibleInfo(Lcom/sec/android/gallery3d/app/MediaSetInterfaceInfo;)V

    iget v9, v3, Lcom/sec/android/gallery3d/app/MediaSetInterfaceInfo;->mVisibleStart:I

    invoke-static {v9}, Lcom/sec/android/gallery3d/util/GlIndex;->getItemIndex(I)I

    move-result v6

    iget v9, v3, Lcom/sec/android/gallery3d/app/MediaSetInterfaceInfo;->mVisibleEnd:I

    invoke-static {v9}, Lcom/sec/android/gallery3d/util/GlIndex;->getItemIndex(I)I

    move-result v1

    sub-int v9, v1, v6

    add-int/lit8 v9, v9, 0x1

    if-le p2, v9, :cond_1

    iget-object v8, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/VisualSearchViewDCSelectItemTask;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-string/jumbo v9, "SearchSelectedView"

    invoke-static {v8, v9}, Lcom/samsung/android/devicecog/gallery/DCUtils;->requestOrdinalFailNlg(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    move v2, v6

    :goto_1
    if-gt v2, v1, :cond_3

    invoke-virtual {v5, v8, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->getItem(II)Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v4

    invoke-static {v4, p1}, Lcom/samsung/android/devicecog/gallery/DCUtils;->isMatchContent(Lcom/sec/android/gallery3d/data/MediaItem;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    add-int/lit8 v0, v0, 0x1

    :cond_2
    if-ne v0, p2, :cond_4

    iget-object v9, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/VisualSearchViewDCSelectItemTask;->mSelectionListener:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$SelectionListener;

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v4, v10, v8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v7

    invoke-interface {v9, v10}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$SelectionListener;->onEventHandleItemClick([Ljava/lang/Object;)Z

    :cond_3
    if-ne v0, p2, :cond_5

    :goto_2
    invoke-virtual {p0, v7, p1}, Lcom/samsung/android/devicecog/gallery/selectiontask/VisualSearchViewDCSelectItemTask;->sendDCResponseForSelectContentTypeWithUpdateCheckState(ZLjava/lang/String;)V

    goto :goto_0

    :cond_4
    iget-boolean v9, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/VisualSearchViewDCSelectItemTask;->mOnCancelRequested:Z

    if-nez v9, :cond_3

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    move v7, v8

    goto :goto_2
.end method

.method private selectOldestDetailViewItemWithContentType(Ljava/lang/String;)V
    .locals 5

    iget-object v3, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/VisualSearchViewDCSelectItemTask;->mSelectionListener:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$SelectionListener;

    invoke-interface {v3}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$SelectionListener;->getComposeMediaItemAdapter()Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    move-result-object v1

    if-nez v1, :cond_1

    iget-object v3, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/VisualSearchViewDCSelectItemTask;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    iget-object v4, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/VisualSearchViewDCSelectItemTask;->mSelectionParam:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;

    invoke-virtual {v4}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;->getExecutingStateId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/devicecog/gallery/DCUtils;->requestCommonErrorNlg(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->getAllCount()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    :goto_1
    if-ltz v0, :cond_2

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/devicecog/gallery/selectiontask/VisualSearchViewDCSelectItemTask;->checkSelectItemForDetailView(ILjava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/VisualSearchViewDCSelectItemTask;->mOnCancelRequested:Z

    if-eqz v3, :cond_3

    :cond_2
    invoke-virtual {p0, p1}, Lcom/samsung/android/devicecog/gallery/selectiontask/VisualSearchViewDCSelectItemTask;->sendDCResponseForEnterDetailViewIfContentTypeNotMatched(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method private selectOldestItemWithCountAndContentType(ILjava/lang/String;)V
    .locals 10

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/VisualSearchViewDCSelectItemTask;->mSelectionListener:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$SelectionListener;

    invoke-interface {v8}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$SelectionListener;->getComposeMediaItemAdapter()Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    move-result-object v2

    if-nez v2, :cond_1

    iget-object v8, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/VisualSearchViewDCSelectItemTask;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    iget-object v9, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/VisualSearchViewDCSelectItemTask;->mSelectionParam:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;

    invoke-virtual {v9}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;->getExecutingStateId()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/samsung/android/devicecog/gallery/DCUtils;->requestCommonErrorNlg(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    move v5, p1

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->getAllCount()I

    move-result v8

    if-lez v8, :cond_0

    invoke-virtual {v2, v7}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->getSubMediaSet(I)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/data/MediaSet;->getAllItems()Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_2

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v0, v6, -0x1

    :goto_1
    if-ltz v0, :cond_2

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-direct {p0, v1, v0, v5, p2}, Lcom/samsung/android/devicecog/gallery/selectiontask/VisualSearchViewDCSelectItemTask;->selectItemWithCountAndMediaType(Lcom/sec/android/gallery3d/data/MediaItem;IILjava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_2

    iget-boolean v8, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/VisualSearchViewDCSelectItemTask;->mOnCancelRequested:Z

    if-eqz v8, :cond_4

    :cond_2
    if-eq v5, p1, :cond_3

    const/4 v7, 0x1

    :cond_3
    invoke-virtual {p0, v7, p2}, Lcom/samsung/android/devicecog/gallery/selectiontask/VisualSearchViewDCSelectItemTask;->sendDCResponseForSelectContentTypeWithUpdateCheckState(ZLjava/lang/String;)V

    goto :goto_0

    :cond_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method


# virtual methods
.method protected selectAllWithParameter()V
    .locals 13

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/devicecog/gallery/selectiontask/VisualSearchViewDCSelectItemTask;->isAvailableSelectItem()Z

    move-result v10

    if-nez v10, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v10, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/VisualSearchViewDCSelectItemTask;->mSelectionListener:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$SelectionListener;

    invoke-interface {v10}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$SelectionListener;->getComposeMediaItemAdapter()Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    move-result-object v3

    if-nez v3, :cond_1

    iget-object v9, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/VisualSearchViewDCSelectItemTask;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    iget-object v10, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/VisualSearchViewDCSelectItemTask;->mSelectionParam:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;

    invoke-virtual {v10}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;->getExecutingStateId()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/samsung/android/devicecog/gallery/DCUtils;->requestCommonErrorNlg(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v10, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/VisualSearchViewDCSelectItemTask;->mSelectionParam:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;

    invoke-virtual {v10}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;->getContentType()Ljava/lang/String;

    move-result-object v0

    const/4 v7, 0x0

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->getAllCount()I

    move-result v6

    invoke-virtual {v3, v9}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->getSubMediaSet(I)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/data/MediaSet;->getAllItems()Ljava/util/ArrayList;

    move-result-object v4

    if-eqz v4, :cond_3

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v6, :cond_3

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-static {v2, v0}, Lcom/samsung/android/devicecog/gallery/DCUtils;->isMatchContent(Lcom/sec/android/gallery3d/data/MediaItem;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    iget-object v10, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/VisualSearchViewDCSelectItemTask;->mSelectionListener:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$SelectionListener;

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    aput-object v2, v11, v9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v8

    invoke-interface {v10, v11}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$SelectionListener;->onEventHandleItemClick([Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    :cond_2
    iget-boolean v10, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/VisualSearchViewDCSelectItemTask;->mOnCancelRequested:Z

    if-eqz v10, :cond_4

    :cond_3
    if-lez v7, :cond_5

    :goto_2
    invoke-virtual {p0, v8, v0}, Lcom/samsung/android/devicecog/gallery/selectiontask/VisualSearchViewDCSelectItemTask;->sendDCResponseForSelectContentTypeWithUpdateCheckState(ZLjava/lang/String;)V

    goto :goto_0

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    move v8, v9

    goto :goto_2
.end method

.method protected selectItemNormal()V
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/devicecog/gallery/selectiontask/VisualSearchViewDCSelectItemTask;->isAvailableSelectItem()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/VisualSearchViewDCSelectItemTask;->mSelectionParam:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;

    invoke-virtual {v0}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;->getSelectOrderType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/VisualSearchViewDCSelectItemTask;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-string/jumbo v1, "SearchSelectedView"

    sget-object v2, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->FAILURE:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    invoke-static {v0, v1, v2}, Lcom/samsung/android/devicecog/gallery/DCUtils;->sendResponseDCState(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;)V

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/VisualSearchViewDCSelectItemTask;->mSelectionParam:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;

    invoke-virtual {v0}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;->getSelectCount()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/VisualSearchViewDCSelectItemTask;->mSelectionParam:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;

    invoke-virtual {v1}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;->getContentType()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/devicecog/gallery/selectiontask/VisualSearchViewDCSelectItemTask;->selectLatestItemWithCountAndContentType(ILjava/lang/String;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/VisualSearchViewDCSelectItemTask;->mSelectionParam:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;

    invoke-virtual {v0}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;->getSelectCount()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/VisualSearchViewDCSelectItemTask;->mSelectionParam:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;

    invoke-virtual {v1}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;->getContentType()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/devicecog/gallery/selectiontask/VisualSearchViewDCSelectItemTask;->selectOldestItemWithCountAndContentType(ILjava/lang/String;)V

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
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/devicecog/gallery/selectiontask/VisualSearchViewDCSelectItemTask;->isAvailableSelectItem()Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/VisualSearchViewDCSelectItemTask;->mSelectionParam:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;

    invoke-virtual {v1}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;->getOrdinal()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/VisualSearchViewDCSelectItemTask;->mSelectionParam:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;

    invoke-virtual {v1}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;->getContentType()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/devicecog/gallery/selectiontask/VisualSearchViewDCSelectItemTask;->selectLatestItemWithOrdinalAndContentType(Ljava/lang/String;I)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/VisualSearchViewDCSelectItemTask;->mSelectionParam:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;

    invoke-virtual {v2}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;->getContentType()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/devicecog/gallery/selectiontask/VisualSearchViewDCSelectItemTask;->selectOldestItemWithCountAndContentType(ILjava/lang/String;)V

    goto :goto_0
.end method

.method protected startDetailView()V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/devicecog/gallery/selectiontask/VisualSearchViewDCSelectItemTask;->isAvailableSelectItem()Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/VisualSearchViewDCSelectItemTask;->mSelectionParam:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;

    invoke-virtual {v1}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;->getContentType()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/VisualSearchViewDCSelectItemTask;->mSelectionParam:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;

    invoke-virtual {v1}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;->getSelectOrderType()I

    move-result v1

    invoke-static {v1}, Lcom/samsung/android/devicecog/gallery/DCUtils;->isLatest(I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, v0}, Lcom/samsung/android/devicecog/gallery/selectiontask/VisualSearchViewDCSelectItemTask;->selectLatestDetailViewItemWithContentType(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, v0}, Lcom/samsung/android/devicecog/gallery/selectiontask/VisualSearchViewDCSelectItemTask;->selectOldestDetailViewItemWithContentType(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected startDetailViewWithOrdinal()V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/devicecog/gallery/selectiontask/VisualSearchViewDCSelectItemTask;->isAvailableSelectItem()Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/VisualSearchViewDCSelectItemTask;->mSelectionParam:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;

    invoke-virtual {v1}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;->getOrdinal()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/VisualSearchViewDCSelectItemTask;->mSelectionParam:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;

    invoke-virtual {v1}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;->getContentType()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/devicecog/gallery/selectiontask/VisualSearchViewDCSelectItemTask;->selectLatestDetailViewItemWithOrdinalAndContentType(Ljava/lang/String;I)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/VisualSearchViewDCSelectItemTask;->mSelectionParam:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;

    invoke-virtual {v1}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;->getContentType()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/android/devicecog/gallery/selectiontask/VisualSearchViewDCSelectItemTask;->selectOldestDetailViewItemWithContentType(Ljava/lang/String;)V

    goto :goto_0
.end method
