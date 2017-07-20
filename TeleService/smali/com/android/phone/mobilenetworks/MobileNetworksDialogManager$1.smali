.class final Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$1;
.super Ljava/lang/Object;
.source "MobileNetworksDialogManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager;->showRoamingDataSelectionPopUpSKT()Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$dataRoamingRadioGroup:Landroid/widget/RadioGroup;

.field final synthetic val$dialogContext:Landroid/content/Context;

.field final synthetic val$lteRoamingRadioGroup:Landroid/widget/RadioGroup;


# direct methods
.method constructor <init>(Landroid/widget/RadioGroup;Landroid/widget/RadioGroup;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$1;->val$dataRoamingRadioGroup:Landroid/widget/RadioGroup;

    iput-object p2, p0, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$1;->val$lteRoamingRadioGroup:Landroid/widget/RadioGroup;

    iput-object p3, p0, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$1;->val$dialogContext:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    const v3, 0x7f1000af

    iget-object v2, p0, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$1;->val$dataRoamingRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v2}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v2

    if-ne v2, v3, :cond_1

    const/4 v0, 0x1

    :goto_0
    iget-object v2, p0, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$1;->val$lteRoamingRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v2}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v2

    if-ne v2, v3, :cond_2

    const/4 v1, 0x1

    :goto_1
    invoke-static {v0}, Lcom/android/phone/mobilenetworks/boundary/SettingProxy;->setDataRoamingEnable(Z)V

    iget-object v2, p0, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$1;->val$dialogContext:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-static {v2, v0, v3}, Lcom/android/phone/NetworkNotificationUI;->sendDataRoamingEnabledIntent(Landroid/content/Context;ZZ)V

    invoke-static {v1}, Lcom/android/phone/mobilenetworks/boundary/SettingProxy;->setLteRoamingOn(Z)V

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$1;->val$dialogContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "hd_voice_roaming_enabled"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string/jumbo v2, "MobileNetworksDialogManager"

    const-string/jumbo v3, "hd_voice_roaming_enabled = 0"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method
