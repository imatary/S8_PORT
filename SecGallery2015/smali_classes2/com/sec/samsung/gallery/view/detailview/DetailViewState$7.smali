.class Lcom/sec/samsung/gallery/view/detailview/DetailViewState$7;
.super Lcom/sec/android/gallery3d/glcore/GlHoverGestureDetector$SimpleOnGestureListener;
.source "DetailViewState.java"


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

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$7;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-direct {p0}, Lcom/sec/android/gallery3d/glcore/GlHoverGestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onMove(III)Z
    .locals 2

    const/4 v0, 0x3

    if-eq p3, v0, :cond_0

    const/4 v0, 0x4

    if-ne p3, v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$7;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mMoreInfo:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$000(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$7;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$2400(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$7;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mGlRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$1900(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/glcore/GlRootView;

    move-result-object v1

    invoke-static {v0, v1, p3}, Lcom/sec/samsung/gallery/util/HoverIconUtil;->setHoveringIconTo(Landroid/content/Context;Landroid/view/View;I)V

    :cond_2
    invoke-super {p0, p1, p2, p3}, Lcom/sec/android/gallery3d/glcore/GlHoverGestureDetector$SimpleOnGestureListener;->onMove(III)Z

    move-result v0

    goto :goto_0
.end method

.method public onNext()Z
    .locals 5

    const/16 v4, 0x3e8

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$7;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mGlRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$1900(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/glcore/GlRootView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/glcore/GlRootView;->isFocusable()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$7;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mIsBurstShotViewer:Z
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$2000(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$7;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mPhotoView:Lcom/sec/android/gallery3d/ui/PhotoView;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$1300(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/ui/PhotoView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/ui/PhotoView;->isAnimationRunning()Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$7;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mPhotoView:Lcom/sec/android/gallery3d/ui/PhotoView;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$1300(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/ui/PhotoView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/ui/PhotoView;->resetToFullView()V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$7;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mPhotoViewPre:Lcom/sec/android/gallery3d/ui/PhotoView;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$400(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/ui/PhotoView;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$7;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mPhotoViewPre:Lcom/sec/android/gallery3d/ui/PhotoView;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$400(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/ui/PhotoView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/ui/PhotoView;->resetToFullView()V

    :cond_1
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$7;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mPhotoView:Lcom/sec/android/gallery3d/ui/PhotoView;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$1300(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/ui/PhotoView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/ui/PhotoView;->previousImage()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$7;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$2100(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/gallery3d/util/GalleryUtils;->playSoundKeyClick(Landroid/content/Context;)V

    :cond_2
    :goto_0
    const/4 v2, 0x1

    :goto_1
    return v2

    :cond_3
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$7;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mPhotoView:Lcom/sec/android/gallery3d/ui/PhotoView;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$1300(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/ui/PhotoView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/ui/PhotoView;->getPositionController()Lcom/sec/android/gallery3d/ui/PositionController;

    move-result-object v0

    invoke-virtual {v0, v4, v3}, Lcom/sec/android/gallery3d/ui/PositionController;->scrollPage(II)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$7;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mPhotoViewPre:Lcom/sec/android/gallery3d/ui/PhotoView;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$400(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/ui/PhotoView;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$7;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mPhotoViewPre:Lcom/sec/android/gallery3d/ui/PhotoView;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$400(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/ui/PhotoView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/ui/PhotoView;->getPositionController()Lcom/sec/android/gallery3d/ui/PositionController;

    move-result-object v1

    invoke-virtual {v1, v4, v3}, Lcom/sec/android/gallery3d/ui/PositionController;->scrollPage(II)V

    goto :goto_0

    :cond_4
    invoke-super {p0}, Lcom/sec/android/gallery3d/glcore/GlHoverGestureDetector$SimpleOnGestureListener;->onNext()Z

    move-result v2

    goto :goto_1

    :cond_5
    invoke-super {p0}, Lcom/sec/android/gallery3d/glcore/GlHoverGestureDetector$SimpleOnGestureListener;->onNext()Z

    move-result v2

    goto :goto_1
.end method

.method public onPress(II)Z
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$7;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$2300(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$7;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mGlRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$1900(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/glcore/GlRootView;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/util/HoverIconUtil;->setHoveringIconToDefault(Landroid/content/Context;Landroid/view/View;)V

    invoke-super {p0, p1, p2}, Lcom/sec/android/gallery3d/glcore/GlHoverGestureDetector$SimpleOnGestureListener;->onPress(II)Z

    move-result v0

    return v0
.end method

.method public onPrevious()Z
    .locals 5

    const/4 v4, 0x0

    const/16 v3, -0x3e8

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$7;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mGlRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$1900(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/glcore/GlRootView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/glcore/GlRootView;->isFocusable()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$7;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mIsBurstShotViewer:Z
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$2000(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$7;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mPhotoView:Lcom/sec/android/gallery3d/ui/PhotoView;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$1300(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/ui/PhotoView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/ui/PhotoView;->isAnimationRunning()Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$7;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mPhotoView:Lcom/sec/android/gallery3d/ui/PhotoView;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$1300(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/ui/PhotoView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/ui/PhotoView;->resetToFullView()V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$7;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mPhotoViewPre:Lcom/sec/android/gallery3d/ui/PhotoView;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$400(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/ui/PhotoView;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$7;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mPhotoViewPre:Lcom/sec/android/gallery3d/ui/PhotoView;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$400(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/ui/PhotoView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/ui/PhotoView;->resetToFullView()V

    :cond_1
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$7;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mPhotoView:Lcom/sec/android/gallery3d/ui/PhotoView;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$1300(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/ui/PhotoView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/ui/PhotoView;->nextImage()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$7;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$2200(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/gallery3d/util/GalleryUtils;->playSoundKeyClick(Landroid/content/Context;)V

    :cond_2
    :goto_0
    const/4 v2, 0x1

    :goto_1
    return v2

    :cond_3
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$7;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mPhotoView:Lcom/sec/android/gallery3d/ui/PhotoView;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$1300(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/ui/PhotoView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/ui/PhotoView;->getPositionController()Lcom/sec/android/gallery3d/ui/PositionController;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Lcom/sec/android/gallery3d/ui/PositionController;->scrollPage(II)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$7;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mPhotoViewPre:Lcom/sec/android/gallery3d/ui/PhotoView;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$400(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/ui/PhotoView;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$7;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mPhotoViewPre:Lcom/sec/android/gallery3d/ui/PhotoView;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$400(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/ui/PhotoView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/ui/PhotoView;->getPositionController()Lcom/sec/android/gallery3d/ui/PositionController;

    move-result-object v1

    invoke-virtual {v1, v3, v4}, Lcom/sec/android/gallery3d/ui/PositionController;->scrollPage(II)V

    goto :goto_0

    :cond_4
    invoke-super {p0}, Lcom/sec/android/gallery3d/glcore/GlHoverGestureDetector$SimpleOnGestureListener;->onPrevious()Z

    move-result v2

    goto :goto_1

    :cond_5
    invoke-super {p0}, Lcom/sec/android/gallery3d/glcore/GlHoverGestureDetector$SimpleOnGestureListener;->onPrevious()Z

    move-result v2

    goto :goto_1
.end method

.method public onRelease(IIII)Z
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$7;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$2500(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$7;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mGlRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$1900(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/glcore/GlRootView;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/util/HoverIconUtil;->setHoveringIconToDefault(Landroid/content/Context;Landroid/view/View;)V

    invoke-super {p0, p1, p2, p3, p4}, Lcom/sec/android/gallery3d/glcore/GlHoverGestureDetector$SimpleOnGestureListener;->onRelease(IIII)Z

    move-result v0

    return v0
.end method
