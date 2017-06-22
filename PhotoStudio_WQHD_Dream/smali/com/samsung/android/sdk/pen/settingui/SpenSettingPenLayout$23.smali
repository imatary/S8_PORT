.class Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$23;
.super Ljava/lang/Object;
.source "SpenSettingPenLayout.java"

# interfaces
.implements Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup$ColorPickerGradientChangedListener;


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

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$23;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onColorChanged(I)V
    .locals 6

    const/4 v5, 0x1

    const v4, 0xffffff

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$23;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mSettingViewPenInterface:Lcom/samsung/android/sdk/pen/SpenSettingViewPenInterface;
    invoke-static {v2}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->access$100(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;)Lcom/samsung/android/sdk/pen/SpenSettingViewPenInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$23;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenPluginManager:Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginManager;
    invoke-static {v2}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->access$500(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;)Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginManager;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$23;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mSettingInfo:Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;
    invoke-static {v3}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->access$400(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;)Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;

    move-result-object v3

    iget-object v3, v3, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginManager;->getPenPluginIndexByPenName(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$23;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenPluginInfoList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->access$700(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginInfo;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginInfo;->getPenPluginObject()Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenPenInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$23;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenPluginManager:Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginManager;
    invoke-static {v2}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->access$500(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;)Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginManager;

    move-result-object v2

    const-string v3, "com.samsung.android.sdk.pen.pen.preload.MagicPen"

    invoke-virtual {v2, v3}, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginManager;->getPenPluginIndexByPenName(Ljava/lang/String;)I

    move-result v2

    if-eq v1, v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$23;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mSettingViewPenInterface:Lcom/samsung/android/sdk/pen/SpenSettingViewPenInterface;
    invoke-static {v2}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->access$100(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;)Lcom/samsung/android/sdk/pen/SpenSettingViewPenInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/samsung/android/sdk/pen/SpenSettingViewPenInterface;->getPenSettingInfo()Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$23;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenPluginInfoList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->access$700(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginInfo;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginInfo;->getPenPluginObject()Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenPenInterface;

    move-result-object v2

    invoke-interface {v2, v5}, Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenPenInterface;->getPenAttribute(I)Z

    move-result v2

    if-ne v2, v5, :cond_4

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$23;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mSettingInfo:Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;
    invoke-static {v2}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->access$400(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;)Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->name:Ljava/lang/String;

    const-string v3, "Marker"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/high16 v2, 0x4c000000    # 3.3554432E7f

    and-int v3, p1, v4

    or-int/2addr v2, v3

    iput v2, v0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->color:I

    :goto_1
    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$23;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mSettingInfo:Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;
    invoke-static {v2}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->access$400(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;)Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;

    move-result-object v2

    iget v3, v0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->color:I

    iput v3, v2, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->color:I

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$23;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenPluginInfoList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->access$700(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$23;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenNameIndex:I
    invoke-static {v3}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->access$600(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginInfo;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginInfo;->getPenPluginObject()Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenPenInterface;

    move-result-object v2

    iget v3, v0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->color:I

    invoke-interface {v2, v3}, Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenPenInterface;->setColor(I)V

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$23;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mSizeView:Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingSizeView;
    invoke-static {v2}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->access$1000(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;)Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingSizeView;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingSizeView;->setPenInfo(Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;)V

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$23;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mColorPickerSetting:Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;
    invoke-static {v2}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->access$1100(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;)Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;

    move-result-object v2

    iget v3, v0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->color:I

    invoke-virtual {v2, v3}, Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;->setColorPickerColor(I)V

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$23;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mColorPaletteView:Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;
    invoke-static {v2}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->access$2000(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;)Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;

    move-result-object v2

    iget v3, v0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->color:I

    invoke-virtual {v2, v3}, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView;->setColor(I)V

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$23;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mViewMode:I
    invoke-static {v2}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->access$1200(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;)I

    move-result v2

    const/16 v3, 0xc

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$23;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mSettingViewPenInterface:Lcom/samsung/android/sdk/pen/SpenSettingViewPenInterface;
    invoke-static {v2}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->access$100(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;)Lcom/samsung/android/sdk/pen/SpenSettingViewPenInterface;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$23;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mSettingInfo:Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;
    invoke-static {v3}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->access$400(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;)Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/samsung/android/sdk/pen/SpenSettingViewPenInterface;->setPenSettingInfo(Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;)V

    goto/16 :goto_0

    :cond_2
    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$23;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mSettingInfo:Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;
    invoke-static {v2}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->access$400(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;)Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->name:Ljava/lang/String;

    const-string v3, "Pencil2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/high16 v2, -0x60000000

    and-int v3, p1, v4

    or-int/2addr v2, v3

    iput v2, v0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->color:I

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$23;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenAlpha:I
    invoke-static {v2}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->access$900(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;)I

    move-result v2

    shl-int/lit8 v2, v2, 0x18

    const/high16 v3, -0x1000000

    and-int/2addr v2, v3

    and-int v3, p1, v4

    or-int/2addr v2, v3

    iput v2, v0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->color:I

    goto/16 :goto_1

    :cond_4
    iput p1, v0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->color:I

    goto/16 :goto_1
.end method

.method public onColorPickerSpuit()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x5

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$23;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mSettingViewInterface:Lcom/samsung/android/sdk/pen/SpenSettingViewInterface;
    invoke-static {v0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->access$1500(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;)Lcom/samsung/android/sdk/pen/SpenSettingViewInterface;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$23;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$23;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mSettingViewInterface:Lcom/samsung/android/sdk/pen/SpenSettingViewInterface;
    invoke-static {v1}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->access$1500(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;)Lcom/samsung/android/sdk/pen/SpenSettingViewInterface;

    move-result-object v1

    invoke-interface {v1, v4}, Lcom/samsung/android/sdk/pen/SpenSettingViewInterface;->getToolTypeAction(I)I

    move-result v1

    # setter for: Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPreCanvasPenAction:I
    invoke-static {v0, v1}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->access$1602(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;I)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$23;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$23;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mSettingViewInterface:Lcom/samsung/android/sdk/pen/SpenSettingViewInterface;
    invoke-static {v1}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->access$1500(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;)Lcom/samsung/android/sdk/pen/SpenSettingViewInterface;

    move-result-object v1

    invoke-interface {v1, v3}, Lcom/samsung/android/sdk/pen/SpenSettingViewInterface;->getToolTypeAction(I)I

    move-result v1

    # setter for: Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPreCanvasFingerAction:I
    invoke-static {v0, v1}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->access$1702(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;I)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$23;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$23;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mSettingViewInterface:Lcom/samsung/android/sdk/pen/SpenSettingViewInterface;
    invoke-static {v1}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->access$1500(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;)Lcom/samsung/android/sdk/pen/SpenSettingViewInterface;

    move-result-object v1

    invoke-interface {v1, v5}, Lcom/samsung/android/sdk/pen/SpenSettingViewInterface;->getToolTypeAction(I)I

    move-result v1

    # setter for: Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPreCanvasMouseAction:I
    invoke-static {v0, v1}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->access$1802(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;I)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$23;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mSettingViewInterface:Lcom/samsung/android/sdk/pen/SpenSettingViewInterface;
    invoke-static {v0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->access$1500(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;)Lcom/samsung/android/sdk/pen/SpenSettingViewInterface;

    move-result-object v0

    invoke-interface {v0, v4, v2}, Lcom/samsung/android/sdk/pen/SpenSettingViewInterface;->setToolTypeAction(II)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$23;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mSettingViewInterface:Lcom/samsung/android/sdk/pen/SpenSettingViewInterface;
    invoke-static {v0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->access$1500(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;)Lcom/samsung/android/sdk/pen/SpenSettingViewInterface;

    move-result-object v0

    invoke-interface {v0, v3, v2}, Lcom/samsung/android/sdk/pen/SpenSettingViewInterface;->setToolTypeAction(II)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$23;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mSettingViewInterface:Lcom/samsung/android/sdk/pen/SpenSettingViewInterface;
    invoke-static {v0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->access$1500(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;)Lcom/samsung/android/sdk/pen/SpenSettingViewInterface;

    move-result-object v0

    invoke-interface {v0, v5, v2}, Lcom/samsung/android/sdk/pen/SpenSettingViewInterface;->setToolTypeAction(II)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$23;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mSpuitVisibilityListener:Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$SpenPenSpuitViewListener;
    invoke-static {v0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->access$2200(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;)Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$SpenPenSpuitViewListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$23;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mSpuitVisibilityListener:Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$SpenPenSpuitViewListener;
    invoke-static {v0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->access$2200(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;)Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$SpenPenSpuitViewListener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$SpenPenSpuitViewListener;->onVisibilityChanged(I)V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$23;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$23;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mColorPickerSetting:Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;
    invoke-static {v0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->access$1100(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;)Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;->show()V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$23;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mColorGradationPopup:Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;
    invoke-static {v0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->access$1900(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;)Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->dismiss()V

    return-void
.end method
