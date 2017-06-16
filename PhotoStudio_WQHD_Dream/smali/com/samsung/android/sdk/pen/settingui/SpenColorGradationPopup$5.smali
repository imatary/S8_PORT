.class Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup$5;
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

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup$5;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup$5;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mColorPickerGradientChangedListener:Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup$ColorPickerGradientChangedListener;
    invoke-static {v0}, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->access$2200(Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;)Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup$ColorPickerGradientChangedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup$5;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mColorPickerGradientChangedListener:Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup$ColorPickerGradientChangedListener;
    invoke-static {v0}, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->access$2200(Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;)Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup$ColorPickerGradientChangedListener;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup$5;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mCurrentColor:I
    invoke-static {v1}, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->access$800(Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup$ColorPickerGradientChangedListener;->onColorChanged(I)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup$5;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;

    # invokes: Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->saveRecentColors()V
    invoke-static {v0}, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->access$2300(Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup$5;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->dismiss()V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup$5;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->close()V

    return-void
.end method
