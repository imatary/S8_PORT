.class Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$19;
.super Ljava/lang/Object;
.source "MobileNetworksDialogManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager;->showRoamingWarningDialog(ILandroid/preference/ListPreference;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager;

.field final synthetic val$preference:Landroid/preference/ListPreference;


# direct methods
.method constructor <init>(Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager;Landroid/preference/ListPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$19;->this$0:Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager;

    iput-object p2, p0, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$19;->val$preference:Landroid/preference/ListPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    invoke-static {}, Lcom/android/phone/mobilenetworks/boundary/SettingProxy;->getNationalRoamingMode()I

    move-result v0

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$19;->val$preference:Landroid/preference/ListPreference;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    return-void
.end method
