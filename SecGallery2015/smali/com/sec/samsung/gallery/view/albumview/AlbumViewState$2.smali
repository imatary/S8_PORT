.class Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$2;
.super Lorg/puremvc/java/multicore/patterns/mediator/Mediator;
.source "AlbumViewState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$2;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    invoke-direct {p0, p2, p3}, Lorg/puremvc/java/multicore/patterns/mediator/Mediator;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public handleNotification(Lorg/puremvc/java/multicore/interfaces/INotification;)V
    .locals 13

    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-interface {p1}, Lorg/puremvc/java/multicore/interfaces/INotification;->getName()Ljava/lang/String;

    move-result-object v3

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$2;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    invoke-static {v9}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->access$600(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/gallery3d/app/StateManager;->getTopState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v0

    const/4 v9, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v12

    sparse-switch v12, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v9, :pswitch_data_0

    :cond_1
    :goto_1
    return-void

    :sswitch_0
    const-string/jumbo v12, "VIEW_BY_TYPE_UPDATED"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    move v9, v10

    goto :goto_0

    :sswitch_1
    const-string/jumbo v12, "DOWNLOAD_NEARBY"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    move v9, v11

    goto :goto_0

    :sswitch_2
    const-string/jumbo v12, "REFRESH_SELECTION"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    const/4 v9, 0x2

    goto :goto_0

    :sswitch_3
    const-string/jumbo v12, "REFRESH_LAYOUT"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    const/4 v9, 0x3

    goto :goto_0

    :sswitch_4
    const-string/jumbo v12, "SYSTEM_UI_VISIBILITY_CHANGE"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    const/4 v9, 0x4

    goto :goto_0

    :sswitch_5
    const-string/jumbo v12, "MEDIA_EJECT"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    const/4 v9, 0x5

    goto :goto_0

    :sswitch_6
    const-string/jumbo v12, "EXIT_SELECTION_MODE"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    const/4 v9, 0x6

    goto :goto_0

    :sswitch_7
    const-string/jumbo v12, "DELETE_ANIM_START"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    const/4 v9, 0x7

    goto :goto_0

    :sswitch_8
    const-string/jumbo v12, "BACK_HIDE_ALBUMS"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    const/16 v9, 0x8

    goto :goto_0

    :sswitch_9
    const-string/jumbo v12, "NEW_ALBUM_CREATE"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    const/16 v9, 0x9

    goto :goto_0

    :sswitch_a
    const-string/jumbo v12, "UPDATE_MENU"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    const/16 v9, 0xa

    goto :goto_0

    :sswitch_b
    const-string/jumbo v12, "UPDATE_MORE_MENU_BADGE"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    const/16 v9, 0xb

    goto/16 :goto_0

    :sswitch_c
    const-string/jumbo v12, "DC_CANCEL_SELECT_ITEMS_FOR_TIME_OUT"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    const/16 v9, 0xc

    goto/16 :goto_0

    :pswitch_0
    iget-object v9, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$2;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    invoke-static {v9}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->access$700(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)V

    goto/16 :goto_1

    :pswitch_1
    :try_start_0
    iget-object v9, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$2;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    invoke-static {v9, p1}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->access$800(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;Lorg/puremvc/java/multicore/interfaces/INotification;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v1

    const-string/jumbo v9, "AlbumViewState"

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :pswitch_2
    iget-object v9, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$2;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    invoke-static {v9}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->access$300(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)V

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$2;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    invoke-static {v9}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->access$900(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->refreshCheckState()V

    goto/16 :goto_1

    :pswitch_3
    iget-object v9, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$2;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    invoke-static {v9}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->access$1000(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move-result-object v9

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$2;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    invoke-static {v9}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->access$1100(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->refreshLayout()V

    goto/16 :goto_1

    :pswitch_4
    instance-of v9, v0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$2;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    iget-object v9, v9, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v9}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getNumberOfMarkedAsSelected()I

    move-result v9

    if-lez v9, :cond_1

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$2;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    invoke-static {v9}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->access$1200(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->dismissDialogs()V

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$2;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    invoke-static {v9}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->access$1300(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)V

    goto/16 :goto_1

    :pswitch_5
    iget-object v9, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$2;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    iget-object v9, v9, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v9}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v9

    if-eqz v9, :cond_1

    const/4 v2, 0x0

    invoke-interface {p1}, Lorg/puremvc/java/multicore/interfaces/INotification;->getBody()Ljava/lang/Object;

    move-result-object v7

    instance-of v9, v7, Ljava/lang/Boolean;

    if-eqz v9, :cond_2

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    :cond_2
    instance-of v9, v0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$2;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    invoke-static {v9}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->access$1300(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)V

    if-eqz v2, :cond_1

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$2;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    invoke-static {v9}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->access$1400(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->cancelDeleteAnimation()V

    goto/16 :goto_1

    :pswitch_6
    iget-object v9, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$2;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    invoke-static {v9}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->access$1500(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move-result-object v9

    if-eqz v9, :cond_3

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$2;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    invoke-static {v9}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->access$1600(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move-result-object v9

    invoke-virtual {v9, v11}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->copyCurrentActive(Z)V

    goto/16 :goto_1

    :cond_3
    const-string/jumbo v9, "AlbumViewState"

    const-string/jumbo v10, "mComposeView is null during DELETE_ANIM_START"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :pswitch_7
    iget-object v9, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$2;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    invoke-static {v9}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->access$1700(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v9

    invoke-virtual {v9, v10}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setHiddenAlbumTitle(Z)V

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$2;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    invoke-static {v9}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->access$1700(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v9

    invoke-virtual {v9, v11}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setSpinnerLayoutChange(Z)V

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$2;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    iget-object v9, v9, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v9}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v9

    if-eqz v9, :cond_5

    const/4 v2, 0x0

    invoke-interface {p1}, Lorg/puremvc/java/multicore/interfaces/INotification;->getBody()Ljava/lang/Object;

    move-result-object v4

    instance-of v9, v4, Ljava/lang/Boolean;

    if-eqz v9, :cond_4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    :cond_4
    instance-of v9, v0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    if-eqz v9, :cond_5

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$2;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    invoke-static {v9}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->access$1300(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)V

    if-eqz v2, :cond_5

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$2;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    invoke-static {v9}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->access$1800(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->cancelDeleteAnimation()V

    :cond_5
    iget-object v9, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$2;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    invoke-static {v9}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->access$1900(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)V

    goto/16 :goto_1

    :pswitch_8
    invoke-interface {p1}, Lorg/puremvc/java/multicore/interfaces/INotification;->getBody()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/Object;

    move-object v6, v9

    check-cast v6, [Ljava/lang/Object;

    iget-object v10, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$2;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    aget-object v9, v6, v11

    check-cast v9, Ljava/lang/String;

    invoke-static {v10, v9}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->access$2002(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;Ljava/lang/String;)Ljava/lang/String;

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$2;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    invoke-static {v9}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->access$2100(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)V

    goto/16 :goto_1

    :pswitch_9
    iget-object v9, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$2;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    invoke-static {v9}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->access$2200(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->closeOptionsMenu()V

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$2;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    invoke-static {v9}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->access$2300(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)Lcom/sec/samsung/gallery/view/ActionBarManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/samsung/gallery/view/ActionBarManager;->invalidateOptionsMenu()V

    goto/16 :goto_1

    :pswitch_a
    invoke-interface {p1}, Lorg/puremvc/java/multicore/interfaces/INotification;->getBody()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$2;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    invoke-static {v9}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->access$2500(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)Lcom/sec/samsung/gallery/view/ActionBarManager;

    move-result-object v9

    iget-object v10, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$2;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    invoke-static {v10}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->access$2400(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)Landroid/view/Menu;

    move-result-object v10

    invoke-virtual {v9, v10, v8}, Lcom/sec/samsung/gallery/view/ActionBarManager;->updateMoreMenuBadge(Landroid/view/Menu;Z)V

    goto/16 :goto_1

    :pswitch_b
    iget-object v9, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$2;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    invoke-static {v9}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->access$2600(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;

    move-result-object v9

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$2;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    invoke-static {v9}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->access$2700(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;->getSelectItemTask()Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask;

    move-result-object v9

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$2;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    invoke-static {v9}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->access$2800(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;->getSelectItemTask()Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask;->isCancelled()Z

    move-result v9

    if-nez v9, :cond_1

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$2;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    invoke-static {v9}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->access$2900(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;->getSelectItemTask()Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask;->requestOnCancel()V

    goto/16 :goto_1

    :sswitch_data_0
    .sparse-switch
        -0x49a22ad2 -> :sswitch_3
        -0x4987038a -> :sswitch_5
        -0x3f1cf458 -> :sswitch_7
        -0x3946535e -> :sswitch_4
        -0x2f8869d7 -> :sswitch_8
        -0x13a0aeb5 -> :sswitch_9
        -0x96ac5ea -> :sswitch_1
        0x40145e4 -> :sswitch_0
        0xdd74c57 -> :sswitch_b
        0x1d10ace8 -> :sswitch_2
        0x5ece09d7 -> :sswitch_6
        0x5fe52f15 -> :sswitch_a
        0x639dce2f -> :sswitch_c
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method public listNotificationInterests()[Ljava/lang/String;
    .locals 3

    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "VIEW_BY_TYPE_UPDATED"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "DOWNLOAD_NEARBY"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "REFRESH_SELECTION"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "REFRESH_LAYOUT"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "MEDIA_EJECT"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "EXIT_SELECTION_MODE"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "DELETE_ANIM_START"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "BACK_HIDE_ALBUMS"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "NEW_ALBUM_CREATE"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "UPDATE_MENU"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "UPDATE_MORE_MENU_BADGE"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "DC_CANCEL_SELECT_ITEMS_FOR_TIME_OUT"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "SYSTEM_UI_VISIBILITY_CHANGE"

    aput-object v2, v0, v1

    return-object v0
.end method
