.class Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$2;
.super Lorg/puremvc/java/multicore/patterns/mediator/Mediator;
.source "PhotoSplitViewState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$2;->this$0:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

    invoke-direct {p0, p2, p3}, Lorg/puremvc/java/multicore/patterns/mediator/Mediator;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private handleExitSelectionMode(Lorg/puremvc/java/multicore/interfaces/INotification;)V
    .locals 8

    const/4 v6, 0x0

    invoke-interface {p1}, Lorg/puremvc/java/multicore/interfaces/INotification;->getBody()Ljava/lang/Object;

    move-result-object v5

    instance-of v5, v5, Ljava/lang/String;

    if-eqz v5, :cond_0

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$2;->this$0:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

    invoke-interface {p1}, Lorg/puremvc/java/multicore/interfaces/INotification;->getBody()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iput-object v5, v7, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mNewAlbumPath:Ljava/lang/String;

    :cond_0
    invoke-interface {p1}, Lorg/puremvc/java/multicore/interfaces/INotification;->getBody()Ljava/lang/Object;

    move-result-object v5

    instance-of v5, v5, [Ljava/lang/Object;

    if-eqz v5, :cond_1

    invoke-interface {p1}, Lorg/puremvc/java/multicore/interfaces/INotification;->getBody()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/Object;

    move-object v0, v5

    check-cast v0, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$2;->this$0:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

    aget-object v5, v0, v6

    check-cast v5, Ljava/lang/String;

    iput-object v5, v7, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mNewAlbumPath:Ljava/lang/String;

    :cond_1
    iget-object v5, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$2;->this$0:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

    iget-object v5, v5, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v2, 0x0

    invoke-interface {p1}, Lorg/puremvc/java/multicore/interfaces/INotification;->getBody()Ljava/lang/Object;

    move-result-object v3

    instance-of v5, v3, Ljava/lang/Boolean;

    if-eqz v5, :cond_2

    move-object v5, v3

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    :cond_2
    iget-object v5, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$2;->this$0:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

    invoke-static {v5}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->access$600(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/app/StateManager;->getTopState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v1

    instance-of v5, v1, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    if-nez v5, :cond_3

    instance-of v5, v3, Ljava/lang/Integer;

    if-eqz v5, :cond_5

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$2;->this$0:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

    const/16 v5, 0x10

    if-ge v4, v5, :cond_4

    const/4 v5, 0x1

    :goto_0
    invoke-static {v7, v5}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->access$700(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;Z)V

    :goto_1
    iget-object v5, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$2;->this$0:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

    iget-object v5, v5, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mPhotoView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;

    if-eqz v5, :cond_3

    if-eqz v2, :cond_6

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$2;->this$0:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

    iget-object v5, v5, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mPhotoView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;

    invoke-virtual {v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;->cancelDeleteAnimation()V

    :cond_3
    :goto_2
    return-void

    :cond_4
    move v5, v6

    goto :goto_0

    :cond_5
    iget-object v5, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$2;->this$0:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

    invoke-virtual {v5}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->exitSelectionMode()V

    goto :goto_1

    :cond_6
    iget-object v5, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$2;->this$0:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

    iget-object v5, v5, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mPhotoView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;

    invoke-virtual {v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;->runQueueIdleTimer()V

    goto :goto_2
.end method


# virtual methods
.method public handleNotification(Lorg/puremvc/java/multicore/interfaces/INotification;)V
    .locals 7

    const/4 v4, 0x0

    invoke-interface {p1}, Lorg/puremvc/java/multicore/interfaces/INotification;->getName()Ljava/lang/String;

    move-result-object v5

    const/4 v3, -0x1

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v3, :pswitch_data_0

    :cond_1
    :goto_1
    return-void

    :sswitch_0
    const-string/jumbo v6, "EXIT_SELECTION_MODE"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v3, v4

    goto :goto_0

    :sswitch_1
    const-string/jumbo v6, "EXIT_NEW_ALBUM_MODE"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :sswitch_2
    const-string/jumbo v6, "DELETE_ANIM_START"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v3, 0x2

    goto :goto_0

    :sswitch_3
    const-string/jumbo v6, "COMPLETE_CREATE_NEW_EVENT"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v3, 0x3

    goto :goto_0

    :sswitch_4
    const-string/jumbo v6, "UPDATE_MENU"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v3, 0x4

    goto :goto_0

    :pswitch_0
    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$2;->handleExitSelectionMode(Lorg/puremvc/java/multicore/interfaces/INotification;)V

    goto :goto_1

    :pswitch_1
    invoke-interface {p1}, Lorg/puremvc/java/multicore/interfaces/INotification;->getBody()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Object;

    move-object v1, v3

    check-cast v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aget-object v3, v1, v4

    instance-of v3, v3, Ljava/lang/Boolean;

    if-eqz v3, :cond_2

    aget-object v3, v1, v4

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    :cond_2
    iget-object v4, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$2;->this$0:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

    if-eqz v2, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$2;->this$0:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

    iget-object v5, v5, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mNewAlbumPath:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, "/"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_2
    iput-object v3, v4, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mNewAlbumPath:Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$2;->this$0:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->exitSelectionMode()V

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    goto :goto_2

    :pswitch_2
    const-string/jumbo v3, "PhotoSplitViewState"

    const-string/jumbo v4, "get noti - DELETE_ANIM_START"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$2;->this$0:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

    iget-object v3, v3, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mPhotoView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$2;->this$0:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

    iget-object v3, v3, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mPhotoView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;->copyCurrentActive()V

    goto/16 :goto_1

    :pswitch_3
    invoke-interface {p1}, Lorg/puremvc/java/multicore/interfaces/INotification;->getBody()Ljava/lang/Object;

    move-result-object v1

    instance-of v3, v1, Ljava/lang/Integer;

    if-eqz v3, :cond_1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$2;->this$0:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->exitSelectionMode()V

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$2;->this$0:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

    invoke-static {v3}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->access$200(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;)Lcom/sec/samsung/gallery/util/AddItemToChannel;

    move-result-object v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$2;->this$0:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

    new-instance v4, Lcom/sec/samsung/gallery/util/AddItemToChannel;

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$2;->this$0:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

    invoke-static {v5}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->access$300(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/sec/samsung/gallery/util/AddItemToChannel;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v4}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->access$202(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;Lcom/sec/samsung/gallery/util/AddItemToChannel;)Lcom/sec/samsung/gallery/util/AddItemToChannel;

    :cond_4
    iget-object v3, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$2;->this$0:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

    invoke-static {v3}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->access$200(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;)Lcom/sec/samsung/gallery/util/AddItemToChannel;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/sec/samsung/gallery/util/AddItemToChannel;->startChannelViewMode(I)V

    goto/16 :goto_1

    :pswitch_4
    iget-object v3, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$2;->this$0:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

    invoke-static {v3}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->access$400(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->closeOptionsMenu()V

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$2;->this$0:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

    invoke-static {v3}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->access$500(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;)Lcom/sec/samsung/gallery/view/ActionBarManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/view/ActionBarManager;->invalidateOptionsMenu()V

    goto/16 :goto_1

    :sswitch_data_0
    .sparse-switch
        -0x5855d642 -> :sswitch_3
        -0x3f1cf458 -> :sswitch_2
        0x432752f3 -> :sswitch_1
        0x5ece09d7 -> :sswitch_0
        0x5fe52f15 -> :sswitch_4
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public listNotificationInterests()[Ljava/lang/String;
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "EXIT_SELECTION_MODE"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "EXIT_NEW_ALBUM_MODE"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "COMPLETE_CREATE_NEW_EVENT"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "DELETE_ANIM_START"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "UPDATE_MENU"

    aput-object v2, v0, v1

    return-object v0
.end method
