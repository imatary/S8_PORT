.class public Lcom/samsung/android/devicecog/gallery/viewstatehandler/ChannelViewDCHandler;
.super Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;
.source "ChannelViewDCHandler.java"


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

    sput-object v0, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ChannelViewDCHandler;->SELECTED_STATE:[Ljava/lang/String;

    return-void
.end method

.method private handleChannelDetailView(Ljava/lang/String;Ljava/util/List;)V
    .locals 13
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

    const/4 v10, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v5, 0x0

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_0
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdk/bixby/data/Parameter;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/samsung/android/sdk/bixby/data/Parameter;->getParameterName()Ljava/lang/String;

    move-result-object v3

    const/4 v9, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v12

    sparse-switch v12, :sswitch_data_0

    :cond_1
    :goto_1
    packed-switch v9, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {v2}, Lcom/samsung/android/sdk/bixby/data/Parameter;->getSlotValue()Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    :sswitch_0
    const-string/jumbo v12, "storyName"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    move v9, v10

    goto :goto_1

    :sswitch_1
    const-string/jumbo v12, "selectOrderType"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    const/4 v9, 0x1

    goto :goto_1

    :sswitch_2
    const-string/jumbo v12, "shareType"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    const/4 v9, 0x2

    goto :goto_1

    :sswitch_3
    const-string/jumbo v12, "ordinal"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    const/4 v9, 0x3

    goto :goto_1

    :pswitch_1
    invoke-virtual {v2}, Lcom/samsung/android/sdk/bixby/data/Parameter;->getSlotValue()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v5, v9}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ChannelViewDCHandler;->getSelectOrderType(ILjava/lang/String;)I

    move-result v5

    goto :goto_0

    :pswitch_2
    invoke-virtual {v2}, Lcom/samsung/android/sdk/bixby/data/Parameter;->getSlotValue()Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    :pswitch_3
    invoke-virtual {v2}, Lcom/samsung/android/sdk/bixby/data/Parameter;->getSlotValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ChannelViewDCHandler;->checkValidOrdinalParam(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_3

    invoke-static {}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter$Builder;->create()Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;

    move-result-object v9

    invoke-virtual {v9, p1}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;->setExecutingStateId(Ljava/lang/String;)Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;

    move-result-object v9

    invoke-virtual {v9, v0}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;->setOrdinal(I)Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;

    move-result-object v6

    invoke-static {}, Lcom/sec/samsung/gallery/core/Event$Builder;->create()Lcom/sec/samsung/gallery/core/Event;

    move-result-object v9

    sget v10, Lcom/sec/samsung/gallery/core/Event;->EVENT_DC_CMD_START_CHANNELPHOTOVIEW:I

    invoke-virtual {v9, v10}, Lcom/sec/samsung/gallery/core/Event;->setType(I)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v9

    invoke-virtual {v9, v6}, Lcom/sec/samsung/gallery/core/Event;->setData(Ljava/lang/Object;)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ChannelViewDCHandler;->notifyObservers(Ljava/lang/Object;)V

    :goto_2
    return-void

    :cond_3
    invoke-static {v8}, Lcom/samsung/android/devicecog/gallery/DCUtils;->isValidParam(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_4

    invoke-static {v7}, Lcom/samsung/android/devicecog/gallery/DCUtils;->isValidParam(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_4

    if-eqz v5, :cond_5

    :cond_4
    invoke-static {}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter$Builder;->create()Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;

    move-result-object v9

    invoke-virtual {v9, p1}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;->setExecutingStateId(Ljava/lang/String;)Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;

    move-result-object v9

    invoke-virtual {v9, v8}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;->setStoryName(Ljava/lang/String;)Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;

    move-result-object v9

    invoke-virtual {v9, v5}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;->setSelectOrderType(I)Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;

    move-result-object v9

    invoke-virtual {v9, v7}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;->setSharedType(Ljava/lang/String;)Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;

    move-result-object v6

    invoke-static {}, Lcom/sec/samsung/gallery/core/Event$Builder;->create()Lcom/sec/samsung/gallery/core/Event;

    move-result-object v9

    sget v10, Lcom/sec/samsung/gallery/core/Event;->EVENT_DC_CMD_START_CHANNELPHOTOVIEW:I

    invoke-virtual {v9, v10}, Lcom/sec/samsung/gallery/core/Event;->setType(I)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v9

    invoke-virtual {v9, v6}, Lcom/sec/samsung/gallery/core/Event;->setData(Ljava/lang/Object;)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ChannelViewDCHandler;->notifyObservers(Ljava/lang/Object;)V

    goto :goto_2

    :cond_5
    iget-object v9, p0, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ChannelViewDCHandler;->mActivity:Landroid/app/Activity;

    const v11, 0x7f0a0792

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v9, v11, v10}, Lcom/samsung/android/devicecog/gallery/controller/DCNlgManager;->getNlgRequestInfo(Landroid/content/Context;I[Ljava/lang/Object;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v4

    iget-object v9, p0, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ChannelViewDCHandler;->mActivity:Landroid/app/Activity;

    sget-object v10, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->NLG_ONLY:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    invoke-static {v9, p1, v10, v4}, Lcom/samsung/android/devicecog/gallery/DCUtils;->sendResponseDCState(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;)V

    goto :goto_2

    :sswitch_data_0
    .sparse-switch
        -0x5e4bb447 -> :sswitch_2
        -0x47f1458f -> :sswitch_3
        -0x37be05f4 -> :sswitch_1
        0x65f06520 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private handleFilterBy(Ljava/util/List;)V
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

    const-string/jumbo v0, "All stories"

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/bixby/data/Parameter;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/samsung/android/sdk/bixby/data/Parameter;->getParameterName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    :cond_1
    :goto_1
    packed-switch v3, :pswitch_data_1

    goto :goto_0

    :pswitch_0
    invoke-virtual {v1}, Lcom/samsung/android/sdk/bixby/data/Parameter;->getSlotValue()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    const-string/jumbo v5, "FilterBy"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/sec/samsung/gallery/core/Event$Builder;->create()Lcom/sec/samsung/gallery/core/Event;

    move-result-object v3

    sget v4, Lcom/sec/samsung/gallery/core/Event;->EVENT_DC_CMD_FILTER_BY:I

    invoke-virtual {v3, v4}, Lcom/sec/samsung/gallery/core/Event;->setType(I)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/sec/samsung/gallery/core/Event;->setData(Ljava/lang/Object;)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ChannelViewDCHandler;->notifyObservers(Ljava/lang/Object;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch -0x2721c5f1
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private handleStoryListSelectedView(Ljava/lang/String;Ljava/util/List;)V
    .locals 13
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

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    if-eqz p2, :cond_2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/sdk/bixby/data/Parameter;

    if-eqz v9, :cond_0

    invoke-virtual {v9}, Lcom/samsung/android/sdk/bixby/data/Parameter;->getParameterName()Ljava/lang/String;

    move-result-object v10

    const/4 v0, -0x1

    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    move-result v12

    sparse-switch v12, :sswitch_data_0

    :cond_1
    :goto_1
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {v9}, Lcom/samsung/android/sdk/bixby/data/Parameter;->getSlotValue()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :sswitch_0
    const-string/jumbo v12, "storyName"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_1
    const-string/jumbo v12, "selectAll"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_2
    const-string/jumbo v12, "selectCount"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_3
    const-string/jumbo v12, "selectOrderType"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_4
    const-string/jumbo v12, "shareType"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_5
    const-string/jumbo v12, "ordinal"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    const/4 v0, 0x5

    goto :goto_1

    :pswitch_1
    invoke-virtual {v9}, Lcom/samsung/android/sdk/bixby/data/Parameter;->getSlotValue()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :pswitch_2
    invoke-virtual {v9}, Lcom/samsung/android/sdk/bixby/data/Parameter;->getSlotValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ChannelViewDCHandler;->getSelectCount(Ljava/lang/String;)I

    move-result v4

    goto :goto_0

    :pswitch_3
    invoke-virtual {v9}, Lcom/samsung/android/sdk/bixby/data/Parameter;->getSlotValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v5, v0}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ChannelViewDCHandler;->getSelectOrderType(ILjava/lang/String;)I

    move-result v5

    goto :goto_0

    :pswitch_4
    invoke-virtual {v9}, Lcom/samsung/android/sdk/bixby/data/Parameter;->getSlotValue()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :pswitch_5
    invoke-virtual {v9}, Lcom/samsung/android/sdk/bixby/data/Parameter;->getSlotValue()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ChannelViewDCHandler;->checkValidOrdinalParam(Ljava/lang/String;)I

    move-result v7

    goto/16 :goto_0

    :cond_2
    invoke-static {v2}, Lcom/samsung/android/devicecog/gallery/DCUtils;->isValidParam(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {v3}, Lcom/samsung/android/devicecog/gallery/DCUtils;->isValidParam(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    invoke-static {v6}, Lcom/samsung/android/devicecog/gallery/DCUtils;->isValidParam(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    if-nez v5, :cond_4

    if-eqz v7, :cond_5

    :cond_4
    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ChannelViewDCHandler;->processStoryListSelectedView(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;I)V

    :goto_2
    return-void

    :cond_5
    iget-object v0, p0, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ChannelViewDCHandler;->mActivity:Landroid/app/Activity;

    const v1, 0x7f0a0785

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {v0, v1, v12}, Lcom/samsung/android/devicecog/gallery/controller/DCNlgManager;->getNlgRequestInfo(Landroid/content/Context;I[Ljava/lang/Object;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v11

    iget-object v0, p0, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ChannelViewDCHandler;->mActivity:Landroid/app/Activity;

    sget-object v1, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->NLG_ONLY:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    invoke-static {v0, p1, v1, v11}, Lcom/samsung/android/devicecog/gallery/DCUtils;->sendResponseDCState(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;)V

    goto :goto_2

    nop

    :sswitch_data_0
    .sparse-switch
        -0x664824fb -> :sswitch_1
        -0x5e4bb447 -> :sswitch_4
        -0x47f1458f -> :sswitch_5
        -0x37be05f4 -> :sswitch_3
        0xb4ae973 -> :sswitch_2
        0x65f06520 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private hasShareType(Ljava/lang/String;)Z
    .locals 1

    const-string/jumbo v0, "shared"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private makeNlgForFilterBy(Ljava/lang/String;)V
    .locals 4

    iget-object v1, p0, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ChannelViewDCHandler;->mActivity:Landroid/app/Activity;

    const v2, 0x7f0a07e6

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/samsung/android/devicecog/gallery/controller/DCNlgManager;->getNlgRequestInfo(Landroid/content/Context;I[Ljava/lang/Object;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ChannelViewDCHandler;->mActivity:Landroid/app/Activity;

    sget-object v2, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->SUCCESS:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    invoke-static {v1, p1, v2, v0}, Lcom/samsung/android/devicecog/gallery/DCUtils;->sendResponseDCState(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;)V

    return-void
.end method

.method private processStoryListSelectedView(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;I)V
    .locals 3

    invoke-static {p3}, Lcom/samsung/android/devicecog/gallery/DCUtils;->isValidParam(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, p6}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ChannelViewDCHandler;->hasShareType(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/sec/samsung/gallery/core/Event$Builder;->create()Lcom/sec/samsung/gallery/core/Event;

    move-result-object v1

    sget v2, Lcom/sec/samsung/gallery/core/Event;->EVENT_DC_CMD_SELECT_SHARED_STORY_ALL:I

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/core/Event;->setType(I)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ChannelViewDCHandler;->notifyObservers(Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/sec/samsung/gallery/core/Event$Builder;->create()Lcom/sec/samsung/gallery/core/Event;

    move-result-object v1

    sget v2, Lcom/sec/samsung/gallery/core/Event;->EVENT_SELECT_ALL:I

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/core/Event;->setType(I)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ChannelViewDCHandler;->notifyObservers(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter$Builder;->create()Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;->setExecutingStateId(Ljava/lang/String;)Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;->setStoryName(Ljava/lang/String;)Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;

    move-result-object v1

    invoke-virtual {v1, p6}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;->setSharedType(Ljava/lang/String;)Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;

    move-result-object v1

    invoke-virtual {v1, p4}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;->setSelectCount(I)Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;

    move-result-object v1

    invoke-virtual {v1, p5}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;->setSelectOrderType(I)Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;

    move-result-object v1

    invoke-virtual {v1, p7}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;->setOrdinal(I)Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;

    move-result-object v0

    invoke-static {}, Lcom/sec/samsung/gallery/core/Event$Builder;->create()Lcom/sec/samsung/gallery/core/Event;

    move-result-object v1

    sget v2, Lcom/sec/samsung/gallery/core/Event;->EVENT_DC_CMD_SELECT_ITEM:I

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/core/Event;->setType(I)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/samsung/gallery/core/Event;->setData(Ljava/lang/Object;)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ChannelViewDCHandler;->notifyObservers(Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method protected getNlgRequestInfoForSelectedView(Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;
    .locals 6

    if-nez p1, :cond_1

    const/4 v1, 0x0

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ChannelViewDCHandler;->getScreenStateId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/devicecog/gallery/nlgidmap/DCSelectedViewNlgIdMap;->getNlgId(Ljava/lang/String;)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ChannelViewDCHandler;->mActivity:Landroid/app/Activity;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "StoryName"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v2, v0, v3}, Lcom/samsung/android/devicecog/gallery/controller/DCNlgManager;->getNlgRequestInfo(Landroid/content/Context;I[Ljava/lang/Object;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v1

    goto :goto_0
.end method

.method public getScreenStateId()Ljava/lang/String;
    .locals 3

    iget-object v2, p0, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ChannelViewDCHandler;->mActivity:Landroid/app/Activity;

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

    const-string/jumbo v0, "StoryListSelectedView"

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "StoryListEmptySelectedView"

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "StoryListView"

    goto :goto_0
.end method

.method public getSelectedStateArray()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ChannelViewDCHandler;->SELECTED_STATE:[Ljava/lang/String;

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

    const-string/jumbo v0, "StoryListSelectedView"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "StoryListEmptySelectedView"

    invoke-static {v0, p1}, Lcom/samsung/android/devicecog/gallery/DCStateLogUtil;->logDCStateEnterExit(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p1, "StoryListEmptySelectedView"

    :cond_0
    const-string/jumbo v0, "StoryListView"

    invoke-static {v0, p1}, Lcom/samsung/android/devicecog/gallery/DCStateLogUtil;->logDCStateEnterExit(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public startCommand(Ljava/lang/String;Ljava/util/List;)V
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

    iget-object v4, p0, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ChannelViewDCHandler;->mActivity:Landroid/app/Activity;

    check-cast v4, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/StateManager;->getTopState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v3

    if-nez v3, :cond_0

    const-string/jumbo v4, "ChannelViewDCHandler"

    const-string/jumbo v5, "startCommand() : topState is null!!"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ChannelViewDCHandler;->mActivity:Landroid/app/Activity;

    sget-object v5, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->FAILURE:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    invoke-static {v4, p1, v5}, Lcom/samsung/android/devicecog/gallery/DCUtils;->sendResponseDCState(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;)V

    :goto_0
    return-void

    :cond_0
    const/4 v4, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    :cond_1
    :goto_1
    packed-switch v4, :pswitch_data_0

    const-string/jumbo v4, "ChannelViewDCHandler"

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
    const-string/jumbo v5, "StoryDetailView"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v4, 0x0

    goto :goto_1

    :sswitch_1
    const-string/jumbo v5, "SharedStoryDetailView"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :sswitch_2
    const-string/jumbo v5, "StoryListEmptySelectedView"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v4, 0x2

    goto :goto_1

    :sswitch_3
    const-string/jumbo v5, "StoryListSelectedView"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v4, 0x3

    goto :goto_1

    :sswitch_4
    const-string/jumbo v5, "PicturesView"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v4, 0x4

    goto :goto_1

    :sswitch_5
    const-string/jumbo v5, "AlbumsListView"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v4, 0x5

    goto :goto_1

    :sswitch_6
    const-string/jumbo v5, "StoryListView"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v4, 0x6

    goto/16 :goto_1

    :sswitch_7
    const-string/jumbo v5, "MtpView"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v4, 0x7

    goto/16 :goto_1

    :sswitch_8
    const-string/jumbo v5, "PicturePickerMulti"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/16 v4, 0x8

    goto/16 :goto_1

    :sswitch_9
    const-string/jumbo v5, "CreateStoryEmptySelectedView"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/16 v4, 0x9

    goto/16 :goto_1

    :sswitch_a
    const-string/jumbo v5, "AlbumListPicker"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/16 v4, 0xa

    goto/16 :goto_1

    :sswitch_b
    const-string/jumbo v5, "RenamePopUp"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/16 v4, 0xb

    goto/16 :goto_1

    :sswitch_c
    const-string/jumbo v5, "CreateStoryPopUp"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/16 v4, 0xc

    goto/16 :goto_1

    :sswitch_d
    const-string/jumbo v5, "Notification"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/16 v4, 0xd

    goto/16 :goto_1

    :sswitch_e
    const-string/jumbo v5, "FilterBy"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/16 v4, 0xe

    goto/16 :goto_1

    :sswitch_f
    const-string/jumbo v5, "FilterStory"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/16 v4, 0xf

    goto/16 :goto_1

    :sswitch_10
    const-string/jumbo v5, "ScrollUp"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/16 v4, 0x10

    goto/16 :goto_1

    :sswitch_11
    const-string/jumbo v5, "ScrollDown"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/16 v4, 0x11

    goto/16 :goto_1

    :sswitch_12
    const-string/jumbo v5, "ZoomIn"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/16 v4, 0x12

    goto/16 :goto_1

    :sswitch_13
    const-string/jumbo v5, "ZoomOut"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/16 v4, 0x13

    goto/16 :goto_1

    :sswitch_14
    const-string/jumbo v5, "SwipeLeft"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/16 v4, 0x14

    goto/16 :goto_1

    :sswitch_15
    const-string/jumbo v5, "SwipeRight"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/16 v4, 0x15

    goto/16 :goto_1

    :sswitch_16
    const-string/jumbo v5, "ScrollToTop"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/16 v4, 0x16

    goto/16 :goto_1

    :sswitch_17
    const-string/jumbo v5, "ScrollToEnd"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/16 v4, 0x17

    goto/16 :goto_1

    :pswitch_0
    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/ActivityState;->isNoItemViewMode()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p0, p1}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ChannelViewDCHandler;->sendDCResponseForNoItem(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ChannelViewDCHandler;->handleChannelDetailView(Ljava/lang/String;Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_1
    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/ActivityState;->isNoItemViewMode()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p0, p1}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ChannelViewDCHandler;->sendDCResponseForNoItem(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    invoke-virtual {p0, p1}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ChannelViewDCHandler;->enterSelectedView(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_2
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ChannelViewDCHandler;->handleStoryListSelectedView(Ljava/lang/String;Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_3
    invoke-virtual {p0, p1}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ChannelViewDCHandler;->handleSwitchViewState(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ChannelViewDCHandler;->getNlgRequestInfoForLaunch(Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v1

    iget-object v4, p0, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ChannelViewDCHandler;->mActivity:Landroid/app/Activity;

    sget-object v5, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->SUCCESS:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    invoke-static {v4, p1, v5, v1}, Lcom/samsung/android/devicecog/gallery/DCUtils;->sendResponseDCState(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;)V

    goto/16 :goto_0

    :pswitch_4
    sget-object v4, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_TIMELINE:Lcom/sec/samsung/gallery/core/TabTagType;

    invoke-static {v4}, Lcom/sec/samsung/gallery/core/TabTagType;->from(Lcom/sec/samsung/gallery/core/TabTagType;)I

    move-result v2

    invoke-static {}, Lcom/sec/samsung/gallery/core/Event$Builder;->create()Lcom/sec/samsung/gallery/core/Event;

    move-result-object v4

    sget v5, Lcom/sec/samsung/gallery/core/Event;->EVENT_DC_CMD_START_PICKER:I

    invoke-virtual {v4, v5}, Lcom/sec/samsung/gallery/core/Event;->setType(I)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/sec/samsung/gallery/core/Event;->setIntData(I)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ChannelViewDCHandler;->notifyObservers(Ljava/lang/Object;)V

    iget-object v4, p0, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ChannelViewDCHandler;->mActivity:Landroid/app/Activity;

    sget-object v5, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->SUCCESS:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    invoke-static {v4, p1, v5}, Lcom/samsung/android/devicecog/gallery/DCUtils;->sendResponseDCState(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;)V

    goto/16 :goto_0

    :pswitch_5
    sget-object v4, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_ALBUM:Lcom/sec/samsung/gallery/core/TabTagType;

    invoke-static {v4}, Lcom/sec/samsung/gallery/core/TabTagType;->from(Lcom/sec/samsung/gallery/core/TabTagType;)I

    move-result v0

    invoke-static {}, Lcom/sec/samsung/gallery/core/Event$Builder;->create()Lcom/sec/samsung/gallery/core/Event;

    move-result-object v4

    sget v5, Lcom/sec/samsung/gallery/core/Event;->EVENT_DC_CMD_START_PICKER:I

    invoke-virtual {v4, v5}, Lcom/sec/samsung/gallery/core/Event;->setType(I)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/sec/samsung/gallery/core/Event;->setIntData(I)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ChannelViewDCHandler;->notifyObservers(Ljava/lang/Object;)V

    iget-object v4, p0, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ChannelViewDCHandler;->mActivity:Landroid/app/Activity;

    sget-object v5, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->SUCCESS:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    invoke-static {v4, p1, v5}, Lcom/samsung/android/devicecog/gallery/DCUtils;->sendResponseDCState(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;)V

    goto/16 :goto_0

    :pswitch_6
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ChannelViewDCHandler;->handleRenamePopUp(Ljava/lang/String;Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_7
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ChannelViewDCHandler;->handleCreateStoryPopUp(Ljava/lang/String;Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_8
    invoke-virtual {p0, p2}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ChannelViewDCHandler;->handleNotificaion(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_9
    invoke-direct {p0, p2}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ChannelViewDCHandler;->handleFilterBy(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_a
    invoke-direct {p0, p1}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ChannelViewDCHandler;->makeNlgForFilterBy(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_b
    invoke-static {}, Lcom/sec/samsung/gallery/core/Event$Builder;->create()Lcom/sec/samsung/gallery/core/Event;

    move-result-object v4

    sget v5, Lcom/sec/samsung/gallery/core/Event;->EVENT_DC_CMD_TOUCH_ACTION:I

    invoke-virtual {v4, v5}, Lcom/sec/samsung/gallery/core/Event;->setType(I)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/sec/samsung/gallery/core/Event;->setData(Ljava/lang/Object;)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ChannelViewDCHandler;->notifyObservers(Ljava/lang/Object;)V

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7e6f7dda -> :sswitch_1
        -0x6f3d1cde -> :sswitch_15
        -0x6ebf57a8 -> :sswitch_6
        -0x6d2d74ed -> :sswitch_c
        -0x601b8f88 -> :sswitch_12
        -0x4a7b0e32 -> :sswitch_7
        -0x2ce3b9bf -> :sswitch_14
        -0x272cb585 -> :sswitch_a
        -0x2721c5f1 -> :sswitch_e
        -0x23ff5c66 -> :sswitch_4
        -0x2217ca8d -> :sswitch_17
        -0x22179213 -> :sswitch_16
        -0x216c196d -> :sswitch_3
        -0x1cacea6c -> :sswitch_9
        -0x16cec379 -> :sswitch_5
        -0x144b2ab5 -> :sswitch_0
        -0x141e2998 -> :sswitch_10
        0x10e1a18d -> :sswitch_8
        0x2d45dd0b -> :sswitch_d
        0x2db5503d -> :sswitch_f
        0x5af0c40e -> :sswitch_b
        0x5ca9b65b -> :sswitch_13
        0x6648d6fa -> :sswitch_2
        0x7abe2d2f -> :sswitch_11
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
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
