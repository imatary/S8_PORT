.class Lcom/sec/samsung/gallery/view/detailview/DetailViewRelatedSearchChecker$1;
.super Landroid/os/Handler;
.source "DetailViewRelatedSearchChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/detailview/DetailViewRelatedSearchChecker;->setRelatedSearchCheckHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewRelatedSearchChecker;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/detailview/DetailViewRelatedSearchChecker;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewRelatedSearchChecker$1;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewRelatedSearchChecker;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewRelatedSearchChecker$1;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewRelatedSearchChecker;

    invoke-static {v4}, Lcom/sec/samsung/gallery/view/detailview/DetailViewRelatedSearchChecker;->access$000(Lcom/sec/samsung/gallery/view/detailview/DetailViewRelatedSearchChecker;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/StateManager;->getTopState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v2

    instance-of v4, v2, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    if-eqz v4, :cond_0

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/ActivityState;->isFinishing()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/ActivityState;->getActionBarManager()Lcom/sec/samsung/gallery/view/ActionBarManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/view/ActionBarManager;->getActionBarView()Lcom/sec/samsung/gallery/view/AbstractActionBar;

    move-result-object v0

    instance-of v4, v0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;

    if-eqz v4, :cond_0

    move-object v4, v0

    check-cast v4, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;->isNeedToCheckRelatedSearch()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewRelatedSearchChecker$1;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewRelatedSearchChecker;

    move-object v4, v0

    check-cast v4, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;->getCurrentPhoto()Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/sec/samsung/gallery/view/detailview/DetailViewRelatedSearchChecker;->access$100(Lcom/sec/samsung/gallery/view/detailview/DetailViewRelatedSearchChecker;Lcom/sec/android/gallery3d/data/MediaItem;)Z

    move-result v1

    check-cast v0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;->updateRelatedSearchMenu(Z)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
