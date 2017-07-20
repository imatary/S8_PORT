.class final Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$3;
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

.field final synthetic val$lteRoamingRadioGroup:Landroid/widget/RadioGroup;


# direct methods
.method constructor <init>(Landroid/widget/RadioGroup;Landroid/widget/Button;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$3;->val$lteRoamingRadioGroup:Landroid/widget/RadioGroup;

    iput-object p2, p0, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$3;->val$confirmButton:Landroid/widget/Button;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 4

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$3;->val$lteRoamingRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v2}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    move v0, v1

    :goto_0
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$3;->val$confirmButton:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
