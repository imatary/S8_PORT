.class final Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$7;
.super Ljava/lang/Object;
.source "MobileNetworksDialogManager.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager;->showRoamingDataSelectionPopupLGT()Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$dataRoamingAgreeCheckBox:Landroid/widget/CheckBox;

.field final synthetic val$positiveButton:Landroid/widget/Button;

.field final synthetic val$roamingAutoUpdateAgreeCheckBox:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/Button;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$7;->val$dataRoamingAgreeCheckBox:Landroid/widget/CheckBox;

    iput-object p2, p0, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$7;->val$roamingAutoUpdateAgreeCheckBox:Landroid/widget/CheckBox;

    iput-object p3, p0, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$7;->val$positiveButton:Landroid/widget/Button;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$7;->val$dataRoamingAgreeCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    iget-object v2, p0, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$7;->val$roamingAutoUpdateAgreeCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-nez v0, :cond_0

    iget-object v2, p0, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$7;->val$positiveButton:Landroid/widget/Button;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v2, p0, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$7;->val$roamingAutoUpdateAgreeCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    :goto_0
    iget-object v2, p0, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$7;->val$roamingAutoUpdateAgreeCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v2, v0}, Landroid/widget/CheckBox;->setEnabled(Z)V

    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$7;->val$positiveButton:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method
