.class Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState$1;
.super Lorg/puremvc/java/multicore/patterns/mediator/Mediator;
.source "NoItemViewState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState$1;->this$0:Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;

    invoke-direct {p0, p2, p3}, Lorg/puremvc/java/multicore/patterns/mediator/Mediator;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public handleNotification(Lorg/puremvc/java/multicore/interfaces/INotification;)V
    .locals 9

    invoke-interface {p1}, Lorg/puremvc/java/multicore/interfaces/INotification;->getName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v7, "SECRET_MODE_CHANGED"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v7, "VIEW_BY_TYPE_UPDATED"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState$1;->this$0:Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;

    # invokes: Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->handleFilter()V
    invoke-static {v7}, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->access$000(Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;)V

    goto :goto_0

    :cond_2
    const-string/jumbo v7, "DEVICE_DISCONNECTED"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState$1;->this$0:Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;

    # invokes: Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->getNearbyClient()Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;
    invoke-static {v7}, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->access$100(Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;)Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState$1;->this$0:Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;

    # getter for: Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mDataProxy:Lcom/sec/android/gallery3d/data/DataManager;
    invoke-static {v7}, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->access$200(Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;)Lcom/sec/android/gallery3d/data/DataManager;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState$1;->this$0:Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;

    # getter for: Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mTopSetPath:Ljava/lang/String;
    invoke-static {v8}, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->access$300(Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v3, v8}, Lcom/sec/android/gallery3d/remote/nearby/NearbyUtils;->isDeviceRemoved(Lcom/sec/android/gallery3d/data/DataManager;Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    const-string/jumbo v7, "NoItemViewState"

    const-string/jumbo v8, "top mediaset is removed"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p1}, Lorg/puremvc/java/multicore/interfaces/INotification;->getBody()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    move-object v2, v7

    check-cast v2, [Ljava/lang/String;

    const-string/jumbo v7, "nearby"

    const-string/jumbo v8, "finish NoitemView - prev : all view state()!!"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState$1;->this$0:Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;

    # getter for: Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v7}, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->access$600(Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v7

    new-instance v8, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState$1$1;

    invoke-direct {v8, p0}, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState$1$1;-><init>(Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState$1;)V

    invoke-virtual {v7, v8}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState$1;->this$0:Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;

    # invokes: Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->startNearbyViewState(Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;[Ljava/lang/String;)V
    invoke-static {v7, v3, v2}, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->access$700(Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;[Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string/jumbo v7, "COMPLETE_CREATE_NEW_EVENT"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState$1;->this$0:Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;

    # getter for: Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;
    invoke-static {v7}, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->access$800(Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;)Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getPreviousViewState()Ljava/lang/Class;

    move-result-object v7

    const-class v8, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    if-ne v7, v8, :cond_0

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState$1;->this$0:Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;

    # invokes: Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->getPreviousViewState()Ljava/lang/Class;
    invoke-static {v7}, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->access$900(Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;)Ljava/lang/Class;

    move-result-object v6

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v7, "KEY_IS_FROM_NOITEMVIEW"

    const/4 v8, 0x1

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState$1;->this$0:Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;

    # getter for: Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mTopSetPath:Ljava/lang/String;
    invoke-static {v7}, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->access$300(Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_4

    const-string/jumbo v7, "KEY_MEDIA_SET_PATH"

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState$1;->this$0:Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;

    # getter for: Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mTopSetPath:Ljava/lang/String;
    invoke-static {v8}, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->access$300(Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    invoke-interface {p1}, Lorg/puremvc/java/multicore/interfaces/INotification;->getBody()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string/jumbo v7, "KEY_IS_NEW_CHANNEL_ID"

    invoke-virtual {v0, v7, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState$1;->this$0:Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;

    # getter for: Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v7}, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->access$1100(Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v7

    new-instance v8, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState$1$2;

    invoke-direct {v8, p0, v6, v0}, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState$1$2;-><init>(Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState$1;Ljava/lang/Class;Landroid/os/Bundle;)V

    invoke-virtual {v7, v8}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    :cond_5
    const-string/jumbo v7, "UPDATE_MENU"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState$1;->this$0:Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;

    # getter for: Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v7}, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->access$1200(Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->closeOptionsMenu()V

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState$1;->this$0:Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;

    # getter for: Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;
    invoke-static {v7}, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->access$1300(Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;)Lcom/sec/samsung/gallery/view/ActionBarManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/samsung/gallery/view/ActionBarManager;->invalidateOptionsMenu()V

    goto/16 :goto_0
.end method

.method public listNotificationInterests()[Ljava/lang/String;
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "VIEW_BY_TYPE_UPDATED"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "SECRET_MODE_CHANGED"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "DEVICE_DISCONNECTED"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "COMPLETE_CREATE_NEW_EVENT"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "UPDATE_MENU"

    aput-object v2, v0, v1

    return-object v0
.end method
