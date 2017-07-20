.class final Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$8;
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

    iput-object p1, p0, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$8;->val$dataRoamingAgreeCheckBox:Landroid/widget/CheckBox;

    iput-object p2, p0, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$8;->val$roamingAutoUpdateAgreeCheckBox:Landroid/widget/CheckBox;

    iput-object p3, p0, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$8;->val$positiveButton:Landroid/widget/Button;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3

    iget-object v2, p0, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$8;->val$dataRoamingAgreeCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    iget-object v2, p0, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$8;->val$roamingAutoUpdateAgreeCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    iget-object v2, p0, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$8;->val$positiveButton:Landroid/widget/Button;

    if-eqz v1, :cond_0

    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/Button;->setEnabled(Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
