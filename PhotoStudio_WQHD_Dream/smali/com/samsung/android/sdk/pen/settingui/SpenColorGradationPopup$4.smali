.class Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup$4;
.super Ljava/lang/Object;
.source "SpenColorGradationPopup.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup$4;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->RECENT_COLOR_BUTTON_MAX:I
    invoke-static {}, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->access$1800()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup$4;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mColorButtons:[Landroid/view/View;
    invoke-static {v1}, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->access$1900(Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;)[Landroid/view/View;

    move-result-object v1

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->RECENT_COLOR_BUTTON_MAX:I
    invoke-static {}, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->access$1800()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup$4;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup$4;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mColorTableSet:[I
    invoke-static {v2}, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->access$2000(Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;)[I

    move-result-object v2

    aget v2, v2, v0

    # invokes: Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->setColorForGradient(I)V
    invoke-static {v1, v2}, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->access$2100(Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;I)V

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup$4;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->pickedColorView:Landroid/view/View;
    invoke-static {v1}, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->access$1300(Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup$4;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mColorTableSet:[I
    invoke-static {v2}, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->access$2000(Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;)[I

    move-result-object v2

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup$4;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup$4;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mColorTableSet:[I
    invoke-static {v2}, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->access$2000(Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;)[I

    move-result-object v2

    aget v2, v2, v0

    # setter for: Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mCurrentColor:I
    invoke-static {v1, v2}, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->access$802(Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;I)I

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup$4;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mColorPickerGradientChangedListener:Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup$ColorPickerGradientChangedListener;
    invoke-static {v1}, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->access$2200(Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;)Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup$ColorPickerGradientChangedListener;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup$4;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mColorPickerGradientChangedListener:Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup$ColorPickerGradientChangedListener;
    invoke-static {v1}, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->access$2200(Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;)Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup$ColorPickerGradientChangedListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup$ColorPickerGradientChangedListener;->onColorPickerSpuit()V

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
