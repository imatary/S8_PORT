.class Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout$9;
.super Ljava/lang/Object;
.source "SpenSettingRemoverLayout.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


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

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout$9;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, -0x2

    const-string v2, "SpenSettingRemoverLayout"

    const-string v3, "mRadioBtnListener OnCheckedChangeListener"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout$9;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mRadioButton2:Landroid/widget/RadioButton;
    invoke-static {v2}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->access$2300(Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;)Landroid/widget/RadioButton;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout$9;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;

    # invokes: Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->checkPosition()V
    invoke-static {v2}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->access$2400(Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;)V

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout$9;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mSettingViewInterface:Lcom/samsung/android/sdk/pen/SpenSettingViewRemoverInterface;
    invoke-static {v2}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->access$2000(Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;)Lcom/samsung/android/sdk/pen/SpenSettingViewRemoverInterface;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout$9;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mSettingViewInterface:Lcom/samsung/android/sdk/pen/SpenSettingViewRemoverInterface;
    invoke-static {v2}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->access$2000(Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;)Lcom/samsung/android/sdk/pen/SpenSettingViewRemoverInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/samsung/android/sdk/pen/SpenSettingViewRemoverInterface;->getRemoverSettingInfo()Lcom/samsung/android/sdk/pen/SpenSettingRemoverInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout$9;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mRadioButton1:Landroid/widget/RadioButton;
    invoke-static {v2}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->access$2500(Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;)Landroid/widget/RadioButton;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "SpenSettingRemoverLayout"

    const-string v3, "mRadioBtnListener - 1"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout$9;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mSettingInfo:Lcom/samsung/android/sdk/pen/SpenSettingRemoverInfo;
    invoke-static {v2}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->access$2100(Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;)Lcom/samsung/android/sdk/pen/SpenSettingRemoverInfo;

    move-result-object v2

    const/4 v3, 0x1

    iput v3, v0, Lcom/samsung/android/sdk/pen/SpenSettingRemoverInfo;->type:I

    iput v3, v2, Lcom/samsung/android/sdk/pen/SpenSettingRemoverInfo;->type:I

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout$9;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mSettingViewInterface:Lcom/samsung/android/sdk/pen/SpenSettingViewRemoverInterface;
    invoke-static {v2}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->access$2000(Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;)Lcom/samsung/android/sdk/pen/SpenSettingViewRemoverInterface;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/samsung/android/sdk/pen/SpenSettingViewRemoverInterface;->setRemoverSettingInfo(Lcom/samsung/android/sdk/pen/SpenSettingRemoverInfo;)V

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout$9;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mSeekbar:Landroid/widget/RelativeLayout;
    invoke-static {v2}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->access$2600(Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;)Landroid/widget/RelativeLayout;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->LAYOUT_HEIGHT_REMOVER:I
    invoke-static {}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->access$2700()I

    move-result v2

    invoke-direct {v1, v4, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout$9;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mTotalLayout:Landroid/widget/RelativeLayout;
    invoke-static {v2}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->access$1200(Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;)Landroid/widget/RelativeLayout;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout$9;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mRadioButton2:Landroid/widget/RadioButton;
    invoke-static {v2}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->access$2300(Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;)Landroid/widget/RadioButton;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "SpenSettingRemoverLayout"

    const-string v3, "mRadioBtnListener - 2"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout$9;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mSettingInfo:Lcom/samsung/android/sdk/pen/SpenSettingRemoverInfo;
    invoke-static {v2}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->access$2100(Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;)Lcom/samsung/android/sdk/pen/SpenSettingRemoverInfo;

    move-result-object v2

    iput v5, v0, Lcom/samsung/android/sdk/pen/SpenSettingRemoverInfo;->type:I

    iput v5, v2, Lcom/samsung/android/sdk/pen/SpenSettingRemoverInfo;->type:I

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout$9;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mSettingViewInterface:Lcom/samsung/android/sdk/pen/SpenSettingViewRemoverInterface;
    invoke-static {v2}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->access$2000(Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;)Lcom/samsung/android/sdk/pen/SpenSettingViewRemoverInterface;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/samsung/android/sdk/pen/SpenSettingViewRemoverInterface;->setRemoverSettingInfo(Lcom/samsung/android/sdk/pen/SpenSettingRemoverInfo;)V

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout$9;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mSeekbar:Landroid/widget/RelativeLayout;
    invoke-static {v2}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->access$2600(Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;)Landroid/widget/RelativeLayout;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->LAYOUT_HEIGHT_CUTTER:I
    invoke-static {}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->access$2800()I

    move-result v2

    invoke-direct {v1, v4, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout$9;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mTotalLayout:Landroid/widget/RelativeLayout;
    invoke-static {v2}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->access$1200(Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;)Landroid/widget/RelativeLayout;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method
