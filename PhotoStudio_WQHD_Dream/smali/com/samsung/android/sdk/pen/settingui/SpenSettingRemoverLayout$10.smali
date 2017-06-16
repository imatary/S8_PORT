.class Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout$10;
.super Ljava/lang/Object;
.source "SpenSettingRemoverLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->initRadioButton()V
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

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout$10;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout$10;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mRadioButton1:Landroid/widget/RadioButton;
    invoke-static {v0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->access$2500(Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;)Landroid/widget/RadioButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RadioButton;->performClick()Z

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout$10;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mRadioRipple1:Landroid/view/View;
    invoke-static {v0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->access$3000(Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout$10;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mResources:Landroid/content/res/Resources;
    invoke-static {v2}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->access$2900(Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;)Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/samsung/android/spen/R$string;->pen_string_erase_line_by_line_talkback:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout$10;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mResources:Landroid/content/res/Resources;
    invoke-static {v2}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->access$2900(Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;)Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/samsung/android/spen/R$string;->pen_string_selected:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout$10;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mRadioRipple2:Landroid/view/View;
    invoke-static {v0}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->access$3100(Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout$10;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mResources:Landroid/content/res/Resources;
    invoke-static {v2}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->access$2900(Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;)Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/samsung/android/spen/R$string;->pen_string_erase_touched_area_talkback:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout$10;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->mResources:Landroid/content/res/Resources;
    invoke-static {v2}, Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;->access$2900(Lcom/samsung/android/sdk/pen/settingui/SpenSettingRemoverLayout;)Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/samsung/android/spen/R$string;->pen_string_not_selected:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method
