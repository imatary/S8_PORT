.class Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView$4;
.super Ljava/lang/Object;
.source "SpenColorPaletteView.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


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

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView$4;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 4

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView$4;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->mColorFocusedCursor:Landroid/view/View;
    invoke-static {v2}, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->access$100(Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView$4;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;

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

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView$4;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->mColorFocusedCursor:Landroid/view/View;
    invoke-static {v2}, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->access$100(Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView$4;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->mColorFocusedCursor:Landroid/view/View;
    invoke-static {v2}, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->access$100(Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView$4;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->mColorFocusedCursor:Landroid/view/View;
    invoke-static {v2}, Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;->access$100(Lcom/samsung/android/sdk/pen/settingui/SpenColorPalleteView;)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
