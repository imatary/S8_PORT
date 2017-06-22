.class Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup$3;
.super Ljava/lang/Object;
.source "SpenColorGradationPopup.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup$3;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup$3;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mColorFocusedCursor:Landroid/view/View;
    invoke-static {v2}, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->access$1500(Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    if-eqz p2, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup$3;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mColorFocusedCursor:Landroid/view/View;
    invoke-static {v2}, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->access$1500(Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->COLOR_FOCUS_WHEEL_THICKNESS:I
    invoke-static {}, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->access$1600()I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup$3;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->SDK_VERSION:I
    invoke-static {v2}, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->access$1000(Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;)I

    move-result v2

    const/16 v3, 0x11

    if-lt v2, v3, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutDirection()I

    move-result v2

    if-ne v2, v5, :cond_1

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup$3;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;

    # setter for: Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mCurrenLayoutDirection:I
    invoke-static {v2, v5}, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->access$1702(Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;I)I

    iget v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->COLOR_FOCUS_WHEEL_THICKNESS:I
    invoke-static {}, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->access$1600()I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    iput v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    :goto_1
    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup$3;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mColorFocusedCursor:Landroid/view/View;
    invoke-static {v2}, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->access$1500(Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup$3;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mColorFocusedCursor:Landroid/view/View;
    invoke-static {v2}, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->access$1500(Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup$3;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mCurrenLayoutDirection:I
    invoke-static {v2}, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->access$1700(Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;)I

    move-result v2

    if-ne v2, v5, :cond_2

    iget v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->COLOR_FOCUS_WHEEL_THICKNESS:I
    invoke-static {}, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->access$1600()I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    iput v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    goto :goto_1

    :cond_2
    iget v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->COLOR_FOCUS_WHEEL_THICKNESS:I
    invoke-static {}, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->access$1600()I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iput v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup$3;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mColorFocusedCursor:Landroid/view/View;
    invoke-static {v2}, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->access$1500(Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
