.class Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$14;
.super Ljava/lang/Object;
.source "MobileNetworksDialogManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager;->setDataRoaming(Landroid/content/Context;Landroid/preference/TwoStatePreference;)V
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

    iput-object p1, p0, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$14;->this$0:Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    const/4 v1, 0x1

    invoke-static {v1}, Lcom/android/phone/mobilenetworks/boundary/PhoneProxy;->setDataRoamingEnabled(Z)V

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$14;->this$0:Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager;

    invoke-static {v0, v1}, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager;->-wrap2(Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager;Z)V

    return-void
.end method
