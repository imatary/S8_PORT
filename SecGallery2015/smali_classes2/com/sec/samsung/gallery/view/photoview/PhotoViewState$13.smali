.class Lcom/sec/samsung/gallery/view/photoview/PhotoViewState$13;
.super Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$SimpleModelListener;
.source "PhotoViewState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState$13;->this$0:Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$SimpleModelListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSizeChanged(I)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState$13;->this$0:Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;

    # getter for: Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mIsMtpEnter:Z
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->access$100(Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState$13;->this$0:Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;

    iget-boolean v1, v1, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mIsRecycleBinView:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState$13;->this$0:Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;

    iget-boolean v1, v1, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mIsScloudView:Z

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState$13;->this$0:Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;

    # invokes: Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->checkMediaAvailability()V
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->access$5400(Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;)V

    :cond_1
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState$13;->this$0:Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;

    iget-object v1, v1, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState$13;->this$0:Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;

    iget-object v1, v1, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mMainHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3c

    invoke-virtual {v1, v5, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState$13;->this$0:Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;

    iget-object v1, v1, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->getCount()I

    move-result v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState$13;->this$0:Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;

    iget v1, v1, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mCurrentMediaItemIndex:I

    if-lt v1, v0, :cond_2

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState$13;->this$0:Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;

    iput v4, v1, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mCurrentMediaItemIndex:I

    :cond_2
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState$13;->this$0:Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;

    iget-object v1, v1, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState$13;->this$0:Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;

    iget-object v1, v1, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getNumberOfMarkedAsSelected()I

    move-result v1

    if-lez v1, :cond_3

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState$13;->this$0:Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;

    iget-object v2, v1, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->tempTask:Lcom/sec/samsung/gallery/view/photoview/UpdateSelectionModeTask;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState$13;->this$0:Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;

    new-instance v3, Lcom/sec/samsung/gallery/view/photoview/UpdateSelectionModeTask;

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState$13;->this$0:Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;

    invoke-direct {v3, v4}, Lcom/sec/samsung/gallery/view/photoview/UpdateSelectionModeTask;-><init>(Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;)V

    iput-object v3, v1, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mUpdateSelectionModeTask:Lcom/sec/samsung/gallery/view/photoview/UpdateSelectionModeTask;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState$13;->this$0:Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;

    iget-object v1, v1, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mUpdateSelectionModeTask:Lcom/sec/samsung/gallery/view/photoview/UpdateSelectionModeTask;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v1, v3}, Lcom/sec/samsung/gallery/view/photoview/UpdateSelectionModeTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState$13;->this$0:Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;

    # invokes: Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->postUpdateAlbumNameOfActionBar()V
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->access$5500(Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;)V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
