.class Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout$1;
.super Ljava/lang/Object;
.source "SpenSettingRemoverLayout.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout$1;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8

    const/4 v7, 0x1

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout$1;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mGestureDetector:Landroid/view/GestureDetector;
    invoke-static {v5}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->access$000(Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;)Landroid/view/GestureDetector;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout$1;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mGestureDetector:Landroid/view/GestureDetector;
    invoke-static {v5}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->access$000(Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;)Landroid/view/GestureDetector;

    move-result-object v5

    invoke-virtual {v5, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    if-eqz v5, :cond_0

    :goto_0
    return v7

    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v5

    float-to-int v3, v5

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    float-to-int v4, v5

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    :cond_1
    :goto_1
    :pswitch_0
    iget-object v5, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout$1;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;

    invoke-virtual {v5, v7}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0

    :pswitch_1
    iget-object v5, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout$1;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mMoveSettingLayout:Z
    invoke-static {v5}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->access$100(Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;)Z

    move-result v5

    if-ne v5, v7, :cond_1

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout$1;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mXDelta:I
    invoke-static {v5}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->access$200(Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;)I

    move-result v5

    sub-int v1, v3, v5

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout$1;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mYDelta:I
    invoke-static {v5}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->access$300(Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;)I

    move-result v5

    sub-int v2, v4, v5

    if-gez v1, :cond_2

    const/4 v1, 0x0

    :cond_2
    if-gez v2, :cond_3

    const/4 v2, 0x0

    :cond_3
    iget-object v5, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout$1;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mCanvasLayout:Landroid/widget/RelativeLayout;
    invoke-static {v5}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->access$400(Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;)Landroid/widget/RelativeLayout;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v5

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout$1;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;

    invoke-virtual {v6}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->getWidth()I

    move-result v6

    sub-int/2addr v5, v6

    add-int/lit8 v5, v5, -0x2

    if-le v1, v5, :cond_4

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout$1;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mCanvasLayout:Landroid/widget/RelativeLayout;
    invoke-static {v5}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->access$400(Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;)Landroid/widget/RelativeLayout;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v5

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout$1;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;

    invoke-virtual {v6}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->getWidth()I

    move-result v6

    sub-int/2addr v5, v6

    add-int/lit8 v1, v5, -0x2

    :cond_4
    iget-object v5, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout$1;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mMovableRect:Landroid/graphics/Rect;
    invoke-static {v5}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->access$500(Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;)Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout$1;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;

    invoke-virtual {v6}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->getHeight()I

    move-result v6

    sub-int/2addr v5, v6

    if-le v2, v5, :cond_5

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout$1;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mMovableRect:Landroid/graphics/Rect;
    invoke-static {v5}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->access$500(Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;)Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout$1;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;

    invoke-virtual {v6}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->getHeight()I

    move-result v6

    sub-int v2, v5, v6

    :cond_5
    if-gez v1, :cond_6

    const/4 v1, 0x0

    :cond_6
    if-gez v2, :cond_7

    const/4 v2, 0x0

    :cond_7
    iget-object v5, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout$1;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;

    invoke-virtual {v5}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout$1;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;

    invoke-virtual {v5, v0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_1

    :pswitch_2
    iget-object v5, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout$1;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mMoveSettingLayout:Z
    invoke-static {v5}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->access$100(Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;)Z

    move-result v5

    if-ne v5, v7, :cond_1

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout$1;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mActionListener:Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout$ActionListener;
    invoke-static {v5}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->access$600(Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;)Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout$ActionListener;

    move-result-object v5

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout$1;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mActionListener:Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout$ActionListener;
    invoke-static {v5}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->access$600(Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;)Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout$ActionListener;

    move-result-object v5

    invoke-interface {v5}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout$ActionListener;->onMoved()V

    :cond_8
    iget-object v5, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout$1;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mOldMovableRect:Landroid/graphics/Rect;
    invoke-static {v5}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->access$800(Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;)Landroid/graphics/Rect;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout$1;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;

    # invokes: Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->getMovableRect()Landroid/graphics/Rect;
    invoke-static {v6}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->access$700(Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;)Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout$1;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout$1;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mOldLocation:[I
    invoke-static {v6}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->access$900(Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;)[I

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->getLocationOnScreen([I)V

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
