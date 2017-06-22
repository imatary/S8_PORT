.class Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView$OnDoubleTapListener;
.super Ljava/lang/Object;
.source "SpenSimpleSurfaceView.java"

# interfaces
.implements Landroid/view/GestureDetector$OnDoubleTapListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnDoubleTapListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;


# direct methods
.method private constructor <init>(Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView$OnDoubleTapListener;->this$0:Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView$OnDoubleTapListener;-><init>(Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;)V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 7

    const/4 v6, 0x0

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView$OnDoubleTapListener;->this$0:Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->getToolTypeAction(I)I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView$OnDoubleTapListener;->this$0:Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->getToolTypeAction(I)I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_1

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView$OnDoubleTapListener;->this$0:Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->getToolTypeAction(I)I

    move-result v3

    const/4 v4, 0x4

    if-eq v3, v4, :cond_1

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView$OnDoubleTapListener;->this$0:Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->getToolTypeAction(I)I

    move-result v3

    const/4 v4, 0x5

    if-eq v3, v4, :cond_1

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView$OnDoubleTapListener;->this$0:Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->getToolTypeAction(I)I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_1

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView$OnDoubleTapListener;->this$0:Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->getToolTypeAction(I)I

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView$OnDoubleTapListener;->this$0:Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;

    # getter for: Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mControl:Lcom/samsung/android/sdk/pen/engine/SpenControlBase;
    invoke-static {v3}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->access$1500(Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;)Lcom/samsung/android/sdk/pen/engine/SpenControlBase;

    move-result-object v3

    if-nez v3, :cond_1

    const-string v3, "SpenSimpleSurfaceView"

    const-string v4, "one finger double tab"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView$OnDoubleTapListener;->this$0:Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->getZoomRatio()F

    move-result v0

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView$OnDoubleTapListener;->this$0:Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->getCanvasWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v0

    float-to-int v1, v3

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView$OnDoubleTapListener;->this$0:Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;

    # getter for: Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mIsStretch:Z
    invoke-static {v3}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->access$1600(Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView$OnDoubleTapListener;->this$0:Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->getCanvasWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v0

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView$OnDoubleTapListener;->this$0:Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;

    # getter for: Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mStretchRatio:Landroid/graphics/PointF;
    invoke-static {v4}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->access$1700(Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;)Landroid/graphics/PointF;

    move-result-object v4

    iget v4, v4, Landroid/graphics/PointF;->x:F

    mul-float/2addr v3, v4

    float-to-int v1, v3

    :cond_0
    iget-object v3, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView$OnDoubleTapListener;->this$0:Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;

    # getter for: Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mScreenWidth:I
    invoke-static {v3}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->access$1800(Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;)I

    move-result v3

    if-ne v1, v3, :cond_2

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView$OnDoubleTapListener;->this$0:Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;

    # getter for: Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mScreenWidth:I
    invoke-static {v3}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->access$1800(Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;)I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x3fc00000    # 1.5f

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView$OnDoubleTapListener;->this$0:Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;

    invoke-virtual {v4}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->getCanvasWidth()I

    move-result v4

    int-to-float v4, v4

    div-float v2, v3, v4

    :goto_0
    iget-object v3, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView$OnDoubleTapListener;->this$0:Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;

    # getter for: Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mSpenZoomAnimation:Lcom/samsung/android/sdk/pen/engine/SpenZoomAnimation;
    invoke-static {v3}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->access$1900(Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;)Lcom/samsung/android/sdk/pen/engine/SpenZoomAnimation;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView$OnDoubleTapListener;->this$0:Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;

    # getter for: Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mSpenZoomAnimation:Lcom/samsung/android/sdk/pen/engine/SpenZoomAnimation;
    invoke-static {v3}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->access$1900(Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;)Lcom/samsung/android/sdk/pen/engine/SpenZoomAnimation;

    move-result-object v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-virtual {v3, v4, v5, v0, v2}, Lcom/samsung/android/sdk/pen/engine/SpenZoomAnimation;->startAnimation(FFFF)V

    :cond_1
    return v6

    :cond_2
    iget-object v3, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView$OnDoubleTapListener;->this$0:Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;

    # getter for: Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->mScreenWidth:I
    invoke-static {v3}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->access$1800(Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;)I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView$OnDoubleTapListener;->this$0:Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;

    invoke-virtual {v4}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleSurfaceView;->getCanvasWidth()I

    move-result v4

    int-to-float v4, v4

    div-float v2, v3, v4

    goto :goto_0
.end method

.method public onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
