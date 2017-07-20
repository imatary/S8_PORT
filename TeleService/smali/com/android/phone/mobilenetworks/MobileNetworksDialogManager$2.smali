.class final Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$2;
.super Ljava/lang/Object;
.source "MobileNetworksDialogManager.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager;->showRoamingDataSelectionPopUpSKT()Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$confirmButton:Landroid/widget/Button;

.field final synthetic val$dataRoamingRadioGroup:Landroid/widget/RadioGroup;

.field final synthetic val$lteRoamingRadioGroup:Landroid/widget/RadioGroup;


# direct methods
.method constructor <init>(Landroid/widget/RadioGroup;Landroid/widget/RadioGroup;Landroid/widget/Button;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$2;->val$dataRoamingRadioGroup:Landroid/widget/RadioGroup;

    iput-object p2, p0, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$2;->val$lteRoamingRadioGroup:Landroid/widget/RadioGroup;

    iput-object p3, p0, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$2;->val$confirmButton:Landroid/widget/Button;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 4

    iget-object v2, p0, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$2;->val$dataRoamingRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v2}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v2

    const v3, 0x7f1000af

    if-ne v2, v3, :cond_0

    const/4 v0, 0x1

    :goto_0
    iget-object v2, p0, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$2;->val$lteRoamingRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v2}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    const/4 v1, 0x1

    :goto_1
    if-nez v0, :cond_2

    iget-object v2, p0, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$2;->val$confirmButton:Landroid/widget/Button;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v2, p0, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$2;->val$lteRoamingRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v2}, Landroid/widget/RadioGroup;->clearCheck()V

    :goto_2
    iget-object v2, p0, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$2;->val$lteRoamingRadioGroup:Landroid/widget/RadioGroup;

    invoke-static {v2, v0}, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager;->-wrap1(Landroid/widget/RadioGroup;Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$2;->val$confirmButton:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_2
.end method
