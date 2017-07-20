.class Lcom/android/phone/VzwVoWiFiCallSettings$5;
.super Ljava/lang/Object;
.source "VzwVoWiFiCallSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/VzwVoWiFiCallSettings;->setVowifiPreferenceStatus(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/VzwVoWiFiCallSettings;

.field final synthetic val$isChecked:Z

.field final synthetic val$wifi_call_status:Z


# direct methods
.method constructor <init>(Lcom/android/phone/VzwVoWiFiCallSettings;ZZ)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/VzwVoWiFiCallSettings$5;->this$0:Lcom/android/phone/VzwVoWiFiCallSettings;

    iput-boolean p2, p0, Lcom/android/phone/VzwVoWiFiCallSettings$5;->val$isChecked:Z

    iput-boolean p3, p0, Lcom/android/phone/VzwVoWiFiCallSettings$5;->val$wifi_call_status:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    const/4 v2, 0x0

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lcom/android/phone/VzwVoWiFiCallSettings$5;->this$0:Lcom/android/phone/VzwVoWiFiCallSettings;

    const/4 v1, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/phone/VzwVoWiFiCallSettings;->-wrap1(Lcom/android/phone/VzwVoWiFiCallSettings;ZZ)V

    iget-object v0, p0, Lcom/android/phone/VzwVoWiFiCallSettings$5;->this$0:Lcom/android/phone/VzwVoWiFiCallSettings;

    invoke-static {v0}, Lcom/android/phone/VzwVoWiFiCallSettings;->-get2(Lcom/android/phone/VzwVoWiFiCallSettings;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/phone/VzwVoWiFiCallSettings$5;->this$0:Lcom/android/phone/VzwVoWiFiCallSettings;

    invoke-static {v0}, Lcom/android/phone/VzwVoWiFiCallSettings;->-get3(Lcom/android/phone/VzwVoWiFiCallSettings;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/phone/VzwVoWiFiCallSettings$5;->this$0:Lcom/android/phone/VzwVoWiFiCallSettings;

    iget-boolean v1, p0, Lcom/android/phone/VzwVoWiFiCallSettings$5;->val$isChecked:Z

    iget-boolean v2, p0, Lcom/android/phone/VzwVoWiFiCallSettings$5;->val$wifi_call_status:Z

    invoke-static {v0, v1, v2}, Lcom/android/phone/VzwVoWiFiCallSettings;->-wrap2(Lcom/android/phone/VzwVoWiFiCallSettings;ZZ)V

    return-void
.end method
