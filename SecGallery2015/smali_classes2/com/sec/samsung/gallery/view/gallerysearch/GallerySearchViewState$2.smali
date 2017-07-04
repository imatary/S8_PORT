.class Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState$2;
.super Lorg/puremvc/java/multicore/patterns/mediator/Mediator;
.source "GallerySearchViewState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState$2;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;

    invoke-direct {p0, p2, p3}, Lorg/puremvc/java/multicore/patterns/mediator/Mediator;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public handleNotification(Lorg/puremvc/java/multicore/interfaces/INotification;)V
    .locals 12

    const-wide/16 v10, 0xbb8

    const/4 v9, 0x4

    const/4 v8, 0x0

    const/4 v7, 0x1

    invoke-interface {p1}, Lorg/puremvc/java/multicore/interfaces/INotification;->getName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "EXIT_SELECTION_MODE"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v0, 0x0

    invoke-interface {p1}, Lorg/puremvc/java/multicore/interfaces/INotification;->getBody()Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, Ljava/lang/Boolean;

    if-eqz v5, :cond_0

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :cond_0
    iget-object v5, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState$2;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;

    invoke-virtual {v5}, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->exitSelectionMode()V

    if-eqz v0, :cond_1

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState$2;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;

    invoke-static {v5}, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->access$1800(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->cancelDeleteAnimation()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string/jumbo v5, "UPDATE_CATEGORY"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState$2;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;

    invoke-static {v5}, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->access$1900(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)Lcom/sec/android/gallery3d/ui/SynchronizedHandler;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/sec/android/gallery3d/ui/SynchronizedHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState$2;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;

    invoke-static {v5}, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->access$2000(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)Lcom/sec/android/gallery3d/ui/SynchronizedHandler;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/sec/android/gallery3d/ui/SynchronizedHandler;->hasMessages(I)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState$2;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;

    invoke-static {v5}, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->access$2100(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)I

    move-result v5

    const/16 v6, 0xa

    if-le v5, v6, :cond_3

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState$2;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;

    invoke-static {v5, v8}, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->access$2202(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;I)I

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState$2;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;

    invoke-static {v5}, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->access$2300(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)Lcom/sec/android/gallery3d/ui/SynchronizedHandler;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/sec/android/gallery3d/ui/SynchronizedHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_3
    iget-object v5, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState$2;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;

    invoke-static {v5}, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->access$2408(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)I

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState$2;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;

    invoke-static {v5}, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->access$2500(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)Lcom/sec/android/gallery3d/ui/SynchronizedHandler;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/sec/android/gallery3d/ui/SynchronizedHandler;->removeMessages(I)V

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState$2;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;

    invoke-static {v5}, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->access$2600(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)Lcom/sec/android/gallery3d/ui/SynchronizedHandler;

    move-result-object v5

    invoke-virtual {v5, v2, v10, v11}, Lcom/sec/android/gallery3d/ui/SynchronizedHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    :cond_4
    iget-object v5, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState$2;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;

    invoke-static {v5}, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->access$2700(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)Lcom/sec/android/gallery3d/ui/SynchronizedHandler;

    move-result-object v5

    invoke-virtual {v5, v2, v10, v11}, Lcom/sec/android/gallery3d/ui/SynchronizedHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    :cond_5
    const-string/jumbo v5, "SEARCH_BY_CATEGORY"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    const-string/jumbo v5, "GallerySearchViewState"

    const-string/jumbo v6, "GallerySearchViewState:handleNotification(), NotificationNames.SEARCH_BY_CATEGORY"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState$2;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;

    invoke-static {v5}, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->access$2800(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;->getSource()Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v1

    check-cast v1, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState$2;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;

    invoke-static {v5}, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->access$2900(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)Lcom/sec/samsung/gallery/view/gallerysearch/SearchTagController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/samsung/gallery/view/gallerysearch/SearchTagController;->getTagFilter()Lcom/sec/android/gallery3d/data/SearchTagFilter;

    move-result-object v5

    check-cast v5, Lcom/sec/android/gallery3d/data/GallerySearchTagFilter;

    invoke-virtual {v1, v5}, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->setSearchTagFilter(Lcom/sec/android/gallery3d/data/GallerySearchTagFilter;)V

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState$2;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;

    invoke-static {v5}, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->access$200(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->updateSelectedItems()V

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState$2;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;

    invoke-virtual {v5, v8}, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->setImeVisibility(Z)V

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState$2;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;

    invoke-static {v5}, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->access$3000(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)Lcom/sec/android/gallery3d/ui/SynchronizedHandler;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/sec/android/gallery3d/ui/SynchronizedHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState$2;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;

    invoke-static {v5}, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->access$3100(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)Lcom/sec/android/gallery3d/ui/SynchronizedHandler;

    move-result-object v5

    invoke-virtual {v5, v9}, Lcom/sec/android/gallery3d/ui/SynchronizedHandler;->hasMessages(I)Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState$2;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;

    invoke-static {v5}, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->access$3200(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)Lcom/sec/android/gallery3d/ui/SynchronizedHandler;

    move-result-object v5

    invoke-virtual {v5, v9}, Lcom/sec/android/gallery3d/ui/SynchronizedHandler;->removeMessages(I)V

    :cond_6
    iget-object v5, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState$2;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;

    invoke-static {v5}, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->access$3300(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)Lcom/sec/android/gallery3d/ui/SynchronizedHandler;

    move-result-object v5

    const-wide/16 v6, 0x12c

    invoke-virtual {v5, v2, v6, v7}, Lcom/sec/android/gallery3d/ui/SynchronizedHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    :cond_7
    const-string/jumbo v5, "HIDE_SEARCH_HISTORY"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState$2;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;

    invoke-static {v5}, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->access$200(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;

    move-result-object v5

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->setHistoryVisibility(I)V

    goto/16 :goto_0

    :cond_8
    const-string/jumbo v5, "DELETE_ANIM_START"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState$2;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;

    invoke-static {v5}, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->access$3400(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->copyCurrentActive()V

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState$2;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;

    invoke-static {v5}, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->access$3500(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->runQueueIdleTimer()V

    goto/16 :goto_0

    :cond_9
    const-string/jumbo v5, "REFRESH_LAYOUT"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState$2;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;

    invoke-static {v5}, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->access$3600(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move-result-object v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState$2;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;

    invoke-static {v5}, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->access$3700(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->refreshLayout()V

    goto/16 :goto_0
.end method

.method public listNotificationInterests()[Ljava/lang/String;
    .locals 3

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "EXIT_SELECTION_MODE"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "UPDATE_CATEGORY"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "SEARCH_BY_CATEGORY"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "HIDE_SEARCH_HISTORY"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "DELETE_ANIM_START"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "REFRESH_LAYOUT"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "SEARCH_BY_KEYWORD"

    aput-object v2, v0, v1

    return-object v0
.end method
