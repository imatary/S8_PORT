.class Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$4;
.super Ljava/lang/Object;
.source "SpenSettingPenLayout.java"

# interfaces
.implements Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingColorView$OnColorChangedListener;


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

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$4;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public colorChanged(IILjava/lang/String;)V
    .locals 6

    const/4 v5, 0x1

    const v4, 0xffffff

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$4;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenPluginManager:Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginManager;
    invoke-static {v2}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->access$500(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;)Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginManager;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$4;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mSettingInfo:Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;
    invoke-static {v3}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->access$400(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;)Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;

    move-result-object v3

    iget-object v3, v3, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginManager;->getPenPluginIndexByPenName(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$4;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenNameIndex:I
    invoke-static {v2}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->access$600(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;)I

    move-result v2

    if-eq v2, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$4;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenPluginInfoList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->access$700(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginInfo;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginInfo;->getPenPluginObject()Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenPenInterface;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$4;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenPluginManager:Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginManager;
    invoke-static {v2}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->access$500(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;)Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginManager;

    move-result-object v2

    const-string v3, "com.samsung.android.sdk.pen.pen.preload.MagicPen"

    invoke-virtual {v2, v3}, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginManager;->getPenPluginIndexByPenName(Ljava/lang/String;)I

    move-result v2

    if-eq v1, v2, :cond_0

    const/16 v2, 0x9

    if-ne p2, v2, :cond_3

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$4;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;

    # invokes: Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->showDialog()V
    invoke-static {v2}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->access$800(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;)V

    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$4;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;

    const/4 v3, 0x0

    # setter for: Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->requestLayoutDisable:Z
    invoke-static {v2, v3}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->access$1302(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;Z)Z

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$4;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->requestLayout()V

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$4;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mSettingViewPenInterface:Lcom/samsung/android/sdk/pen/SpenSettingViewPenInterface;
    invoke-static {v2}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->access$100(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;)Lcom/samsung/android/sdk/pen/SpenSettingViewPenInterface;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$4;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mSettingViewPenInterface:Lcom/samsung/android/sdk/pen/SpenSettingViewPenInterface;
    invoke-static {v2}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->access$100(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;)Lcom/samsung/android/sdk/pen/SpenSettingViewPenInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/samsung/android/sdk/pen/SpenSettingViewPenInterface;->getPenSettingInfo()Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$4;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenPluginInfoList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->access$700(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$4;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenNameIndex:I
    invoke-static {v3}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->access$600(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginInfo;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/pen/settingui/SpenPenPluginInfo;->getPenPluginObject()Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenPenInterface;

    move-result-object v2

    invoke-interface {v2, v5}, Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenPenInterface;->getPenAttribute(I)Z

    move-result v2

    if-ne v2, v5, :cond_6

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$4;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mSettingInfo:Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;
    invoke-static {v2}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->access$400(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;)Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->name:Ljava/lang/String;

    const-string v3, "Marker"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/high16 v2, 0x4c000000    # 3.3554432E7f

    and-int v3, p1, v4

    or-int/2addr v2, v3

    iput v2, v0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->color:I

    :goto_2
    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$4;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mSettingInfo:Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;
    invoke-static {v2}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->access$400(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;)Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;

    move-result-object v2

    iget v3, v0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->color:I

    iput v3, v2, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->color:I

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$4;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenPluginInfoList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->access$700(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$4;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;

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

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$4;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mSizeView:Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingSizeView;
    invoke-static {v2}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->access$1000(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;)Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingSizeView;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/samsung/android/sdk/pen/settingui/SpenHandwritingSizeView;->setPenInfo(Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;)V

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$4;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mColorPickerSetting:Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;
    invoke-static {v2}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->access$1100(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;)Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;

    move-result-object v2

    iget v3, v0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->color:I

    invoke-virtual {v2, v3}, Lcom/samsung/android/sdk/pen/settingui/SpenColorPickerLayout;->setColorPickerColor(I)V

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$4;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mViewMode:I
    invoke-static {v2}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->access$1200(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;)I

    move-result v2

    const/16 v3, 0xc

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$4;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mSettingViewPenInterface:Lcom/samsung/android/sdk/pen/SpenSettingViewPenInterface;
    invoke-static {v2}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->access$100(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;)Lcom/samsung/android/sdk/pen/SpenSettingViewPenInterface;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$4;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mSettingInfo:Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;
    invoke-static {v3}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->access$400(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;)Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/samsung/android/sdk/pen/SpenSettingViewPenInterface;->setPenSettingInfo(Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;)V

    goto/16 :goto_1

    :cond_4
    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$4;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mSettingInfo:Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;
    invoke-static {v2}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->access$400(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;)Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->name:Ljava/lang/String;

    const-string v3, "Pencil2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/high16 v2, -0x60000000

    and-int v3, p1, v4

    or-int/2addr v2, v3

    iput v2, v0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->color:I

    goto :goto_2

    :cond_5
    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout$4;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->mPenAlpha:I
    invoke-static {v2}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;->access$900(Lcom/samsung/android/sdk/pen/settingui/SpenSettingPenLayout;)I

    move-result v2

    shl-int/lit8 v2, v2, 0x18

    const/high16 v3, -0x1000000

    and-int/2addr v2, v3

    and-int v3, p1, v4

    or-int/2addr v2, v3

    iput v2, v0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->color:I

    goto :goto_2

    :cond_6
    iput p1, v0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->color:I

    goto :goto_2
.end method
