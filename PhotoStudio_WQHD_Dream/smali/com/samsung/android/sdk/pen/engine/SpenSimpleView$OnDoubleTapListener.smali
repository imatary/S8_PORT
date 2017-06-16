.class Lcom/samsung/android/sdk/pen/engine/SpenSimpleView$OnDoubleTapListener;
.super Ljava/lang/Object;
.source "SpenSimpleView.java"

# interfaces
.implements Landroid/view/GestureDetector$OnDoubleTapListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/pen/engine/SpenSimpleView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnDoubleTapListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sdk/pen/engine/SpenSimpleView;


# direct methods
.method private constructor <init>(Lcom/samsung/android/sdk/pen/engine/SpenSimpleView;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleView$OnDoubleTapListener;->this$0:Lcom/samsung/android/sdk/pen/engine/SpenSimpleView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/sdk/pen/engine/SpenSimpleView;Lcom/samsung/android/sdk/pen/engine/SpenSimpleView$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleView$OnDoubleTapListener;-><init>(Lcom/samsung/android/sdk/pen/engine/SpenSimpleView;)V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 7

    const/4 v6, 0x0

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleView$OnDoubleTapListener;->this$0:Lcom/samsung/android/sdk/pen/engine/SpenSimpleView;

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleView;->getToolTypeAction(I)I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleView$OnDoubleTapListener;->this$0:Lcom/samsung/android/sdk/pen/engine/SpenSimpleView;

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleView;->getToolTypeAction(I)I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_1

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleView$OnDoubleTapListener;->this$0:Lcom/samsung/android/sdk/pen/engine/SpenSimpleView;

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleView;->getToolTypeAction(I)I

    move-result v3

    const/4 v4, 0x4

    if-eq v3, v4, :cond_1

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleView$OnDoubleTapListener;->this$0:Lcom/samsung/android/sdk/pen/engine/SpenSimpleView;

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleView;->getToolTypeAction(I)I

    move-result v3

    const/4 v4, 0x5

    if-eq v3, v4, :cond_1

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleView$OnDoubleTapListener;->this$0:Lcom/samsung/android/sdk/pen/engine/SpenSimpleView;

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleView;->getToolTypeAction(I)I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_1

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleView$OnDoubleTapListener;->this$0:Lcom/samsung/android/sdk/pen/engine/SpenSimpleView;

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleView;->getToolTypeAction(I)I

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleView$OnDoubleTapListener;->this$0:Lcom/samsung/android/sdk/pen/engine/SpenSimpleView;

    # getter for: Lcom/samsung/android/sdk/pen/engine/SpenSimpleView;->mControl:Lcom/samsung/android/sdk/pen/engine/SpenControlBase;
    invoke-static {v3}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleView;->access$1000(Lcom/samsung/android/sdk/pen/engine/SpenSimpleView;)Lcom/samsung/android/sdk/pen/engine/SpenControlBase;

    move-result-object v3

    if-nez v3, :cond_1

    const-string v3, "SpenSimpleView"

    const-string v4, "one finger double tab"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleView$OnDoubleTapListener;->this$0:Lcom/samsung/android/sdk/pen/engine/SpenSimpleView;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleView;->getZoomRatio()F

    move-result v0

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleView$OnDoubleTapListener;->this$0:Lcom/samsung/android/sdk/pen/engine/SpenSimpleView;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleView;->getCanvasWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v0

    float-to-int v1, v3

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleView$OnDoubleTapListener;->this$0:Lcom/samsung/android/sdk/pen/engine/SpenSimpleView;

    # getter for: Lcom/samsung/android/sdk/pen/engine/SpenSimpleView;->mIsStretch:Z
    invoke-static {v3}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleView;->access$1100(Lcom/samsung/android/sdk/pen/engine/SpenSimpleView;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleView$OnDoubleTapListener;->this$0:Lcom/samsung/android/sdk/pen/engine/SpenSimpleView;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleView;->getCanvasWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v0

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleView$OnDoubleTapListener;->this$0:Lcom/samsung/android/sdk/pen/engine/SpenSimpleView;

    # getter for: Lcom/samsung/android/sdk/pen/engine/SpenSimpleView;->mStretchRatio:Landroid/graphics/PointF;
    invoke-static {v4}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleView;->access$1200(Lcom/samsung/android/sdk/pen/engine/SpenSimpleView;)Landroid/graphics/PointF;

    move-result-object v4

    iget v4, v4, Landroid/graphics/PointF;->x:F

    mul-float/2addr v3, v4

    float-to-int v1, v3

    :cond_0
    iget-object v3, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleView$OnDoubleTapListener;->this$0:Lcom/samsung/android/sdk/pen/engine/SpenSimpleView;

    # getter for: Lcom/samsung/android/sdk/pen/engine/SpenSimpleView;->mScreenWidth:I
    invoke-static {v3}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleView;->access$1300(Lcom/samsung/android/sdk/pen/engine/SpenSimpleView;)I

    move-result v3

    if-ne v1, v3, :cond_2

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleView$OnDoubleTapListener;->this$0:Lcom/samsung/android/sdk/pen/engine/SpenSimpleView;

    # getter for: Lcom/samsung/android/sdk/pen/engine/SpenSimpleView;->mScreenWidth:I
    invoke-static {v3}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleView;->access$1300(Lcom/samsung/android/sdk/pen/engine/SpenSimpleView;)I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x3fc00000    # 1.5f

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleView$OnDoubleTapListener;->this$0:Lcom/samsung/android/sdk/pen/engine/SpenSimpleView;

    invoke-virtual {v4}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleView;->getCanvasWidth()I

    move-result v4

    int-to-float v4, v4

    div-float v2, v3, v4

    :goto_0
    iget-object v3, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleView$OnDoubleTapListener;->this$0:Lcom/samsung/android/sdk/pen/engine/SpenSimpleView;

    # getter for: Lcom/samsung/android/sdk/pen/engine/SpenSimpleView;->mSpenZoomAnimation:Lcom/samsung/android/sdk/pen/engine/SpenZoomAnimation;
    invoke-static {v3}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleView;->access$1400(Lcom/samsung/android/sdk/pen/engine/SpenSimpleView;)Lcom/samsung/android/sdk/pen/engine/SpenZoomAnimation;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleView$OnDoubleTapListener;->this$0:Lcom/samsung/android/sdk/pen/engine/SpenSimpleView;

    # getter for: Lcom/samsung/android/sdk/pen/engine/SpenSimpleView;->mSpenZoomAnimation:Lcom/samsung/android/sdk/pen/engine/SpenZoomAnimation;
    invoke-static {v3}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleView;->access$1400(Lcom/samsung/android/sdk/pen/engine/SpenSimpleView;)Lcom/samsung/android/sdk/pen/engine/SpenZoomAnimation;

    move-result-object v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-virtual {v3, v4, v5, v0, v2}, Lcom/samsung/android/sdk/pen/engine/SpenZoomAnimation;->startAnimation(FFFF)V

    :cond_1
    return v6

    :cond_2
    iget-object v3, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleView$OnDoubleTapListener;->this$0:Lcom/samsung/android/sdk/pen/engine/SpenSimpleView;

    # getter for: Lcom/samsung/android/sdk/pen/engine/SpenSimpleView;->mScreenWidth:I
    invoke-static {v3}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleView;->access$1300(Lcom/samsung/android/sdk/pen/engine/SpenSimpleView;)I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenSimpleView$OnDoubleTapListener;->this$0:Lcom/samsung/android/sdk/pen/engine/SpenSimpleView;

    invoke-virtual {v4}, Lcom/samsung/android/sdk/pen/engine/SpenSimpleView;->getCanvasWidth()I

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
