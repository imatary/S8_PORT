.class Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout$3;
.super Ljava/lang/Object;
.source "SpenColorPickerLayout.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout$3;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8

    const/4 v6, 0x0

    const/4 v7, 0x1

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout$3;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;->mParentRelativeLayout:Landroid/widget/RelativeLayout;
    invoke-static {v5}, Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;->access$300(Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;)Landroid/widget/RelativeLayout;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/widget/RelativeLayout;->requestDisallowInterceptTouchEvent(Z)V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v5

    float-to-int v3, v5

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    float-to-int v4, v5

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    :goto_0
    :pswitch_0
    iget-object v5, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout$3;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;

    iget-object v5, v5, Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;->mSpuitSettings:Landroid/view/View;

    check-cast v5, Landroid/view/ViewGroup;

    invoke-virtual {v5, v7}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    return v7

    :pswitch_1
    iget-object v5, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout$3;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;->mTotalLayout:Landroid/widget/RelativeLayout;
    invoke-static {v5}, Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;->access$400(Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;)Landroid/widget/RelativeLayout;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout$3;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;

    iget v6, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    sub-int v6, v3, v6

    # setter for: Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;->mXDelta:I
    invoke-static {v5, v6}, Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;->access$502(Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;I)I

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout$3;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;

    iget v6, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    sub-int v6, v4, v6

    # setter for: Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;->mYDelta:I
    invoke-static {v5, v6}, Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;->access$602(Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;I)I

    goto :goto_0

    :pswitch_2
    iget-object v5, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout$3;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;->mTotalLayout:Landroid/widget/RelativeLayout;
    invoke-static {v5}, Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;->access$400(Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;)Landroid/widget/RelativeLayout;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout$3;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;->mXDelta:I
    invoke-static {v5}, Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;->access$500(Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;)I

    move-result v5

    sub-int v5, v3, v5

    iput v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout$3;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;->mYDelta:I
    invoke-static {v5}, Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;->access$600(Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;)I

    move-result v5

    sub-int v5, v4, v5

    iput v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    if-gez v5, :cond_0

    iput v6, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    :cond_0
    iget v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    if-gez v5, :cond_1

    iput v6, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    :cond_1
    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;->SPUIT_LAYOUT_WIDTH:I
    invoke-static {}, Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;->access$700()I

    move-result v2

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;->SPUIT_LAYOUT_HEIGHT:I
    invoke-static {}, Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;->access$800()I

    move-result v1

    iget v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout$3;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;->mParentRelativeLayout:Landroid/widget/RelativeLayout;
    invoke-static {v6}, Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;->access$300(Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;)Landroid/widget/RelativeLayout;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v6

    sub-int/2addr v6, v2

    if-le v5, v6, :cond_2

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout$3;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;->mParentRelativeLayout:Landroid/widget/RelativeLayout;
    invoke-static {v5}, Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;->access$300(Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;)Landroid/widget/RelativeLayout;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v5

    sub-int/2addr v5, v2

    iput v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    :cond_2
    iget v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout$3;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;->mParentRelativeLayout:Landroid/widget/RelativeLayout;
    invoke-static {v6}, Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;->access$300(Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;)Landroid/widget/RelativeLayout;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v6

    sub-int/2addr v6, v1

    if-le v5, v6, :cond_3

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout$3;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;->mParentRelativeLayout:Landroid/widget/RelativeLayout;
    invoke-static {v5}, Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;->access$300(Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;)Landroid/widget/RelativeLayout;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v5

    sub-int/2addr v5, v1

    iput v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    :cond_3
    iget-object v5, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout$3;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;

    iget v6, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    # setter for: Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;->xPos:I
    invoke-static {v5, v6}, Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;->access$902(Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;I)I

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout$3;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;

    iget v6, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    # setter for: Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;->yPos:I
    invoke-static {v5, v6}, Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;->access$1002(Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;I)I

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout$3;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;->mTotalLayout:Landroid/widget/RelativeLayout;
    invoke-static {v5}, Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;->access$400(Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;)Landroid/widget/RelativeLayout;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
