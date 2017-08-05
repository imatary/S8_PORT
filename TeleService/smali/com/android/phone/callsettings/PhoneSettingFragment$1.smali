.class Lcom/android/phone/callsettings/PhoneSettingFragment$1;
.super Landroid/content/BroadcastReceiver;
.source "PhoneSettingFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/callsettings/PhoneSettingFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/callsettings/PhoneSettingFragment;


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/PhoneSettingFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/callsettings/PhoneSettingFragment$1;->this$0:Lcom/android/phone/callsettings/PhoneSettingFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    const/4 v3, 0x1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "support_search_nearby_places_mcc"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/callsettings/PhoneSettingFragment$1;->this$0:Lcom/android/phone/callsettings/PhoneSettingFragment;

    invoke-static {v1}, Lcom/android/phone/callsettings/PhoneSettingFragment;->-get0(Lcom/android/phone/callsettings/PhoneSettingFragment;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->isAbsentSimState(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "PhoneSettingFragment"

    const-string/jumbo v2, "Search Nearby Disable"

    invoke-static {v1, v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    iget-object v1, p0, Lcom/android/phone/callsettings/PhoneSettingFragment$1;->this$0:Lcom/android/phone/callsettings/PhoneSettingFragment;

    invoke-static {v1}, Lcom/android/phone/callsettings/PhoneSettingFragment;->-get0(Lcom/android/phone/callsettings/PhoneSettingFragment;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "search_nearby_places"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v1, p0, Lcom/android/phone/callsettings/PhoneSettingFragment$1;->this$0:Lcom/android/phone/callsettings/PhoneSettingFragment;

    invoke-static {v1}, Lcom/android/phone/callsettings/PhoneSettingFragment;->-get2(Lcom/android/phone/callsettings/PhoneSettingFragment;)Landroid/preference/PreferenceScreen;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/callsettings/PhoneSettingFragment$1;->this$0:Lcom/android/phone/callsettings/PhoneSettingFragment;

    invoke-static {v1}, Lcom/android/phone/callsettings/PhoneSettingFragment;->-get1(Lcom/android/phone/callsettings/PhoneSettingFragment;)Landroid/preference/PreferenceCategory;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/callsettings/PhoneSettingFragment$1;->this$0:Lcom/android/phone/callsettings/PhoneSettingFragment;

    invoke-static {v2}, Lcom/android/phone/callsettings/PhoneSettingFragment;->-get2(Lcom/android/phone/callsettings/PhoneSettingFragment;)Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v1, "PhoneSettingFragment"

    const-string/jumbo v2, "Search Nearby Enable"

    invoke-static {v1, v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    iget-object v1, p0, Lcom/android/phone/callsettings/PhoneSettingFragment$1;->this$0:Lcom/android/phone/callsettings/PhoneSettingFragment;

    invoke-static {v1}, Lcom/android/phone/callsettings/PhoneSettingFragment;->-get2(Lcom/android/phone/callsettings/PhoneSettingFragment;)Landroid/preference/PreferenceScreen;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/callsettings/PhoneSettingFragment$1;->this$0:Lcom/android/phone/callsettings/PhoneSettingFragment;

    invoke-static {v1}, Lcom/android/phone/callsettings/PhoneSettingFragment;->-get1(Lcom/android/phone/callsettings/PhoneSettingFragment;)Landroid/preference/PreferenceCategory;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/callsettings/PhoneSettingFragment$1;->this$0:Lcom/android/phone/callsettings/PhoneSettingFragment;

    invoke-static {v2}, Lcom/android/phone/callsettings/PhoneSettingFragment;->-get2(Lcom/android/phone/callsettings/PhoneSettingFragment;)Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    iget-object v1, p0, Lcom/android/phone/callsettings/PhoneSettingFragment$1;->this$0:Lcom/android/phone/callsettings/PhoneSettingFragment;

    invoke-virtual {v1}, Lcom/android/phone/callsettings/PhoneSettingFragment;->updatePhoneSetting()V

    goto :goto_0
.end method
