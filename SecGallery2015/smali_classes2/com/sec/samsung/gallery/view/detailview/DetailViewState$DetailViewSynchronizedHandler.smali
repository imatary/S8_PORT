.class Lcom/sec/samsung/gallery/view/detailview/DetailViewState$DetailViewSynchronizedHandler;
.super Lcom/sec/android/gallery3d/ui/SynchronizedHandler;
.source "DetailViewState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/detailview/DetailViewState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DetailViewSynchronizedHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;Lcom/sec/android/gallery3d/ui/GLRoot;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$DetailViewSynchronizedHandler;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-direct {p0, p2}, Lcom/sec/android/gallery3d/ui/SynchronizedHandler;-><init>(Lcom/sec/android/gallery3d/ui/GLRoot;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12

    const-wide/16 v10, 0xa

    const v1, 0x3f733333    # 0.95f

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    new-instance v0, Ljava/lang/AssertionError;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(I)V

    throw v0

    :sswitch_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$DetailViewSynchronizedHandler;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # invokes: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->hideBars(Z)V
    invoke-static {v0, v4}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$12200(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;Z)V

    :cond_0
    :goto_0
    :sswitch_1
    return-void

    :sswitch_2
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$DetailViewSynchronizedHandler;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # invokes: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->updateBars()V
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$24200(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)V

    goto :goto_0

    :sswitch_3
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$DetailViewSynchronizedHandler;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # invokes: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->wantBars()V
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$39700(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)V

    goto :goto_0

    :sswitch_4
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$DetailViewSynchronizedHandler;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$39800(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGLRoot()Lcom/sec/android/gallery3d/ui/GLRoot;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/gallery3d/ui/GLRoot;->unfreeze()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$DetailViewSynchronizedHandler;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mGlRootViewPre:Lcom/sec/android/gallery3d/glcore/GlRootView;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$39900(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/glcore/GlRootView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$DetailViewSynchronizedHandler;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mGlRootViewPre:Lcom/sec/android/gallery3d/glcore/GlRootView;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$39900(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/glcore/GlRootView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glcore/GlRootView;->unfreeze()V

    goto :goto_0

    :sswitch_5
    const-wide v0, 0x7fffffffffffffffL

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long v8, v0, v4

    const-wide/16 v0, 0x0

    cmp-long v0, v8, v0

    if-gtz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$DetailViewSynchronizedHandler;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # invokes: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->updateUIForCurrentPhoto()V
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$18200(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$DetailViewSynchronizedHandler;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$3500(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {v0, v1, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :sswitch_6
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$DetailViewSynchronizedHandler;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$4600(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$DetailViewSynchronizedHandler;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$4600(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/MediaSet;->getTotalMediaItemCount()I

    move-result v0

    if-le v0, v3, :cond_6

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$DetailViewSynchronizedHandler;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mIsFromCamera:Z
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$5400(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$DetailViewSynchronizedHandler;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->onBackPressed()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$DetailViewSynchronizedHandler;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$40000(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isCoverMode(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$DetailViewSynchronizedHandler;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mGalleryCoverMode:Lcom/sec/android/gallery3d/app/GalleryCoverMode;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$29700(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/app/GalleryCoverMode;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$DetailViewSynchronizedHandler;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mGalleryCoverMode:Lcom/sec/android/gallery3d/app/GalleryCoverMode;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$29700(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/app/GalleryCoverMode;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/GalleryCoverMode;->setActivityResult(I)V

    :cond_3
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$DetailViewSynchronizedHandler;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$40100(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->finish()V

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$DetailViewSynchronizedHandler;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mFilmStripView:Lcom/sec/android/gallery3d/ui/FilmStripView;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$100(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/ui/FilmStripView;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$DetailViewSynchronizedHandler;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mFilmStripView:Lcom/sec/android/gallery3d/ui/FilmStripView;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$100(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/ui/FilmStripView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/FilmStripView;->isSelectionMode()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$DetailViewSynchronizedHandler;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$40200(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v0

    invoke-static {v0, v4}, Lcom/sec/samsung/gallery/controller/StartCameraCmd;->startCameraActivity(Landroid/content/Context;Z)V

    :cond_5
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$DetailViewSynchronizedHandler;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mPhotoView:Lcom/sec/android/gallery3d/ui/PhotoView;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$1300(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/ui/PhotoView;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/sec/android/gallery3d/ui/PhotoView;->switchToImage(I)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$DetailViewSynchronizedHandler;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mPhotoViewPre:Lcom/sec/android/gallery3d/ui/PhotoView;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$400(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/ui/PhotoView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$DetailViewSynchronizedHandler;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mPhotoViewPre:Lcom/sec/android/gallery3d/ui/PhotoView;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$400(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/ui/PhotoView;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/sec/android/gallery3d/ui/PhotoView;->switchToImage(I)V

    goto/16 :goto_0

    :cond_6
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$DetailViewSynchronizedHandler;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # invokes: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->updateBars()V
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$24200(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$DetailViewSynchronizedHandler;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$DetailViewSynchronizedHandler;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mModel:Lcom/sec/samsung/gallery/view/detailview/Model;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$200(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/samsung/gallery/view/detailview/Model;

    move-result-object v1

    invoke-interface {v1, v4}, Lcom/sec/samsung/gallery/view/detailview/Model;->getMediaItem(I)Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v1

    # invokes: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->updateCurrentPhoto(Lcom/sec/android/gallery3d/data/MediaItem;)V
    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$24000(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;Lcom/sec/android/gallery3d/data/MediaItem;)V

    goto/16 :goto_0

    :sswitch_7
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$DetailViewSynchronizedHandler;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # invokes: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->setUserInteractionShowMode()V
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$40300(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)V

    goto/16 :goto_0

    :sswitch_8
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$DetailViewSynchronizedHandler;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mPhotoView:Lcom/sec/android/gallery3d/ui/PhotoView;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$1300(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/ui/PhotoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/PhotoView;->getPositionController()Lcom/sec/android/gallery3d/ui/PositionController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/PositionController;->isInScale()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$DetailViewSynchronizedHandler;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mPhotoView:Lcom/sec/android/gallery3d/ui/PhotoView;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$1300(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/ui/PhotoView;

    move-result-object v0

    const v1, 0x3f866666    # 1.05f

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/ui/PhotoView;->startScale(F)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$DetailViewSynchronizedHandler;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$3500(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x65

    invoke-virtual {v0, v1, v10, v11}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    :sswitch_9
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$DetailViewSynchronizedHandler;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mPhotoView:Lcom/sec/android/gallery3d/ui/PhotoView;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$1300(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/ui/PhotoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/PhotoView;->getPositionController()Lcom/sec/android/gallery3d/ui/PositionController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/PositionController;->isInScale()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$DetailViewSynchronizedHandler;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mPhotoView:Lcom/sec/android/gallery3d/ui/PhotoView;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$1300(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/ui/PhotoView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/ui/PhotoView;->startScale(F)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$DetailViewSynchronizedHandler;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mPhotoViewPre:Lcom/sec/android/gallery3d/ui/PhotoView;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$400(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/ui/PhotoView;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$DetailViewSynchronizedHandler;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mPhotoViewPre:Lcom/sec/android/gallery3d/ui/PhotoView;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$400(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/ui/PhotoView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/ui/PhotoView;->startScale(F)V

    :cond_7
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$DetailViewSynchronizedHandler;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$3500(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x66

    invoke-virtual {v0, v1, v10, v11}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    :sswitch_a
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$DetailViewSynchronizedHandler;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mPhotoView:Lcom/sec/android/gallery3d/ui/PhotoView;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$1300(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/ui/PhotoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/PhotoView;->endScale()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$DetailViewSynchronizedHandler;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mPhotoViewPre:Lcom/sec/android/gallery3d/ui/PhotoView;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$400(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/ui/PhotoView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$DetailViewSynchronizedHandler;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mPhotoViewPre:Lcom/sec/android/gallery3d/ui/PhotoView;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$400(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/ui/PhotoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/PhotoView;->endScale()V

    goto/16 :goto_0

    :sswitch_b
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$DetailViewSynchronizedHandler;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$40400(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGLRoot()Lcom/sec/android/gallery3d/ui/GLRoot;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-virtual {v0, v3}, Lcom/sec/android/gallery3d/glcore/GlRootView;->setPostOnAnimation(Z)V

    goto/16 :goto_0

    :sswitch_c
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$DetailViewSynchronizedHandler;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mPhotoView:Lcom/sec/android/gallery3d/ui/PhotoView;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$1300(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/ui/PhotoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/PhotoView;->invalidate()V

    goto/16 :goto_0

    :sswitch_d
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$DetailViewSynchronizedHandler;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # invokes: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->finishDetailView()V
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$22600(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)V

    goto/16 :goto_0

    :sswitch_e
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$DetailViewSynchronizedHandler;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$40500(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->setShowHideAnimationEnabled(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$DetailViewSynchronizedHandler;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # invokes: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->showActionBar()V
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$29400(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)V

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->FEATURE_IS_NOS:Z
    invoke-static {}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$8400()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$DetailViewSynchronizedHandler;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$40600(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->setShowHideAnimationEnabled(Z)V

    goto/16 :goto_0

    :sswitch_f
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$DetailViewSynchronizedHandler;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mUseFilmStripWithFastOptionView:Z
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$6400(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$DetailViewSynchronizedHandler;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # invokes: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->showBottomArea(ZZ)V
    invoke-static {v0, v4, v3}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$34000(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;ZZ)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$DetailViewSynchronizedHandler;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mBackgroundView:Lcom/sec/android/gallery3d/ui/BackgroundView;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$8200(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/ui/BackgroundView;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$DetailViewSynchronizedHandler;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mBackgroundView:Lcom/sec/android/gallery3d/ui/BackgroundView;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$8200(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/ui/BackgroundView;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/sec/android/gallery3d/ui/BackgroundView;->setVisibility(I)V

    :cond_8
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$DetailViewSynchronizedHandler;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mFilmStripView:Lcom/sec/android/gallery3d/ui/FilmStripView;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$100(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/ui/FilmStripView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$DetailViewSynchronizedHandler;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mFilmStripView:Lcom/sec/android/gallery3d/ui/FilmStripView;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$100(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/ui/FilmStripView;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/sec/android/gallery3d/ui/FilmStripView;->setVisibility(I)V

    goto/16 :goto_0

    :cond_9
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$DetailViewSynchronizedHandler;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mFastOptionView:Lcom/sec/samsung/gallery/view/detailview/FastOptionView;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$6500(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/samsung/gallery/view/detailview/FastOptionView;

    move-result-object v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$DetailViewSynchronizedHandler;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mFastOptionView:Lcom/sec/samsung/gallery/view/detailview/FastOptionView;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$6500(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/samsung/gallery/view/detailview/FastOptionView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->isFastOptionViewShowing()Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$DetailViewSynchronizedHandler;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mFastOptionView:Lcom/sec/samsung/gallery/view/detailview/FastOptionView;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$6500(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/samsung/gallery/view/detailview/FastOptionView;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->showFastOptionView(Z)V

    :cond_a
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$DetailViewSynchronizedHandler;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mCommentsView:Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$6700(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$DetailViewSynchronizedHandler;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mCommentsView:Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$6700(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView;->isCommentsViewShowing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$DetailViewSynchronizedHandler;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->getCurrentMediaItem()Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v0

    instance-of v0, v0, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$DetailViewSynchronizedHandler;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mCommentsView:Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$6700(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView;->showCommentsView()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$DetailViewSynchronizedHandler;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mIsFromNotiView:Z
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$40700(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$DetailViewSynchronizedHandler;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mIsLikeView:Z
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$40800(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$DetailViewSynchronizedHandler;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mCommentsView:Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$6700(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView;

    move-result-object v0

    invoke-virtual {v0, v4, v4}, Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView;->startChannelCommentsActivity(ZZ)V

    goto/16 :goto_0

    :sswitch_10
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$DetailViewSynchronizedHandler;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # invokes: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->updateEnvironmentTagView()V
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$40900(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)V

    goto/16 :goto_0

    :sswitch_11
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$DetailViewSynchronizedHandler;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # invokes: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->updateDisplayDateLocationView()V
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$28300(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)V

    goto/16 :goto_0

    :sswitch_12
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$DetailViewSynchronizedHandler;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # invokes: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->updateSourceForNoItem()V
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$41000(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)V

    goto/16 :goto_0

    :sswitch_13
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$DetailViewSynchronizedHandler;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mDeleteObject:Lcom/sec/android/gallery3d/data/MediaObject;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$21200(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/data/MediaObject;

    move-result-object v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$DetailViewSynchronizedHandler;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mDeleteObject:Lcom/sec/android/gallery3d/data/MediaObject;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$21200(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/data/MediaObject;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-ne v0, v1, :cond_b

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$DetailViewSynchronizedHandler;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    const/4 v1, 0x0

    # setter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mDeleteObject:Lcom/sec/android/gallery3d/data/MediaObject;
    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$21202(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;Lcom/sec/android/gallery3d/data/MediaObject;)Lcom/sec/android/gallery3d/data/MediaObject;

    :cond_b
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$DetailViewSynchronizedHandler;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$41100(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryApplication()Lcom/sec/android/gallery3d/app/GalleryApp;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/gallery3d/app/GalleryApp;->isFestivalMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$DetailViewSynchronizedHandler;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$41200(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v3, "com.sec.android.widget.myeventwidget.intent.action.ACTION_DATASET_CHANGED"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    :sswitch_14
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$DetailViewSynchronizedHandler;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # invokes: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->setScreenFlags()V
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$41300(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)V

    goto/16 :goto_0

    :sswitch_15
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$DetailViewSynchronizedHandler;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # invokes: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->showBottomArea(ZZ)V
    invoke-static {v0, v4, v4}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$34000(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;ZZ)V

    goto/16 :goto_0

    :sswitch_16
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$DetailViewSynchronizedHandler;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mFastOptionView:Lcom/sec/samsung/gallery/view/detailview/FastOptionView;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$6500(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/samsung/gallery/view/detailview/FastOptionView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$DetailViewSynchronizedHandler;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mFastOptionView:Lcom/sec/samsung/gallery/view/detailview/FastOptionView;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$6500(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/samsung/gallery/view/detailview/FastOptionView;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$DetailViewSynchronizedHandler;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mCurrentPhoto:Lcom/sec/android/gallery3d/data/MediaItem;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$1000(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->setContentType(Lcom/sec/android/gallery3d/data/MediaItem;)V

    goto/16 :goto_0

    :sswitch_17
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$DetailViewSynchronizedHandler;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mPhotoView:Lcom/sec/android/gallery3d/ui/PhotoView;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$1300(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/ui/PhotoView;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$DetailViewSynchronizedHandler;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mModel:Lcom/sec/samsung/gallery/view/detailview/Model;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$200(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/samsung/gallery/view/detailview/Model;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/samsung/gallery/view/detailview/Model;->getNextDirection()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/ui/PhotoView;->deleteCurrentImageAfterSlide(I)V

    goto/16 :goto_0

    :sswitch_18
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$DetailViewSynchronizedHandler;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # invokes: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->handleDisplayChanged()V
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$3900(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)V

    goto/16 :goto_0

    :sswitch_19
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$DetailViewSynchronizedHandler;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # invokes: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->startAutoAdjust()V
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$41400(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)V

    goto/16 :goto_0

    :sswitch_1a
    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->FEATURE_USE_SOCIAL_STORY_VIEW:Z
    invoke-static {}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$6600()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$DetailViewSynchronizedHandler;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mCommentsView:Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$6700(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$DetailViewSynchronizedHandler;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mChannelAlbumSet:Lcom/sec/android/gallery3d/data/ChannelAlbum;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$25000(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/data/ChannelAlbum;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$DetailViewSynchronizedHandler;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->getCurrentMediaItem()Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/data/MediaItem;->getCMHFileId()I

    move-result v2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$DetailViewSynchronizedHandler;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mCommentsView:Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$6700(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$DetailViewSynchronizedHandler;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mChannelAlbumSet:Lcom/sec/android/gallery3d/data/ChannelAlbum;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$25000(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/data/ChannelAlbum;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/data/ChannelAlbum;->getSocialInfo(I)Lcom/sec/android/gallery3d/data/ChannelItemSocialInfo;

    move-result-object v1

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$DetailViewSynchronizedHandler;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mChannelAlbumSet:Lcom/sec/android/gallery3d/data/ChannelAlbum;
    invoke-static {v5}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$25000(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/data/ChannelAlbum;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/data/ChannelAlbum;->getOwner()I

    move-result v5

    if-ne v5, v3, :cond_c

    :goto_1
    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$DetailViewSynchronizedHandler;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mChannelAlbumSet:Lcom/sec/android/gallery3d/data/ChannelAlbum;
    invoke-static {v4}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$25000(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/data/ChannelAlbum;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/data/ChannelAlbum;->getUGCI()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$DetailViewSynchronizedHandler;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # invokes: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->getUniquePath(Lcom/sec/android/gallery3d/data/MediaItem;)Ljava/lang/String;
    invoke-static {v5, v6}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$25100(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;Lcom/sec/android/gallery3d/data/MediaItem;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/sec/samsung/gallery/view/detailview/DetailCommentsView;->updateItemInfo(Lcom/sec/android/gallery3d/data/ChannelItemSocialInfo;IZLjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_c
    move v3, v4

    goto :goto_1

    :sswitch_1b
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$DetailViewSynchronizedHandler;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$7100(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->dismissDialogs()V

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_4
        0x5 -> :sswitch_3
        0x6 -> :sswitch_6
        0x7 -> :sswitch_5
        0x65 -> :sswitch_8
        0x66 -> :sswitch_9
        0x67 -> :sswitch_7
        0x68 -> :sswitch_a
        0x6c -> :sswitch_b
        0x6f -> :sswitch_c
        0x70 -> :sswitch_d
        0x71 -> :sswitch_e
        0x72 -> :sswitch_f
        0x74 -> :sswitch_10
        0x75 -> :sswitch_12
        0x76 -> :sswitch_13
        0x77 -> :sswitch_14
        0x78 -> :sswitch_15
        0x79 -> :sswitch_11
        0x7a -> :sswitch_16
        0x7b -> :sswitch_17
        0x7c -> :sswitch_18
        0x7d -> :sswitch_19
        0x7e -> :sswitch_1a
        0x7f -> :sswitch_1b
    .end sparse-switch
.end method
