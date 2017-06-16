.class Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$8;
.super Ljava/lang/Object;
.source "SpenSettingPenLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$8;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$8;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mColorPickerSetting:Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;
    invoke-static {v1}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->access$1100(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;)Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;->getColorPickerSettingVisible()I

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$8;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mSettingViewInterface:Lcom/samsung/android/sdk/pen/SpenSettingViewInterface;
    invoke-static {v1}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->access$1500(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;)Lcom/samsung/android/sdk/pen/SpenSettingViewInterface;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$8;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mSettingViewInterface:Lcom/samsung/android/sdk/pen/SpenSettingViewInterface;
    invoke-static {v1}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->access$1500(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;)Lcom/samsung/android/sdk/pen/SpenSettingViewInterface;

    move-result-object v1

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$8;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPreCanvasPenAction:I
    invoke-static {v3}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->access$1600(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;)I

    move-result v3

    invoke-interface {v1, v2, v3}, Lcom/samsung/android/sdk/pen/SpenSettingViewInterface;->setToolTypeAction(II)V

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$8;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mSettingViewInterface:Lcom/samsung/android/sdk/pen/SpenSettingViewInterface;
    invoke-static {v1}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->access$1500(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;)Lcom/samsung/android/sdk/pen/SpenSettingViewInterface;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$8;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPreCanvasFingerAction:I
    invoke-static {v3}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->access$1700(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;)I

    move-result v3

    invoke-interface {v1, v2, v3}, Lcom/samsung/android/sdk/pen/SpenSettingViewInterface;->setToolTypeAction(II)V

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$8;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mSettingViewInterface:Lcom/samsung/android/sdk/pen/SpenSettingViewInterface;
    invoke-static {v1}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->access$1500(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;)Lcom/samsung/android/sdk/pen/SpenSettingViewInterface;

    move-result-object v1

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$8;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPreCanvasMouseAction:I
    invoke-static {v3}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->access$1800(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;)I

    move-result v3

    invoke-interface {v1, v2, v3}, Lcom/samsung/android/sdk/pen/SpenSettingViewInterface;->setToolTypeAction(II)V

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$8;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mColorPickerSetting:Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;
    invoke-static {v1}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->access$1100(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;)Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;->getColorPickerCurrentColor()I

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$8;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mSettingInfo:Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;
    invoke-static {v1}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->access$400(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;)Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$8;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mColorPickerSetting:Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;
    invoke-static {v2}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->access$1100(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;)Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;->getColorPickerCurrentColor()I

    move-result v2

    iput v2, v1, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->color:I

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$8;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mColorGradationPopup:Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;
    invoke-static {v1}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->access$1900(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;)Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$8;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mColorGradationPopup:Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;
    invoke-static {v1}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->access$1900(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;)Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$8;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mSettingInfo:Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;
    invoke-static {v2}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->access$400(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;)Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;

    move-result-object v2

    iget v2, v2, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->color:I

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->saveRecentColors(I)V

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$8;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mColorGradationPopup:Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;
    invoke-static {v1}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->access$1900(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;)Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->dismiss()V

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$8;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mSettingViewPenInterface:Lcom/samsung/android/sdk/pen/SpenSettingViewPenInterface;
    invoke-static {v1}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->access$100(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;)Lcom/samsung/android/sdk/pen/SpenSettingViewPenInterface;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$8;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mSettingViewPenInterface:Lcom/samsung/android/sdk/pen/SpenSettingViewPenInterface;
    invoke-static {v1}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->access$100(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;)Lcom/samsung/android/sdk/pen/SpenSettingViewPenInterface;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/sdk/pen/SpenSettingViewPenInterface;->getPenSettingInfo()Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$8;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mColorPickerSetting:Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;
    invoke-static {v1}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->access$1100(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;)Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;->getColorPickerCurrentColor()I

    move-result v1

    iput v1, v0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->color:I

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$8;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mSettingViewPenInterface:Lcom/samsung/android/sdk/pen/SpenSettingViewPenInterface;
    invoke-static {v1}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->access$100(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;)Lcom/samsung/android/sdk/pen/SpenSettingViewPenInterface;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/samsung/android/sdk/pen/SpenSettingViewPenInterface;->setPenSettingInfo(Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;)V

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$8;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mColorPaletteView:Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;
    invoke-static {v1}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->access$2000(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;)Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$8;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mColorPickerSetting:Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;
    invoke-static {v2}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->access$1100(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;)Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;->getColorPickerCurrentColor()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;->setColor(I)V

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$8;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;

    const/4 v2, 0x0

    # setter for: Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->isColorPickerTool:Z
    invoke-static {v1, v2}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->access$2102(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;Z)Z

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$8;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mColorPickerSetting:Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;
    invoke-static {v1}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->access$1100(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;)Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;->hide()V

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$8;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mSpuitVisibilityListener:Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$SpenPenSpuitViewListener;
    invoke-static {v1}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->access$2200(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;)Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$SpenPenSpuitViewListener;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$8;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mSpuitVisibilityListener:Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$SpenPenSpuitViewListener;
    invoke-static {v1}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->access$2200(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;)Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$SpenPenSpuitViewListener;

    move-result-object v1

    const/16 v2, 0x8

    invoke-interface {v1, v2}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$SpenPenSpuitViewListener;->onVisibilityChanged(I)V

    :cond_4
    return-void
.end method
