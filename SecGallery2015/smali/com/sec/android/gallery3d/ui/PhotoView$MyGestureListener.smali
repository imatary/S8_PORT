.class Lcom/sec/android/gallery3d/ui/PhotoView$MyGestureListener;
.super Ljava/lang/Object;
.source "PhotoView.java"

# interfaces
.implements Lcom/sec/android/gallery3d/ui/GestureRecognizer$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/gallery3d/ui/PhotoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyGestureListener"
.end annotation


# instance fields
.field private mAccScale:F

.field private mCanChangeMode:Z

.field private mIgnoreScalingGesture:Z

.field private mIgnoreSwipingGesture:Z

.field private mIgnoreUpEvent:Z

.field private mIgnoreZoomOutEffect:Z

.field private mModeChanged:Z

.field private mPointerScaleX:F

.field private mPointerScaleY:F

.field private mScrolledAfterDown:Z

.field final synthetic this$0:Lcom/sec/android/gallery3d/ui/PhotoView;


# direct methods
.method private constructor <init>(Lcom/sec/android/gallery3d/ui/PhotoView;)V
    .locals 2

    const/high16 v1, 0x3f800000    # 1.0f

    iput-object p1, p0, Lcom/sec/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView$MyGestureListener;->mIgnoreUpEvent:Z

    iput v1, p0, Lcom/sec/android/gallery3d/ui/PhotoView$MyGestureListener;->mPointerScaleX:F

    iput v1, p0, Lcom/sec/android/gallery3d/ui/PhotoView$MyGestureListener;->mPointerScaleY:F

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/gallery3d/ui/PhotoView;Lcom/sec/android/gallery3d/ui/PhotoView$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/ui/PhotoView$MyGestureListener;-><init>(Lcom/sec/android/gallery3d/ui/PhotoView;)V

    return-void
.end method

.method private checkIgnoreFlingEvent()Z
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-static {v2}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$7500(Lcom/sec/android/gallery3d/ui/PhotoView;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x12c

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private flingImages(FF)Z
    .locals 4

    const/high16 v3, 0x3f000000    # 0.5f

    add-float v2, p1, v3

    float-to-int v0, v2

    add-float v2, p2, v3

    float-to-int v1, v2

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-static {v2}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$2600(Lcom/sec/android/gallery3d/ui/PhotoView;)Lcom/sec/android/gallery3d/ui/PositionController;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/sec/android/gallery3d/ui/PositionController;->flingPage(II)Z

    move-result v2

    return v2
.end method

.method private isExpansionMode()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-static {v0}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$1800(Lcom/sec/android/gallery3d/ui/PhotoView;)Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->inExpansionMode()Z

    move-result v0

    return v0
.end method

.method private isScrollCaptureImage(Lcom/sec/android/gallery3d/data/MediaItem;)Z
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    sget-object v2, Lcom/sec/android/gallery3d/data/MediaItem$ConvertValueFromRotation;->YES:Lcom/sec/android/gallery3d/data/MediaItem$ConvertValueFromRotation;

    invoke-virtual {p1, v2}, Lcom/sec/android/gallery3d/data/MediaItem;->getArcWidth(Lcom/sec/android/gallery3d/data/MediaItem$ConvertValueFromRotation;)I

    move-result v2

    int-to-float v1, v2

    sget-object v2, Lcom/sec/android/gallery3d/data/MediaItem$ConvertValueFromRotation;->YES:Lcom/sec/android/gallery3d/data/MediaItem$ConvertValueFromRotation;

    invoke-virtual {p1, v2}, Lcom/sec/android/gallery3d/data/MediaItem;->getArcHeight(Lcom/sec/android/gallery3d/data/MediaItem$ConvertValueFromRotation;)I

    move-result v2

    int-to-float v0, v2

    cmpl-float v2, v1, v4

    if-eqz v2, :cond_0

    cmpl-float v2, v0, v4

    if-eqz v2, :cond_0

    cmpl-float v2, v1, v0

    if-lez v2, :cond_2

    div-float v2, v1, v0

    :goto_1
    iget-object v4, p0, Lcom/sec/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-static {v4}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$6900(Lcom/sec/android/gallery3d/ui/PhotoView;)F

    move-result v4

    cmpl-float v2, v2, v4

    if-lez v2, :cond_3

    const/4 v2, 0x1

    :goto_2
    move v3, v2

    goto :goto_0

    :cond_2
    div-float v2, v0, v1

    goto :goto_1

    :cond_3
    move v2, v3

    goto :goto_2
.end method

.method private startExtraScalingIfNeeded()V
    .locals 5

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-static {v0}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$2800(Lcom/sec/android/gallery3d/ui/PhotoView;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-static {v0}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$900(Lcom/sec/android/gallery3d/ui/PhotoView;)Lcom/sec/android/gallery3d/ui/SynchronizedHandler;

    move-result-object v0

    const/4 v1, 0x2

    const-wide/16 v2, 0x2bc

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/gallery3d/ui/SynchronizedHandler;->sendEmptyMessageDelayed(IJ)Z

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-static {v0}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$2600(Lcom/sec/android/gallery3d/ui/PhotoView;)Lcom/sec/android/gallery3d/ui/PositionController;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/sec/android/gallery3d/ui/PositionController;->setExtraScalingRange(Z)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-static {v0, v4}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$2802(Lcom/sec/android/gallery3d/ui/PhotoView;Z)Z

    :cond_0
    return-void
.end method

.method private stopExtraScalingIfNeeded()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-static {v0}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$2800(Lcom/sec/android/gallery3d/ui/PhotoView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-static {v0}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$900(Lcom/sec/android/gallery3d/ui/PhotoView;)Lcom/sec/android/gallery3d/ui/SynchronizedHandler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/ui/SynchronizedHandler;->removeMessages(I)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-static {v0}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$2600(Lcom/sec/android/gallery3d/ui/PhotoView;)Lcom/sec/android/gallery3d/ui/PositionController;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sec/android/gallery3d/ui/PositionController;->setExtraScalingRange(Z)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-static {v0, v2}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$2802(Lcom/sec/android/gallery3d/ui/PhotoView;Z)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public getPointerScaleX()F
    .locals 4

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-static {v2}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$8000(Lcom/sec/android/gallery3d/ui/PhotoView;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/ui/PhotoView;->getGLRoot()Lcom/sec/android/gallery3d/ui/GLRoot;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/ui/PhotoView;->getGLRoot()Lcom/sec/android/gallery3d/ui/GLRoot;

    move-result-object v2

    check-cast v2, Lcom/sec/android/gallery3d/glcore/LibGLRootView;

    iget v0, v2, Lcom/sec/android/gallery3d/glcore/LibGLRootView;->mWidth:I

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-static {v2}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$1800(Lcom/sec/android/gallery3d/ui/PhotoView;)Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getGlRootView()Lcom/sec/android/gallery3d/glcore/LibGLRootView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/glcore/LibGLRootView;->getDisplayRotation()I

    move-result v2

    rem-int/lit16 v2, v2, 0xb4

    if-nez v2, :cond_1

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Lcom/sec/android/gallery3d/ui/PhotoView$MyGestureListener;->mPointerScaleX:F

    :cond_0
    :goto_0
    iget v2, p0, Lcom/sec/android/gallery3d/ui/PhotoView$MyGestureListener;->mPointerScaleX:F

    return v2

    :cond_1
    invoke-static {}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getDisplayLongSideSize()I

    move-result v1

    int-to-float v2, v0

    int-to-float v3, v1

    div-float/2addr v2, v3

    iput v2, p0, Lcom/sec/android/gallery3d/ui/PhotoView$MyGestureListener;->mPointerScaleX:F

    goto :goto_0
.end method

.method public getPointerScaleY()F
    .locals 4

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-static {v2}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$8000(Lcom/sec/android/gallery3d/ui/PhotoView;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/ui/PhotoView;->getGLRoot()Lcom/sec/android/gallery3d/ui/GLRoot;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/ui/PhotoView;->getGLRoot()Lcom/sec/android/gallery3d/ui/GLRoot;

    move-result-object v2

    check-cast v2, Lcom/sec/android/gallery3d/glcore/LibGLRootView;

    iget v0, v2, Lcom/sec/android/gallery3d/glcore/LibGLRootView;->mHeight:I

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-static {v2}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$1800(Lcom/sec/android/gallery3d/ui/PhotoView;)Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getGlRootView()Lcom/sec/android/gallery3d/glcore/LibGLRootView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/glcore/LibGLRootView;->getDisplayRotation()I

    move-result v2

    rem-int/lit16 v2, v2, 0xb4

    if-nez v2, :cond_1

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Lcom/sec/android/gallery3d/ui/PhotoView$MyGestureListener;->mPointerScaleY:F

    :cond_0
    :goto_0
    iget v2, p0, Lcom/sec/android/gallery3d/ui/PhotoView$MyGestureListener;->mPointerScaleY:F

    return v2

    :cond_1
    invoke-static {}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getDisplayShortSideSize()I

    move-result v1

    int-to-float v2, v0

    int-to-float v3, v1

    div-float/2addr v2, v3

    iput v2, p0, Lcom/sec/android/gallery3d/ui/PhotoView$MyGestureListener;->mPointerScaleY:F

    goto :goto_0
.end method

.method public onDoubleTap(FF)Z
    .locals 10

    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v8, 0x3f000000    # 0.5f

    const v7, 0x4013d70a    # 2.31f

    const/4 v4, 0x1

    const/4 v5, 0x0

    iget-boolean v3, p0, Lcom/sec/android/gallery3d/ui/PhotoView$MyGestureListener;->mIgnoreSwipingGesture:Z

    if-eqz v3, :cond_0

    move v3, v4

    :goto_0
    return v3

    :cond_0
    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-static {v3}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$4500(Lcom/sec/android/gallery3d/ui/PhotoView;)Lcom/sec/android/gallery3d/util/RangeArray;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/sec/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/gallery3d/ui/PhotoView$Picture;

    invoke-interface {v3}, Lcom/sec/android/gallery3d/ui/PhotoView$Picture;->isCamera()Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v5

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-static {v3}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$6300(Lcom/sec/android/gallery3d/ui/PhotoView;)Lcom/sec/android/gallery3d/ui/UserInteractionListener;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-static {v3}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$6300(Lcom/sec/android/gallery3d/ui/PhotoView;)Lcom/sec/android/gallery3d/ui/UserInteractionListener;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/gallery3d/ui/UserInteractionListener;->onUserDoubleTap()V

    :cond_2
    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-static {v3}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$6400(Lcom/sec/android/gallery3d/ui/PhotoView;)I

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-static {v3}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$3300(Lcom/sec/android/gallery3d/ui/PhotoView;)I

    move-result v3

    if-eq v3, v4, :cond_3

    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-static {v3}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$3300(Lcom/sec/android/gallery3d/ui/PhotoView;)I

    move-result v3

    const/4 v6, 0x3

    if-eq v3, v6, :cond_3

    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-static {v3}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$4500(Lcom/sec/android/gallery3d/ui/PhotoView;)Lcom/sec/android/gallery3d/util/RangeArray;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/sec/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/gallery3d/ui/PhotoView$Picture;

    invoke-interface {v3}, Lcom/sec/android/gallery3d/ui/PhotoView$Picture;->isVideo()Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-static {v3}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$2100(Lcom/sec/android/gallery3d/ui/PhotoView;)Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v3

    instance-of v3, v3, Lcom/sec/android/gallery3d/data/UnlockImage;

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-static {v3}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$5700(Lcom/sec/android/gallery3d/ui/PhotoView;)I

    move-result v3

    if-ne v3, v4, :cond_4

    :cond_3
    move v3, v4

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-static {v3}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$2600(Lcom/sec/android/gallery3d/ui/PhotoView;)Lcom/sec/android/gallery3d/ui/PositionController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/ui/PositionController;->getImageScale()F

    move-result v1

    iput-boolean v4, p0, Lcom/sec/android/gallery3d/ui/PhotoView$MyGestureListener;->mIgnoreUpEvent:Z

    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-static {v3}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$2600(Lcom/sec/android/gallery3d/ui/PhotoView;)Lcom/sec/android/gallery3d/ui/PositionController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/ui/PositionController;->isAtMinimalScale()Z

    move-result v3

    if-eqz v3, :cond_d

    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-static {v3}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$1300(Lcom/sec/android/gallery3d/ui/PhotoView;)Lcom/sec/android/gallery3d/ui/PhotoView$Model;

    move-result-object v3

    invoke-interface {v3, v5}, Lcom/sec/android/gallery3d/ui/PhotoView$Model;->getMediaItem(I)Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/sec/android/gallery3d/ui/PhotoView$MyGestureListener;->isScrollCaptureImage(Lcom/sec/android/gallery3d/data/MediaItem;)Z

    move-result v3

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-static {v3}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$1300(Lcom/sec/android/gallery3d/ui/PhotoView;)Lcom/sec/android/gallery3d/ui/PhotoView$Model;

    move-result-object v3

    invoke-interface {v3, v5}, Lcom/sec/android/gallery3d/ui/PhotoView$Model;->getMediaItem(I)Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v3

    sget-object v6, Lcom/sec/android/gallery3d/data/MediaItem$ConvertValueFromRotation;->YES:Lcom/sec/android/gallery3d/data/MediaItem$ConvertValueFromRotation;

    invoke-virtual {v3, v6}, Lcom/sec/android/gallery3d/data/MediaItem;->getArcHeight(Lcom/sec/android/gallery3d/data/MediaItem$ConvertValueFromRotation;)I

    move-result v3

    int-to-float v0, v3

    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-static {v3}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$1300(Lcom/sec/android/gallery3d/ui/PhotoView;)Lcom/sec/android/gallery3d/ui/PhotoView$Model;

    move-result-object v3

    invoke-interface {v3, v5}, Lcom/sec/android/gallery3d/ui/PhotoView$Model;->getMediaItem(I)Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v3

    sget-object v6, Lcom/sec/android/gallery3d/data/MediaItem$ConvertValueFromRotation;->YES:Lcom/sec/android/gallery3d/data/MediaItem$ConvertValueFromRotation;

    invoke-virtual {v3, v6}, Lcom/sec/android/gallery3d/data/MediaItem;->getArcWidth(Lcom/sec/android/gallery3d/data/MediaItem$ConvertValueFromRotation;)I

    move-result v3

    int-to-float v2, v3

    cmpg-float v3, v2, v0

    if-gez v3, :cond_8

    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-static {v3}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$2600(Lcom/sec/android/gallery3d/ui/PhotoView;)Lcom/sec/android/gallery3d/ui/PositionController;

    move-result-object v6

    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-static {v3}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$6500(Lcom/sec/android/gallery3d/ui/PhotoView;)I

    move-result v3

    iget-object v7, p0, Lcom/sec/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-static {v7}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$6600(Lcom/sec/android/gallery3d/ui/PhotoView;)I

    move-result v7

    if-ge v3, v7, :cond_7

    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-static {v3}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$6500(Lcom/sec/android/gallery3d/ui/PhotoView;)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v2

    :goto_1
    invoke-virtual {v6, p1, p2, v3}, Lcom/sec/android/gallery3d/ui/PositionController;->zoomIn(FFF)V

    :goto_2
    invoke-static {}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$700()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-static {v3}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$800(Lcom/sec/android/gallery3d/ui/PhotoView;)Lcom/sec/samsung/gallery/lib/libinterface/DesktopModeInterface;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/samsung/gallery/lib/libinterface/DesktopModeInterface;->isDesktopMode()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-static {v3}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$6700(Lcom/sec/android/gallery3d/ui/PhotoView;)Lcom/sec/android/gallery3d/ui/ZoomInOutImageView;

    move-result-object v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-static {v3}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$6700(Lcom/sec/android/gallery3d/ui/PhotoView;)Lcom/sec/android/gallery3d/ui/ZoomInOutImageView;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/sec/android/gallery3d/ui/ZoomInOutImageView;->setEnable(Z)V

    :cond_5
    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-static {v3}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$5200(Lcom/sec/android/gallery3d/ui/PhotoView;)Lcom/sec/samsung/gallery/decoder/AnimationInterface;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/sec/samsung/gallery/decoder/AnimationInterface;->setImageChanging(Z)V

    :goto_3
    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-static {v3}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$1800(Lcom/sec/android/gallery3d/ui/PhotoView;)Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getActivity()Landroid/app/Activity;

    move-result-object v3

    instance-of v3, v3, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-static {v3}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$1800(Lcom/sec/android/gallery3d/ui/PhotoView;)Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getActivity()Landroid/app/Activity;

    move-result-object v3

    check-cast v3, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getSATopScreenId()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "4005"

    invoke-static {v3, v5}, Lcom/sec/samsung/gallery/util/SamsungAnalyticsLogUtil;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    move v3, v4

    goto/16 :goto_0

    :cond_7
    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-static {v3}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$6600(Lcom/sec/android/gallery3d/ui/PhotoView;)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v2

    goto :goto_1

    :cond_8
    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-static {v3}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$2600(Lcom/sec/android/gallery3d/ui/PhotoView;)Lcom/sec/android/gallery3d/ui/PositionController;

    move-result-object v6

    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-static {v3}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$6500(Lcom/sec/android/gallery3d/ui/PhotoView;)I

    move-result v3

    iget-object v7, p0, Lcom/sec/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-static {v7}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$6600(Lcom/sec/android/gallery3d/ui/PhotoView;)I

    move-result v7

    if-ge v3, v7, :cond_9

    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-static {v3}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$6500(Lcom/sec/android/gallery3d/ui/PhotoView;)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v0

    :goto_4
    invoke-virtual {v6, p1, p2, v3}, Lcom/sec/android/gallery3d/ui/PositionController;->zoomIn(FFF)V

    goto :goto_2

    :cond_9
    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-static {v3}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$6600(Lcom/sec/android/gallery3d/ui/PhotoView;)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v0

    goto :goto_4

    :cond_a
    cmpg-float v3, v1, v8

    if-gez v3, :cond_b

    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-static {v3}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$2600(Lcom/sec/android/gallery3d/ui/PhotoView;)Lcom/sec/android/gallery3d/ui/PositionController;

    move-result-object v3

    mul-float v6, v1, v7

    invoke-static {v8, v6}, Ljava/lang/Math;->max(FF)F

    move-result v6

    invoke-virtual {v3, p1, p2, v6}, Lcom/sec/android/gallery3d/ui/PositionController;->zoomIn(FFF)V

    goto/16 :goto_2

    :cond_b
    cmpg-float v3, v1, v9

    if-gez v3, :cond_c

    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-static {v3}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$2600(Lcom/sec/android/gallery3d/ui/PhotoView;)Lcom/sec/android/gallery3d/ui/PositionController;

    move-result-object v3

    mul-float v6, v1, v7

    invoke-static {v9, v6}, Ljava/lang/Math;->max(FF)F

    move-result v6

    invoke-virtual {v3, p1, p2, v6}, Lcom/sec/android/gallery3d/ui/PositionController;->zoomIn(FFF)V

    goto/16 :goto_2

    :cond_c
    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-static {v3}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$2600(Lcom/sec/android/gallery3d/ui/PhotoView;)Lcom/sec/android/gallery3d/ui/PositionController;

    move-result-object v3

    const v6, 0x3fa66666    # 1.3f

    mul-float/2addr v7, v1

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v6

    invoke-virtual {v3, p1, p2, v6}, Lcom/sec/android/gallery3d/ui/PositionController;->zoomIn(FFF)V

    goto/16 :goto_2

    :cond_d
    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/ui/PhotoView;->resetToFullView()V

    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-static {v3}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$3600(Lcom/sec/android/gallery3d/ui/PhotoView;)Z

    move-result v3

    if-nez v3, :cond_e

    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-static {v3}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$6800(Lcom/sec/android/gallery3d/ui/PhotoView;)Z

    move-result v3

    if-eqz v3, :cond_f

    :cond_e
    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/ui/PhotoView;->hidePhotoIconView()V

    goto/16 :goto_3

    :cond_f
    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/ui/PhotoView;->showPhotoIconView()V

    goto/16 :goto_3
.end method

.method public onDown(FF)V
    .locals 3

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/sec/android/gallery3d/ui/PhotoView$MyGestureListener;->mModeChanged:Z

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView$MyGestureListener;->mIgnoreSwipingGesture:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-static {v1}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$400(Lcom/sec/android/gallery3d/ui/PhotoView;)I

    move-result v1

    or-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$402(Lcom/sec/android/gallery3d/ui/PhotoView;I)I

    iput-boolean v2, p0, Lcom/sec/android/gallery3d/ui/PhotoView$MyGestureListener;->mScrolledAfterDown:Z

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    const v1, 0x7fffffff

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$7602(Lcom/sec/android/gallery3d/ui/PhotoView;I)I

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-static {v1}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$2600(Lcom/sec/android/gallery3d/ui/PhotoView;)Lcom/sec/android/gallery3d/ui/PositionController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/ui/PositionController;->getImageAtEdges()I

    move-result v1

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$7702(Lcom/sec/android/gallery3d/ui/PhotoView;I)I

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-static {v0}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$1700(Lcom/sec/android/gallery3d/ui/PhotoView;)Lcom/sec/android/gallery3d/ui/PhotoView$Listener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-static {v0}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$1700(Lcom/sec/android/gallery3d/ui/PhotoView;)Lcom/sec/android/gallery3d/ui/PhotoView$Listener;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/gallery3d/ui/PhotoView$Listener;->onDown()V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-static {v0, v2}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$7102(Lcom/sec/android/gallery3d/ui/PhotoView;Z)Z

    goto :goto_0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 6

    const/16 v5, 0x6a

    const/4 v4, 0x1

    const-string/jumbo v0, "PhotoView"

    const-string/jumbo v1, "onFling start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$7200()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-static {v0}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$900(Lcom/sec/android/gallery3d/ui/PhotoView;)Lcom/sec/android/gallery3d/ui/SynchronizedHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/gallery3d/ui/PhotoView$MyGestureListener;->isExpansionMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-static {v0}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$2600(Lcom/sec/android/gallery3d/ui/PhotoView;)Lcom/sec/android/gallery3d/ui/PositionController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/PositionController;->getIsSingleViewMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-static {v0}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$900(Lcom/sec/android/gallery3d/ui/PhotoView;)Lcom/sec/android/gallery3d/ui/SynchronizedHandler;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/sec/android/gallery3d/ui/SynchronizedHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-static {v0}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$900(Lcom/sec/android/gallery3d/ui/PhotoView;)Lcom/sec/android/gallery3d/ui/SynchronizedHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-static {v1}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$7300(Lcom/sec/android/gallery3d/ui/PhotoView;)I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v5, v2, v3}, Lcom/sec/android/gallery3d/ui/SynchronizedHandler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView$MyGestureListener;->mIgnoreSwipingGesture:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/PhotoView;->isFlippedImage()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    iget v0, v0, Lcom/sec/android/gallery3d/ui/PhotoView;->mIsVaildScroll:I

    if-ne v0, v4, :cond_2

    :cond_1
    :goto_0
    return v4

    :cond_2
    iget-boolean v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView$MyGestureListener;->mModeChanged:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/sec/android/gallery3d/ui/PhotoView$MyGestureListener;->checkIgnoreFlingEvent()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/sec/android/gallery3d/ui/PhotoView$MyGestureListener;->isExpansionMode()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-static {v0, p3, p4}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$7400(Lcom/sec/android/gallery3d/ui/PhotoView;FF)Z

    move-result v0

    if-eqz v0, :cond_3

    iput-boolean v4, p0, Lcom/sec/android/gallery3d/ui/PhotoView$MyGestureListener;->mIgnoreUpEvent:Z

    goto :goto_0

    :cond_3
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    invoke-direct {p0, p3, p4}, Lcom/sec/android/gallery3d/ui/PhotoView$MyGestureListener;->flingImages(FF)Z

    goto :goto_0
.end method

.method public onLongPress(FF)V
    .locals 2

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-static {v1}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$2600(Lcom/sec/android/gallery3d/ui/PhotoView;)Lcom/sec/android/gallery3d/ui/PositionController;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/PositionController;->isAtMinimalScale()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-static {v1}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$7800(Lcom/sec/android/gallery3d/ui/PhotoView;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-static {v1}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$1800(Lcom/sec/android/gallery3d/ui/PhotoView;)Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->inExpansionMode()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-static {v1}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$1700(Lcom/sec/android/gallery3d/ui/PhotoView;)Lcom/sec/android/gallery3d/ui/PhotoView$Listener;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-static {v1}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$1700(Lcom/sec/android/gallery3d/ui/PhotoView;)Lcom/sec/android/gallery3d/ui/PhotoView$Listener;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/gallery3d/ui/PhotoView$Listener;->isLongPressFinished()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_3
    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-static {v1}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$1800(Lcom/sec/android/gallery3d/ui/PhotoView;)Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getController()Lcom/sec/android/gallery3d/interfaces/LibraryController;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/gallery3d/interfaces/LibraryController;->setMultiWindow()V

    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->UseMultiWindow:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-static {v1}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$1800(Lcom/sec/android/gallery3d/ui/PhotoView;)Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getController()Lcom/sec/android/gallery3d/interfaces/LibraryController;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/gallery3d/interfaces/LibraryController;->isMultiWindow()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-static {v1}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$7900(Lcom/sec/android/gallery3d/ui/PhotoView;)V

    goto :goto_0
.end method

.method public onScale(FFF)Z
    .locals 7

    const v6, 0x3f7d70a4    # 0.99f

    const/4 v4, 0x0

    const/4 v3, 0x1

    iget-boolean v2, p0, Lcom/sec/android/gallery3d/ui/PhotoView$MyGestureListener;->mIgnoreSwipingGesture:Z

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    iget-boolean v2, p0, Lcom/sec/android/gallery3d/ui/PhotoView$MyGestureListener;->mIgnoreScalingGesture:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/sec/android/gallery3d/ui/PhotoView$MyGestureListener;->mModeChanged:Z

    if-nez v2, :cond_0

    invoke-static {p3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {p3}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    move v3, v4

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-static {v2}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$4500(Lcom/sec/android/gallery3d/ui/PhotoView;)Lcom/sec/android/gallery3d/util/RangeArray;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/sec/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/gallery3d/ui/PhotoView$Picture;

    invoke-interface {v2}, Lcom/sec/android/gallery3d/ui/PhotoView$Picture;->isVideo()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-static {v2}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$1700(Lcom/sec/android/gallery3d/ui/PhotoView;)Lcom/sec/android/gallery3d/ui/PhotoView$Listener;

    move-result-object v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/sec/android/gallery3d/ui/PhotoView$MyGestureListener;->mAccScale:F

    mul-float/2addr v2, p3

    iput v2, p0, Lcom/sec/android/gallery3d/ui/PhotoView$MyGestureListener;->mAccScale:F

    iget v2, p0, Lcom/sec/android/gallery3d/ui/PhotoView$MyGestureListener;->mAccScale:F

    cmpg-float v2, v2, v6

    if-gtz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-static {v2}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$1700(Lcom/sec/android/gallery3d/ui/PhotoView;)Lcom/sec/android/gallery3d/ui/PhotoView$Listener;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/gallery3d/ui/PhotoView$Listener;->onScaleMin()Z

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-static {v2}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$2600(Lcom/sec/android/gallery3d/ui/PhotoView;)Lcom/sec/android/gallery3d/ui/PositionController;

    move-result-object v2

    invoke-virtual {v2, p3, p1, p2}, Lcom/sec/android/gallery3d/ui/PositionController;->scaleBy(FFF)I

    move-result v1

    iget v2, p0, Lcom/sec/android/gallery3d/ui/PhotoView$MyGestureListener;->mAccScale:F

    mul-float/2addr v2, p3

    iput v2, p0, Lcom/sec/android/gallery3d/ui/PhotoView$MyGestureListener;->mAccScale:F

    iget-boolean v2, p0, Lcom/sec/android/gallery3d/ui/PhotoView$MyGestureListener;->mIgnoreZoomOutEffect:Z

    if-nez v2, :cond_5

    iget v2, p0, Lcom/sec/android/gallery3d/ui/PhotoView$MyGestureListener;->mAccScale:F

    const v5, 0x3f99999a    # 1.2f

    cmpl-float v2, v2, v5

    if-lez v2, :cond_8

    move v2, v3

    :goto_1
    iput-boolean v2, p0, Lcom/sec/android/gallery3d/ui/PhotoView$MyGestureListener;->mIgnoreZoomOutEffect:Z

    :cond_5
    iget v2, p0, Lcom/sec/android/gallery3d/ui/PhotoView$MyGestureListener;->mAccScale:F

    cmpg-float v2, v2, v6

    if-lez v2, :cond_6

    iget v2, p0, Lcom/sec/android/gallery3d/ui/PhotoView$MyGestureListener;->mAccScale:F

    const v5, 0x3f8147ae    # 1.01f

    cmpl-float v2, v2, v5

    if-lez v2, :cond_9

    :cond_6
    move v0, v3

    :goto_2
    iget-boolean v2, p0, Lcom/sec/android/gallery3d/ui/PhotoView$MyGestureListener;->mCanChangeMode:Z

    if-eqz v2, :cond_a

    if-eqz v0, :cond_a

    iget-boolean v2, p0, Lcom/sec/android/gallery3d/ui/PhotoView$MyGestureListener;->mIgnoreZoomOutEffect:Z

    if-nez v2, :cond_a

    if-gez v1, :cond_a

    invoke-direct {p0}, Lcom/sec/android/gallery3d/ui/PhotoView$MyGestureListener;->stopExtraScalingIfNeeded()V

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    iget-object v4, p0, Lcom/sec/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-static {v4}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$400(Lcom/sec/android/gallery3d/ui/PhotoView;)I

    move-result v4

    and-int/lit8 v4, v4, -0x2

    invoke-static {v2, v4}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$402(Lcom/sec/android/gallery3d/ui/PhotoView;I)I

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-static {v2}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$1700(Lcom/sec/android/gallery3d/ui/PhotoView;)Lcom/sec/android/gallery3d/ui/PhotoView$Listener;

    move-result-object v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-static {v2}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$1700(Lcom/sec/android/gallery3d/ui/PhotoView;)Lcom/sec/android/gallery3d/ui/PhotoView$Listener;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/gallery3d/ui/PhotoView$Listener;->onScaleMin()Z

    :cond_7
    invoke-virtual {p0}, Lcom/sec/android/gallery3d/ui/PhotoView$MyGestureListener;->onScaleEnd()V

    iput-boolean v3, p0, Lcom/sec/android/gallery3d/ui/PhotoView$MyGestureListener;->mModeChanged:Z

    goto/16 :goto_0

    :cond_8
    move v2, v4

    goto :goto_1

    :cond_9
    move v0, v4

    goto :goto_2

    :cond_a
    if-eqz v1, :cond_b

    invoke-direct {p0}, Lcom/sec/android/gallery3d/ui/PhotoView$MyGestureListener;->startExtraScalingIfNeeded()V

    goto/16 :goto_0

    :cond_b
    invoke-direct {p0}, Lcom/sec/android/gallery3d/ui/PhotoView$MyGestureListener;->stopExtraScalingIfNeeded()V

    goto/16 :goto_0
.end method

.method public onScaleBegin(FF)Z
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string/jumbo v1, "PhotoView"

    const-string/jumbo v2, "onScaleBegin start"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-static {v1}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$1800(Lcom/sec/android/gallery3d/ui/PhotoView;)Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isCoverMode(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-boolean v3, p0, Lcom/sec/android/gallery3d/ui/PhotoView$MyGestureListener;->mModeChanged:Z

    :cond_0
    iput-boolean v3, p0, Lcom/sec/android/gallery3d/ui/PhotoView$MyGestureListener;->mIgnoreZoomOutEffect:Z

    iget-boolean v1, p0, Lcom/sec/android/gallery3d/ui/PhotoView$MyGestureListener;->mIgnoreSwipingGesture:Z

    if-eqz v1, :cond_2

    :cond_1
    :goto_0
    return v4

    :cond_2
    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-static {v1}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$4500(Lcom/sec/android/gallery3d/ui/PhotoView;)Lcom/sec/android/gallery3d/util/RangeArray;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/sec/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/gallery3d/ui/PhotoView$Picture;

    invoke-interface {v1}, Lcom/sec/android/gallery3d/ui/PhotoView$Picture;->isCamera()Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/android/gallery3d/ui/PhotoView$MyGestureListener;->mIgnoreScalingGesture:Z

    iget-boolean v1, p0, Lcom/sec/android/gallery3d/ui/PhotoView$MyGestureListener;->mIgnoreScalingGesture:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-static {v1}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$2600(Lcom/sec/android/gallery3d/ui/PhotoView;)Lcom/sec/android/gallery3d/ui/PositionController;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/sec/android/gallery3d/ui/PositionController;->beginScale(FF)V

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-static {v1}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$5200(Lcom/sec/android/gallery3d/ui/PhotoView;)Lcom/sec/samsung/gallery/decoder/AnimationInterface;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/decoder/AnimationInterface;->setImageChanging(Z)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-static {v1}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$2600(Lcom/sec/android/gallery3d/ui/PhotoView;)Lcom/sec/android/gallery3d/ui/PositionController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/ui/PositionController;->isAtMinimalScale()Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/android/gallery3d/ui/PhotoView$MyGestureListener;->mCanChangeMode:Z

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/sec/android/gallery3d/ui/PhotoView$MyGestureListener;->mAccScale:F

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "PhotoView"

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public onScaleEnd()V
    .locals 4

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView$MyGestureListener;->mIgnoreSwipingGesture:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView$MyGestureListener;->mIgnoreScalingGesture:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView$MyGestureListener;->mModeChanged:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-static {v0}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$2600(Lcom/sec/android/gallery3d/ui/PhotoView;)Lcom/sec/android/gallery3d/ui/PositionController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/PositionController;->endScale()V

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-static {v0}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$2700(Lcom/sec/android/gallery3d/ui/PhotoView;)Lcom/sec/android/gallery3d/ui/GestureRecognizer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/GestureRecognizer;->isDown()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-static {v0}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$2600(Lcom/sec/android/gallery3d/ui/PhotoView;)Lcom/sec/android/gallery3d/ui/PositionController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/PositionController;->isAtMinimalScale()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$7102(Lcom/sec/android/gallery3d/ui/PhotoView;Z)Z

    :cond_2
    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$7502(Lcom/sec/android/gallery3d/ui/PhotoView;J)J

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-static {v0}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$1800(Lcom/sec/android/gallery3d/ui/PhotoView;)Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-static {v0}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$1800(Lcom/sec/android/gallery3d/ui/PhotoView;)Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getSATopScreenId()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "1010"

    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/util/SamsungAnalyticsLogUtil;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    const-string/jumbo v0, "PhotoView"

    const-string/jumbo v1, "onScaleEnd end"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onScroll(FFFFFF)Z
    .locals 5

    const/4 v4, 0x1

    const-string/jumbo v2, "PhotoView"

    const-string/jumbo v3, "onScroll start"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v2, p0, Lcom/sec/android/gallery3d/ui/PhotoView$MyGestureListener;->mIgnoreSwipingGesture:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/ui/PhotoView;->isFlippedImage()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    iget v2, v2, Lcom/sec/android/gallery3d/ui/PhotoView;->mIsVaildScroll:I

    if-ne v2, v4, :cond_1

    :cond_0
    :goto_0
    return v4

    :cond_1
    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    iget v2, v2, Lcom/sec/android/gallery3d/ui/PhotoView;->mIsVaildScroll:I

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-static {v2, p1, p2}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$7000(Lcom/sec/android/gallery3d/ui/PhotoView;FF)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-static {v2}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$1700(Lcom/sec/android/gallery3d/ui/PhotoView;)Lcom/sec/android/gallery3d/ui/PhotoView$Listener;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-static {v2}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$4500(Lcom/sec/android/gallery3d/ui/PhotoView;)Lcom/sec/android/gallery3d/util/RangeArray;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/gallery3d/ui/PhotoView$Picture;

    invoke-interface {v2}, Lcom/sec/android/gallery3d/ui/PhotoView$Picture;->isCamera()Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x0

    cmpg-float v2, p1, v2

    if-gez v2, :cond_3

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-static {v2}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$1700(Lcom/sec/android/gallery3d/ui/PhotoView;)Lcom/sec/android/gallery3d/ui/PhotoView$Listener;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/gallery3d/ui/PhotoView$Listener;->onStartCameraVIEffect()V

    :cond_3
    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-static {v2}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$6400(Lcom/sec/android/gallery3d/ui/PhotoView;)I

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-static {v2}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$7100(Lcom/sec/android/gallery3d/ui/PhotoView;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-static {v2}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$2600(Lcom/sec/android/gallery3d/ui/PhotoView;)Lcom/sec/android/gallery3d/ui/PositionController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/ui/PositionController;->isAtMinimalScale()Z

    move-result v2

    if-nez v2, :cond_0

    :cond_4
    iget-boolean v2, p0, Lcom/sec/android/gallery3d/ui/PhotoView$MyGestureListener;->mScrolledAfterDown:Z

    if-nez v2, :cond_5

    iput-boolean v4, p0, Lcom/sec/android/gallery3d/ui/PhotoView$MyGestureListener;->mScrolledAfterDown:Z

    :cond_5
    neg-float v2, p1

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v0

    neg-float v2, p2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-static {v2}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$2600(Lcom/sec/android/gallery3d/ui/PhotoView;)Lcom/sec/android/gallery3d/ui/PositionController;

    move-result-object v2

    invoke-virtual {v2, v0, v1, p5, p6}, Lcom/sec/android/gallery3d/ui/PositionController;->scrollPage(IIFF)V

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/sec/android/gallery3d/ui/PhotoView$MyGestureListener;->mIgnoreUpEvent:Z

    goto :goto_0
.end method

.method public onSingleTapUp(FF)Z
    .locals 6

    const/4 v5, 0x1

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xe

    if-ge v3, v4, :cond_1

    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-static {v3}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$400(Lcom/sec/android/gallery3d/ui/PhotoView;)I

    move-result v3

    and-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return v5

    :cond_1
    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    iget-object v4, p0, Lcom/sec/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-static {v4}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$400(Lcom/sec/android/gallery3d/ui/PhotoView;)I

    move-result v4

    and-int/lit8 v4, v4, -0x2

    invoke-static {v3, v4}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$402(Lcom/sec/android/gallery3d/ui/PhotoView;I)I

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/ui/PhotoView;->getGLRoot()Lcom/sec/android/gallery3d/ui/GLRoot;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/ui/PhotoView;->getGLRoot()Lcom/sec/android/gallery3d/ui/GLRoot;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/gallery3d/ui/GLRoot;->getCompensationMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    :cond_2
    if-eqz v1, :cond_0

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    const/4 v3, 0x2

    new-array v2, v3, [F

    const/4 v3, 0x0

    aput p1, v2, v3

    aput p2, v2, v5

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->mapPoints([F)V

    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-static {v3}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$1700(Lcom/sec/android/gallery3d/ui/PhotoView;)Lcom/sec/android/gallery3d/ui/PhotoView$Listener;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-static {v3}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$1700(Lcom/sec/android/gallery3d/ui/PhotoView;)Lcom/sec/android/gallery3d/ui/PhotoView$Listener;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/gallery3d/ui/PhotoView$Listener;->onSingleTapUp()V

    goto :goto_0
.end method

.method public onUp()V
    .locals 3

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView$MyGestureListener;->mIgnoreSwipingGesture:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-static {v1}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$400(Lcom/sec/android/gallery3d/ui/PhotoView;)I

    move-result v1

    and-int/lit8 v1, v1, -0x2

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$402(Lcom/sec/android/gallery3d/ui/PhotoView;I)I

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-static {v0}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$500(Lcom/sec/android/gallery3d/ui/PhotoView;)Lcom/sec/android/gallery3d/ui/EdgeView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/EdgeView;->onRelease()V

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView$MyGestureListener;->mIgnoreUpEvent:Z

    if-eqz v0, :cond_1

    iput-boolean v2, p0, Lcom/sec/android/gallery3d/ui/PhotoView$MyGestureListener;->mIgnoreUpEvent:Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-static {v0}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$3100(Lcom/sec/android/gallery3d/ui/PhotoView;)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-static {v0, v2}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$7102(Lcom/sec/android/gallery3d/ui/PhotoView;Z)Z

    goto :goto_0
.end method

.method public setSwipingEnabled(Z)V
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView$MyGestureListener;->mIgnoreSwipingGesture:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
