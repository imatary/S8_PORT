.class Lcom/sec/samsung/gallery/view/detailview/DetailViewState$11;
.super Ljava/lang/Object;
.source "DetailViewState.java"

# interfaces
.implements Lcom/sec/android/gallery3d/ui/FilmStripView$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/detailview/DetailViewState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$11;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getIsFromCamera()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$11;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$5400(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$11;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$2000(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onLongTap()V
    .locals 4

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$11;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$4100(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$11;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$4200(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isCameraQuickViewOnLockscreen(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$11;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$2000(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_2
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$11;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$1000(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v0

    instance-of v0, v0, Lcom/sec/android/gallery3d/data/UriImage;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$11;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$4400(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/samsung/gallery/view/ActionBarManager;

    move-result-object v0

    new-instance v1, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForSelection;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$11;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v2}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$4300(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForSelection;-><init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;Z)V

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/ActionBarManager;->setAction(Lcom/sec/samsung/gallery/view/AbstractActionBar;)V

    goto :goto_0
.end method

.method public onSelectionChanged(Lcom/sec/android/gallery3d/data/MediaItem;ZI)V
    .locals 10

    const/4 v0, 0x1

    const/4 v4, 0x0

    if-eqz p2, :cond_1

    invoke-static {}, Lcom/sec/samsung/gallery/util/TTSUtil;->getInstance()Lcom/sec/samsung/gallery/util/TTSUtil;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$11;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v6}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$4500(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v6

    const v7, 0x7f0a040e

    new-array v8, v0, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->getName()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v4

    invoke-virtual {v5, v6, v7, v8}, Lcom/sec/samsung/gallery/util/TTSUtil;->speak(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;I[Ljava/lang/Object;)V

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$11;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v5}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$4700(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$11;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v6}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$4600(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v6

    invoke-virtual {v5, v6, p1, p3}, Lcom/sec/android/gallery3d/ui/SelectionManager;->add(Lcom/sec/android/gallery3d/data/MediaSet;Lcom/sec/android/gallery3d/data/MediaObject;I)V

    :goto_0
    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$11;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v5}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$4700(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getNumberOfMarkedAsSelected()I

    move-result v3

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$11;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v5}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$4900(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/samsung/gallery/view/ActionBarManager;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/sec/samsung/gallery/view/ActionBarManager;->setSelectedItemCount(I)V

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$11;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v5}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$200(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/samsung/gallery/view/detailview/Model;

    move-result-object v2

    check-cast v2, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->getCount()I

    move-result v1

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$11;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v5}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$5000(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Z

    move-result v5

    if-eqz v5, :cond_0

    add-int/lit8 v1, v1, -0x1

    :cond_0
    if-eqz p2, :cond_2

    if-ne v3, v1, :cond_2

    :goto_1
    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$11;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v5}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$5100(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/samsung/gallery/view/ActionBarManager;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$11;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v6}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$4700(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getNumberOfMarkedAsSelected()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/sec/samsung/gallery/view/ActionBarManager;->setTitle(I)V

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$11;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v5}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$5200(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/samsung/gallery/view/ActionBarManager;

    move-result-object v5

    invoke-virtual {v5, v4, v0}, Lcom/sec/samsung/gallery/view/ActionBarManager;->updateButton(IZ)V

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$11;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v4}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$5300(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)V

    return-void

    :cond_1
    invoke-static {}, Lcom/sec/samsung/gallery/util/TTSUtil;->getInstance()Lcom/sec/samsung/gallery/util/TTSUtil;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$11;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v6}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$4800(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v6

    const v7, 0x7f0a040f

    new-array v8, v0, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->getName()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v4

    invoke-virtual {v5, v6, v7, v8}, Lcom/sec/samsung/gallery/util/TTSUtil;->speak(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;I[Ljava/lang/Object;)V

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$11;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v5}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$4700(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/sec/android/gallery3d/ui/SelectionManager;->remove(Lcom/sec/android/gallery3d/data/MediaObject;)V

    goto :goto_0

    :cond_2
    move v0, v4

    goto :goto_1
.end method

.method public onSelectionModeChanged(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$11;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$1300(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/ui/PhotoView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/gallery3d/ui/PhotoView;->setIsSelectionMode(Z)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$11;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$4700(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/SelectionManager;->removeAll()V

    :cond_0
    return-void
.end method

.method public onSlotSelected(I)Z
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$11;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$1300(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/ui/PhotoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/PhotoView;->getPositionController()Lcom/sec/android/gallery3d/ui/PositionController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/PositionController;->stopScrolling()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$11;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$2000(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$11;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->getSAScreenId()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "4609"

    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/util/SamsungAnalyticsLogUtil;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$11;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$1300(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/ui/PhotoView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/gallery3d/ui/PhotoView;->jumpTo(I)Z

    move-result v0

    return v0
.end method
