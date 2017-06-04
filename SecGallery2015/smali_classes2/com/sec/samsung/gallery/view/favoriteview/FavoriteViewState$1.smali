.class Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState$1;
.super Lorg/puremvc/java/multicore/patterns/mediator/Mediator;
.source "FavoriteViewState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState$1;->this$0:Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;

    invoke-direct {p0, p2, p3}, Lorg/puremvc/java/multicore/patterns/mediator/Mediator;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public handleNotification(Lorg/puremvc/java/multicore/interfaces/INotification;)V
    .locals 5

    invoke-interface {p1}, Lorg/puremvc/java/multicore/interfaces/INotification;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v4, "DOWNLOAD_CLOUDBY"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {p1}, Lorg/puremvc/java/multicore/interfaces/INotification;->getBody()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/Object;

    move-object v3, v4

    check-cast v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aget-object v2, v3, v4

    check-cast v2, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState$1;->this$0:Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;

    # getter for: Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v4}, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->access$000(Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v4

    invoke-static {v4, v2}, Lcom/sec/samsung/gallery/util/DownloadUtil;->downloadEnqueue(Landroid/content/Context;Ljava/util/ArrayList;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v4, "REFRESH_LAYOUT"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState$1;->this$0:Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;

    # getter for: Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
    invoke-static {v4}, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->access$100(Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState$1;->this$0:Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;

    # getter for: Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
    invoke-static {v4}, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->access$100(Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->refreshLayout()V

    goto :goto_0

    :cond_2
    const-string/jumbo v4, "MEDIA_EJECT"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState$1;->this$0:Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;

    # getter for: Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;
    invoke-static {v4}, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->access$200(Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;)Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState$1;->this$0:Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;

    # getter for: Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v4}, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->access$300(Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/StateManager;->getTopState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v0

    instance-of v4, v0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState$1;->this$0:Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;

    # invokes: Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->exitSelectionMode()V
    invoke-static {v4}, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->access$400(Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;)V

    goto :goto_0

    :cond_3
    const-string/jumbo v4, "UPDATE_MENU"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState$1;->this$0:Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;

    # getter for: Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v4}, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->access$500(Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->closeOptionsMenu()V

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState$1;->this$0:Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;

    # getter for: Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;
    invoke-static {v4}, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->access$600(Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;)Lcom/sec/samsung/gallery/view/ActionBarManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/view/ActionBarManager;->invalidateOptionsMenu()V

    goto :goto_0
.end method

.method public listNotificationInterests()[Ljava/lang/String;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "DOWNLOAD_CLOUDBY"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "REFRESH_LAYOUT"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "MEDIA_EJECT"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "UPDATE_MENU"

    aput-object v2, v0, v1

    return-object v0
.end method
