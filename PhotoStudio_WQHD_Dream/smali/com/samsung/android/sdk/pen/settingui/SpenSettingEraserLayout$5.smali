.class Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout$5;
.super Ljava/lang/Object;
.source "SpenSettingEraserLayout.java"

# interfaces
.implements Lcom/samsung/android/sdk/pen/settingui/SPenSeekBarView$SPenSeekBarChangeListner;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout$5;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZI)V
    .locals 3

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout$5;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mEraserDataList:[Lcom/samsung/android/sdk/pen/SpenSettingEraserInfo;
    invoke-static {v1}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->access$1800(Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;)[Lcom/samsung/android/sdk/pen/SpenSettingEraserInfo;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout$5;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mCurrentEraserType:I
    invoke-static {v2}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->access$1900(Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;)I

    move-result v2

    aget-object v1, v1, v2

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout$5;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mEraserDataList:[Lcom/samsung/android/sdk/pen/SpenSettingEraserInfo;
    invoke-static {v1}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->access$1800(Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;)[Lcom/samsung/android/sdk/pen/SpenSettingEraserInfo;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout$5;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mCurrentEraserType:I
    invoke-static {v2}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->access$1900(Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;)I

    move-result v2

    aget-object v1, v1, v2

    int-to-float v2, p2

    iput v2, v1, Lcom/samsung/android/sdk/pen/SpenSettingEraserInfo;->size:F

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout$5;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;

    # setter for: Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->requestLayoutDisable:Z
    invoke-static {v1, p3}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->access$2002(Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;Z)Z

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout$5;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mSettingViewInterface:Lcom/samsung/android/sdk/pen/SpenSettingViewEraserInterface;
    invoke-static {v1}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->access$2100(Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;)Lcom/samsung/android/sdk/pen/SpenSettingViewEraserInterface;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout$5;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mSettingViewInterface:Lcom/samsung/android/sdk/pen/SpenSettingViewEraserInterface;
    invoke-static {v1}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->access$2100(Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;)Lcom/samsung/android/sdk/pen/SpenSettingViewEraserInterface;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/sdk/pen/SpenSettingViewEraserInterface;->getEraserSettingInfo()Lcom/samsung/android/sdk/pen/SpenSettingEraserInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout$5;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mSettingInfo:Lcom/samsung/android/sdk/pen/SpenSettingEraserInfo;
    invoke-static {v1}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->access$2200(Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;)Lcom/samsung/android/sdk/pen/SpenSettingEraserInfo;

    move-result-object v1

    add-int/lit8 v2, p2, 0x1

    int-to-float v2, v2

    iput v2, v0, Lcom/samsung/android/sdk/pen/SpenSettingEraserInfo;->size:F

    iput v2, v1, Lcom/samsung/android/sdk/pen/SpenSettingEraserInfo;->size:F

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout$5;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->mSettingViewInterface:Lcom/samsung/android/sdk/pen/SpenSettingViewEraserInterface;
    invoke-static {v1}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;->access$2100(Lcom/samsung/android/sdk/pen/settingui/SpenSettingEraserLayout;)Lcom/samsung/android/sdk/pen/SpenSettingViewEraserInterface;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/samsung/android/sdk/pen/SpenSettingViewEraserInterface;->setEraserSettingInfo(Lcom/samsung/android/sdk/pen/SpenSettingEraserInfo;)V

    :cond_1
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;I)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;I)V
    .locals 0

    return-void
.end method

.method public onUpdate(ZI)V
    .locals 0

    return-void
.end method
