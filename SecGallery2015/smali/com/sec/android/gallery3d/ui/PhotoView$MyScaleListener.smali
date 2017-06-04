.class Lcom/sec/android/gallery3d/ui/PhotoView$MyScaleListener;
.super Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;
.source "PhotoView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/gallery3d/ui/PhotoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyScaleListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/gallery3d/ui/PhotoView;


# direct methods
.method private constructor <init>(Lcom/sec/android/gallery3d/ui/PhotoView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/ui/PhotoView$MyScaleListener;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-direct {p0}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/gallery3d/ui/PhotoView;Lcom/sec/android/gallery3d/ui/PhotoView$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/ui/PhotoView$MyScaleListener;-><init>(Lcom/sec/android/gallery3d/ui/PhotoView;)V

    return-void
.end method


# virtual methods
.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/gallery3d/ui/PhotoView$MyScaleListener;->onScale(Landroid/view/ScaleGestureDetector;F)Z

    move-result v0

    return v0
.end method

.method public onScale(Landroid/view/ScaleGestureDetector;F)Z
    .locals 7

    const/4 v6, 0x1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v0

    :goto_0
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v0}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/PhotoView$MyScaleListener;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    # getter for: Lcom/sec/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/sec/android/gallery3d/ui/PositionController;
    invoke-static {v1}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$2600(Lcom/sec/android/gallery3d/ui/PhotoView;)Lcom/sec/android/gallery3d/ui/PositionController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/ui/PositionController;->isAtMinimalScale()Z

    move-result v1

    if-eqz v1, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/common/Utils;->isAlmostEquals(FF)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/PhotoView$MyScaleListener;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    # getter for: Lcom/sec/android/gallery3d/ui/PhotoView;->mTransitionMode:I
    invoke-static {v1}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$6400(Lcom/sec/android/gallery3d/ui/PhotoView;)I

    move-result v1

    if-nez v1, :cond_1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getCurrentSpan()F

    move-result v1

    float-to-double v2, v1

    const-wide v4, 0x3f847ae147ae147bL    # 0.01

    cmpg-double v1, v2, v4

    if-gez v1, :cond_3

    :cond_1
    :goto_1
    return v6

    :cond_2
    move v0, p2

    goto :goto_0

    :cond_3
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v1

    # setter for: Lcom/sec/android/gallery3d/ui/PhotoView;->mGetPrevFocusX:F
    invoke-static {v1}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$8202(F)F

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v1

    # setter for: Lcom/sec/android/gallery3d/ui/PhotoView;->mGetPrevFocusY:F
    invoke-static {v1}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$8302(F)F

    :cond_4
    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/PhotoView$MyScaleListener;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    # getter for: Lcom/sec/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/sec/android/gallery3d/ui/PositionController;
    invoke-static {v1}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$2600(Lcom/sec/android/gallery3d/ui/PhotoView;)Lcom/sec/android/gallery3d/ui/PositionController;

    move-result-object v3

    if-eqz p1, :cond_5

    # getter for: Lcom/sec/android/gallery3d/ui/PhotoView;->mGetPrevFocusX:F
    invoke-static {}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$8200()F

    move-result v1

    move v2, v1

    :goto_2
    if-eqz p1, :cond_6

    # getter for: Lcom/sec/android/gallery3d/ui/PhotoView;->mGetPrevFocusY:F
    invoke-static {}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$8300()F

    move-result v1

    :goto_3
    invoke-virtual {v3, v0, v2, v1}, Lcom/sec/android/gallery3d/ui/PositionController;->scaleBy(FFF)I

    goto :goto_1

    :cond_5
    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/PhotoView$MyScaleListener;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    # getter for: Lcom/sec/android/gallery3d/ui/PhotoView;->mCenterX:F
    invoke-static {v1}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$2400(Lcom/sec/android/gallery3d/ui/PhotoView;)F

    move-result v1

    move v2, v1

    goto :goto_2

    :cond_6
    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/PhotoView$MyScaleListener;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    # getter for: Lcom/sec/android/gallery3d/ui/PhotoView;->mCenterY:F
    invoke-static {v1}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$2500(Lcom/sec/android/gallery3d/ui/PhotoView;)F

    move-result v1

    goto :goto_3
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 6

    const/4 v2, 0x1

    const-string/jumbo v3, "PhotoView"

    const-string/jumbo v4, "onScaleBegin"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/PhotoView$MyScaleListener;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    # getter for: Lcom/sec/android/gallery3d/ui/PhotoView;->mTransitionMode:I
    invoke-static {v3}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$6400(Lcom/sec/android/gallery3d/ui/PhotoView;)I

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/PhotoView$MyScaleListener;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    # getter for: Lcom/sec/android/gallery3d/ui/PhotoView;->mLoadingState:I
    invoke-static {v3}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$3300(Lcom/sec/android/gallery3d/ui/PhotoView;)I

    move-result v3

    if-eq v3, v2, :cond_0

    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/PhotoView$MyScaleListener;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    # getter for: Lcom/sec/android/gallery3d/ui/PhotoView;->mLoadingState:I
    invoke-static {v3}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$3300(Lcom/sec/android/gallery3d/ui/PhotoView;)I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/PhotoView$MyScaleListener;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    # getter for: Lcom/sec/android/gallery3d/ui/PhotoView;->mLoadingProgressState:I
    invoke-static {v3}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$5700(Lcom/sec/android/gallery3d/ui/PhotoView;)I

    move-result v3

    if-ne v3, v2, :cond_1

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_1
    const-string/jumbo v3, "PhotoView"

    const-string/jumbo v4, "onScaleBegin pass"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/PhotoView$MyScaleListener;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    const-wide/16 v4, 0x0

    # setter for: Lcom/sec/android/gallery3d/ui/PhotoView;->mScaleEndStartTime:J
    invoke-static {v3, v4, v5}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$7502(Lcom/sec/android/gallery3d/ui/PhotoView;J)J

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v3

    # setter for: Lcom/sec/android/gallery3d/ui/PhotoView;->mGetPrevFocusX:F
    invoke-static {v3}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$8202(F)F

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v3

    # setter for: Lcom/sec/android/gallery3d/ui/PhotoView;->mGetPrevFocusY:F
    invoke-static {v3}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$8302(F)F

    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v0

    :goto_1
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v1

    :goto_2
    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/PhotoView$MyScaleListener;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    # getter for: Lcom/sec/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/sec/android/gallery3d/ui/PositionController;
    invoke-static {v3}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$2600(Lcom/sec/android/gallery3d/ui/PhotoView;)Lcom/sec/android/gallery3d/ui/PositionController;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Lcom/sec/android/gallery3d/ui/PositionController;->beginScale(FF)V

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/PhotoView$MyScaleListener;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    # getter for: Lcom/sec/android/gallery3d/ui/PhotoView;->mCenterX:F
    invoke-static {v3}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$2400(Lcom/sec/android/gallery3d/ui/PhotoView;)F

    move-result v0

    goto :goto_1

    :cond_4
    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/PhotoView$MyScaleListener;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    # getter for: Lcom/sec/android/gallery3d/ui/PhotoView;->mCenterY:F
    invoke-static {v3}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$2500(Lcom/sec/android/gallery3d/ui/PhotoView;)F

    move-result v1

    goto :goto_2
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 4

    const/4 v2, 0x0

    const-string/jumbo v0, "PhotoView"

    const-string/jumbo v1, "onScaleEnd"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView$MyScaleListener;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    # getter for: Lcom/sec/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/sec/android/gallery3d/ui/PositionController;
    invoke-static {v0}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$2600(Lcom/sec/android/gallery3d/ui/PhotoView;)Lcom/sec/android/gallery3d/ui/PositionController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/PositionController;->endScale()V

    # setter for: Lcom/sec/android/gallery3d/ui/PhotoView;->mGetPrevFocusX:F
    invoke-static {v2}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$8202(F)F

    # setter for: Lcom/sec/android/gallery3d/ui/PhotoView;->mGetPrevFocusY:F
    invoke-static {v2}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$8302(F)F

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView$MyScaleListener;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    # setter for: Lcom/sec/android/gallery3d/ui/PhotoView;->mScaleEndStartTime:J
    invoke-static {v0, v2, v3}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$7502(Lcom/sec/android/gallery3d/ui/PhotoView;J)J

    return-void
.end method
