.class Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout$4;
.super Ljava/lang/Object;
.source "SpenSettingEraserLayout.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout$4;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 5

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout$4;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mMovableRect:Landroid/graphics/Rect;
    invoke-static {v3}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->access$500(Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;)Landroid/graphics/Rect;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout$4;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;

    # invokes: Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->getMovableRect()Landroid/graphics/Rect;
    invoke-static {v4}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->access$700(Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;)Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    float-to-int v1, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    float-to-int v2, v3

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout$4;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout$4;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;

    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int v4, v1, v4

    # setter for: Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mXDelta:I
    invoke-static {v3, v4}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->access$202(Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;I)I

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout$4;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;

    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int v4, v2, v4

    # setter for: Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mYDelta:I
    invoke-static {v3, v4}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->access$302(Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;I)I

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

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout$4;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mNeedCalculateMargin:Z
    invoke-static {v3}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->access$1300(Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-array v0, v8, [I

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout$4;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mCanvasLayout:Landroid/widget/RelativeLayout;
    invoke-static {v3}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->access$400(Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;)Landroid/widget/RelativeLayout;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/widget/RelativeLayout;->getLocationOnScreen([I)V

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout$4;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    aget v5, v0, v6

    int-to-float v5, v5

    sub-float/2addr v4, v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    sub-float/2addr v4, v5

    float-to-int v4, v4

    # setter for: Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mLeftMargin:I
    invoke-static {v3, v4}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->access$1402(Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;I)I

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout$4;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    aget v5, v0, v7

    int-to-float v5, v5

    sub-float/2addr v4, v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    sub-float/2addr v4, v5

    float-to-int v4, v4

    # setter for: Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mTopMargin:I
    invoke-static {v3, v4}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->access$1502(Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;I)I

    new-array v2, v8, [I

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout$4;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->getRootView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout$4;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;

    # setter for: Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mNeedCalculateMargin:Z
    invoke-static {v3, v6}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->access$1302(Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;Z)Z

    :cond_0
    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout$4;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mFirstLongPress:Z
    invoke-static {v3}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->access$1600(Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout$4;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;

    # setter for: Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mFirstLongPress:Z
    invoke-static {v3, v6}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->access$1602(Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;Z)Z

    :cond_1
    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout$4;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;

    # invokes: Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->getMovableRect()Landroid/graphics/Rect;
    invoke-static {v3}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->access$700(Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;)Landroid/graphics/Rect;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout$4;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mMovableRect:Landroid/graphics/Rect;
    invoke-static {v3}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->access$500(Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;)Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout$4;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;

    # setter for: Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mMoveSettingLayout:Z
    invoke-static {v3, v7}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->access$102(Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;Z)Z

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout$4;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mIndicator:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->access$1700(Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;)Landroid/widget/ImageView;

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
