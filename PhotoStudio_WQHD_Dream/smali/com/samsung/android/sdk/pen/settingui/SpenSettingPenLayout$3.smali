.class Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$3;
.super Ljava/lang/Object;
.source "SpenSettingPenLayout.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


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

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$3;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 3

    if-eqz p2, :cond_0

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$3;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenFocusedCursor:Landroid/view/View;
    invoke-static {v1}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->access$200(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->PEN_TYPE_LAYOUT_PADDING:I
    invoke-static {}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->access$300()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$3;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenFocusedCursor:Landroid/view/View;
    invoke-static {v1}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->access$200(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setY(F)V

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$3;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenFocusedCursor:Landroid/view/View;
    invoke-static {v1}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->access$200(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$3;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenFocusedCursor:Landroid/view/View;
    invoke-static {v1}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->access$200(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$3;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenFocusedCursor:Landroid/view/View;
    invoke-static {v1}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->access$200(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
