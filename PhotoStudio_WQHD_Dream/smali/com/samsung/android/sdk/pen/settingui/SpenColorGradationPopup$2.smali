.class Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup$2;
.super Ljava/lang/Object;
.source "SpenColorGradationPopup.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


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

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup$2;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 4

    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup$2;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mHsv:[F
    invoke-static {v0}, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->access$400(Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;)[F

    move-result-object v0

    const/4 v1, 0x2

    int-to-float v2, p2

    const/high16 v3, 0x437f0000    # 255.0f

    div-float/2addr v2, v3

    aput v2, v0, v1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup$2;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup$2;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mHsv:[F
    invoke-static {v1}, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->access$400(Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;)[F

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v1

    # setter for: Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mCurrentColor:I
    invoke-static {v0, v1}, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->access$802(Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;I)I

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup$2;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->pickedColorView:Landroid/view/View;
    invoke-static {v0}, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->access$1300(Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup$2;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mCurrentColor:I
    invoke-static {v1}, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->access$800(Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup$2;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->pickedColorView:Landroid/view/View;
    invoke-static {v0}, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->access$1300(Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method
