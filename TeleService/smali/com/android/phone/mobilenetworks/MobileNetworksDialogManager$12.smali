.class final Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$12;
.super Ljava/lang/Object;
.source "MobileNetworksDialogManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager;->showKorOpenRoamingDataSelectionPopUp(Landroid/content/Context;)Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$dialogContext:Landroid/content/Context;

.field final synthetic val$lteSwitch:Landroid/widget/Switch;


# direct methods
.method constructor <init>(Landroid/widget/Switch;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$12;->val$lteSwitch:Landroid/widget/Switch;

    iput-object p2, p0, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$12;->val$dialogContext:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x1

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    packed-switch p2, :pswitch_data_0

    const-string/jumbo v3, "MobileNetworksDialogManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unexpected resource: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$12;->val$dialogContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, p2}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    const/4 v0, 0x0

    iget-object v3, p0, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$12;->val$lteSwitch:Landroid/widget/Switch;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$12;->val$lteSwitch:Landroid/widget/Switch;

    invoke-virtual {v3}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    :cond_1
    invoke-static {v6}, Lcom/android/phone/mobilenetworks/boundary/SettingProxy;->setDataRoamingEnable(Z)V

    invoke-static {v6, v6}, Lcom/android/phone/NetworkNotificationUI;->sendDataConnectionIntent(ZZ)V

    const-string/jumbo v1, ""

    const-string/jumbo v4, "MobileNetworksDialogManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Open Popup BUTTON_POSITIVE "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v0, :cond_2

    const-string/jumbo v3, " checked "

    :goto_1
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_3

    invoke-static {v6}, Lcom/android/phone/mobilenetworks/boundary/SettingProxy;->setLteRoamingOn(Z)V

    iget-object v3, p0, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$12;->val$dialogContext:Landroid/content/Context;

    const v4, 0x7f0d09ee

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$12;->val$dialogContext:Landroid/content/Context;

    invoke-static {v3, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_2
    const-string/jumbo v3, " unchecked "

    goto :goto_1

    :cond_3
    invoke-static {v7}, Lcom/android/phone/mobilenetworks/boundary/SettingProxy;->setLteRoamingOn(Z)V

    goto :goto_0

    :pswitch_1
    invoke-static {v7}, Lcom/android/phone/mobilenetworks/boundary/SettingProxy;->setDataRoamingEnable(Z)V

    invoke-static {v7, v6}, Lcom/android/phone/NetworkNotificationUI;->sendDataConnectionIntent(ZZ)V

    iget-object v3, p0, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$12;->val$lteSwitch:Landroid/widget/Switch;

    if-eqz v3, :cond_0

    const-string/jumbo v4, "MobileNetworksDialogManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Don\'t need lte roaming setting"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v3, p0, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$12;->val$lteSwitch:Landroid/widget/Switch;

    invoke-virtual {v3}, Landroid/widget/Switch;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_4

    const-string/jumbo v3, " checked "

    :goto_2
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_4
    const-string/jumbo v3, " unchecked "

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
