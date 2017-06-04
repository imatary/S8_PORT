.class public Lcom/samsung/android/devicecog/gallery/selectiontask/ChannelPhotoViewDCSelectItemTask;
.super Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask;
.source "ChannelPhotoViewDCSelectItemTask.java"


# direct methods
.method public constructor <init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask;-><init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)V

    return-void
.end method

.method private calcVisibleItemCount(Lcom/sec/android/gallery3d/app/MediaSetInterfaceInfo;)I
    .locals 9

    iget-object v8, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/ChannelPhotoViewDCSelectItemTask;->mSelectionListener:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$SelectionListener;

    invoke-interface {v8}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$SelectionListener;->getComposeMediaItemAdapter()Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    move-result-object v4

    if-nez v4, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v8, p1, Lcom/sec/android/gallery3d/app/MediaSetInterfaceInfo;->mVisibleStart:I

    invoke-static {v8}, Lcom/sec/android/gallery3d/util/GlIndex;->getGroupIndex(I)I

    move-result v5

    iget v8, p1, Lcom/sec/android/gallery3d/app/MediaSetInterfaceInfo;->mVisibleStart:I

    invoke-static {v8}, Lcom/sec/android/gallery3d/util/GlIndex;->getItemIndex(I)I

    move-result v7

    iget v8, p1, Lcom/sec/android/gallery3d/app/MediaSetInterfaceInfo;->mVisibleEnd:I

    invoke-static {v8}, Lcom/sec/android/gallery3d/util/GlIndex;->getGroupIndex(I)I

    move-result v1

    iget v8, p1, Lcom/sec/android/gallery3d/app/MediaSetInterfaceInfo;->mVisibleEnd:I

    invoke-static {v8}, Lcom/sec/android/gallery3d/util/GlIndex;->getItemIndex(I)I

    move-result v2

    if-ne v5, v1, :cond_2

    sub-int v8, v2, v7

    add-int/lit8 v0, v8, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v4, v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->getCount(I)I

    move-result v6

    sub-int v8, v6, v7

    add-int/2addr v8, v2

    add-int/lit8 v0, v8, 0x1

    add-int/lit8 v3, v5, 0x1

    :goto_1
    if-ge v3, v1, :cond_0

    invoke-virtual {v4, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->getCount(I)I

    move-result v8

    add-int/2addr v0, v8

    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method private selectDetailViewItemWithOrdinalAndContentType(Ljava/lang/String;I)V
    .locals 19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/devicecog/gallery/selectiontask/ChannelPhotoViewDCSelectItemTask;->mSelectionListener:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$SelectionListener;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$SelectionListener;->getComposeMediaItemAdapter()Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    move-result-object v11

    if-nez v11, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/devicecog/gallery/selectiontask/ChannelPhotoViewDCSelectItemTask;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/devicecog/gallery/selectiontask/ChannelPhotoViewDCSelectItemTask;->mSelectionParam:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;

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

    invoke-direct {v0, v7}, Lcom/samsung/android/devicecog/gallery/selectiontask/ChannelPhotoViewDCSelectItemTask;->calcVisibleItemCount(Lcom/sec/android/gallery3d/app/MediaSetInterfaceInfo;)I

    move-result v17

    move/from16 v0, v17

    move/from16 v1, p2

    if-ge v0, v1, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/devicecog/gallery/selectiontask/ChannelPhotoViewDCSelectItemTask;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

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

    iget-object v0, v0, Lcom/samsung/android/devicecog/gallery/selectiontask/ChannelPhotoViewDCSelectItemTask;->mSelectionListener:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$SelectionListener;

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

    iget-boolean v0, v0, Lcom/samsung/android/devicecog/gallery/selectiontask/ChannelPhotoViewDCSelectItemTask;->mOnCancelRequested:Z

    move/from16 v17, v0

    if-eqz v17, :cond_a

    :cond_8
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/devicecog/gallery/selectiontask/ChannelPhotoViewDCSelectItemTask;->mOnCancelRequested:Z

    move/from16 v17, v0

    if-eqz v17, :cond_b

    :cond_9
    invoke-virtual/range {p0 .. p1}, Lcom/samsung/android/devicecog/gallery/selectiontask/ChannelPhotoViewDCSelectItemTask;->sendDCResponseForEnterDetailViewIfContentTypeNotMatched(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_a
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_b
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private selectItemForBixby(Lcom/sec/android/gallery3d/data/MediaItem;I)V
    .locals 5

    iget-object v3, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/ChannelPhotoViewDCSelectItemTask;->mSelectionListener:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$SelectionListener;

    invoke-interface {v3}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$SelectionListener;->getComposeMediaItemAdapter()Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v3, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/ChannelPhotoViewDCSelectItemTask;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    iget-object v4, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/ChannelPhotoViewDCSelectItemTask;->mSelectionParam:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;

    invoke-virtual {v4}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;->getExecutingStateId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/devicecog/gallery/DCUtils;->requestCommonErrorNlg(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0, p2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->getSubMediaSet(I)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v1

    if-eqz v1, :cond_1

    if-nez p1, :cond_2

    :cond_1
    iget-object v3, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/ChannelPhotoViewDCSelectItemTask;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    iget-object v4, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/ChannelPhotoViewDCSelectItemTask;->mSelectionParam:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;

    invoke-virtual {v4}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;->getExecutingStateId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/devicecog/gallery/DCUtils;->requestCommonErrorNlg(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/ChannelPhotoViewDCSelectItemTask;->mSelectionListener:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$SelectionListener;

    invoke-interface {v3, v1, p1}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$SelectionListener;->addItemToSelectionManager(Lcom/sec/android/gallery3d/data/MediaSet;Lcom/sec/android/gallery3d/data/MediaItem;)V

    iget-object v3, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/ChannelPhotoViewDCSelectItemTask;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/StateManager;->getTopState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/ActivityState;->getDCScreenStateId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/ChannelPhotoViewDCSelectItemTask;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/StateManager;->getTopState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Lcom/sec/android/gallery3d/app/ActivityState;->logDCSelectedView(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method private selectItemWithCount(Lcom/sec/android/gallery3d/data/MediaItem;II)I
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/devicecog/gallery/selectiontask/ChannelPhotoViewDCSelectItemTask;->selectItemForBixby(Lcom/sec/android/gallery3d/data/MediaItem;I)V

    add-int/lit8 p3, p3, -0x1

    return p3
.end method

.method private selectItemWithOrdinalAndContentType(ILjava/lang/String;Ljava/lang/String;)V
    .locals 20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/devicecog/gallery/selectiontask/ChannelPhotoViewDCSelectItemTask;->mSelectionListener:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$SelectionListener;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$SelectionListener;->getComposeMediaItemAdapter()Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    move-result-object v12

    if-nez v12, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/devicecog/gallery/selectiontask/ChannelPhotoViewDCSelectItemTask;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Lcom/samsung/android/devicecog/gallery/DCUtils;->requestCommonErrorNlg(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    new-instance v8, Lcom/sec/android/gallery3d/app/MediaSetInterfaceInfo;

    invoke-direct {v8}, Lcom/sec/android/gallery3d/app/MediaSetInterfaceInfo;-><init>()V

    invoke-virtual {v12, v8}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->getVisibleInfo(Lcom/sec/android/gallery3d/app/MediaSetInterfaceInfo;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/samsung/android/devicecog/gallery/selectiontask/ChannelPhotoViewDCSelectItemTask;->calcVisibleItemCount(Lcom/sec/android/gallery3d/app/MediaSetInterfaceInfo;)I

    move-result v18

    move/from16 v0, v18

    move/from16 v1, p1

    if-ge v0, v1, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/devicecog/gallery/selectiontask/ChannelPhotoViewDCSelectItemTask;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v18, v0

    const-string/jumbo v19, "StoryDetailSelectedView"

    invoke-static/range {v18 .. v19}, Lcom/samsung/android/devicecog/gallery/DCUtils;->requestOrdinalFailNlg(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget v0, v8, Lcom/sec/android/gallery3d/app/MediaSetInterfaceInfo;->mVisibleStart:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/sec/android/gallery3d/util/GlIndex;->getGroupIndex(I)I

    move-result v14

    iget v0, v8, Lcom/sec/android/gallery3d/app/MediaSetInterfaceInfo;->mVisibleStart:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/sec/android/gallery3d/util/GlIndex;->getItemIndex(I)I

    move-result v15

    iget v0, v8, Lcom/sec/android/gallery3d/app/MediaSetInterfaceInfo;->mVisibleEnd:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/sec/android/gallery3d/util/GlIndex;->getGroupIndex(I)I

    move-result v5

    iget v0, v8, Lcom/sec/android/gallery3d/app/MediaSetInterfaceInfo;->mVisibleEnd:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/sec/android/gallery3d/util/GlIndex;->getItemIndex(I)I

    move-result v6

    const/4 v4, 0x0

    move v3, v14

    :goto_1
    if-gt v3, v5, :cond_4

    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v12, v3, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->getAllItem(IZ)Ljava/util/ArrayList;

    move-result-object v13

    if-eqz v13, :cond_3

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v16

    if-ne v3, v14, :cond_5

    const/4 v10, 0x1

    :goto_2
    if-ne v3, v5, :cond_6

    const/4 v9, 0x1

    :goto_3
    if-eqz v10, :cond_7

    move v7, v15

    :goto_4
    if-eqz v9, :cond_8

    move/from16 v18, v6

    :goto_5
    move/from16 v0, v18

    if-gt v7, v0, :cond_3

    invoke-virtual {v13, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/sec/android/gallery3d/data/MediaItem;

    move-object/from16 v0, p2

    invoke-static {v11, v0}, Lcom/samsung/android/devicecog/gallery/DCUtils;->isMatchContent(Lcom/sec/android/gallery3d/data/MediaItem;Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_2

    add-int/lit8 v4, v4, 0x1

    :cond_2
    move/from16 v0, p1

    if-ne v0, v4, :cond_9

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v3}, Lcom/samsung/android/devicecog/gallery/selectiontask/ChannelPhotoViewDCSelectItemTask;->selectItemForBixby(Lcom/sec/android/gallery3d/data/MediaItem;I)V

    :cond_3
    move/from16 v0, p1

    if-eq v0, v4, :cond_4

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/devicecog/gallery/selectiontask/ChannelPhotoViewDCSelectItemTask;->mOnCancelRequested:Z

    move/from16 v18, v0

    if-eqz v18, :cond_a

    :cond_4
    const-string/jumbo v18, "ChanPhotoSelectTask"

    const-string/jumbo v19, "selectOldestItemWithCountAndContentType"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v0, p1

    if-ne v4, v0, :cond_b

    const/16 v17, 0x1

    :goto_6
    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/devicecog/gallery/selectiontask/ChannelPhotoViewDCSelectItemTask;->sendDCResponseForSelectContentTypeWithUpdateCheckState(ZLjava/lang/String;)V

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
    add-int/lit8 v18, v16, -0x1

    goto :goto_5

    :cond_9
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/devicecog/gallery/selectiontask/ChannelPhotoViewDCSelectItemTask;->mOnCancelRequested:Z

    move/from16 v18, v0

    if-nez v18, :cond_3

    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_a
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_b
    const/16 v17, 0x0

    goto :goto_6
.end method

.method private selectLatestDetailViewItemWithContentType(Ljava/lang/String;)V
    .locals 10

    iget-object v8, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/ChannelPhotoViewDCSelectItemTask;->mSelectionListener:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$SelectionListener;

    invoke-interface {v8}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$SelectionListener;->getComposeMediaItemAdapter()Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    move-result-object v4

    if-nez v4, :cond_0

    iget-object v8, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/ChannelPhotoViewDCSelectItemTask;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    iget-object v9, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/ChannelPhotoViewDCSelectItemTask;->mSelectionParam:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;

    invoke-virtual {v9}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;->getExecutingStateId()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/samsung/android/devicecog/gallery/DCUtils;->requestCommonErrorNlg(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->getCount()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    :goto_1
    if-ltz v1, :cond_3

    invoke-virtual {v4, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->getSubMediaSet(I)Lcom/sec/android/gallery3d/data/MediaSet;

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

    iget-object v8, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/ChannelPhotoViewDCSelectItemTask;->mSelectionListener:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$SelectionListener;

    invoke-interface {v8, v1, v2}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$SelectionListener;->startDetailView(II)V

    goto :goto_0

    :cond_1
    iget-boolean v8, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/ChannelPhotoViewDCSelectItemTask;->mOnCancelRequested:Z

    if-eqz v8, :cond_4

    :cond_2
    iget-boolean v8, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/ChannelPhotoViewDCSelectItemTask;->mOnCancelRequested:Z

    if-eqz v8, :cond_5

    :cond_3
    invoke-virtual {p0, p1}, Lcom/samsung/android/devicecog/gallery/selectiontask/ChannelPhotoViewDCSelectItemTask;->sendDCResponseForEnterDetailViewIfContentTypeNotMatched(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    :cond_5
    add-int/lit8 v1, v1, -0x1

    goto :goto_1
.end method

.method private selectLatestItemWithCountAndContentType(ILjava/lang/String;Ljava/lang/String;)V
    .locals 11

    iget-object v10, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/ChannelPhotoViewDCSelectItemTask;->mSelectionListener:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$SelectionListener;

    invoke-interface {v10}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$SelectionListener;->getComposeMediaItemAdapter()Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    move-result-object v4

    if-nez v4, :cond_0

    iget-object v10, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/ChannelPhotoViewDCSelectItemTask;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v10, p3}, Lcom/samsung/android/devicecog/gallery/DCUtils;->requestCommonErrorNlg(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    move v7, p1

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

    move-result v8

    add-int/lit8 v2, v8, -0x1

    :goto_2
    if-ltz v2, :cond_2

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-static {v3, p2}, Lcom/samsung/android/devicecog/gallery/DCUtils;->isMatchContent(Lcom/sec/android/gallery3d/data/MediaItem;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-direct {p0, v3, v0, v7}, Lcom/samsung/android/devicecog/gallery/selectiontask/ChannelPhotoViewDCSelectItemTask;->selectItemWithCount(Lcom/sec/android/gallery3d/data/MediaItem;II)I

    move-result v7

    :cond_1
    if-eqz v7, :cond_2

    iget-boolean v10, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/ChannelPhotoViewDCSelectItemTask;->mOnCancelRequested:Z

    if-eqz v10, :cond_4

    :cond_2
    if-eqz v7, :cond_3

    iget-boolean v10, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/ChannelPhotoViewDCSelectItemTask;->mOnCancelRequested:Z

    if-eqz v10, :cond_5

    :cond_3
    if-eq v7, p1, :cond_6

    const/4 v9, 0x1

    :goto_3
    invoke-virtual {p0, v9, p2}, Lcom/samsung/android/devicecog/gallery/selectiontask/ChannelPhotoViewDCSelectItemTask;->sendDCResponseForSelectContentTypeWithUpdateCheckState(ZLjava/lang/String;)V

    goto :goto_0

    :cond_4
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    :cond_5
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_6
    const/4 v9, 0x0

    goto :goto_3
.end method

.method private selectOldestDetailViewItemWithContentType(Ljava/lang/String;)V
    .locals 10

    iget-object v8, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/ChannelPhotoViewDCSelectItemTask;->mSelectionListener:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$SelectionListener;

    invoke-interface {v8}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$SelectionListener;->getComposeMediaItemAdapter()Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    move-result-object v4

    if-nez v4, :cond_0

    iget-object v8, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/ChannelPhotoViewDCSelectItemTask;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    iget-object v9, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/ChannelPhotoViewDCSelectItemTask;->mSelectionParam:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;

    invoke-virtual {v9}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;->getExecutingStateId()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/samsung/android/devicecog/gallery/DCUtils;->requestCommonErrorNlg(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->getCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_3

    invoke-virtual {v4, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->getSubMediaSet(I)Lcom/sec/android/gallery3d/data/MediaSet;

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

    iget-object v8, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/ChannelPhotoViewDCSelectItemTask;->mSelectionListener:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$SelectionListener;

    invoke-interface {v8, v1, v2}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$SelectionListener;->startDetailView(II)V

    goto :goto_0

    :cond_1
    iget-boolean v8, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/ChannelPhotoViewDCSelectItemTask;->mOnCancelRequested:Z

    if-eqz v8, :cond_4

    :cond_2
    iget-boolean v8, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/ChannelPhotoViewDCSelectItemTask;->mOnCancelRequested:Z

    if-eqz v8, :cond_5

    :cond_3
    invoke-virtual {p0, p1}, Lcom/samsung/android/devicecog/gallery/selectiontask/ChannelPhotoViewDCSelectItemTask;->sendDCResponseForEnterDetailViewIfContentTypeNotMatched(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private selectOldestItemWithCountAndContentType(ILjava/lang/String;Ljava/lang/String;)V
    .locals 11

    iget-object v10, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/ChannelPhotoViewDCSelectItemTask;->mSelectionListener:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$SelectionListener;

    invoke-interface {v10}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$SelectionListener;->getComposeMediaItemAdapter()Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    move-result-object v4

    if-nez v4, :cond_0

    iget-object v10, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/ChannelPhotoViewDCSelectItemTask;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v10, p3}, Lcom/samsung/android/devicecog/gallery/DCUtils;->requestCommonErrorNlg(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    move v7, p1

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

    move-result v8

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v8, :cond_2

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-static {v3, p2}, Lcom/samsung/android/devicecog/gallery/DCUtils;->isMatchContent(Lcom/sec/android/gallery3d/data/MediaItem;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-direct {p0, v3, v0, v7}, Lcom/samsung/android/devicecog/gallery/selectiontask/ChannelPhotoViewDCSelectItemTask;->selectItemWithCount(Lcom/sec/android/gallery3d/data/MediaItem;II)I

    move-result v7

    :cond_1
    if-eqz v7, :cond_2

    iget-boolean v10, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/ChannelPhotoViewDCSelectItemTask;->mOnCancelRequested:Z

    if-eqz v10, :cond_4

    :cond_2
    if-eqz v7, :cond_3

    iget-boolean v10, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/ChannelPhotoViewDCSelectItemTask;->mOnCancelRequested:Z

    if-eqz v10, :cond_5

    :cond_3
    if-eq v7, p1, :cond_6

    const/4 v9, 0x1

    :goto_3
    invoke-virtual {p0, v9, p2}, Lcom/samsung/android/devicecog/gallery/selectiontask/ChannelPhotoViewDCSelectItemTask;->sendDCResponseForSelectContentTypeWithUpdateCheckState(ZLjava/lang/String;)V

    goto :goto_0

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_6
    const/4 v9, 0x0

    goto :goto_3
.end method


# virtual methods
.method protected selectAllWithParameter()V
    .locals 11

    iget-object v9, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/ChannelPhotoViewDCSelectItemTask;->mSelectionParam:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;

    if-nez v9, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v9, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/ChannelPhotoViewDCSelectItemTask;->mSelectionListener:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$SelectionListener;

    invoke-interface {v9}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$SelectionListener;->getComposeMediaItemAdapter()Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    move-result-object v4

    if-nez v4, :cond_1

    iget-object v9, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/ChannelPhotoViewDCSelectItemTask;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    iget-object v10, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/ChannelPhotoViewDCSelectItemTask;->mSelectionParam:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;

    invoke-virtual {v10}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;->getExecutingStateId()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/samsung/android/devicecog/gallery/DCUtils;->requestCommonErrorNlg(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v7, 0x0

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->getCount()I

    move-result v1

    iget-object v9, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/ChannelPhotoViewDCSelectItemTask;->mSelectionParam:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;

    invoke-virtual {v9}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;->getContentType()Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_5

    invoke-virtual {v4, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->getSubMediaSet(I)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v6

    if-eqz v6, :cond_4

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/data/MediaSet;->getAllItems()Ljava/util/ArrayList;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-static {v3, v2}, Lcom/samsung/android/devicecog/gallery/DCUtils;->isMatchContent(Lcom/sec/android/gallery3d/data/MediaItem;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-direct {p0, v3, v0}, Lcom/samsung/android/devicecog/gallery/selectiontask/ChannelPhotoViewDCSelectItemTask;->selectItemForBixby(Lcom/sec/android/gallery3d/data/MediaItem;I)V

    add-int/lit8 v7, v7, 0x1

    :cond_3
    iget-boolean v10, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/ChannelPhotoViewDCSelectItemTask;->mOnCancelRequested:Z

    if-eqz v10, :cond_2

    :cond_4
    iget-boolean v9, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/ChannelPhotoViewDCSelectItemTask;->mOnCancelRequested:Z

    if-eqz v9, :cond_6

    :cond_5
    if-lez v7, :cond_7

    const/4 v8, 0x1

    :goto_2
    invoke-virtual {p0, v8, v2}, Lcom/samsung/android/devicecog/gallery/selectiontask/ChannelPhotoViewDCSelectItemTask;->sendDCResponseForSelectContentTypeWithUpdateCheckState(ZLjava/lang/String;)V

    goto :goto_0

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_7
    const/4 v8, 0x0

    goto :goto_2
.end method

.method protected selectItemNormal()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/ChannelPhotoViewDCSelectItemTask;->mSelectionParam:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/ChannelPhotoViewDCSelectItemTask;->mSelectionParam:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;

    invoke-virtual {v0}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;->getSelectOrderType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/ChannelPhotoViewDCSelectItemTask;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    iget-object v1, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/ChannelPhotoViewDCSelectItemTask;->mSelectionParam:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;

    invoke-virtual {v1}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;->getExecutingStateId()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->FAILURE:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    invoke-static {v0, v1, v2}, Lcom/samsung/android/devicecog/gallery/DCUtils;->sendResponseDCState(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;)V

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/ChannelPhotoViewDCSelectItemTask;->mSelectionParam:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;

    invoke-virtual {v0}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;->getSelectCount()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/ChannelPhotoViewDCSelectItemTask;->mSelectionParam:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;

    invoke-virtual {v1}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;->getContentType()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/ChannelPhotoViewDCSelectItemTask;->mSelectionParam:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;

    invoke-virtual {v2}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;->getExecutingStateId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/devicecog/gallery/selectiontask/ChannelPhotoViewDCSelectItemTask;->selectLatestItemWithCountAndContentType(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/ChannelPhotoViewDCSelectItemTask;->mSelectionParam:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;

    invoke-virtual {v0}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;->getSelectCount()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/ChannelPhotoViewDCSelectItemTask;->mSelectionParam:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;

    invoke-virtual {v1}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;->getContentType()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/ChannelPhotoViewDCSelectItemTask;->mSelectionParam:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;

    invoke-virtual {v2}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;->getExecutingStateId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/devicecog/gallery/selectiontask/ChannelPhotoViewDCSelectItemTask;->selectOldestItemWithCountAndContentType(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected selectItemWithOrdinal()V
    .locals 4

    iget-object v1, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/ChannelPhotoViewDCSelectItemTask;->mSelectionParam:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/ChannelPhotoViewDCSelectItemTask;->mSelectionParam:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;

    invoke-virtual {v1}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;->getOrdinal()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/ChannelPhotoViewDCSelectItemTask;->mSelectionParam:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;

    invoke-virtual {v1}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;->getContentType()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/ChannelPhotoViewDCSelectItemTask;->mSelectionParam:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;

    invoke-virtual {v2}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;->getExecutingStateId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/devicecog/gallery/selectiontask/ChannelPhotoViewDCSelectItemTask;->selectItemWithOrdinalAndContentType(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/ChannelPhotoViewDCSelectItemTask;->mSelectionParam:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;

    invoke-virtual {v2}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;->getContentType()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/ChannelPhotoViewDCSelectItemTask;->mSelectionParam:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;

    invoke-virtual {v3}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;->getExecutingStateId()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/samsung/android/devicecog/gallery/selectiontask/ChannelPhotoViewDCSelectItemTask;->selectLatestItemWithCountAndContentType(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected startDetailView()V
    .locals 2

    iget-object v1, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/ChannelPhotoViewDCSelectItemTask;->mSelectionParam:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/ChannelPhotoViewDCSelectItemTask;->mSelectionParam:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;

    invoke-virtual {v1}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;->getContentType()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/ChannelPhotoViewDCSelectItemTask;->mSelectionParam:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;

    invoke-virtual {v1}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;->getSelectOrderType()I

    move-result v1

    invoke-static {v1}, Lcom/samsung/android/devicecog/gallery/DCUtils;->isLatest(I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, v0}, Lcom/samsung/android/devicecog/gallery/selectiontask/ChannelPhotoViewDCSelectItemTask;->selectLatestDetailViewItemWithContentType(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, v0}, Lcom/samsung/android/devicecog/gallery/selectiontask/ChannelPhotoViewDCSelectItemTask;->selectOldestDetailViewItemWithContentType(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected startDetailViewWithOrdinal()V
    .locals 2

    iget-object v1, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/ChannelPhotoViewDCSelectItemTask;->mSelectionParam:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/ChannelPhotoViewDCSelectItemTask;->mSelectionParam:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;

    invoke-virtual {v1}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;->getOrdinal()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/ChannelPhotoViewDCSelectItemTask;->mSelectionParam:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;

    invoke-virtual {v1}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;->getContentType()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/devicecog/gallery/selectiontask/ChannelPhotoViewDCSelectItemTask;->selectDetailViewItemWithOrdinalAndContentType(Ljava/lang/String;I)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/ChannelPhotoViewDCSelectItemTask;->mSelectionParam:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;

    invoke-virtual {v1}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;->getContentType()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/android/devicecog/gallery/selectiontask/ChannelPhotoViewDCSelectItemTask;->selectOldestDetailViewItemWithContentType(Ljava/lang/String;)V

    goto :goto_0
.end method
