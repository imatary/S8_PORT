.class Lcom/sec/samsung/gallery/view/detailview/DetailViewState$17$3;
.super Ljava/lang/Object;
.source "DetailViewState.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/detailview/DetailViewState$17;->handleMoreInfoSearchEvent(Lorg/puremvc/java/multicore/interfaces/INotification;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/samsung/gallery/view/detailview/DetailViewState$17;

.field final synthetic val$data:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/detailview/DetailViewState$17;Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$17$3;->this$1:Lcom/sec/samsung/gallery/view/detailview/DetailViewState$17;

    iput-object p2, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$17$3;->val$data:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$17$3;->this$1:Lcom/sec/samsung/gallery/view/detailview/DetailViewState$17;

    iget-object v1, v1, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$17;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mMoreInfo:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$000(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$17$3;->this$1:Lcom/sec/samsung/gallery/view/detailview/DetailViewState$17;

    iget-object v1, v1, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$17;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mMoreInfo:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$000(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$17$3;->this$1:Lcom/sec/samsung/gallery/view/detailview/DetailViewState$17;

    iget-object v1, v1, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$17;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # invokes: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->unregisterSIPBroadcastReceiver()V
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$23100(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$17$3;->this$1:Lcom/sec/samsung/gallery/view/detailview/DetailViewState$17;

    iget-object v1, v1, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$17;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mMoreInfo:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$000(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;->setVisible(Z)V

    :cond_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$17$3;->this$1:Lcom/sec/samsung/gallery/view/detailview/DetailViewState$17;

    iget-object v1, v1, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$17;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$23200(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/StateManager;->getTopState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$17$3;->this$1:Lcom/sec/samsung/gallery/view/detailview/DetailViewState$17;

    iget-object v1, v1, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$17;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$3300(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setPreviousActivityState(Lcom/sec/android/gallery3d/app/ActivityState;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$17$3;->this$1:Lcom/sec/samsung/gallery/view/detailview/DetailViewState$17;

    iget-object v1, v1, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$17;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$23300(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v1

    const-class v2, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$17$3;->val$data:Landroid/os/Bundle;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/gallery3d/app/StateManager;->startState(Ljava/lang/Class;Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$17$3;->this$1:Lcom/sec/samsung/gallery/view/detailview/DetailViewState$17;

    iget-object v1, v1, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$17;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # invokes: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->setFullScreenMode(Z)V
    invoke-static {v1, v4}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$23400(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;Z)V

    return-void
.end method
