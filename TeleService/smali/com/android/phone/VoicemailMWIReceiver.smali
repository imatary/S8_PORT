.class public Lcom/android/phone/VoicemailMWIReceiver;
.super Landroid/content/BroadcastReceiver;
.source "VoicemailMWIReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method clearPrefVoicemailCount(Landroid/content/Context;I)V
    .locals 5

    const/4 v4, 0x0

    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "vm_count_key_cdma"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v2, "vm_priority_key_cdma"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "com.sec.android.phone.ACTION_CLEAR_MWI"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string/jumbo v3, "VoicemailMWIReceiver"

    const-string/jumbo v4, "Clear notification and set preference to 0"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v3

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->makePstnPhoneAccountHandle(I)Landroid/telecom/PhoneAccountHandle;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->getSubIdForPhoneAccountHandle(Landroid/telecom/PhoneAccountHandle;)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/android/phone/PhoneGlobals;->clearMwiIndicator(I)V

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v3

    invoke-virtual {p0, p1, v3}, Lcom/android/phone/VoicemailMWIReceiver;->clearPrefVoicemailCount(Landroid/content/Context;I)V

    :cond_2
    return-void
.end method
