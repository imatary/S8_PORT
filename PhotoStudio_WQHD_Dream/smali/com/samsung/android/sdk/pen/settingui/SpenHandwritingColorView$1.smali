.class Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView$1;
.super Ljava/lang/Object;
.source "SpenHandwritingColorView.java"

# interfaces
.implements Landroid/view/View$OnHoverListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView$1;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView$1;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;->isTalkbackEnable:Z
    invoke-static {v2}, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;->access$000(Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView$1;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;->mColorFocusedCursor:Landroid/view/View;
    invoke-static {v2}, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;->access$100(Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v4

    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/16 v3, 0x9

    if-ne v2, v3, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView$1;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;->mColorFocusedCursor:Landroid/view/View;
    invoke-static {v2}, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;->access$100(Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView$1;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;->mColorFocusedCursor:Landroid/view/View;
    invoke-static {v2}, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;->access$100(Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView$1;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;->mColorFocusedCursor:Landroid/view/View;
    invoke-static {v2}, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;->access$100(Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView$1;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;->mColorFocusedCursor:Landroid/view/View;
    invoke-static {v2}, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;->access$100(Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
