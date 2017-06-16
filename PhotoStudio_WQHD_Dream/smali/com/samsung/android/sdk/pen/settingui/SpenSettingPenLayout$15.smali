.class Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$15;
.super Ljava/lang/Object;
.source "SpenSettingPenLayout.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$15;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 5

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$15;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mMovableRect:Landroid/graphics/Rect;
    invoke-static {v3}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->access$2900(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;)Landroid/graphics/Rect;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$15;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;

    # invokes: Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->getMovableRect()Landroid/graphics/Rect;
    invoke-static {v4}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->access$3300(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;)Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$15;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$15;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;

    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int v4, v1, v4

    # setter for: Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mXDelta:I
    invoke-static {v3, v4}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->access$2602(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;I)I

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$15;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;

    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int v4, v2, v4

    # setter for: Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mYDelta:I
    invoke-static {v3, v4}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->access$2702(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;I)I

    const/4 v3, 0x1

    return v3
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 9

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$15;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mNeedCalculateMargin:Z
    invoke-static {v3}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->access$3900(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-array v0, v8, [I

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$15;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mCanvasLayout:Landroid/widget/RelativeLayout;
    invoke-static {v3}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->access$2800(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;)Landroid/widget/RelativeLayout;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/widget/RelativeLayout;->getLocationOnScreen([I)V

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$15;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    aget v5, v0, v6

    int-to-float v5, v5

    sub-float/2addr v4, v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    # setter for: Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mLeftMargin:I
    invoke-static {v3, v4}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->access$4002(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;I)I

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$15;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    aget v5, v0, v7

    int-to-float v5, v5

    sub-float/2addr v4, v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    # setter for: Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mTopMargin:I
    invoke-static {v3, v4}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->access$4102(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;I)I

    new-array v2, v8, [I

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$15;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->getRootView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$15;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;

    # setter for: Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mNeedCalculateMargin:Z
    invoke-static {v3, v6}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->access$3902(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;Z)Z

    :cond_0
    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$15;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mFirstLongPress:Z
    invoke-static {v3}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->access$4200(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$15;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;

    # setter for: Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mFirstLongPress:Z
    invoke-static {v3, v6}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->access$4202(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;Z)Z

    :cond_1
    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$15;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;

    # invokes: Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->getMovableRect()Landroid/graphics/Rect;
    invoke-static {v3}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->access$3300(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;)Landroid/graphics/Rect;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$15;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mMovableRect:Landroid/graphics/Rect;
    invoke-static {v3}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->access$2900(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;)Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$15;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;

    # setter for: Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mMoveSettingLayout:Z
    invoke-static {v3, v7}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->access$2502(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;Z)Z

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$15;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mIndicator:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->access$4300(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;)Landroid/widget/ImageView;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
