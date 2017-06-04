.class Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$10;
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

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$10;->this$0:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$SimpleModelListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSizeChanged(I)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$10;->this$0:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

    iget-object v1, v1, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$10;->this$0:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

    iget-object v1, v1, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mMainHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3c

    invoke-virtual {v1, v5, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$10;->this$0:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

    iget-object v1, v1, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->getCount()I

    move-result v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$10;->this$0:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

    iget v1, v1, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mCurrentMediaItemIndex:I

    if-lt v1, v0, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$10;->this$0:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

    iput v4, v1, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mCurrentMediaItemIndex:I

    :cond_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$10;->this$0:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

    iget-object v1, v1, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$10;->this$0:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

    iget-object v1, v1, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getNumberOfMarkedAsSelected()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$10;->this$0:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

    iget-object v2, v1, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->tempTask:Lcom/sec/samsung/gallery/view/photoviewcomm/UpdateSelectionModeTaskComm;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$10;->this$0:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

    new-instance v3, Lcom/sec/samsung/gallery/view/photosplitview/UpdateSelectionModeTask;

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$10;->this$0:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

    invoke-direct {v3, v4}, Lcom/sec/samsung/gallery/view/photosplitview/UpdateSelectionModeTask;-><init>(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;)V

    iput-object v3, v1, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mUpdateSelectionModeTask:Lcom/sec/samsung/gallery/view/photoviewcomm/UpdateSelectionModeTaskComm;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$10;->this$0:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

    iget-object v1, v1, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mUpdateSelectionModeTask:Lcom/sec/samsung/gallery/view/photoviewcomm/UpdateSelectionModeTaskComm;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v1, v3}, Lcom/sec/samsung/gallery/view/photoviewcomm/UpdateSelectionModeTaskComm;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$10;->this$0:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->postUpdateAlbumNameOfActionBar()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
