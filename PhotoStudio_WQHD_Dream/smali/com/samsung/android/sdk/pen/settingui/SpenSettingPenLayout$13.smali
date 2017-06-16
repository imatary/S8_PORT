.class Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$13;
.super Ljava/lang/Object;
.source "SpenSettingPenLayout.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


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

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$13;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 13

    iget-object v9, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$13;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mGestureDetector:Landroid/view/GestureDetector;
    invoke-static {v9}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->access$2400(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;)Landroid/view/GestureDetector;

    move-result-object v9

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$13;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mGestureDetector:Landroid/view/GestureDetector;
    invoke-static {v9}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->access$2400(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;)Landroid/view/GestureDetector;

    move-result-object v9

    invoke-virtual {v9, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v9

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$13;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->requestDisallowInterceptTouchEvent(Z)V

    const/4 v9, 0x1

    :goto_0
    return v9

    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v9

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v7

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v9

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v8

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v9

    packed-switch v9, :pswitch_data_0

    :cond_1
    :goto_1
    :pswitch_0
    iget-object v9, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$13;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->requestDisallowInterceptTouchEvent(Z)V

    const/4 v9, 0x1

    goto :goto_0

    :pswitch_1
    iget-object v9, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$13;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mViewMode:I
    invoke-static {v9}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->access$1200(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;)I

    move-result v9

    const/16 v10, 0xc

    if-ne v9, v10, :cond_2

    const/4 v9, 0x1

    goto :goto_0

    :cond_2
    iget-object v9, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$13;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mMoveSettingLayout:Z
    invoke-static {v9}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->access$2500(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;)Z

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_1

    iget-object v9, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$13;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mXDelta:I
    invoke-static {v9}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->access$2600(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;)I

    move-result v9

    sub-int v2, v7, v9

    iget-object v9, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$13;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mYDelta:I
    invoke-static {v9}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->access$2700(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;)I

    move-result v9

    sub-int v3, v8, v9

    if-gez v2, :cond_3

    const/4 v2, 0x0

    :cond_3
    if-gez v3, :cond_4

    const/4 v3, 0x0

    :cond_4
    iget-object v9, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$13;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mCanvasLayout:Landroid/widget/RelativeLayout;
    invoke-static {v9}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->access$2800(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;)Landroid/widget/RelativeLayout;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v9

    iget-object v10, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$13;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;

    invoke-virtual {v10}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->getWidth()I

    move-result v10

    sub-int/2addr v9, v10

    add-int/lit8 v9, v9, -0x2

    if-le v2, v9, :cond_5

    iget-object v9, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$13;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mCanvasLayout:Landroid/widget/RelativeLayout;
    invoke-static {v9}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->access$2800(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;)Landroid/widget/RelativeLayout;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v9

    iget-object v10, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$13;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;

    invoke-virtual {v10}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->getWidth()I

    move-result v10

    sub-int/2addr v9, v10

    add-int/lit8 v2, v9, -0x2

    :cond_5
    iget-object v9, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$13;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;

    invoke-virtual {v9}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->getHeight()I

    move-result v0

    const-string v9, "SpenSettingHandwritingLayout"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "height = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v9, "SpenSettingHandwritingLayout"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "before mMoveY = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$13;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mMovableRect:Landroid/graphics/Rect;
    invoke-static {v9}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->access$2900(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;)Landroid/graphics/Rect;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v9

    sub-int/2addr v9, v0

    if-le v3, v9, :cond_9

    iget-object v9, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$13;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mMovableRect:Landroid/graphics/Rect;
    invoke-static {v9}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->access$2900(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;)Landroid/graphics/Rect;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v9

    sub-int v3, v9, v0

    :cond_6
    :goto_2
    const-string v9, "SpenSettingHandwritingLayout"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "after mMoveY = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-gez v2, :cond_7

    const/4 v2, 0x0

    :cond_7
    if-gez v3, :cond_8

    const/4 v3, 0x0

    :cond_8
    iget-object v9, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$13;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;

    invoke-virtual {v9}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    iput v2, v4, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput v3, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget-object v9, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$13;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;

    iget v10, v4, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    # setter for: Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mCurrentLeftMargin:I
    invoke-static {v9, v10}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->access$3002(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;I)I

    iget-object v9, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$13;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;

    iget v10, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    # setter for: Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mCurrentTopMargin:I
    invoke-static {v9, v10}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->access$3102(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;I)I

    iget-object v9, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$13;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;

    invoke-virtual {v9, v4}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_1

    :cond_9
    iget-object v9, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$13;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mMovableRect:Landroid/graphics/Rect;
    invoke-static {v9}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->access$2900(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;)Landroid/graphics/Rect;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v9

    sub-int/2addr v9, v0

    if-le v3, v9, :cond_6

    iget-object v9, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$13;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mMovableRect:Landroid/graphics/Rect;
    invoke-static {v9}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->access$2900(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;)Landroid/graphics/Rect;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v9

    sub-int/2addr v9, v0

    if-le v3, v9, :cond_6

    iget-object v9, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$13;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mMovableRect:Landroid/graphics/Rect;
    invoke-static {v9}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->access$2900(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;)Landroid/graphics/Rect;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v9

    sub-int v3, v9, v0

    goto :goto_2

    :pswitch_2
    iget-object v9, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$13;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mMoveSettingLayout:Z
    invoke-static {v9}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->access$2500(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;)Z

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_b

    iget-object v9, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$13;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mActionListener:Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$ActionListener;
    invoke-static {v9}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->access$3200(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;)Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$ActionListener;

    move-result-object v9

    if-eqz v9, :cond_a

    iget-object v9, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$13;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mActionListener:Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$ActionListener;
    invoke-static {v9}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->access$3200(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;)Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$ActionListener;

    move-result-object v9

    invoke-interface {v9}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$ActionListener;->onMoved()V

    :cond_a
    iget-object v9, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$13;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mOldMovableRect:Landroid/graphics/Rect;
    invoke-static {v9}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->access$3400(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;)Landroid/graphics/Rect;

    move-result-object v9

    iget-object v10, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$13;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;

    # invokes: Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->getMovableRect()Landroid/graphics/Rect;
    invoke-static {v10}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->access$3300(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;)Landroid/graphics/Rect;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v9, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$13;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mOldLocation:[I
    invoke-static {v9}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->access$3500(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;)[I

    move-result-object v9

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$13;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;

    invoke-virtual {v11}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->getLeft()I

    move-result v11

    iget-object v12, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$13;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mOldMovableRect:Landroid/graphics/Rect;
    invoke-static {v12}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->access$3400(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;)Landroid/graphics/Rect;

    move-result-object v12

    iget v12, v12, Landroid/graphics/Rect;->left:I

    add-int/2addr v11, v12

    aput v11, v9, v10

    iget-object v9, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$13;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mOldLocation:[I
    invoke-static {v9}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->access$3500(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;)[I

    move-result-object v9

    const/4 v10, 0x1

    iget-object v11, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$13;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;

    invoke-virtual {v11}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->getTop()I

    move-result v11

    iget-object v12, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$13;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mOldMovableRect:Landroid/graphics/Rect;
    invoke-static {v12}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->access$3400(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;)Landroid/graphics/Rect;

    move-result-object v12

    iget v12, v12, Landroid/graphics/Rect;->top:I

    add-int/2addr v11, v12

    aput v11, v9, v10

    :cond_b
    iget-object v9, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$13;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;

    # invokes: Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->getMovableRect()Landroid/graphics/Rect;
    invoke-static {v9}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->access$3300(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;)Landroid/graphics/Rect;

    move-result-object v5

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    const/4 v9, 0x2

    new-array v1, v9, [I

    iget-object v9, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$13;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;

    invoke-virtual {v9, v1}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->getLocationOnScreen([I)V

    const/4 v9, 0x0

    aget v9, v1, v9

    iput v9, v6, Landroid/graphics/Rect;->left:I

    const/4 v9, 0x1

    aget v9, v1, v9

    iput v9, v6, Landroid/graphics/Rect;->top:I

    iget v9, v6, Landroid/graphics/Rect;->left:I

    iget-object v10, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$13;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;

    invoke-virtual {v10}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->getWidth()I

    move-result v10

    add-int/2addr v9, v10

    iput v9, v6, Landroid/graphics/Rect;->right:I

    iget v9, v6, Landroid/graphics/Rect;->top:I

    iget-object v10, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$13;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;

    invoke-virtual {v10}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->getHeight()I

    move-result v10

    add-int/2addr v9, v10

    iput v9, v6, Landroid/graphics/Rect;->bottom:I

    iget v9, v6, Landroid/graphics/Rect;->left:I

    iget v10, v5, Landroid/graphics/Rect;->left:I

    sub-int/2addr v9, v10

    int-to-float v9, v9

    iget v10, v6, Landroid/graphics/Rect;->left:I

    iget v11, v5, Landroid/graphics/Rect;->left:I

    sub-int/2addr v10, v11

    iget v11, v5, Landroid/graphics/Rect;->right:I

    iget v12, v6, Landroid/graphics/Rect;->right:I

    sub-int/2addr v11, v12

    add-int/2addr v10, v11

    int-to-float v10, v10

    div-float/2addr v9, v10

    # setter for: Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mRatioWidth:F
    invoke-static {v9}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->access$3602(F)F

    iget v9, v6, Landroid/graphics/Rect;->top:I

    iget v10, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr v9, v10

    int-to-float v9, v9

    iget v10, v6, Landroid/graphics/Rect;->top:I

    iget v11, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr v10, v11

    iget v11, v5, Landroid/graphics/Rect;->bottom:I

    iget v12, v6, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v11, v12

    add-int/2addr v10, v11

    int-to-float v10, v10

    div-float/2addr v9, v10

    # setter for: Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mRatioHeight:F
    invoke-static {v9}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->access$3702(F)F

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
