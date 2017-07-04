.class public Lcom/samsung/android/devicecog/gallery/selectiontask/TimeViewDCSelectItemTask;
.super Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask;
.source "TimeViewDCSelectItemTask.java"


# direct methods
.method public constructor <init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask;-><init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)V

    return-void
.end method

.method private calcVisibleItemCount(Lcom/sec/android/gallery3d/app/MediaSetInterfaceInfo;)I
    .locals 8

    iget-object v7, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/TimeViewDCSelectItemTask;->mSelectionListener:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$SelectionListener;

    invoke-interface {v7}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$SelectionListener;->getComposeMediaItemAdapter()Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    move-result-object v4

    if-nez v4, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v7, p1, Lcom/sec/android/gallery3d/app/MediaSetInterfaceInfo;->mVisibleStart:I

    invoke-static {v7}, Lcom/sec/android/gallery3d/util/GlIndex;->getGroupIndex(I)I

    move-result v5

    iget v7, p1, Lcom/sec/android/gallery3d/app/MediaSetInterfaceInfo;->mVisibleStart:I

    invoke-static {v7}, Lcom/sec/android/gallery3d/util/GlIndex;->getItemIndex(I)I

    move-result v6

    iget v7, p1, Lcom/sec/android/gallery3d/app/MediaSetInterfaceInfo;->mVisibleEnd:I

    invoke-static {v7}, Lcom/sec/android/gallery3d/util/GlIndex;->getGroupIndex(I)I

    move-result v1

    iget v7, p1, Lcom/sec/android/gallery3d/app/MediaSetInterfaceInfo;->mVisibleEnd:I

    invoke-static {v7}, Lcom/sec/android/gallery3d/util/GlIndex;->getItemIndex(I)I

    move-result v2

    if-ne v5, v1, :cond_2

    sub-int v7, v2, v6

    add-int/lit8 v0, v7, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v4, v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->getCount(I)I

    move-result v7

    sub-int/2addr v7, v6

    add-int/2addr v7, v2

    add-int/lit8 v0, v7, 0x1

    add-int/lit8 v3, v5, 0x1

    :goto_1
    if-ge v3, v1, :cond_0

    invoke-virtual {v4, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->getCount(I)I

    move-result v7

    add-int/2addr v0, v7

    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method private selectItemForBixby(Lcom/sec/android/gallery3d/data/MediaItem;I)Z
    .locals 6

    const/4 v3, 0x0

    if-nez p1, :cond_0

    :goto_0
    return v3

    :cond_0
    iget-object v4, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/TimeViewDCSelectItemTask;->mSelectionListener:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$SelectionListener;

    invoke-interface {v4}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$SelectionListener;->getComposeMediaItemAdapter()Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v4, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/TimeViewDCSelectItemTask;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    iget-object v5, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/TimeViewDCSelectItemTask;->mSelectionParam:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;

    invoke-virtual {v5}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;->getExecutingStateId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/devicecog/gallery/DCUtils;->requestCommonErrorNlg(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/TimeViewDCSelectItemTask;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/StateManager;->getTopState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/ActivityState;->getDCScreenStateId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->getSubMediaSet(I)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v1

    iget-object v4, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/TimeViewDCSelectItemTask;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/StateManager;->getTopState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Lcom/sec/android/gallery3d/app/ActivityState;->logDCSelectedView(Ljava/lang/String;Z)V

    iget-object v3, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/TimeViewDCSelectItemTask;->mSelectionListener:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$SelectionListener;

    invoke-interface {v3, v1, p1}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$SelectionListener;->addItemToSelectionManager(Lcom/sec/android/gallery3d/data/MediaSet;Lcom/sec/android/gallery3d/data/MediaItem;)Z

    move-result v3

    goto :goto_0
.end method

.method private selectItemWithCount(Lcom/sec/android/gallery3d/data/MediaItem;III)I
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/TimeViewDCSelectItemTask;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentLaunchMode()Lcom/sec/samsung/gallery/core/LaunchModeType;

    move-result-object v0

    sget-object v1, Lcom/sec/samsung/gallery/core/LaunchModeType;->ACTION_PICK:Lcom/sec/samsung/gallery/core/LaunchModeType;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/TimeViewDCSelectItemTask;->mSelectionListener:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$SelectionListener;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$SelectionListener;->onEventHandleItemClick([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p4, 0x0

    :cond_0
    :goto_0
    return p4

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/devicecog/gallery/selectiontask/TimeViewDCSelectItemTask;->selectItemForBixby(Lcom/sec/android/gallery3d/data/MediaItem;I)Z

    move-result v0

    if-eqz v0, :cond_0

    add-int/lit8 p4, p4, -0x1

    goto :goto_0
.end method

.method private selectLatestDetailViewItemWithContentType(Ljava/lang/String;)V
    .locals 10

    iget-object v8, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/TimeViewDCSelectItemTask;->mSelectionListener:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$SelectionListener;

    invoke-interface {v8}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$SelectionListener;->getComposeMediaItemAdapter()Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    move-result-object v4

    if-nez v4, :cond_0

    iget-object v8, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/TimeViewDCSelectItemTask;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    iget-object v9, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/TimeViewDCSelectItemTask;->mSelectionParam:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;

    invoke-virtual {v9}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;->getExecutingStateId()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/samsung/android/devicecog/gallery/DCUtils;->requestCommonErrorNlg(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->getCount()I

    move-result v1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_3

    invoke-virtual {v4, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->getSubMediaSet(I)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/data/MediaSet;->getAllItems()Ljava/util/ArrayList;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v7, :cond_2

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-static {v3, p1}, Lcom/samsung/android/devicecog/gallery/DCUtils;->isMatchContent(Lcom/sec/android/gallery3d/data/MediaItem;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/TimeViewDCSelectItemTask;->mSelectionListener:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$SelectionListener;

    invoke-interface {v8, v0, v2}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$SelectionListener;->startDetailView(II)V

    goto :goto_0

    :cond_1
    iget-boolean v8, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/TimeViewDCSelectItemTask;->mOnCancelRequested:Z

    if-eqz v8, :cond_4

    :cond_2
    iget-boolean v8, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/TimeViewDCSelectItemTask;->mOnCancelRequested:Z

    if-eqz v8, :cond_5

    :cond_3
    invoke-virtual {p0, p1}, Lcom/samsung/android/devicecog/gallery/selectiontask/TimeViewDCSelectItemTask;->sendDCResponseForEnterDetailViewIfContentTypeNotMatched(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private selectLatestDetailViewItemWithOrdinalAndContentType(Ljava/lang/String;I)V
    .locals 19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/devicecog/gallery/selectiontask/TimeViewDCSelectItemTask;->mSelectionListener:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$SelectionListener;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$SelectionListener;->getComposeMediaItemAdapter()Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    move-result-object v11

    if-nez v11, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/devicecog/gallery/selectiontask/TimeViewDCSelectItemTask;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/devicecog/gallery/selectiontask/TimeViewDCSelectItemTask;->mSelectionParam:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;->getExecutingStateId()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/samsung/android/devicecog/gallery/DCUtils;->requestCommonErrorNlg(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    new-instance v7, Lcom/sec/android/gallery3d/app/MediaSetInterfaceInfo;

    invoke-direct {v7}, Lcom/sec/android/gallery3d/app/MediaSetInterfaceInfo;-><init>()V

    invoke-virtual {v11, v7}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->getVisibleInfo(Lcom/sec/android/gallery3d/app/MediaSetInterfaceInfo;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/samsung/android/devicecog/gallery/selectiontask/TimeViewDCSelectItemTask;->calcVisibleItemCount(Lcom/sec/android/gallery3d/app/MediaSetInterfaceInfo;)I

    move-result v17

    move/from16 v0, v17

    move/from16 v1, p2

    if-ge v0, v1, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/devicecog/gallery/selectiontask/TimeViewDCSelectItemTask;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v17, v0

    const-string/jumbo v18, "DetailView"

    invoke-static/range {v17 .. v18}, Lcom/samsung/android/devicecog/gallery/DCUtils;->requestOrdinalFailNlg(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget v0, v7, Lcom/sec/android/gallery3d/app/MediaSetInterfaceInfo;->mVisibleStart:I

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/sec/android/gallery3d/util/GlIndex;->getGroupIndex(I)I

    move-result v14

    iget v0, v7, Lcom/sec/android/gallery3d/app/MediaSetInterfaceInfo;->mVisibleStart:I

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/sec/android/gallery3d/util/GlIndex;->getItemIndex(I)I

    move-result v15

    iget v0, v7, Lcom/sec/android/gallery3d/app/MediaSetInterfaceInfo;->mVisibleEnd:I

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/sec/android/gallery3d/util/GlIndex;->getGroupIndex(I)I

    move-result v4

    iget v0, v7, Lcom/sec/android/gallery3d/app/MediaSetInterfaceInfo;->mVisibleEnd:I

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/sec/android/gallery3d/util/GlIndex;->getItemIndex(I)I

    move-result v5

    const/4 v3, 0x0

    move v2, v14

    :goto_1
    if-gt v2, v4, :cond_9

    invoke-virtual {v11, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->getSubMediaSet(I)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v13

    if-eqz v13, :cond_8

    invoke-virtual {v13}, Lcom/sec/android/gallery3d/data/MediaSet;->getAllItems()Ljava/util/ArrayList;

    move-result-object v12

    if-eqz v12, :cond_8

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v16

    if-ne v2, v14, :cond_3

    const/4 v9, 0x1

    :goto_2
    if-ne v2, v4, :cond_4

    const/4 v8, 0x1

    :goto_3
    if-eqz v9, :cond_5

    move v6, v15

    :goto_4
    if-eqz v8, :cond_6

    move/from16 v17, v5

    :goto_5
    move/from16 v0, v17

    if-gt v6, v0, :cond_8

    invoke-virtual {v12, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/sec/android/gallery3d/data/MediaItem;

    move-object/from16 v0, p1

    invoke-static {v10, v0}, Lcom/samsung/android/devicecog/gallery/DCUtils;->isMatchContent(Lcom/sec/android/gallery3d/data/MediaItem;Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_2

    add-int/lit8 v3, v3, 0x1

    :cond_2
    move/from16 v0, p2

    if-ne v3, v0, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/devicecog/gallery/selectiontask/TimeViewDCSelectItemTask;->mSelectionListener:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$SelectionListener;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v0, v2, v6}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$SelectionListener;->startDetailView(II)V

    goto/16 :goto_0

    :cond_3
    const/4 v9, 0x0

    goto :goto_2

    :cond_4
    const/4 v8, 0x0

    goto :goto_3

    :cond_5
    const/4 v6, 0x0

    goto :goto_4

    :cond_6
    add-int/lit8 v17, v16, -0x1

    goto :goto_5

    :cond_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/devicecog/gallery/selectiontask/TimeViewDCSelectItemTask;->mOnCancelRequested:Z

    move/from16 v17, v0

    if-eqz v17, :cond_a

    :cond_8
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/devicecog/gallery/selectiontask/TimeViewDCSelectItemTask;->mOnCancelRequested:Z

    move/from16 v17, v0

    if-eqz v17, :cond_b

    :cond_9
    invoke-virtual/range {p0 .. p1}, Lcom/samsung/android/devicecog/gallery/selectiontask/TimeViewDCSelectItemTask;->sendDCResponseForEnterDetailViewIfContentTypeNotMatched(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_a
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_b
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private selectLatestItemWithCountAndContentType(ILjava/lang/String;Ljava/lang/String;)V
    .locals 12

    iget-object v11, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/TimeViewDCSelectItemTask;->mSelectionListener:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$SelectionListener;

    invoke-interface {v11}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$SelectionListener;->getComposeMediaItemAdapter()Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    move-result-object v5

    if-nez v5, :cond_0

    iget-object v11, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/TimeViewDCSelectItemTask;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v11, p3}, Lcom/samsung/android/devicecog/gallery/DCUtils;->requestCommonErrorNlg(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    move v8, p1

    invoke-virtual {v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->getCount()I

    move-result v1

    const/4 v3, 0x0

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_3

    invoke-virtual {v5, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->getSubMediaSet(I)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v7

    if-eqz v7, :cond_2

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/data/MediaSet;->getAllItems()Ljava/util/ArrayList;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v9

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v9, :cond_2

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-static {v4, p2}, Lcom/samsung/android/devicecog/gallery/DCUtils;->isMatchContent(Lcom/sec/android/gallery3d/data/MediaItem;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-direct {p0, v4, v0, v2, v8}, Lcom/samsung/android/devicecog/gallery/selectiontask/TimeViewDCSelectItemTask;->selectItemWithCount(Lcom/sec/android/gallery3d/data/MediaItem;III)I

    move-result v8

    :cond_1
    iget-object v11, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/TimeViewDCSelectItemTask;->mSelectionListener:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$SelectionListener;

    invoke-interface {v11}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$SelectionListener;->isMaxCountSelectedInPickerMode()Z

    move-result v3

    if-eqz v8, :cond_2

    if-nez v3, :cond_2

    iget-boolean v11, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/TimeViewDCSelectItemTask;->mOnCancelRequested:Z

    if-eqz v11, :cond_4

    :cond_2
    if-eqz v8, :cond_3

    if-nez v3, :cond_3

    iget-boolean v11, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/TimeViewDCSelectItemTask;->mOnCancelRequested:Z

    if-eqz v11, :cond_5

    :cond_3
    if-eq v8, p1, :cond_6

    const/4 v10, 0x1

    :goto_3
    invoke-virtual {p0, v10, p2}, Lcom/samsung/android/devicecog/gallery/selectiontask/TimeViewDCSelectItemTask;->sendDCResponseForSelectContentTypeWithUpdateCheckState(ZLjava/lang/String;)V

    goto :goto_0

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_6
    const/4 v10, 0x0

    goto :goto_3
.end method

.method private selectLatestItemWithOrdinalAndContentType(ILjava/lang/String;Ljava/lang/String;)V
    .locals 20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/devicecog/gallery/selectiontask/TimeViewDCSelectItemTask;->mSelectionListener:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$SelectionListener;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$SelectionListener;->getComposeMediaItemAdapter()Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    move-result-object v12

    if-nez v12, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/devicecog/gallery/selectiontask/TimeViewDCSelectItemTask;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Lcom/samsung/android/devicecog/gallery/DCUtils;->requestCommonErrorNlg(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    new-instance v8, Lcom/sec/android/gallery3d/app/MediaSetInterfaceInfo;

    invoke-direct {v8}, Lcom/sec/android/gallery3d/app/MediaSetInterfaceInfo;-><init>()V

    invoke-virtual {v12, v8}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->getVisibleInfo(Lcom/sec/android/gallery3d/app/MediaSetInterfaceInfo;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/samsung/android/devicecog/gallery/selectiontask/TimeViewDCSelectItemTask;->calcVisibleItemCount(Lcom/sec/android/gallery3d/app/MediaSetInterfaceInfo;)I

    move-result v19

    move/from16 v0, v19

    move/from16 v1, p1

    if-ge v0, v1, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/devicecog/gallery/selectiontask/TimeViewDCSelectItemTask;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Lcom/samsung/android/devicecog/gallery/DCUtils;->requestOrdinalFailNlg(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget v0, v8, Lcom/sec/android/gallery3d/app/MediaSetInterfaceInfo;->mVisibleStart:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/sec/android/gallery3d/util/GlIndex;->getGroupIndex(I)I

    move-result v15

    iget v0, v8, Lcom/sec/android/gallery3d/app/MediaSetInterfaceInfo;->mVisibleStart:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/sec/android/gallery3d/util/GlIndex;->getItemIndex(I)I

    move-result v16

    iget v0, v8, Lcom/sec/android/gallery3d/app/MediaSetInterfaceInfo;->mVisibleEnd:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/sec/android/gallery3d/util/GlIndex;->getGroupIndex(I)I

    move-result v5

    iget v0, v8, Lcom/sec/android/gallery3d/app/MediaSetInterfaceInfo;->mVisibleEnd:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/sec/android/gallery3d/util/GlIndex;->getItemIndex(I)I

    move-result v6

    const/4 v4, 0x0

    move v3, v15

    :goto_1
    if-gt v3, v5, :cond_4

    invoke-virtual {v12, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->getSubMediaSet(I)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v14

    if-eqz v14, :cond_3

    invoke-virtual {v14}, Lcom/sec/android/gallery3d/data/MediaSet;->getAllItems()Ljava/util/ArrayList;

    move-result-object v13

    if-eqz v13, :cond_3

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v17

    if-ne v3, v15, :cond_5

    const/4 v10, 0x1

    :goto_2
    if-ne v3, v5, :cond_6

    const/4 v9, 0x1

    :goto_3
    if-eqz v10, :cond_7

    move/from16 v7, v16

    :goto_4
    if-eqz v9, :cond_8

    move/from16 v19, v6

    :goto_5
    move/from16 v0, v19

    if-gt v7, v0, :cond_3

    invoke-virtual {v13, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/sec/android/gallery3d/data/MediaItem;

    move-object/from16 v0, p2

    invoke-static {v11, v0}, Lcom/samsung/android/devicecog/gallery/DCUtils;->isMatchContent(Lcom/sec/android/gallery3d/data/MediaItem;Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_2

    add-int/lit8 v4, v4, 0x1

    :cond_2
    move/from16 v0, p1

    if-ne v4, v0, :cond_9

    const/16 v19, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v11, v3, v7, v1}, Lcom/samsung/android/devicecog/gallery/selectiontask/TimeViewDCSelectItemTask;->selectItemWithCount(Lcom/sec/android/gallery3d/data/MediaItem;III)I

    :cond_3
    move/from16 v0, p1

    if-eq v4, v0, :cond_4

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/devicecog/gallery/selectiontask/TimeViewDCSelectItemTask;->mOnCancelRequested:Z

    move/from16 v19, v0

    if-eqz v19, :cond_a

    :cond_4
    move/from16 v0, p1

    if-ne v4, v0, :cond_b

    const/16 v18, 0x1

    :goto_6
    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/devicecog/gallery/selectiontask/TimeViewDCSelectItemTask;->sendDCResponseForSelectContentTypeWithUpdateCheckState(ZLjava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    const/4 v10, 0x0

    goto :goto_2

    :cond_6
    const/4 v9, 0x0

    goto :goto_3

    :cond_7
    const/4 v7, 0x0

    goto :goto_4

    :cond_8
    add-int/lit8 v19, v17, -0x1

    goto :goto_5

    :cond_9
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/devicecog/gallery/selectiontask/TimeViewDCSelectItemTask;->mOnCancelRequested:Z

    move/from16 v19, v0

    if-nez v19, :cond_3

    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_a
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_b
    const/16 v18, 0x0

    goto :goto_6
.end method

.method private selectOldestDetailViewItemWithContentType(Ljava/lang/String;)V
    .locals 10

    iget-object v8, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/TimeViewDCSelectItemTask;->mSelectionListener:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$SelectionListener;

    invoke-interface {v8}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$SelectionListener;->getComposeMediaItemAdapter()Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    move-result-object v4

    if-nez v4, :cond_0

    iget-object v8, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/TimeViewDCSelectItemTask;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    iget-object v9, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/TimeViewDCSelectItemTask;->mSelectionParam:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;

    invoke-virtual {v9}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;->getExecutingStateId()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/samsung/android/devicecog/gallery/DCUtils;->requestCommonErrorNlg(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->getCount()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    :goto_1
    if-ltz v0, :cond_3

    invoke-virtual {v4, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->getSubMediaSet(I)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/data/MediaSet;->getAllItems()Ljava/util/ArrayList;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v2, v7, -0x1

    :goto_2
    if-ltz v2, :cond_2

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-static {v3, p1}, Lcom/samsung/android/devicecog/gallery/DCUtils;->isMatchContent(Lcom/sec/android/gallery3d/data/MediaItem;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/TimeViewDCSelectItemTask;->mSelectionListener:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$SelectionListener;

    invoke-interface {v8, v0, v2}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$SelectionListener;->startDetailView(II)V

    goto :goto_0

    :cond_1
    iget-boolean v8, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/TimeViewDCSelectItemTask;->mOnCancelRequested:Z

    if-eqz v8, :cond_4

    :cond_2
    iget-boolean v8, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/TimeViewDCSelectItemTask;->mOnCancelRequested:Z

    if-eqz v8, :cond_5

    :cond_3
    invoke-virtual {p0, p1}, Lcom/samsung/android/devicecog/gallery/selectiontask/TimeViewDCSelectItemTask;->sendDCResponseForEnterDetailViewIfContentTypeNotMatched(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    :cond_5
    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method private selectOldestItemWithCountAndContentType(ILjava/lang/String;Ljava/lang/String;)V
    .locals 12

    iget-object v11, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/TimeViewDCSelectItemTask;->mSelectionListener:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$SelectionListener;

    invoke-interface {v11}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$SelectionListener;->getComposeMediaItemAdapter()Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    move-result-object v5

    if-nez v5, :cond_0

    iget-object v11, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/TimeViewDCSelectItemTask;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v11, p3}, Lcom/samsung/android/devicecog/gallery/DCUtils;->requestCommonErrorNlg(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    move v8, p1

    invoke-virtual {v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->getCount()I

    move-result v1

    const/4 v3, 0x0

    add-int/lit8 v0, v1, -0x1

    :goto_1
    if-ltz v0, :cond_3

    invoke-virtual {v5, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->getSubMediaSet(I)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v7

    if-eqz v7, :cond_2

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/data/MediaSet;->getAllItems()Ljava/util/ArrayList;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v2, v9, -0x1

    :goto_2
    if-ltz v2, :cond_2

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-static {v4, p2}, Lcom/samsung/android/devicecog/gallery/DCUtils;->isMatchContent(Lcom/sec/android/gallery3d/data/MediaItem;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-direct {p0, v4, v0, v2, v8}, Lcom/samsung/android/devicecog/gallery/selectiontask/TimeViewDCSelectItemTask;->selectItemWithCount(Lcom/sec/android/gallery3d/data/MediaItem;III)I

    move-result v8

    :cond_1
    iget-object v11, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/TimeViewDCSelectItemTask;->mSelectionListener:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$SelectionListener;

    invoke-interface {v11}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$SelectionListener;->isMaxCountSelectedInPickerMode()Z

    move-result v3

    if-eqz v8, :cond_2

    if-nez v3, :cond_2

    iget-boolean v11, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/TimeViewDCSelectItemTask;->mOnCancelRequested:Z

    if-eqz v11, :cond_4

    :cond_2
    if-eqz v8, :cond_3

    if-nez v3, :cond_3

    iget-boolean v11, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/TimeViewDCSelectItemTask;->mOnCancelRequested:Z

    if-eqz v11, :cond_5

    :cond_3
    if-eq v8, p1, :cond_6

    const/4 v10, 0x1

    :goto_3
    invoke-virtual {p0, v10, p2}, Lcom/samsung/android/devicecog/gallery/selectiontask/TimeViewDCSelectItemTask;->sendDCResponseForSelectContentTypeWithUpdateCheckState(ZLjava/lang/String;)V

    goto :goto_0

    :cond_4
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    :cond_5
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_6
    const/4 v10, 0x0

    goto :goto_3
.end method


# virtual methods
.method protected selectAllWithParameter()V
    .locals 17

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/devicecog/gallery/selectiontask/TimeViewDCSelectItemTask;->mSelectionParam:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;

    if-nez v13, :cond_0

    :goto_0
    return-void

    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/devicecog/gallery/selectiontask/TimeViewDCSelectItemTask;->mSelectionListener:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$SelectionListener;

    invoke-interface {v13}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$SelectionListener;->getComposeMediaItemAdapter()Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    move-result-object v7

    if-nez v7, :cond_1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/devicecog/gallery/selectiontask/TimeViewDCSelectItemTask;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/devicecog/gallery/selectiontask/TimeViewDCSelectItemTask;->mSelectionParam:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;

    invoke-virtual {v14}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;->getExecutingStateId()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/samsung/android/devicecog/gallery/DCUtils;->requestCommonErrorNlg(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v10, 0x0

    invoke-virtual {v7}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->getCount()I

    move-result v2

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/devicecog/gallery/selectiontask/TimeViewDCSelectItemTask;->mSelectionParam:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;

    invoke-virtual {v13}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;->getContentType()Ljava/lang/String;

    move-result-object v3

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_4

    invoke-virtual {v7, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->getSubMediaSet(I)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v9

    if-eqz v9, :cond_3

    invoke-virtual {v9}, Lcom/sec/android/gallery3d/data/MediaSet;->getAllItems()Ljava/util/ArrayList;

    move-result-object v8

    if-eqz v8, :cond_3

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v11

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v11, :cond_3

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-static {v6, v3}, Lcom/samsung/android/devicecog/gallery/DCUtils;->isMatchContent(Lcom/sec/android/gallery3d/data/MediaItem;Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_7

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/devicecog/gallery/selectiontask/TimeViewDCSelectItemTask;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v13}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v13

    invoke-virtual {v13}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentLaunchMode()Lcom/sec/samsung/gallery/core/LaunchModeType;

    move-result-object v13

    sget-object v14, Lcom/sec/samsung/gallery/core/LaunchModeType;->ACTION_PICK:Lcom/sec/samsung/gallery/core/LaunchModeType;

    if-ne v13, v14, :cond_5

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/devicecog/gallery/selectiontask/TimeViewDCSelectItemTask;->mSelectionListener:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$SelectionListener;

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-interface {v13, v14}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$SelectionListener;->onEventHandleItemClick([Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    const/4 v5, 0x1

    add-int/lit8 v10, v10, 0x1

    :cond_2
    :goto_3
    if-nez v5, :cond_3

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/samsung/android/devicecog/gallery/selectiontask/TimeViewDCSelectItemTask;->mOnCancelRequested:Z

    if-eqz v13, :cond_7

    :cond_3
    if-nez v5, :cond_4

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/samsung/android/devicecog/gallery/selectiontask/TimeViewDCSelectItemTask;->mOnCancelRequested:Z

    if-eqz v13, :cond_8

    :cond_4
    if-lez v10, :cond_9

    const/4 v12, 0x1

    :goto_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v3}, Lcom/samsung/android/devicecog/gallery/selectiontask/TimeViewDCSelectItemTask;->sendDCResponseForSelectContentTypeWithUpdateCheckState(ZLjava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v1}, Lcom/samsung/android/devicecog/gallery/selectiontask/TimeViewDCSelectItemTask;->selectItemForBixby(Lcom/sec/android/gallery3d/data/MediaItem;I)Z

    move-result v13

    if-eqz v13, :cond_6

    add-int/lit8 v10, v10, 0x1

    :cond_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/devicecog/gallery/selectiontask/TimeViewDCSelectItemTask;->mSelectionListener:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$SelectionListener;

    invoke-interface {v13}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$SelectionListener;->isMaxCountSelectedInPickerMode()Z

    move-result v5

    goto :goto_3

    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    :cond_9
    const/4 v12, 0x0

    goto :goto_4
.end method

.method protected selectItemNormal()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/TimeViewDCSelectItemTask;->mSelectionParam:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/TimeViewDCSelectItemTask;->mSelectionParam:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;

    invoke-virtual {v0}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;->getSelectOrderType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/TimeViewDCSelectItemTask;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    iget-object v1, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/TimeViewDCSelectItemTask;->mSelectionParam:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;

    invoke-virtual {v1}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;->getExecutingStateId()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->FAILURE:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    invoke-static {v0, v1, v2}, Lcom/samsung/android/devicecog/gallery/DCUtils;->sendResponseDCState(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;)V

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/TimeViewDCSelectItemTask;->mSelectionParam:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;

    invoke-virtual {v0}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;->getSelectCount()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/TimeViewDCSelectItemTask;->mSelectionParam:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;

    invoke-virtual {v1}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;->getContentType()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/TimeViewDCSelectItemTask;->mSelectionParam:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;

    invoke-virtual {v2}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;->getExecutingStateId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/devicecog/gallery/selectiontask/TimeViewDCSelectItemTask;->selectLatestItemWithCountAndContentType(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/TimeViewDCSelectItemTask;->mSelectionParam:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;

    invoke-virtual {v0}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;->getSelectCount()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/TimeViewDCSelectItemTask;->mSelectionParam:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;

    invoke-virtual {v1}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;->getContentType()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/TimeViewDCSelectItemTask;->mSelectionParam:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;

    invoke-virtual {v2}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;->getExecutingStateId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/devicecog/gallery/selectiontask/TimeViewDCSelectItemTask;->selectOldestItemWithCountAndContentType(ILjava/lang/String;Ljava/lang/String;)V

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

    iget-object v1, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/TimeViewDCSelectItemTask;->mSelectionParam:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/TimeViewDCSelectItemTask;->mSelectionParam:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;

    invoke-virtual {v1}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;->getOrdinal()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/TimeViewDCSelectItemTask;->mSelectionParam:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;

    invoke-virtual {v1}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;->getContentType()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/TimeViewDCSelectItemTask;->mSelectionParam:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;

    invoke-virtual {v2}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;->getExecutingStateId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/devicecog/gallery/selectiontask/TimeViewDCSelectItemTask;->selectLatestItemWithOrdinalAndContentType(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/TimeViewDCSelectItemTask;->mSelectionParam:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;

    invoke-virtual {v2}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;->getContentType()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/TimeViewDCSelectItemTask;->mSelectionParam:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;

    invoke-virtual {v3}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;->getExecutingStateId()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/samsung/android/devicecog/gallery/selectiontask/TimeViewDCSelectItemTask;->selectOldestItemWithCountAndContentType(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected startDetailView()V
    .locals 2

    iget-object v1, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/TimeViewDCSelectItemTask;->mSelectionParam:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/TimeViewDCSelectItemTask;->mSelectionParam:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;

    invoke-virtual {v1}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;->getContentType()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/TimeViewDCSelectItemTask;->mSelectionParam:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;

    invoke-virtual {v1}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;->getSelectOrderType()I

    move-result v1

    invoke-static {v1}, Lcom/samsung/android/devicecog/gallery/DCUtils;->isLatest(I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, v0}, Lcom/samsung/android/devicecog/gallery/selectiontask/TimeViewDCSelectItemTask;->selectLatestDetailViewItemWithContentType(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, v0}, Lcom/samsung/android/devicecog/gallery/selectiontask/TimeViewDCSelectItemTask;->selectOldestDetailViewItemWithContentType(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected startDetailViewWithOrdinal()V
    .locals 2

    iget-object v1, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/TimeViewDCSelectItemTask;->mSelectionParam:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/TimeViewDCSelectItemTask;->mSelectionParam:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;

    invoke-virtual {v1}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;->getOrdinal()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/TimeViewDCSelectItemTask;->mSelectionParam:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;

    invoke-virtual {v1}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;->getContentType()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/devicecog/gallery/selectiontask/TimeViewDCSelectItemTask;->selectLatestDetailViewItemWithOrdinalAndContentType(Ljava/lang/String;I)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/TimeViewDCSelectItemTask;->mSelectionParam:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;

    invoke-virtual {v1}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;->getContentType()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/android/devicecog/gallery/selectiontask/TimeViewDCSelectItemTask;->selectOldestDetailViewItemWithContentType(Ljava/lang/String;)V

    goto :goto_0
.end method
