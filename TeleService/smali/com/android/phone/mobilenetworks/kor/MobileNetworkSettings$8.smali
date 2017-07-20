.class Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings$8;
.super Ljava/lang/Object;
.source "MobileNetworkSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->showLteRoamingOnDialog(Landroid/preference/TwoStatePreference;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;

.field final synthetic val$preference:Landroid/preference/TwoStatePreference;


# direct methods
.method constructor <init>(Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;Landroid/preference/TwoStatePreference;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings$8;->this$0:Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;

    iput-object p2, p0, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings$8;->val$preference:Landroid/preference/TwoStatePreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings$8;->val$preference:Landroid/preference/TwoStatePreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings$8;->val$preference:Landroid/preference/TwoStatePreference;

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings$8;->this$0:Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;

    invoke-static {v1}, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->-wrap2(Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    :cond_0
    return-void
.end method
