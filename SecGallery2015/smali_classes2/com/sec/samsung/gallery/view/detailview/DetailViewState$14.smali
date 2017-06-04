.class Lcom/sec/samsung/gallery/view/detailview/DetailViewState$14;
.super Lcom/sec/android/gallery3d/ui/GLView;
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

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$14;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-direct {p0}, Lcom/sec/android/gallery3d/ui/GLView;-><init>()V

    return-void
.end method

.method private setBackgroundColor(Lcom/sec/android/gallery3d/glrenderer/GLCanvas;)V
    .locals 12

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$14;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # invokes: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->getAnimationRatio()F
    invoke-static {v5}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$8800(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)F

    move-result v3

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->WHITE_BACKGROUND_COLOR:[F
    invoke-static {}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$8900()[F

    move-result-object v5

    aget v0, v5, v8

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->WHITE_BACKGROUND_COLOR:[F
    invoke-static {}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$8900()[F

    move-result-object v5

    aget v4, v5, v9

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->WHITE_BACKGROUND_COLOR:[F
    invoke-static {}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$8900()[F

    move-result-object v5

    aget v2, v5, v10

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->WHITE_BACKGROUND_COLOR:[F
    invoke-static {}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$8900()[F

    move-result-object v5

    aget v1, v5, v11

    const/4 v5, 0x0

    cmpl-float v5, v3, v5

    if-ltz v5, :cond_2

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$14;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mIsDelete:Z
    invoke-static {v5}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$9000(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Z

    move-result v5

    if-eqz v5, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$14;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mShowBars:Z
    invoke-static {v5}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$9100(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x4

    new-array v5, v5, [F

    aput v0, v5, v8

    mul-float v6, v4, v3

    aput v6, v5, v9

    mul-float v6, v2, v3

    aput v6, v5, v10

    mul-float v6, v1, v3

    aput v6, v5, v11

    invoke-interface {p1, v5}, Lcom/sec/android/gallery3d/glrenderer/GLCanvas;->clearBuffer([F)V

    :goto_1
    invoke-super {p0}, Lcom/sec/android/gallery3d/ui/GLView;->invalidate()V

    goto :goto_0

    :cond_1
    const/4 v5, 0x4

    new-array v5, v5, [F

    mul-float v6, v0, v3

    sub-float v6, v0, v6

    aput v6, v5, v8

    sub-float v6, v7, v3

    mul-float/2addr v6, v4

    aput v6, v5, v9

    sub-float v6, v7, v3

    mul-float/2addr v6, v2

    aput v6, v5, v10

    sub-float v6, v7, v3

    mul-float/2addr v6, v1

    aput v6, v5, v11

    invoke-interface {p1, v5}, Lcom/sec/android/gallery3d/glrenderer/GLCanvas;->clearBuffer([F)V

    goto :goto_1

    :cond_2
    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$14;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    const-wide/16 v6, 0x0

    # setter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mAnimationStartTime:J
    invoke-static {v5, v6, v7}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$9202(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;J)J

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$14;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mShowBars:Z
    invoke-static {v5}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$9100(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$14;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mIsDelete:Z
    invoke-static {v5}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$9000(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_3
    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->WHITE_BACKGROUND_COLOR:[F
    invoke-static {}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$8900()[F

    move-result-object v5

    invoke-interface {p1, v5}, Lcom/sec/android/gallery3d/glrenderer/GLCanvas;->clearBuffer([F)V

    goto :goto_0

    :cond_4
    invoke-interface {p1}, Lcom/sec/android/gallery3d/glrenderer/GLCanvas;->clearBuffer()V

    goto :goto_0
.end method


# virtual methods
.method public dispatchDragEvent(Landroid/view/DragEvent;)Z
    .locals 8

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$14;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;
    invoke-static {v4}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$4600(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v4

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    invoke-virtual {p1}, Landroid/view/DragEvent;->getClipData()Landroid/content/ClipData;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/ClipData;->getItemCount()I

    move-result v4

    if-lez v4, :cond_0

    invoke-virtual {v0, v3}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {p1}, Landroid/view/DragEvent;->getClipDescription()Landroid/content/ClipDescription;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ClipDescription;->getLabel()Ljava/lang/CharSequence;

    move-result-object v4

    const-string/jumbo v5, "cropUri"

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {p1}, Landroid/view/DragEvent;->getClipDescription()Landroid/content/ClipDescription;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ClipDescription;->getLabel()Ljava/lang/CharSequence;

    move-result-object v4

    const-string/jumbo v5, "selectedUri"

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    :cond_2
    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$14;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mDataManager:Lcom/sec/android/gallery3d/data/DataManager;
    invoke-static {v4}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$10500(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/data/DataManager;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$14;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mDataManager:Lcom/sec/android/gallery3d/data/DataManager;
    invoke-static {v5}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$10500(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/data/DataManager;

    move-result-object v5

    invoke-virtual {v1}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Lcom/sec/android/gallery3d/data/DataManager;->findPathByUri(Landroid/net/Uri;Ljava/lang/String;)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/android/gallery3d/data/DataManager;->getMediaObject(Lcom/sec/android/gallery3d/data/Path;)Lcom/sec/android/gallery3d/data/MediaObject;

    move-result-object v2

    check-cast v2, Lcom/sec/android/gallery3d/data/MediaItem;

    if-nez v2, :cond_3

    const-string/jumbo v4, "DetailViewState"

    const-string/jumbo v5, "mediaItem is null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$14;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v3}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$10600(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v3

    const v4, 0x7f0a0141

    invoke-static {v3, v4}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;I)V

    const/4 v3, 0x1

    goto :goto_0
.end method

.method public dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$14;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mMoreInfo:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$000(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo;

    move-result-object v2

    if-eqz v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$14;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$10400(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v2

    const-string/jumbo v3, "HEBT"

    invoke-static {v2, v3}, Lcom/sec/samsung/gallery/util/ContextProviderLogUtil;->insertLog(Landroid/content/Context;Ljava/lang/String;)V

    :cond_3
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$14;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mPhotoView:Lcom/sec/android/gallery3d/ui/PhotoView;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$1300(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/ui/PhotoView;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$14;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mPhotoView:Lcom/sec/android/gallery3d/ui/PhotoView;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$1300(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/ui/PhotoView;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/sec/android/gallery3d/ui/PhotoView;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    if-nez v2, :cond_5

    :cond_4
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$14;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mHoverGestureDetector:Lcom/sec/android/gallery3d/glcore/GlHoverGestureDetector;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$3000(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/glcore/GlHoverGestureDetector;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$14;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mHoverGestureDetector:Lcom/sec/android/gallery3d/glcore/GlHoverGestureDetector;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$3000(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/glcore/GlHoverGestureDetector;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/sec/android/gallery3d/glcore/GlHoverGestureDetector;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_5
    move v0, v1

    goto :goto_0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$14;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mLockTouchEvent:Z
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$700(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lcom/sec/android/gallery3d/ui/GLView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onGenericMotionCancel()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$14;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mFilmStripView:Lcom/sec/android/gallery3d/ui/FilmStripView;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$100(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/ui/FilmStripView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$14;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mFilmStripView:Lcom/sec/android/gallery3d/ui/FilmStripView;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$100(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/ui/FilmStripView;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/ui/FilmStripView;->setGenericFocusIndex(I)V

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$14;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mPhotoView:Lcom/sec/android/gallery3d/ui/PhotoView;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$1300(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/ui/PhotoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/PhotoView;->onGenericMotionCancel()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 8

    const/16 v7, 0x66

    const/16 v6, 0x65

    const/4 v3, 0x4

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$14;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mGlRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$1900(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/glcore/GlRootView;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    sparse-switch p1, :sswitch_data_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$14;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mGlRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$1900(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/glcore/GlRootView;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/sec/android/gallery3d/glcore/GlRootView;->setFocusable(Z)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$14;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mGlRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$1900(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/glcore/GlRootView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/glcore/GlRootView;->requestFocus()Z

    goto :goto_0

    :sswitch_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$14;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mGlRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$1900(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/glcore/GlRootView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/glcore/GlRootView;->isFocusable()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$14;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mCurrentPhoto:Lcom/sec/android/gallery3d/data/MediaItem;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$1000(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$14;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mFilmStripView:Lcom/sec/android/gallery3d/ui/FilmStripView;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$100(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/ui/FilmStripView;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$14;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mCurrentPhoto:Lcom/sec/android/gallery3d/data/MediaItem;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$1000(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/MediaItem;->getMediaType()I

    move-result v2

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$14;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mCurrentPhoto:Lcom/sec/android/gallery3d/data/MediaItem;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$1000(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/MediaItem;->getMediaType()I

    move-result v2

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$14;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mFilmStripView:Lcom/sec/android/gallery3d/ui/FilmStripView;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$100(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/ui/FilmStripView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/ui/FilmStripView;->isSelectionMode()Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    invoke-virtual {p2}, Landroid/view/KeyEvent;->startTracking()V

    move v0, v1

    goto :goto_0

    :sswitch_1
    const/16 v2, 0x3d

    if-ne p1, v2, :cond_3

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$14;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mGlRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$1900(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/glcore/GlRootView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/glcore/GlRootView;->isFocusable()Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_3
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$14;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mSelectionManager:Lcom/sec/android/gallery3d/ui/SelectionManager;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$4700(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$14;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # invokes: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->showBarsForAShortTime()V
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$7500(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)V

    :cond_4
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$14;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mFastOptionView:Lcom/sec/samsung/gallery/view/detailview/FastOptionView;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$6500(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/samsung/gallery/view/detailview/FastOptionView;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$14;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mFastOptionView:Lcom/sec/samsung/gallery/view/detailview/FastOptionView;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$6500(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/samsung/gallery/view/detailview/FastOptionView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->isFastEditContainerViewShowing()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$14;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$9400(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/sec/android/gallery3d/util/GalleryUtils;->playSoundKeyClick(Landroid/content/Context;I)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$14;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mGlRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$1900(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/glcore/GlRootView;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/sec/android/gallery3d/glcore/GlRootView;->setFocusable(Z)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$14;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mGlRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$1900(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/glcore/GlRootView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/glcore/GlRootView;->requestFocus()Z

    goto/16 :goto_0

    :sswitch_2
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$14;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mSelectionManager:Lcom/sec/android/gallery3d/ui/SelectionManager;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$4700(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$14;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # invokes: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->showBarsForAShortTime()V
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$7500(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)V

    :cond_5
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$14;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mFilmStripView:Lcom/sec/android/gallery3d/ui/FilmStripView;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$100(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/ui/FilmStripView;

    move-result-object v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$14;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mFilmStripView:Lcom/sec/android/gallery3d/ui/FilmStripView;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$100(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/ui/FilmStripView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/ui/FilmStripView;->isSelectionMode()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$14;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mGlRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$1900(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/glcore/GlRootView;

    move-result-object v2

    iget-boolean v2, v2, Lcom/sec/android/gallery3d/glcore/GlRootView;->mDragDownFromSelectAll:Z

    if-nez v2, :cond_6

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$14;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mGlRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$1900(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/glcore/GlRootView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/android/gallery3d/glcore/GlRootView;->setFocusable(Z)V

    :goto_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$14;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mPhotoView:Lcom/sec/android/gallery3d/ui/PhotoView;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$1300(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/ui/PhotoView;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/gallery3d/ui/PhotoView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto/16 :goto_0

    :cond_6
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$14;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mGlRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$1900(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/glcore/GlRootView;

    move-result-object v2

    iput-boolean v0, v2, Lcom/sec/android/gallery3d/glcore/GlRootView;->mDragDownFromSelectAll:Z

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$14;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$9500(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/sec/android/gallery3d/util/GalleryUtils;->playSoundKeyClick(Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$14;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mGlRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$1900(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/glcore/GlRootView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/glcore/GlRootView;->setFocusable(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$14;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mGlRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$1900(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/glcore/GlRootView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glcore/GlRootView;->requestFocus()Z

    goto :goto_1

    :sswitch_3
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$14;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mSelectionManager:Lcom/sec/android/gallery3d/ui/SelectionManager;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$4700(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$14;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mGlRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$1900(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/glcore/GlRootView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/glcore/GlRootView;->isFocusable()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$14;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mPhotoView:Lcom/sec/android/gallery3d/ui/PhotoView;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$1300(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/ui/PhotoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/PhotoView;->resetToFullView()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$14;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mPhotoView:Lcom/sec/android/gallery3d/ui/PhotoView;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$1300(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/ui/PhotoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/PhotoView;->previousImage()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$14;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$9600(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/sec/android/gallery3d/util/GalleryUtils;->playSoundKeyClick(Landroid/content/Context;I)V

    :cond_7
    move v0, v1

    goto/16 :goto_0

    :sswitch_4
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$14;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mSelectionManager:Lcom/sec/android/gallery3d/ui/SelectionManager;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$4700(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$14;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mGlRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$1900(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/glcore/GlRootView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/glcore/GlRootView;->isFocusable()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$14;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mPhotoView:Lcom/sec/android/gallery3d/ui/PhotoView;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$1300(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/ui/PhotoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/PhotoView;->resetToFullView()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$14;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mPhotoView:Lcom/sec/android/gallery3d/ui/PhotoView;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$1300(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/ui/PhotoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/PhotoView;->nextImage()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$14;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$9700(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/sec/android/gallery3d/util/GalleryUtils;->playSoundKeyClick(Landroid/content/Context;I)V

    :cond_8
    move v0, v1

    goto/16 :goto_0

    :sswitch_5
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$14;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mCurrentPhoto:Lcom/sec/android/gallery3d/data/MediaItem;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$1000(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v2

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$14;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mCurrentPhoto:Lcom/sec/android/gallery3d/data/MediaItem;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$1000(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v2

    const-wide/16 v4, 0x10

    invoke-virtual {v2, v4, v5}, Lcom/sec/android/gallery3d/data/MediaItem;->hasAttribute(J)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_9
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$14;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mPhotoView:Lcom/sec/android/gallery3d/ui/PhotoView;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$1300(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/ui/PhotoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/PhotoView;->getPositionController()Lcom/sec/android/gallery3d/ui/PositionController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/PositionController;->isInScale()Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$14;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mPhotoView:Lcom/sec/android/gallery3d/ui/PhotoView;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$1300(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/ui/PhotoView;

    move-result-object v0

    const v2, 0x3f866666    # 1.05f

    invoke-virtual {v0, v2}, Lcom/sec/android/gallery3d/ui/PhotoView;->startScale(F)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$14;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$3500(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$14;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$3500(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_a
    move v0, v1

    goto/16 :goto_0

    :sswitch_6
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$14;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mCurrentPhoto:Lcom/sec/android/gallery3d/data/MediaItem;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$1000(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v2

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$14;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mCurrentPhoto:Lcom/sec/android/gallery3d/data/MediaItem;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$1000(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v2

    const-wide/16 v4, 0x10

    invoke-virtual {v2, v4, v5}, Lcom/sec/android/gallery3d/data/MediaItem;->hasAttribute(J)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_b
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$14;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mPhotoView:Lcom/sec/android/gallery3d/ui/PhotoView;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$1300(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/ui/PhotoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/PhotoView;->getPositionController()Lcom/sec/android/gallery3d/ui/PositionController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/PositionController;->isInScale()Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$14;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mPhotoView:Lcom/sec/android/gallery3d/ui/PhotoView;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$1300(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/ui/PhotoView;

    move-result-object v0

    const v2, 0x3f733333    # 0.95f

    invoke-virtual {v0, v2}, Lcom/sec/android/gallery3d/ui/PhotoView;->startScale(F)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$14;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$3500(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$14;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$3500(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_c
    move v0, v1

    goto/16 :goto_0

    :sswitch_7
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$14;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$9800(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/samsung/gallery/view/ActionBarManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/view/ActionBarManager;->getAction()Lcom/sec/samsung/gallery/view/AbstractActionBar;

    move-result-object v2

    instance-of v2, v2, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$14;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$9900(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/samsung/gallery/view/ActionBarManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/ActionBarManager;->getAction()Lcom/sec/samsung/gallery/view/AbstractActionBar;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->showDeleteDialog()V

    move v0, v1

    goto/16 :goto_0

    :sswitch_8
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$14;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mPhotoView:Lcom/sec/android/gallery3d/ui/PhotoView;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$1300(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/ui/PhotoView;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/gallery3d/ui/PhotoView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_1
        0x14 -> :sswitch_2
        0x15 -> :sswitch_3
        0x16 -> :sswitch_4
        0x17 -> :sswitch_0
        0x25 -> :sswitch_5
        0x2b -> :sswitch_6
        0x3d -> :sswitch_1
        0x42 -> :sswitch_0
        0x43 -> :sswitch_7
        0x70 -> :sswitch_7
        0x71 -> :sswitch_8
        0x72 -> :sswitch_8
        0xa8 -> :sswitch_5
        0xa9 -> :sswitch_6
    .end sparse-switch
.end method

.method public onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .locals 4

    const/4 v1, 0x1

    const/16 v2, 0xa8

    if-eq p1, v2, :cond_0

    const/16 v2, 0x25

    if-eq p1, v2, :cond_0

    const/16 v2, 0xa9

    if-eq p1, v2, :cond_0

    const/16 v2, 0x2b

    if-ne p1, v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    const/16 v2, 0x42

    if-eq p1, v2, :cond_2

    const/16 v2, 0x17

    if-ne p1, v2, :cond_4

    :cond_2
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$14;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # setter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->isLongPressKey:Z
    invoke-static {v2, v1}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$10102(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;Z)Z

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$14;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$10200(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v2, "android.intent.action.VIEW"

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$14;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mGlRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$1900(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/glcore/GlRootView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/glcore/GlRootView;->isFocusable()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$14;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mCurrentPhoto:Lcom/sec/android/gallery3d/data/MediaItem;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$1000(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$14;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mIsBurstShotViewer:Z
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$2000(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$14;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mFilmStripView:Lcom/sec/android/gallery3d/ui/FilmStripView;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$100(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/ui/FilmStripView;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$14;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mCurrentPhoto:Lcom/sec/android/gallery3d/data/MediaItem;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$1000(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/MediaItem;->getMediaType()I

    move-result v2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$14;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mFilmStripView:Lcom/sec/android/gallery3d/ui/FilmStripView;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$100(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/ui/FilmStripView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/ui/FilmStripView;->isSelectionMode()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$14;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mFilmStripView:Lcom/sec/android/gallery3d/ui/FilmStripView;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$100(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/ui/FilmStripView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/ui/FilmStripView;->enterSelectionMode()V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$14;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mFilmStripView:Lcom/sec/android/gallery3d/ui/FilmStripView;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$100(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/ui/FilmStripView;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$14;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mCurrentIndex:I
    invoke-static {v3}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$7000(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/android/gallery3d/ui/FilmStripView;->onLongTap(I)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$14;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$10300(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/gallery3d/util/GalleryUtils;->playSoundKeyClick(Landroid/content/Context;)V

    goto/16 :goto_0

    :cond_3
    const/4 v1, 0x0

    goto/16 :goto_0

    :cond_4
    invoke-super {p0, p1, p2}, Lcom/sec/android/gallery3d/ui/GLView;->onKeyLongPress(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto/16 :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 4

    const/4 v3, 0x4

    const/4 v2, 0x0

    const/4 v0, 0x1

    const/16 v1, 0xa8

    if-eq p1, v1, :cond_0

    const/16 v1, 0x25

    if-eq p1, v1, :cond_0

    const/16 v1, 0xa9

    if-eq p1, v1, :cond_0

    const/16 v1, 0x2b

    if-ne p1, v1, :cond_3

    :cond_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$14;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mCurrentPhoto:Lcom/sec/android/gallery3d/data/MediaItem;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$1000(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$14;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mCurrentPhoto:Lcom/sec/android/gallery3d/data/MediaItem;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$1000(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v1

    const-wide/16 v2, 0x10

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/gallery3d/data/MediaItem;->hasAttribute(J)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-super {p0, p1, p2}, Lcom/sec/android/gallery3d/ui/GLView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    :cond_1
    :goto_0
    return v0

    :cond_2
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$14;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mPhotoView:Lcom/sec/android/gallery3d/ui/PhotoView;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$1300(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/ui/PhotoView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/ui/PhotoView;->endScale()V

    goto :goto_0

    :cond_3
    const/16 v1, 0x42

    if-eq p1, v1, :cond_4

    const/16 v1, 0x17

    if-ne p1, v1, :cond_9

    :cond_4
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$14;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mPhotoView:Lcom/sec/android/gallery3d/ui/PhotoView;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$1300(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/ui/PhotoView;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/sec/android/gallery3d/ui/PhotoView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$14;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mFilmStripView:Lcom/sec/android/gallery3d/ui/FilmStripView;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$100(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/ui/FilmStripView;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$14;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mFilmStripView:Lcom/sec/android/gallery3d/ui/FilmStripView;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$100(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/ui/FilmStripView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/ui/FilmStripView;->isSelectionMode()Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$14;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # invokes: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->playCurrentMedia(Z)Z
    invoke-static {v1, v2}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$10000(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;Z)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_5
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$14;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->isLongPressKey:Z
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$10100(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$14;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # setter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->isLongPressKey:Z
    invoke-static {v1, v2}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$10102(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;Z)Z

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$14;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mGlRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$1900(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/glcore/GlRootView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glcore/GlRootView;->isFocusable()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$14;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mCurrentPhoto:Lcom/sec/android/gallery3d/data/MediaItem;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$1000(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$14;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mFilmStripView:Lcom/sec/android/gallery3d/ui/FilmStripView;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$100(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/ui/FilmStripView;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$14;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mCurrentPhoto:Lcom/sec/android/gallery3d/data/MediaItem;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$1000(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/MediaItem;->getMediaType()I

    move-result v0

    if-ne v0, v3, :cond_7

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$14;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mCurrentPhoto:Lcom/sec/android/gallery3d/data/MediaItem;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$1000(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/MediaItem;->getMediaType()I

    move-result v0

    if-ne v0, v3, :cond_8

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$14;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mFilmStripView:Lcom/sec/android/gallery3d/ui/FilmStripView;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$100(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/ui/FilmStripView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/FilmStripView;->isSelectionMode()Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_7
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$14;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mFilmStripView:Lcom/sec/android/gallery3d/ui/FilmStripView;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$100(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/ui/FilmStripView;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$14;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mCurrentIndex:I
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$7000(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/ui/FilmStripView;->onSingleTapUp(I)V

    :cond_8
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$14;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mSelectionManager:Lcom/sec/android/gallery3d/ui/SelectionManager;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$4700(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$14;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # invokes: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->showBarsForAShortTime()V
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$7500(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)V

    :cond_9
    invoke-super {p0, p1, p2}, Lcom/sec/android/gallery3d/ui/GLView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto/16 :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 14

    sub-int v7, p4, p2

    sub-int v5, p5, p3

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$14;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mPhotoView:Lcom/sec/android/gallery3d/ui/PhotoView;
    invoke-static {v9}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$1300(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/ui/PhotoView;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11, v7, v5}, Lcom/sec/android/gallery3d/ui/PhotoView;->layout(IIII)V

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$14;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mFilmStripView:Lcom/sec/android/gallery3d/ui/FilmStripView;
    invoke-static {v9}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$100(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/ui/FilmStripView;

    move-result-object v9

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$14;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mIsBurstShotViewer:Z
    invoke-static {v9}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$2000(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Z

    move-result v9

    if-eqz v9, :cond_2

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$14;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v9}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$7600(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v9

    invoke-static {v9}, Lcom/sec/android/gallery3d/app/Config$BurstShotPhotoPage;->get(Landroid/content/Context;)Lcom/sec/android/gallery3d/app/Config$BurstShotPhotoPage;

    move-result-object v2

    :goto_0
    iget-object v9, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$14;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mFilmStripView:Lcom/sec/android/gallery3d/ui/FilmStripView;
    invoke-static {v9}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$100(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/ui/FilmStripView;

    move-result-object v9

    sub-int v10, p4, p2

    const/high16 v11, 0x40000000    # 2.0f

    invoke-static {v10, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Lcom/sec/android/gallery3d/ui/FilmStripView;->measure(II)V

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$14;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mFilmStripView:Lcom/sec/android/gallery3d/ui/FilmStripView;
    invoke-static {v9}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$100(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/ui/FilmStripView;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/gallery3d/ui/FilmStripView;->getMeasuredHeight()I

    move-result v4

    sub-int v8, p4, p2

    iget v9, v2, Lcom/sec/android/gallery3d/app/Config$PhotoPage;->filmstripContentSize:I

    iget v10, v2, Lcom/sec/android/gallery3d/app/Config$PhotoPage;->filmstripMidMargin:I

    add-int/2addr v9, v10

    iget-object v10, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$14;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;
    invoke-static {v10}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$4600(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/android/gallery3d/data/MediaSet;->getMediaItemCount()I

    move-result v10

    mul-int v3, v9, v10

    if-ge v8, v3, :cond_3

    move v0, v8

    :goto_1
    const/4 v1, 0x2

    add-int/lit8 v6, v8, -0x4

    if-lt v0, v6, :cond_4

    move v0, v6

    :goto_2
    iget-object v9, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$14;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # setter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mFSLeft:I
    invoke-static {v9, v1}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$7802(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;I)I

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$14;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    sub-int v10, p5, p3

    sub-int/2addr v10, v4

    # setter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mFSTop:I
    invoke-static {v9, v10}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$7902(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;I)I

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$14;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    add-int v10, v1, v0

    # setter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mFSRight:I
    invoke-static {v9, v10}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$8002(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;I)I

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$14;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    sub-int v10, p5, p3

    # setter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mFSBottom:I
    invoke-static {v9, v10}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$8102(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;I)I

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$14;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mFilmStripView:Lcom/sec/android/gallery3d/ui/FilmStripView;
    invoke-static {v9}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$100(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/ui/FilmStripView;

    move-result-object v9

    iget-object v10, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$14;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mFSLeft:I
    invoke-static {v10}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$7800(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)I

    move-result v10

    iget-object v11, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$14;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mFSTop:I
    invoke-static {v11}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$7900(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)I

    move-result v11

    iget-object v12, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$14;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mFSRight:I
    invoke-static {v12}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$8000(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)I

    move-result v12

    iget-object v13, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$14;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mFSBottom:I
    invoke-static {v13}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$8100(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)I

    move-result v13

    invoke-virtual {v9, v10, v11, v12, v13}, Lcom/sec/android/gallery3d/ui/FilmStripView;->layout(IIII)V

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$14;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mBackgroundView:Lcom/sec/android/gallery3d/ui/BackgroundView;
    invoke-static {v9}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$8200(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/ui/BackgroundView;

    move-result-object v9

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$14;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mBackgroundView:Lcom/sec/android/gallery3d/ui/BackgroundView;
    invoke-static {v9}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$8200(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/ui/BackgroundView;

    move-result-object v9

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$14;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mFSTop:I
    invoke-static {v11}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$7900(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)I

    move-result v11

    iget-object v12, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$14;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mGlRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;
    invoke-static {v12}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$1900(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/glcore/GlRootView;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sec/android/gallery3d/glcore/GlRootView;->getMeasuredWidth()I

    move-result v12

    iget-object v13, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$14;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mFSBottom:I
    invoke-static {v13}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$8100(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)I

    move-result v13

    invoke-virtual {v9, v10, v11, v12, v13}, Lcom/sec/android/gallery3d/ui/BackgroundView;->layout(IIII)V

    :cond_0
    iget-object v9, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$14;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mFilmStripView:Lcom/sec/android/gallery3d/ui/FilmStripView;
    invoke-static {v9}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$100(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/ui/FilmStripView;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/gallery3d/ui/FilmStripView;->setNavigationPadding()V

    :cond_1
    return-void

    :cond_2
    iget-object v9, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$14;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v9}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$7700(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v9

    invoke-static {v9}, Lcom/sec/android/gallery3d/app/Config$PhotoPage;->get(Landroid/content/Context;)Lcom/sec/android/gallery3d/app/Config$PhotoPage;

    move-result-object v2

    goto/16 :goto_0

    :cond_3
    move v0, v3

    goto/16 :goto_1

    :cond_4
    sub-int v9, v8, v0

    div-int/lit8 v1, v9, 0x2

    goto/16 :goto_2
.end method

.method public render(Lcom/sec/android/gallery3d/glrenderer/GLCanvas;)V
    .locals 10

    const/4 v0, 0x0

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$14;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mBottomAreaShowAnim:Lcom/sec/android/gallery3d/anim/FloatAnimation;
    invoke-static {v5}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$8300(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/anim/FloatAnimation;

    move-result-object v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$14;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mBottomAreaShowAnim:Lcom/sec/android/gallery3d/anim/FloatAnimation;
    invoke-static {v5}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$8300(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/anim/FloatAnimation;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/anim/FloatAnimation;->get()F

    move-result v2

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$14;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mFilmStripView:Lcom/sec/android/gallery3d/ui/FilmStripView;
    invoke-static {v5}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$100(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/ui/FilmStripView;

    move-result-object v5

    if-eqz v5, :cond_1

    const/high16 v5, 0x3f800000    # 1.0f

    cmpg-float v5, v2, v5

    if-gez v5, :cond_0

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->FEATURE_IS_NOS:Z
    invoke-static {}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$8400()Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$14;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mFilmStripView:Lcom/sec/android/gallery3d/ui/FilmStripView;
    invoke-static {v5}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$100(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/ui/FilmStripView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/ui/FilmStripView;->getHeight()I

    move-result v5

    add-int v4, v5, v0

    :goto_0
    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$14;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mFSTop:I
    invoke-static {v5}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$7900(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)I

    move-result v5

    add-int/2addr v5, v4

    int-to-float v5, v5

    int-to-float v6, v4

    mul-float/2addr v6, v2

    sub-float v3, v5, v6

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$14;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mFSBottom:I
    invoke-static {v5}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$8100(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)I

    move-result v5

    add-int/2addr v5, v4

    int-to-float v5, v5

    int-to-float v6, v4

    mul-float/2addr v6, v2

    sub-float v1, v5, v6

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$14;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mFilmStripView:Lcom/sec/android/gallery3d/ui/FilmStripView;
    invoke-static {v5}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$100(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/ui/FilmStripView;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$14;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mFSLeft:I
    invoke-static {v6}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$7800(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)I

    move-result v6

    float-to-int v7, v3

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$14;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mFSRight:I
    invoke-static {v8}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$8000(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)I

    move-result v8

    float-to-int v9, v1

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/sec/android/gallery3d/ui/FilmStripView;->layout(IIII)V

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$14;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mBackgroundView:Lcom/sec/android/gallery3d/ui/BackgroundView;
    invoke-static {v5}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$8200(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/ui/BackgroundView;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$14;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mBackgroundView:Lcom/sec/android/gallery3d/ui/BackgroundView;
    invoke-static {v5}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$8200(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/ui/BackgroundView;

    move-result-object v5

    const/4 v6, 0x0

    float-to-int v7, v3

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$14;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mGlRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;
    invoke-static {v8}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$1900(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/glcore/GlRootView;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/gallery3d/glcore/GlRootView;->getMeasuredWidth()I

    move-result v8

    float-to-int v9, v1

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/sec/android/gallery3d/ui/BackgroundView;->layout(IIII)V

    :cond_0
    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v5, v2, v5

    if-ltz v5, :cond_7

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$14;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mFilmStripView:Lcom/sec/android/gallery3d/ui/FilmStripView;
    invoke-static {v5}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$100(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/ui/FilmStripView;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$14;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mFSLeft:I
    invoke-static {v6}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$7800(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)I

    move-result v6

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$14;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mFSTop:I
    invoke-static {v7}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$7900(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)I

    move-result v7

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$14;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mFSRight:I
    invoke-static {v8}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$8000(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)I

    move-result v8

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$14;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mFSBottom:I
    invoke-static {v9}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$8100(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)I

    move-result v9

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/sec/android/gallery3d/ui/FilmStripView;->layout(IIII)V

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$14;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mBackgroundView:Lcom/sec/android/gallery3d/ui/BackgroundView;
    invoke-static {v5}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$8200(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/ui/BackgroundView;

    move-result-object v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$14;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mBackgroundView:Lcom/sec/android/gallery3d/ui/BackgroundView;
    invoke-static {v5}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$8200(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/ui/BackgroundView;

    move-result-object v5

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$14;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mFSTop:I
    invoke-static {v7}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$7900(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)I

    move-result v7

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$14;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mGlRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;
    invoke-static {v8}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$1900(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/glcore/GlRootView;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/gallery3d/glcore/GlRootView;->getMeasuredWidth()I

    move-result v8

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$14;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mFSBottom:I
    invoke-static {v9}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$8100(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)I

    move-result v9

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/sec/android/gallery3d/ui/BackgroundView;->layout(IIII)V

    :cond_1
    :goto_1
    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v5, v2, v5

    if-ltz v5, :cond_8

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$14;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mBottomAreaShowAnim:Lcom/sec/android/gallery3d/anim/FloatAnimation;
    invoke-static {v5}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$8300(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/anim/FloatAnimation;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/anim/FloatAnimation;->forceStop()V

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$14;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mGlRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;
    invoke-static {v5}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$1900(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/glcore/GlRootView;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$14;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mBottomAreaShowAnim:Lcom/sec/android/gallery3d/anim/FloatAnimation;
    invoke-static {v6}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$8300(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/anim/FloatAnimation;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/android/gallery3d/glcore/GlRootView;->removeAnimation(Lcom/sec/android/gallery3d/anim/Animation;)V

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$14;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    const/4 v6, 0x0

    # setter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mBottomAreaShowAnim:Lcom/sec/android/gallery3d/anim/FloatAnimation;
    invoke-static {v5, v6}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$8302(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;Lcom/sec/android/gallery3d/anim/FloatAnimation;)Lcom/sec/android/gallery3d/anim/FloatAnimation;

    :cond_2
    :goto_2
    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$14;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mBottomAreaHideAnim:Lcom/sec/android/gallery3d/anim/FloatAnimation;
    invoke-static {v5}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$8600(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/anim/FloatAnimation;

    move-result-object v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$14;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mBottomAreaHideAnim:Lcom/sec/android/gallery3d/anim/FloatAnimation;
    invoke-static {v5}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$8600(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/anim/FloatAnimation;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/anim/FloatAnimation;->get()F

    move-result v2

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$14;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mFilmStripView:Lcom/sec/android/gallery3d/ui/FilmStripView;
    invoke-static {v5}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$100(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/ui/FilmStripView;

    move-result-object v5

    if-eqz v5, :cond_4

    const/high16 v5, 0x3f800000    # 1.0f

    cmpg-float v5, v2, v5

    if-gtz v5, :cond_3

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->FEATURE_IS_NOS:Z
    invoke-static {}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$8400()Z

    move-result v5

    if-eqz v5, :cond_9

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$14;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mFilmStripView:Lcom/sec/android/gallery3d/ui/FilmStripView;
    invoke-static {v5}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$100(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/ui/FilmStripView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/ui/FilmStripView;->getHeight()I

    move-result v5

    add-int v4, v5, v0

    :goto_3
    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$14;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mFSTop:I
    invoke-static {v5}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$7900(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)I

    move-result v5

    add-int/2addr v5, v4

    int-to-float v5, v5

    int-to-float v6, v4

    mul-float/2addr v6, v2

    sub-float v3, v5, v6

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$14;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mFSBottom:I
    invoke-static {v5}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$8100(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)I

    move-result v5

    add-int/2addr v5, v4

    int-to-float v5, v5

    int-to-float v6, v4

    mul-float/2addr v6, v2

    sub-float v1, v5, v6

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$14;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mFilmStripView:Lcom/sec/android/gallery3d/ui/FilmStripView;
    invoke-static {v5}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$100(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/ui/FilmStripView;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$14;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mFSLeft:I
    invoke-static {v6}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$7800(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)I

    move-result v6

    float-to-int v7, v3

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$14;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mFSRight:I
    invoke-static {v8}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$8000(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)I

    move-result v8

    float-to-int v9, v1

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/sec/android/gallery3d/ui/FilmStripView;->layout(IIII)V

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$14;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mBackgroundView:Lcom/sec/android/gallery3d/ui/BackgroundView;
    invoke-static {v5}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$8200(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/ui/BackgroundView;

    move-result-object v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$14;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mBackgroundView:Lcom/sec/android/gallery3d/ui/BackgroundView;
    invoke-static {v5}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$8200(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/ui/BackgroundView;

    move-result-object v5

    const/4 v6, 0x0

    float-to-int v7, v3

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$14;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mGlRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;
    invoke-static {v8}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$1900(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/glcore/GlRootView;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/gallery3d/glcore/GlRootView;->getMeasuredWidth()I

    move-result v8

    float-to-int v9, v1

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/sec/android/gallery3d/ui/BackgroundView;->layout(IIII)V

    :cond_3
    const/4 v5, 0x0

    cmpg-float v5, v2, v5

    if-gtz v5, :cond_4

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$14;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mFilmStripView:Lcom/sec/android/gallery3d/ui/FilmStripView;
    invoke-static {v5}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$100(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/ui/FilmStripView;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/sec/android/gallery3d/ui/FilmStripView;->setVisibility(I)V

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$14;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mBackgroundView:Lcom/sec/android/gallery3d/ui/BackgroundView;
    invoke-static {v5}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$8200(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/ui/BackgroundView;

    move-result-object v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$14;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mBackgroundView:Lcom/sec/android/gallery3d/ui/BackgroundView;
    invoke-static {v5}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$8200(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/ui/BackgroundView;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/sec/android/gallery3d/ui/BackgroundView;->setVisibility(I)V

    :cond_4
    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$14;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mBottomAreaHideAnim:Lcom/sec/android/gallery3d/anim/FloatAnimation;
    invoke-static {v5}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$8600(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/anim/FloatAnimation;

    move-result-object v5

    if-eqz v5, :cond_5

    const/4 v5, 0x0

    cmpg-float v5, v2, v5

    if-gtz v5, :cond_5

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$14;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mBottomAreaHideAnim:Lcom/sec/android/gallery3d/anim/FloatAnimation;
    invoke-static {v5}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$8600(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/anim/FloatAnimation;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/anim/FloatAnimation;->forceStop()V

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$14;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mGlRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;
    invoke-static {v5}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$1900(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/glcore/GlRootView;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$14;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mBottomAreaHideAnim:Lcom/sec/android/gallery3d/anim/FloatAnimation;
    invoke-static {v6}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$8600(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/anim/FloatAnimation;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/android/gallery3d/glcore/GlRootView;->removeAnimation(Lcom/sec/android/gallery3d/anim/Animation;)V

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$14;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    const/4 v6, 0x0

    # setter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mBottomAreaHideAnim:Lcom/sec/android/gallery3d/anim/FloatAnimation;
    invoke-static {v5, v6}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$8602(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;Lcom/sec/android/gallery3d/anim/FloatAnimation;)Lcom/sec/android/gallery3d/anim/FloatAnimation;

    :cond_5
    invoke-super {p0, p1}, Lcom/sec/android/gallery3d/ui/GLView;->render(Lcom/sec/android/gallery3d/glrenderer/GLCanvas;)V

    return-void

    :cond_6
    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$14;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v5}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$8500(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b010d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    goto/16 :goto_0

    :cond_7
    const/4 v5, 0x0

    cmpl-float v5, v2, v5

    if-lez v5, :cond_1

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$14;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mBottomAreaShowAnim:Lcom/sec/android/gallery3d/anim/FloatAnimation;
    invoke-static {v5}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$8300(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/anim/FloatAnimation;

    move-result-object v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$14;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mBottomAreaShowAnim:Lcom/sec/android/gallery3d/anim/FloatAnimation;
    invoke-static {v5}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$8300(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/anim/FloatAnimation;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/anim/FloatAnimation;->isActive()Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$14;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mFilmStripView:Lcom/sec/android/gallery3d/ui/FilmStripView;
    invoke-static {v5}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$100(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/ui/FilmStripView;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$14;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mFSLeft:I
    invoke-static {v6}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$7800(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)I

    move-result v6

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$14;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mFSTop:I
    invoke-static {v7}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$7900(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)I

    move-result v7

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$14;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mFSRight:I
    invoke-static {v8}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$8000(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)I

    move-result v8

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$14;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mFSBottom:I
    invoke-static {v9}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$8100(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)I

    move-result v9

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/sec/android/gallery3d/ui/FilmStripView;->layout(IIII)V

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$14;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mBackgroundView:Lcom/sec/android/gallery3d/ui/BackgroundView;
    invoke-static {v5}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$8200(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/ui/BackgroundView;

    move-result-object v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$14;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mBackgroundView:Lcom/sec/android/gallery3d/ui/BackgroundView;
    invoke-static {v5}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$8200(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/ui/BackgroundView;

    move-result-object v5

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$14;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mFSTop:I
    invoke-static {v7}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$7900(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)I

    move-result v7

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$14;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mGlRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;
    invoke-static {v8}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$1900(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/glcore/GlRootView;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/gallery3d/glcore/GlRootView;->getMeasuredWidth()I

    move-result v8

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$14;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mFSBottom:I
    invoke-static {v9}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$8100(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)I

    move-result v9

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/sec/android/gallery3d/ui/BackgroundView;->layout(IIII)V

    goto/16 :goto_1

    :cond_8
    const/4 v5, 0x0

    cmpl-float v5, v2, v5

    if-lez v5, :cond_2

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$14;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mBottomAreaShowAnim:Lcom/sec/android/gallery3d/anim/FloatAnimation;
    invoke-static {v5}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$8300(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/anim/FloatAnimation;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/anim/FloatAnimation;->isActive()Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$14;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mGlRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;
    invoke-static {v5}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$1900(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/glcore/GlRootView;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$14;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mBottomAreaShowAnim:Lcom/sec/android/gallery3d/anim/FloatAnimation;
    invoke-static {v6}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$8300(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/anim/FloatAnimation;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/android/gallery3d/glcore/GlRootView;->removeAnimation(Lcom/sec/android/gallery3d/anim/Animation;)V

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$14;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    const/4 v6, 0x0

    # setter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mBottomAreaShowAnim:Lcom/sec/android/gallery3d/anim/FloatAnimation;
    invoke-static {v5, v6}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$8302(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;Lcom/sec/android/gallery3d/anim/FloatAnimation;)Lcom/sec/android/gallery3d/anim/FloatAnimation;

    goto/16 :goto_2

    :cond_9
    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$14;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v5}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$8700(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b010d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    goto/16 :goto_3
.end method

.method protected renderBackground(Lcom/sec/android/gallery3d/glrenderer/GLCanvas;)V
    .locals 1

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->FEATURE_IS_NOS:Z
    invoke-static {}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$8400()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$14;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->bCoverMode:Z
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$9300(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$14;->setBackgroundColor(Lcom/sec/android/gallery3d/glrenderer/GLCanvas;)V

    :goto_0
    return-void

    :cond_0
    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->FEATURE_USE_BLACK_COLOR_FOR_TFT:Z
    invoke-static {}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$500()Z

    move-result v0

    if-eqz v0, :cond_1

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->TFT_BLACK_BACKGROUND_COLOR:[F
    invoke-static {}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$600()[F

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/sec/android/gallery3d/glrenderer/GLCanvas;->clearBuffer([F)V

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Lcom/sec/android/gallery3d/glrenderer/GLCanvas;->clearBuffer()V

    goto :goto_0
.end method
