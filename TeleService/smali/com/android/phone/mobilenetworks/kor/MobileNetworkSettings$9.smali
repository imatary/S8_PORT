.class Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings$9;
.super Ljava/lang/Object;
.source "MobileNetworkSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->menuSimplification(Landroid/preference/PreferenceScreen;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;


# direct methods
.method constructor <init>(Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings$9;->this$0:Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    check-cast p1, Landroid/preference/TwoStatePreference;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings$9;->this$0:Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;

    invoke-static {v0}, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->-get6(Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;)Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings$9;->this$0:Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;

    iget-object v2, p0, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings$9;->this$0:Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;

    invoke-static {v2}, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->-get0(Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;)Landroid/preference/TwoStatePreference;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager;->setMobileDataEnabledDialog(Landroid/content/Context;Landroid/preference/TwoStatePreference;)V

    const/4 v0, 0x0

    return v0
.end method
