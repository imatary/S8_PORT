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

.field final synthetic val$selectedValue:I


# direct methods
.method constructor <init>(Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$19;->this$0:Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager;

    iput p2, p0, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$19;->val$selectedValue:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget v0, p0, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$19;->val$selectedValue:I

    invoke-static {v0}, Lcom/android/phone/mobilenetworks/boundary/PhoneProxy;->setSelectedDataRoamingMode(I)V

    return-void
.end method
