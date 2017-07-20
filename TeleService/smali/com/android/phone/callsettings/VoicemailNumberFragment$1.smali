.class Lcom/android/phone/callsettings/VoicemailNumberFragment$1;
.super Landroid/content/BroadcastReceiver;
.source "VoicemailNumberFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/VoicemailNumberFragment;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/callsettings/VoicemailNumberFragment;


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/VoicemailNumberFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/callsettings/VoicemailNumberFragment$1;->this$0:Lcom/android/phone/callsettings/VoicemailNumberFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const/4 v2, 0x1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "com.samsung.intent.action.SIMHOTSWAP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "com.samsung.settings.SIMCARD_MGT_ACTIVATED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    iget-object v0, p0, Lcom/android/phone/callsettings/VoicemailNumberFragment$1;->this$0:Lcom/android/phone/callsettings/VoicemailNumberFragment;

    invoke-virtual {v0}, Lcom/android/phone/callsettings/VoicemailNumberFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->isAbsentSimState(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "feature_chn"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/phone/callsettings/VoicemailNumberFragment$1;->this$0:Lcom/android/phone/callsettings/VoicemailNumberFragment;

    invoke-static {v0}, Lcom/android/phone/callsettings/VoicemailNumberFragment;->-wrap0(Lcom/android/phone/callsettings/VoicemailNumberFragment;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_1
    const-string/jumbo v0, "VoicemailNumberFragment"

    const-string/jumbo v1, "It can\'t be change to voicemail number by SIM card absent or cdma phone"

    invoke-static {v0, v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    iget-object v0, p0, Lcom/android/phone/callsettings/VoicemailNumberFragment$1;->this$0:Lcom/android/phone/callsettings/VoicemailNumberFragment;

    invoke-static {v0}, Lcom/android/phone/callsettings/VoicemailNumberFragment;->-get1(Lcom/android/phone/callsettings/VoicemailNumberFragment;)Landroid/preference/PreferenceScreen;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/callsettings/VoicemailNumberFragment$1;->this$0:Lcom/android/phone/callsettings/VoicemailNumberFragment;

    invoke-static {v0}, Lcom/android/phone/callsettings/VoicemailNumberFragment;->-get1(Lcom/android/phone/callsettings/VoicemailNumberFragment;)Landroid/preference/PreferenceScreen;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    :cond_2
    iget-object v0, p0, Lcom/android/phone/callsettings/VoicemailNumberFragment$1;->this$0:Lcom/android/phone/callsettings/VoicemailNumberFragment;

    invoke-static {v0}, Lcom/android/phone/callsettings/VoicemailNumberFragment;->-get0(Lcom/android/phone/callsettings/VoicemailNumberFragment;)Lcom/android/phone/EditPhoneNumberPreference;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/phone/callsettings/VoicemailNumberFragment$1;->this$0:Lcom/android/phone/callsettings/VoicemailNumberFragment;

    invoke-static {v0}, Lcom/android/phone/callsettings/VoicemailNumberFragment;->-get0(Lcom/android/phone/callsettings/VoicemailNumberFragment;)Lcom/android/phone/EditPhoneNumberPreference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/EditPhoneNumberPreference;->dismissDialog()V

    :cond_3
    :goto_0
    return-void

    :cond_4
    iget-object v0, p0, Lcom/android/phone/callsettings/VoicemailNumberFragment$1;->this$0:Lcom/android/phone/callsettings/VoicemailNumberFragment;

    invoke-static {v0}, Lcom/android/phone/callsettings/VoicemailNumberFragment;->-wrap0(Lcom/android/phone/callsettings/VoicemailNumberFragment;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/phone/callsettings/VoicemailNumberFragment$1;->this$0:Lcom/android/phone/callsettings/VoicemailNumberFragment;

    invoke-static {v0}, Lcom/android/phone/callsettings/VoicemailNumberFragment;->-get1(Lcom/android/phone/callsettings/VoicemailNumberFragment;)Landroid/preference/PreferenceScreen;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/phone/callsettings/VoicemailNumberFragment$1;->this$0:Lcom/android/phone/callsettings/VoicemailNumberFragment;

    invoke-static {v0}, Lcom/android/phone/callsettings/VoicemailNumberFragment;->-get1(Lcom/android/phone/callsettings/VoicemailNumberFragment;)Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto :goto_0
.end method
