.class Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView$3;
.super Ljava/lang/Object;
.source "SpenColorPaletteView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView$3;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7

    const/16 v6, 0x8

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView$3;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->mColorFocusedCursor:Landroid/view/View;
    invoke-static {v2}, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->access$100(Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView$3;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->mColorFocusedCursor:Landroid/view/View;
    invoke-static {v2}, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->access$100(Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView$3;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->mColorFocusedCursor:Landroid/view/View;
    invoke-static {v2}, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->access$100(Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    :goto_0
    return v5

    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    cmpg-float v2, v2, v4

    if-ltz v2, :cond_2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-gtz v2, :cond_2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    cmpg-float v2, v2, v4

    if-ltz v2, :cond_2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    :cond_2
    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView$3;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->mColorFocusedCursor:Landroid/view/View;
    invoke-static {v2}, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->access$100(Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-eq v2, v5, :cond_4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    :cond_4
    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView$3;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->mColorFocusedCursor:Landroid/view/View;
    invoke-static {v2}, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->access$100(Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    cmpl-float v2, v2, v4

    if-lez v2, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    cmpl-float v2, v2, v4

    if-lez v2, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView$3;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;

    # invokes: Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->performColorClick(Landroid/view/View;)V
    invoke-static {v2, p1}, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->access$200(Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;Landroid/view/View;)V

    goto/16 :goto_0
.end method
