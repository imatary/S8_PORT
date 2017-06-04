.class Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$9;
.super Lorg/puremvc/java/multicore/patterns/mediator/Mediator;
.source "VisualSearchViewState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$9;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;

    invoke-direct {p0, p2, p3}, Lorg/puremvc/java/multicore/patterns/mediator/Mediator;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private handleRefreshLayout()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$9;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->access$2300(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$9;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->access$2400(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->refreshLayout()V

    :cond_0
    return-void
.end method

.method private handleRefreshVisualSearchView()V
    .locals 6

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$9;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mSearchTagController:Lcom/sec/samsung/gallery/view/gallerysearch/SearchTagController;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->access$2500(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)Lcom/sec/samsung/gallery/view/gallerysearch/SearchTagController;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$9;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mSearchTagController:Lcom/sec/samsung/gallery/view/gallerysearch/SearchTagController;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->access$2600(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)Lcom/sec/samsung/gallery/view/gallerysearch/SearchTagController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/SearchTagController;->getTagFilter()Lcom/sec/android/gallery3d/data/SearchTagFilter;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/gallery3d/data/SearchTagFilter;->getCategory()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$9;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mSearchTagController:Lcom/sec/samsung/gallery/view/gallerysearch/SearchTagController;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->access$2700(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)Lcom/sec/samsung/gallery/view/gallerysearch/SearchTagController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/SearchTagController;->getTagFilter()Lcom/sec/android/gallery3d/data/SearchTagFilter;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/gallery3d/data/SearchTagFilter;->getTagName()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$9;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mSearchTagController:Lcom/sec/samsung/gallery/view/gallerysearch/SearchTagController;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->access$2800(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)Lcom/sec/samsung/gallery/view/gallerysearch/SearchTagController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/SearchTagController;->getTagFilter()Lcom/sec/android/gallery3d/data/SearchTagFilter;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/gallery3d/data/SearchTagFilter;->getPersonName()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$9;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;

    sget-object v3, Lcom/sec/android/gallery3d/data/SearchTagFilter$LocationType;->NONE:Lcom/sec/android/gallery3d/data/SearchTagFilter$LocationType;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/data/SearchTagFilter$LocationType;->ordinal()I

    move-result v3

    const/4 v5, 0x0

    # invokes: Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->searchByCategory(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/sec/android/gallery3d/data/VisualSearchTagFilter$SearchKeywordInfo;)V
    invoke-static/range {v0 .. v5}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->access$1700(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/sec/android/gallery3d/data/VisualSearchTagFilter$SearchKeywordInfo;)V

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$9;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mVisualSearchView:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->access$100(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$9;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mVisualSearchView:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->access$100(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;->reloadView()V

    :cond_1
    return-void
.end method

.method private handleSearchByCategory(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 6

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$9;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;

    # invokes: Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->insertSearchByCategorySALog()V
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->access$3100(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$9;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    # invokes: Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->searchByCategory(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/sec/android/gallery3d/data/VisualSearchTagFilter$SearchKeywordInfo;)V
    invoke-static/range {v0 .. v5}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->access$1700(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/sec/android/gallery3d/data/VisualSearchTagFilter$SearchKeywordInfo;)V

    return-void
.end method

.method private handleSearchByKeyword(Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$9;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;

    const/4 v1, 0x1

    # invokes: Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->setSearchingState(Z)V
    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->access$1800(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$9;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;

    # invokes: Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->searchByKeyword(Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/gallery3d/data/VisualSearchTagFilter$SearchKeywordInfo;)V
    invoke-static {v0, p1, v2, v2}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->access$1900(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/gallery3d/data/VisualSearchTagFilter$SearchKeywordInfo;)V

    return-void
.end method

.method private handleStartDeleteAnimation()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$9;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->access$2900(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->copyCurrentActive()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$9;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->access$3000(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->runQueueIdleTimer()V

    return-void
.end method


# virtual methods
.method public handleNotification(Lorg/puremvc/java/multicore/interfaces/INotification;)V
    .locals 13

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    invoke-interface {p1}, Lorg/puremvc/java/multicore/interfaces/INotification;->getName()Ljava/lang/String;

    move-result-object v4

    const/4 v7, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v12

    sparse-switch v12, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v7, :pswitch_data_0

    :cond_1
    :goto_1
    return-void

    :sswitch_0
    const-string/jumbo v12, "SEARCH_BY_CATEGORY"

    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    move v7, v8

    goto :goto_0

    :sswitch_1
    const-string/jumbo v12, "SEARCH_BY_KEYWORD"

    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    move v7, v9

    goto :goto_0

    :sswitch_2
    const-string/jumbo v12, "DELETE_ANIM_START"

    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    move v7, v10

    goto :goto_0

    :sswitch_3
    const-string/jumbo v12, "REFRESH_LAYOUT"

    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    move v7, v11

    goto :goto_0

    :sswitch_4
    const-string/jumbo v12, "REFRESH_VISUAL_SEARCH_VIEW"

    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    const/4 v7, 0x4

    goto :goto_0

    :sswitch_5
    const-string/jumbo v12, "DC_CANCEL_SELECT_ITEMS_FOR_TIME_OUT"

    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    const/4 v7, 0x5

    goto :goto_0

    :pswitch_0
    invoke-interface {p1}, Lorg/puremvc/java/multicore/interfaces/INotification;->getBody()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/Object;

    move-object v0, v7

    check-cast v0, [Ljava/lang/Object;

    if-eqz v0, :cond_1

    aget-object v1, v0, v8

    check-cast v1, Ljava/lang/String;

    aget-object v6, v0, v9

    check-cast v6, Ljava/lang/String;

    aget-object v7, v0, v10

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aget-object v5, v0, v11

    check-cast v5, Ljava/lang/String;

    if-eqz v6, :cond_1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_2

    invoke-direct {p0, v1, v6, v3, v5}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$9;->handleSearchByCategory(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_1

    :cond_2
    invoke-direct {p0, v6}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$9;->handleSearchByKeyword(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_1
    invoke-interface {p1}, Lorg/puremvc/java/multicore/interfaces/INotification;->getBody()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-direct {p0, v2}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$9;->handleSearchByKeyword(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_2
    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$9;->handleStartDeleteAnimation()V

    goto/16 :goto_1

    :pswitch_3
    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$9;->handleRefreshLayout()V

    goto/16 :goto_1

    :pswitch_4
    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$9;->handleRefreshVisualSearchView()V

    goto/16 :goto_1

    :pswitch_5
    iget-object v7, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$9;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mDCHandler:Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;
    invoke-static {v7}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->access$2000(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;->getSelectItemTask()Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask;

    move-result-object v7

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$9;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mDCHandler:Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;
    invoke-static {v7}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->access$2100(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;->getSelectItemTask()Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask;->isCancelled()Z

    move-result v7

    if-nez v7, :cond_1

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$9;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mDCHandler:Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;
    invoke-static {v7}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->access$2200(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;->getSelectItemTask()Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask;->requestOnCancel()V

    goto/16 :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x49a22ad2 -> :sswitch_3
        -0x3f1cf458 -> :sswitch_2
        0x1cdf4d8 -> :sswitch_1
        0x1b005461 -> :sswitch_4
        0x1bc4c3cf -> :sswitch_0
        0x639dce2f -> :sswitch_5
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

.method public listNotificationInterests()[Ljava/lang/String;
    .locals 3

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "SEARCH_BY_CATEGORY"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "SEARCH_BY_KEYWORD"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "HIDE_SEARCH_HISTORY"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "DELETE_ANIM_START"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "REFRESH_LAYOUT"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "REFRESH_VISUAL_SEARCH_VIEW"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "DC_CANCEL_SELECT_ITEMS_FOR_TIME_OUT"

    aput-object v2, v0, v1

    return-object v0
.end method
