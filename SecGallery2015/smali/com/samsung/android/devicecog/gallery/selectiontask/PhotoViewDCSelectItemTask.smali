.class public Lcom/samsung/android/devicecog/gallery/selectiontask/PhotoViewDCSelectItemTask;
.super Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask;
.source "PhotoViewDCSelectItemTask.java"


# direct methods
.method public constructor <init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask;-><init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)V

    return-void
.end method

.method private getMediaItemWithIndex(II)Lcom/sec/android/gallery3d/data/MediaItem;
    .locals 6

    iget-object v4, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/PhotoViewDCSelectItemTask;->mSelectionListener:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$SelectionListener;

    invoke-interface {v4}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$SelectionListener;->getComposeMediaItemAdapter()Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->getSource()Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v3

    :try_start_0
    invoke-virtual {v2, p1, p2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->getItem(II)Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v4, 0x1

    invoke-virtual {v3, p2, v4}, Lcom/sec/android/gallery3d/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/gallery3d/data/MediaItem;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    :goto_1
    const-string/jumbo v4, "PhotoSplitDCSelectTask"

    const-string/jumbo v5, "BixbyGallery_getMediaItem failed"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method private selectItemWithCount(Lcom/sec/android/gallery3d/data/MediaItem;II)I
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/PhotoViewDCSelectItemTask;->mSelectionListener:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$SelectionListener;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$SelectionListener;->onEventHandleItemClick([Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/PhotoViewDCSelectItemTask;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentLaunchMode()Lcom/sec/samsung/gallery/core/LaunchModeType;

    move-result-object v0

    sget-object v1, Lcom/sec/samsung/gallery/core/LaunchModeType;->ACTION_PICK:Lcom/sec/samsung/gallery/core/LaunchModeType;

    if-ne v0, v1, :cond_0

    const/4 p3, 0x0

    :goto_0
    return p3

    :cond_0
    add-int/lit8 p3, p3, -0x1

    goto :goto_0
.end method

.method private selectLatestDetailViewItemWithContentType(Ljava/lang/String;)V
    .locals 7

    const/4 v6, 0x0

    iget-object v5, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/PhotoViewDCSelectItemTask;->mSelectionListener:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$SelectionListener;

    invoke-interface {v5}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$SelectionListener;->getComposeMediaItemAdapter()Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    move-result-object v2

    check-cast v2, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->getSource()Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/data/MediaSet;->getMediaItemCount()I

    move-result v4

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v4, :cond_1

    invoke-direct {p0, v6, v0}, Lcom/samsung/android/devicecog/gallery/selectiontask/PhotoViewDCSelectItemTask;->getMediaItemWithIndex(II)Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/samsung/android/devicecog/gallery/DCUtils;->isMatchContent(Lcom/sec/android/gallery3d/data/MediaItem;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/PhotoViewDCSelectItemTask;->mSelectionListener:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$SelectionListener;

    invoke-interface {v5, v6, v0}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$SelectionListener;->startDetailView(II)V

    :goto_1
    return-void

    :cond_0
    iget-boolean v5, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/PhotoViewDCSelectItemTask;->mOnCancelRequested:Z

    if-eqz v5, :cond_2

    :cond_1
    invoke-virtual {p0, p1}, Lcom/samsung/android/devicecog/gallery/selectiontask/PhotoViewDCSelectItemTask;->sendDCResponseForEnterDetailViewIfContentTypeNotMatched(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private selectLatestDetailViewItemWithOrdinalAndContentType(Ljava/lang/String;I)V
    .locals 9

    const/4 v8, 0x0

    iget-object v7, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/PhotoViewDCSelectItemTask;->mSelectionListener:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$SelectionListener;

    invoke-interface {v7}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$SelectionListener;->getComposeMediaItemAdapter()Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    move-result-object v5

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

    if-le p2, v7, :cond_0

    iget-object v7, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/PhotoViewDCSelectItemTask;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-string/jumbo v8, "DetailView"

    invoke-static {v7, v8}, Lcom/samsung/android/devicecog/gallery/DCUtils;->requestOrdinalFailNlg(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    move v2, v6

    :goto_1
    if-gt v2, v1, :cond_3

    invoke-direct {p0, v8, v2}, Lcom/samsung/android/devicecog/gallery/selectiontask/PhotoViewDCSelectItemTask;->getMediaItemWithIndex(II)Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v4

    invoke-static {v4, p1}, Lcom/samsung/android/devicecog/gallery/DCUtils;->isMatchContent(Lcom/sec/android/gallery3d/data/MediaItem;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    add-int/lit8 v0, v0, 0x1

    :cond_1
    if-ne p2, v0, :cond_2

    iget-object v7, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/PhotoViewDCSelectItemTask;->mSelectionListener:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$SelectionListener;

    invoke-interface {v7, v8, v2}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$SelectionListener;->startDetailView(II)V

    goto :goto_0

    :cond_2
    iget-boolean v7, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/PhotoViewDCSelectItemTask;->mOnCancelRequested:Z

    if-eqz v7, :cond_4

    :cond_3
    invoke-virtual {p0, p1}, Lcom/samsung/android/devicecog/gallery/selectiontask/PhotoViewDCSelectItemTask;->sendDCResponseForEnterDetailViewIfContentTypeNotMatched(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private selectLatestItemWithCountAndContentType(ILjava/lang/String;Ljava/lang/String;)V
    .locals 8

    const/4 v5, 0x0

    iget-object v7, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/PhotoViewDCSelectItemTask;->mSelectionListener:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$SelectionListener;

    invoke-interface {v7}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$SelectionListener;->getComposeMediaItemAdapter()Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    move-result-object v2

    check-cast v2, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->getSource()Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v3

    move v4, p1

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/data/MediaSet;->getMediaItemCount()I

    move-result v6

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v6, :cond_1

    invoke-direct {p0, v5, v0}, Lcom/samsung/android/devicecog/gallery/selectiontask/PhotoViewDCSelectItemTask;->getMediaItemWithIndex(II)Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/samsung/android/devicecog/gallery/DCUtils;->isMatchContent(Lcom/sec/android/gallery3d/data/MediaItem;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-direct {p0, v1, v0, v4}, Lcom/samsung/android/devicecog/gallery/selectiontask/PhotoViewDCSelectItemTask;->selectItemWithCount(Lcom/sec/android/gallery3d/data/MediaItem;II)I

    move-result v4

    :cond_0
    if-eqz v4, :cond_1

    iget-boolean v7, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/PhotoViewDCSelectItemTask;->mOnCancelRequested:Z

    if-eqz v7, :cond_3

    :cond_1
    if-eq v4, p1, :cond_2

    const/4 v5, 0x1

    :cond_2
    invoke-virtual {p0, v5, p2}, Lcom/samsung/android/devicecog/gallery/selectiontask/PhotoViewDCSelectItemTask;->sendDCResponseForSelectContentTypeWithUpdateCheckState(ZLjava/lang/String;)V

    return-void

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private selectLatestItemWithOrdinalAndContentType(ILjava/lang/String;Ljava/lang/String;)V
    .locals 10

    const/4 v7, 0x1

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/PhotoViewDCSelectItemTask;->mSelectionListener:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$SelectionListener;

    invoke-interface {v9}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$SelectionListener;->getComposeMediaItemAdapter()Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    move-result-object v5

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

    if-le p1, v9, :cond_0

    iget-object v8, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/PhotoViewDCSelectItemTask;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v8, p3}, Lcom/samsung/android/devicecog/gallery/DCUtils;->requestOrdinalFailNlg(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    move v2, v6

    :goto_1
    if-gt v2, v1, :cond_2

    invoke-direct {p0, v8, v2}, Lcom/samsung/android/devicecog/gallery/selectiontask/PhotoViewDCSelectItemTask;->getMediaItemWithIndex(II)Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v4

    invoke-static {v4, p2}, Lcom/samsung/android/devicecog/gallery/DCUtils;->isMatchContent(Lcom/sec/android/gallery3d/data/MediaItem;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    add-int/lit8 v0, v0, 0x1

    :cond_1
    if-ne v0, p1, :cond_3

    invoke-direct {p0, v4, v2, v7}, Lcom/samsung/android/devicecog/gallery/selectiontask/PhotoViewDCSelectItemTask;->selectItemWithCount(Lcom/sec/android/gallery3d/data/MediaItem;II)I

    :cond_2
    if-ne v0, p1, :cond_4

    :goto_2
    invoke-virtual {p0, v7, p2}, Lcom/samsung/android/devicecog/gallery/selectiontask/PhotoViewDCSelectItemTask;->sendDCResponseForSelectContentTypeWithUpdateCheckState(ZLjava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-boolean v9, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/PhotoViewDCSelectItemTask;->mOnCancelRequested:Z

    if-nez v9, :cond_2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    move v7, v8

    goto :goto_2
.end method

.method private selectOldestDetailViewItemWithContentType(Ljava/lang/String;)V
    .locals 7

    const/4 v6, 0x0

    iget-object v5, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/PhotoViewDCSelectItemTask;->mSelectionListener:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$SelectionListener;

    invoke-interface {v5}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$SelectionListener;->getComposeMediaItemAdapter()Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    move-result-object v2

    check-cast v2, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->getSource()Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/data/MediaSet;->getMediaItemCount()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    :goto_0
    if-ltz v0, :cond_1

    invoke-direct {p0, v6, v0}, Lcom/samsung/android/devicecog/gallery/selectiontask/PhotoViewDCSelectItemTask;->getMediaItemWithIndex(II)Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/samsung/android/devicecog/gallery/DCUtils;->isMatchContent(Lcom/sec/android/gallery3d/data/MediaItem;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/PhotoViewDCSelectItemTask;->mSelectionListener:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$SelectionListener;

    invoke-interface {v5, v6, v0}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$SelectionListener;->startDetailView(II)V

    :goto_1
    return-void

    :cond_0
    iget-boolean v5, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/PhotoViewDCSelectItemTask;->mOnCancelRequested:Z

    if-eqz v5, :cond_2

    :cond_1
    invoke-virtual {p0, p1}, Lcom/samsung/android/devicecog/gallery/selectiontask/PhotoViewDCSelectItemTask;->sendDCResponseForEnterDetailViewIfContentTypeNotMatched(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method private selectOldestItemWithCountAndContentType(ILjava/lang/String;Ljava/lang/String;)V
    .locals 8

    const/4 v5, 0x0

    iget-object v7, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/PhotoViewDCSelectItemTask;->mSelectionListener:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$SelectionListener;

    invoke-interface {v7}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$SelectionListener;->getComposeMediaItemAdapter()Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    move-result-object v2

    check-cast v2, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->getSource()Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v3

    move v4, p1

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/data/MediaSet;->getMediaItemCount()I

    move-result v6

    add-int/lit8 v0, v6, -0x1

    :goto_0
    if-ltz v0, :cond_1

    invoke-direct {p0, v5, v0}, Lcom/samsung/android/devicecog/gallery/selectiontask/PhotoViewDCSelectItemTask;->getMediaItemWithIndex(II)Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/samsung/android/devicecog/gallery/DCUtils;->isMatchContent(Lcom/sec/android/gallery3d/data/MediaItem;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-direct {p0, v1, v0, v4}, Lcom/samsung/android/devicecog/gallery/selectiontask/PhotoViewDCSelectItemTask;->selectItemWithCount(Lcom/sec/android/gallery3d/data/MediaItem;II)I

    move-result v4

    :cond_0
    if-eqz v4, :cond_1

    iget-boolean v7, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/PhotoViewDCSelectItemTask;->mOnCancelRequested:Z

    if-eqz v7, :cond_3

    :cond_1
    if-eq v4, p1, :cond_2

    const/4 v5, 0x1

    :cond_2
    invoke-virtual {p0, v5, p2}, Lcom/samsung/android/devicecog/gallery/selectiontask/PhotoViewDCSelectItemTask;->sendDCResponseForSelectContentTypeWithUpdateCheckState(ZLjava/lang/String;)V

    return-void

    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method


# virtual methods
.method protected selectAllWithParameter()V
    .locals 12

    const/4 v6, 0x1

    const/4 v9, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/devicecog/gallery/selectiontask/PhotoViewDCSelectItemTask;->isAvailableSelectItem()Z

    move-result v8

    if-nez v8, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v8, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/PhotoViewDCSelectItemTask;->mSelectionListener:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$SelectionListener;

    invoke-interface {v8}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$SelectionListener;->getComposeMediaItemAdapter()Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    move-result-object v3

    if-eqz v3, :cond_1

    move-object v8, v3

    check-cast v8, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    invoke-virtual {v8}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->getSource()Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v8

    if-nez v8, :cond_2

    :cond_1
    iget-object v8, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/PhotoViewDCSelectItemTask;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    iget-object v9, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/PhotoViewDCSelectItemTask;->mSelectionParam:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;

    invoke-virtual {v9}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;->getExecutingStateId()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/samsung/android/devicecog/gallery/DCUtils;->requestCommonErrorNlg(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    check-cast v3, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->getSource()Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v4

    iget-object v8, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/PhotoViewDCSelectItemTask;->mSelectionParam:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;

    invoke-virtual {v8}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;->getContentType()Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x0

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/data/MediaSet;->getMediaItemCount()I

    move-result v7

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v7, :cond_3

    invoke-direct {p0, v9, v1}, Lcom/samsung/android/devicecog/gallery/selectiontask/PhotoViewDCSelectItemTask;->getMediaItemWithIndex(II)Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/samsung/android/devicecog/gallery/DCUtils;->isMatchContent(Lcom/sec/android/gallery3d/data/MediaItem;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/PhotoViewDCSelectItemTask;->mSelectionListener:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$SelectionListener;

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v2, v10, v9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v6

    invoke-interface {v8, v10}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$SelectionListener;->onEventHandleItemClick([Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    iget-boolean v8, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/PhotoViewDCSelectItemTask;->mOnCancelRequested:Z

    if-eqz v8, :cond_4

    :cond_3
    if-lez v5, :cond_5

    :goto_2
    invoke-virtual {p0, v6, v0}, Lcom/samsung/android/devicecog/gallery/selectiontask/PhotoViewDCSelectItemTask;->sendDCResponseForSelectContentTypeWithUpdateCheckState(ZLjava/lang/String;)V

    goto :goto_0

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    move v6, v9

    goto :goto_2
.end method

.method protected selectItemNormal()V
    .locals 4

    invoke-virtual {p0}, Lcom/samsung/android/devicecog/gallery/selectiontask/PhotoViewDCSelectItemTask;->isAvailableSelectItem()Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/PhotoViewDCSelectItemTask;->mSelectionListener:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$SelectionListener;

    invoke-interface {v1}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$SelectionListener;->getComposeMediaItemAdapter()Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    check-cast v0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->getSource()Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v1

    if-nez v1, :cond_2

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/PhotoViewDCSelectItemTask;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    iget-object v2, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/PhotoViewDCSelectItemTask;->mSelectionParam:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;

    invoke-virtual {v2}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;->getExecutingStateId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/devicecog/gallery/DCUtils;->requestCommonErrorNlg(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/PhotoViewDCSelectItemTask;->mSelectionParam:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;

    invoke-virtual {v1}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;->getSelectOrderType()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    iget-object v1, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/PhotoViewDCSelectItemTask;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    iget-object v2, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/PhotoViewDCSelectItemTask;->mSelectionParam:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;

    invoke-virtual {v2}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;->getExecutingStateId()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->FAILURE:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    invoke-static {v1, v2, v3}, Lcom/samsung/android/devicecog/gallery/DCUtils;->sendResponseDCState(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;)V

    goto :goto_0

    :pswitch_0
    iget-object v1, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/PhotoViewDCSelectItemTask;->mSelectionParam:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;

    invoke-virtual {v1}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;->getSelectCount()I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/PhotoViewDCSelectItemTask;->mSelectionParam:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;

    invoke-virtual {v2}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;->getContentType()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/PhotoViewDCSelectItemTask;->mSelectionParam:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;

    invoke-virtual {v3}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;->getExecutingStateId()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/samsung/android/devicecog/gallery/selectiontask/PhotoViewDCSelectItemTask;->selectLatestItemWithCountAndContentType(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/PhotoViewDCSelectItemTask;->mSelectionParam:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;

    invoke-virtual {v1}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;->getSelectCount()I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/PhotoViewDCSelectItemTask;->mSelectionParam:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;

    invoke-virtual {v2}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;->getContentType()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/PhotoViewDCSelectItemTask;->mSelectionParam:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;

    invoke-virtual {v3}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;->getExecutingStateId()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/samsung/android/devicecog/gallery/selectiontask/PhotoViewDCSelectItemTask;->selectOldestItemWithCountAndContentType(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

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

    invoke-virtual {p0}, Lcom/samsung/android/devicecog/gallery/selectiontask/PhotoViewDCSelectItemTask;->isAvailableSelectItem()Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/PhotoViewDCSelectItemTask;->mSelectionParam:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;

    invoke-virtual {v1}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;->getOrdinal()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/PhotoViewDCSelectItemTask;->mSelectionParam:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;

    invoke-virtual {v1}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;->getContentType()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/PhotoViewDCSelectItemTask;->mSelectionParam:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;

    invoke-virtual {v2}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;->getExecutingStateId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/devicecog/gallery/selectiontask/PhotoViewDCSelectItemTask;->selectLatestItemWithOrdinalAndContentType(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/PhotoViewDCSelectItemTask;->mSelectionParam:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;

    invoke-virtual {v2}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;->getContentType()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/PhotoViewDCSelectItemTask;->mSelectionParam:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;

    invoke-virtual {v3}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;->getExecutingStateId()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/samsung/android/devicecog/gallery/selectiontask/PhotoViewDCSelectItemTask;->selectOldestItemWithCountAndContentType(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public startDetailView()V
    .locals 6

    invoke-virtual {p0}, Lcom/samsung/android/devicecog/gallery/selectiontask/PhotoViewDCSelectItemTask;->isAvailableSelectItem()Z

    move-result v4

    if-nez v4, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v4, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/PhotoViewDCSelectItemTask;->mSelectionListener:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$SelectionListener;

    invoke-interface {v4}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$SelectionListener;->getComposeMediaItemAdapter()Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    move-result-object v1

    if-eqz v1, :cond_1

    move-object v4, v1

    check-cast v4, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->getSource()Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v4

    if-nez v4, :cond_2

    :cond_1
    iget-object v4, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/PhotoViewDCSelectItemTask;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-string/jumbo v5, "DetailView"

    invoke-static {v4, v5}, Lcom/samsung/android/devicecog/gallery/DCUtils;->requestCommonErrorNlg(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    check-cast v1, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->getSource()Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v2

    iget-object v4, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/PhotoViewDCSelectItemTask;->mSelectionParam:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;

    invoke-virtual {v4}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;->getContentType()Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/PhotoViewDCSelectItemTask;->mSelectionParam:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;

    invoke-virtual {v4}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;->getSelectOrderType()I

    move-result v3

    invoke-static {v3}, Lcom/samsung/android/devicecog/gallery/DCUtils;->isLatest(I)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {v2}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isSortedByTimeAscendingOrder(Lcom/sec/android/gallery3d/data/MediaSet;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-direct {p0, v0}, Lcom/samsung/android/devicecog/gallery/selectiontask/PhotoViewDCSelectItemTask;->selectLatestDetailViewItemWithContentType(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-direct {p0, v0}, Lcom/samsung/android/devicecog/gallery/selectiontask/PhotoViewDCSelectItemTask;->selectOldestDetailViewItemWithContentType(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected startDetailViewWithOrdinal()V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/devicecog/gallery/selectiontask/PhotoViewDCSelectItemTask;->isAvailableSelectItem()Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/PhotoViewDCSelectItemTask;->mSelectionParam:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;

    invoke-virtual {v1}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;->getOrdinal()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/PhotoViewDCSelectItemTask;->mSelectionParam:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;

    invoke-virtual {v1}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;->getContentType()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/devicecog/gallery/selectiontask/PhotoViewDCSelectItemTask;->selectLatestDetailViewItemWithOrdinalAndContentType(Ljava/lang/String;I)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/PhotoViewDCSelectItemTask;->mSelectionParam:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;

    invoke-virtual {v1}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;->getContentType()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/android/devicecog/gallery/selectiontask/PhotoViewDCSelectItemTask;->selectOldestDetailViewItemWithContentType(Ljava/lang/String;)V

    goto :goto_0
.end method
