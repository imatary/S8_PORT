.class Lcom/sec/samsung/gallery/view/timeview/TimeViewState$2;
.super Lorg/puremvc/java/multicore/patterns/mediator/Mediator;
.source "TimeViewState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/timeview/TimeViewState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewState;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$2;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    invoke-direct {p0, p2, p3}, Lorg/puremvc/java/multicore/patterns/mediator/Mediator;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public handleNotification(Lorg/puremvc/java/multicore/interfaces/INotification;)V
    .locals 10

    const/4 v8, 0x1

    const/4 v7, 0x0

    invoke-interface {p1}, Lorg/puremvc/java/multicore/interfaces/INotification;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v6, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v9

    sparse-switch v9, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v6, :pswitch_data_0

    :cond_1
    :goto_1
    return-void

    :sswitch_0
    const-string/jumbo v9, "VIEW_BY_TYPE_UPDATED"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    move v6, v7

    goto :goto_0

    :sswitch_1
    const-string/jumbo v9, "SECRET_MODE_CHANGED"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    move v6, v8

    goto :goto_0

    :sswitch_2
    const-string/jumbo v9, "DOWNLOAD_CLOUDBY"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/4 v6, 0x2

    goto :goto_0

    :sswitch_3
    const-string/jumbo v9, "REFRESH_LAYOUT"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/4 v6, 0x3

    goto :goto_0

    :sswitch_4
    const-string/jumbo v9, "MEDIA_EJECT"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/4 v6, 0x4

    goto :goto_0

    :sswitch_5
    const-string/jumbo v9, "UPDATE_MENU"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/4 v6, 0x5

    goto :goto_0

    :sswitch_6
    const-string/jumbo v9, "CHECK_TO_SHOW_TIP_CARD_FINISHED"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/4 v6, 0x6

    goto :goto_0

    :sswitch_7
    const-string/jumbo v9, "UPDATE_MORE_MENU_BADGE"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/4 v6, 0x7

    goto :goto_0

    :sswitch_8
    const-string/jumbo v9, "DC_CANCEL_SELECT_ITEMS_FOR_TIME_OUT"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/16 v6, 0x8

    goto :goto_0

    :pswitch_0
    iget-object v6, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$2;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    # invokes: Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->handleFilter()V
    invoke-static {v6}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->access$400(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)V

    goto :goto_1

    :pswitch_1
    iget-object v6, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$2;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    # invokes: Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->updateSelectionMode()V
    invoke-static {v6}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->access$500(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)V

    goto :goto_1

    :pswitch_2
    invoke-interface {p1}, Lorg/puremvc/java/multicore/interfaces/INotification;->getBody()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/Object;

    move-object v3, v6

    check-cast v3, [Ljava/lang/Object;

    aget-object v2, v3, v7

    check-cast v2, Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$2;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    # getter for: Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v6}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->access$600(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v6

    invoke-static {v6, v2}, Lcom/sec/samsung/gallery/util/DownloadUtil;->downloadEnqueue(Landroid/content/Context;Ljava/util/ArrayList;)V

    goto/16 :goto_1

    :pswitch_3
    iget-object v6, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$2;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    # getter for: Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
    invoke-static {v6}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->access$700(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move-result-object v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$2;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    # getter for: Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
    invoke-static {v6}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->access$800(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->refreshLayout()V

    goto/16 :goto_1

    :pswitch_4
    iget-object v6, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$2;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    # getter for: Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;
    invoke-static {v6}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->access$900(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    move-result-object v6

    iput-boolean v8, v6, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->isSDCardEject:Z

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$2;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    # getter for: Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;
    invoke-static {v6}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->access$1000(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$2;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    # getter for: Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v6}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->access$1100(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/app/StateManager;->getTopState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v0

    instance-of v6, v0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$2;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    # getter for: Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;
    invoke-static {v6}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->access$1000(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$2;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    # getter for: Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;
    invoke-static {v6}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->access$1000(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getNumberOfMarkedAsSelected()I

    move-result v6

    if-lez v6, :cond_2

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$2;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    # getter for: Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;
    invoke-static {v6}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->access$900(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->dismissDialogs()V

    :cond_2
    iget-object v6, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$2;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    # invokes: Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->exitSelectionMode()V
    invoke-static {v6}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->access$1200(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)V

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$2;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    # getter for: Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;
    invoke-static {v6}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->access$900(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    move-result-object v6

    iput-boolean v7, v6, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->isSDCardEject:Z

    goto/16 :goto_1

    :pswitch_5
    iget-object v6, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$2;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    # getter for: Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v6}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->access$1300(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->closeOptionsMenu()V

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$2;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    # getter for: Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;
    invoke-static {v6}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->access$1400(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Lcom/sec/samsung/gallery/view/ActionBarManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/samsung/gallery/view/ActionBarManager;->invalidateOptionsMenu()V

    goto/16 :goto_1

    :pswitch_6
    iget-object v6, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$2;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    # getter for: Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
    invoke-static {v6}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->access$1500(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move-result-object v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$2;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    # getter for: Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
    invoke-static {v6}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->access$1600(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->refreshTipCard()V

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$2;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    # getter for: Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
    invoke-static {v6}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->access$1700(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->refreshLayout()V

    goto/16 :goto_1

    :pswitch_7
    invoke-interface {p1}, Lorg/puremvc/java/multicore/interfaces/INotification;->getBody()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$2;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    # getter for: Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;
    invoke-static {v6}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->access$1900(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Lcom/sec/samsung/gallery/view/ActionBarManager;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$2;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    # getter for: Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mMenu:Landroid/view/Menu;
    invoke-static {v7}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->access$1800(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Landroid/view/Menu;

    move-result-object v7

    invoke-virtual {v6, v7, v5}, Lcom/sec/samsung/gallery/view/ActionBarManager;->updateMoreMenuBadge(Landroid/view/Menu;Z)V

    goto/16 :goto_1

    :pswitch_8
    iget-object v6, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$2;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    # getter for: Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mDCHandler:Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;
    invoke-static {v6}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->access$2000(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;->getSelectItemTask()Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask;

    move-result-object v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$2;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    # getter for: Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mDCHandler:Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;
    invoke-static {v6}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->access$2100(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;->getSelectItemTask()Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask;->isCancelled()Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$2;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    # getter for: Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mDCHandler:Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;
    invoke-static {v6}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->access$2200(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;->getSelectItemTask()Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask;->requestOnCancel()V

    goto/16 :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x5d19eb8b -> :sswitch_2
        -0x49a22ad2 -> :sswitch_3
        -0x4987038a -> :sswitch_4
        -0x215c86d9 -> :sswitch_1
        0x40145e4 -> :sswitch_0
        0xdd74c57 -> :sswitch_7
        0x257908e8 -> :sswitch_6
        0x5fe52f15 -> :sswitch_5
        0x639dce2f -> :sswitch_8
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
    .end packed-switch
.end method

.method public listNotificationInterests()[Ljava/lang/String;
    .locals 3

    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "VIEW_BY_TYPE_UPDATED"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "DOWNLOAD_CLOUDBY"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "SECRET_MODE_CHANGED"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "REFRESH_LAYOUT"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "MEDIA_EJECT"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "UPDATE_MENU"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "CHECK_TO_SHOW_TIP_CARD_FINISHED"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "UPDATE_MORE_MENU_BADGE"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "DC_CANCEL_SELECT_ITEMS_FOR_TIME_OUT"

    aput-object v2, v0, v1

    return-object v0
.end method
