.class Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$9;
.super Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$SimpleModelListener;
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
.method constructor <init>(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$9;->this$0:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$SimpleModelListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSizeChanged(I)V
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$9;->this$0:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mSplitMode:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$9;->this$0:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mSplitMode:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->setNewMarkVisibility()V

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$9;->this$0:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$9;->this$0:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mMainHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$9;->this$0:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$9;->this$0:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getNumberOfMarkedAsSelected()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$9;->this$0:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

    iget-object v1, v0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->tempTask:Lcom/sec/samsung/gallery/view/photoviewcomm/UpdateSelectionModeTaskComm;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$9;->this$0:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

    new-instance v2, Lcom/sec/samsung/gallery/view/photosplitview/UpdateSelectionModeTask;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$9;->this$0:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

    invoke-direct {v2, v3}, Lcom/sec/samsung/gallery/view/photosplitview/UpdateSelectionModeTask;-><init>(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;)V

    iput-object v2, v0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mUpdateSelectionModeTask:Lcom/sec/samsung/gallery/view/photoviewcomm/UpdateSelectionModeTaskComm;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$9;->this$0:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mUpdateSelectionModeTask:Lcom/sec/samsung/gallery/view/photoviewcomm/UpdateSelectionModeTaskComm;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v2}, Lcom/sec/samsung/gallery/view/photoviewcomm/UpdateSelectionModeTaskComm;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    monitor-exit v1

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
