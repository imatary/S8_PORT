.class final Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$4;
.super Ljava/lang/Object;
.source "MobileNetworksDialogManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager;->showRoamingDataSelectionPopupKTT()Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$dialogContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$4;->val$dialogContext:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x1

    packed-switch p2, :pswitch_data_0

    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void

    :pswitch_0
    invoke-static {v1}, Lcom/android/phone/mobilenetworks/boundary/SettingProxy;->setDataRoamingEnable(Z)V

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$4;->val$dialogContext:Landroid/content/Context;

    invoke-static {v0, v1, v1}, Lcom/android/phone/NetworkNotificationUI;->sendDataRoamingEnabledIntent(Landroid/content/Context;ZZ)V

    goto :goto_0

    :pswitch_1
    invoke-static {v2}, Lcom/android/phone/mobilenetworks/boundary/SettingProxy;->setDataRoamingEnable(Z)V

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$4;->val$dialogContext:Landroid/content/Context;

    invoke-static {v0, v2, v1}, Lcom/android/phone/NetworkNotificationUI;->sendDataRoamingEnabledIntent(Landroid/content/Context;ZZ)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
