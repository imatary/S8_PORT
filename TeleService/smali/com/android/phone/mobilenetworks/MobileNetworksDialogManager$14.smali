.class Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$14;
.super Ljava/lang/Object;
.source "MobileNetworksDialogManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager;->setDataRoamingforATT(Landroid/content/Context;Landroid/preference/TwoStatePreference;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager;

.field final synthetic val$preference:Landroid/preference/TwoStatePreference;


# direct methods
.method constructor <init>(Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager;Landroid/preference/TwoStatePreference;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$14;->this$0:Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager;

    iput-object p2, p0, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$14;->val$preference:Landroid/preference/TwoStatePreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/phone/mobilenetworks/boundary/PhoneProxy;->setDataRoamingEnabled(Z)V

    :goto_0
    iget-object v0, p0, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$14;->this$0:Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager;

    invoke-static {}, Lcom/android/phone/mobilenetworks/boundary/PhoneProxy;->getDataRoamingEnabled()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager;->-wrap2(Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager;Z)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$14;->val$preference:Landroid/preference/TwoStatePreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_0
.end method
