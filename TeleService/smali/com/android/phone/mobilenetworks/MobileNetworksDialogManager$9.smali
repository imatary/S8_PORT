.class Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$9;
.super Ljava/lang/Object;
.source "MobileNetworksDialogManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager;->showDataSelectionPopUp()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager;


# direct methods
.method constructor <init>(Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$9;->this$0:Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    const/4 v4, 0x1

    const/4 v2, 0x0

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    const-string/jumbo v0, ""

    packed-switch p2, :pswitch_data_0

    const-string/jumbo v2, "MobileNetworksDialogManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unexpected resource: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager;->-get0()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, p2}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :pswitch_0
    invoke-static {v4}, Lcom/android/phone/mobilenetworks/MobileNetworkUtils;->setMobileDataEnabled(Z)V

    invoke-static {v4, v2}, Lcom/android/phone/NetworkNotificationUI;->sendDataConnectionIntent(ZZ)V

    goto :goto_0

    :pswitch_1
    invoke-static {v2}, Lcom/android/phone/mobilenetworks/MobileNetworkUtils;->setMobileDataEnabled(Z)V

    invoke-static {v2, v2}, Lcom/android/phone/NetworkNotificationUI;->sendDataConnectionIntent(ZZ)V

    const-string/jumbo v2, "feature_lgt"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager;->-get0()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0d07bf

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {}, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager;->-get0()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager;->-get0()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0d07b5

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
