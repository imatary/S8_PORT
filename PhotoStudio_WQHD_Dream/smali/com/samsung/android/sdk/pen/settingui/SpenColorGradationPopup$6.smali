.class Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup$6;
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

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup$6;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup$6;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mColorPickerGradientChangedListener:Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup$ColorPickerGradientChangedListener;
    invoke-static {v0}, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->access$2200(Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;)Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup$ColorPickerGradientChangedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup$6;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mColorPickerGradientChangedListener:Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup$ColorPickerGradientChangedListener;
    invoke-static {v0}, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->access$2200(Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;)Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup$ColorPickerGradientChangedListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup$ColorPickerGradientChangedListener;->onColorPickerSpuit()V

    :cond_0
    return-void
.end method
