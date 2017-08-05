.class public Lcom/android/phone/callsettings/IntCallSettingPreference;
.super Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;
.source "IntCallSettingPreference.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/callsettings/IntCallSettingPreference$EmptyView;
    }
.end annotation


# instance fields
.field private emptyView:Lcom/android/phone/callsettings/IntCallSettingPreference$EmptyView;

.field mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

.field private mIntCallIncomingLock:Landroid/preference/CheckBoxPreference;

.field private mIntCallOutgoingLock:Landroid/preference/TwoStatePreference;

.field private mIntCallServicePreference:Lcom/android/phone/callsettings/IntCallServicePreference;

.field private mIntCallVoiceNoti:Landroid/preference/TwoStatePreference;

.field private mMeterialIntCallIncomingLock:Landroid/preference/SwitchPreference;

.field mStateListener:Lcom/android/phone/ia/IAInterimListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;-><init>()V

    invoke-static {}, Lcom/samsung/android/sdk/bixby/BixbyApi;->getInstance()Lcom/samsung/android/sdk/bixby/BixbyApi;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/callsettings/IntCallSettingPreference;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    return-void
.end method

.method private getPreference(Landroid/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/String;)Landroid/preference/Preference;
    .locals 4

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_2

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v2

    const-string/jumbo v3, "CheckBoxPreference"

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    instance-of v3, v2, Landroid/preference/CheckBoxPreference;

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2

    :cond_0
    const-string/jumbo v3, "SwitchPreference"

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    instance-of v3, v2, Landroid/preference/SwitchPreference;

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    return-object v3
.end method

.method private updateInternationalCallServicePreference()V
    .locals 9

    const/4 v8, -0x1

    const/4 v7, 0x0

    const-string/jumbo v5, "feature_lgt"

    invoke-static {v5}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {p0}, Lcom/android/phone/callsettings/IntCallSettingPreference;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "int_call_svc_enabled"

    invoke-static {v5, v6, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p0}, Lcom/android/phone/callsettings/IntCallSettingPreference;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "int_call_svc_value"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eq v1, v8, :cond_0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/callsettings/IntCallSettingPreference;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "int_call_svc_enabled"

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/android/phone/callsettings/IntCallSettingPreference;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "int_call_svc_value"

    const-string/jumbo v7, "002"

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_1
    iget-object v5, p0, Lcom/android/phone/callsettings/IntCallSettingPreference;->mIntCallServicePreference:Lcom/android/phone/callsettings/IntCallServicePreference;

    if-eqz v5, :cond_3

    invoke-virtual {p0}, Lcom/android/phone/callsettings/IntCallSettingPreference;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "int_call_svc_enabled"

    const/4 v7, 0x1

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {p0}, Lcom/android/phone/callsettings/IntCallSettingPreference;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "int_call_svc_value"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const v5, 0x7f0d09b8

    invoke-virtual {p0, v5}, Lcom/android/phone/callsettings/IntCallSettingPreference;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-lez v4, :cond_4

    const v5, 0x7f0d09b6

    invoke-virtual {p0, v5}, Lcom/android/phone/callsettings/IntCallSettingPreference;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_0
    const-string/jumbo v5, "%d"

    invoke-virtual {v3, v5, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-lez v4, :cond_2

    const-string/jumbo v5, "feature_lgt"

    invoke-static {v5}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    const v5, 0x7f0d09b9

    invoke-virtual {p0, v5}, Lcom/android/phone/callsettings/IntCallSettingPreference;->getString(I)Ljava/lang/String;

    move-result-object v3

    :cond_2
    iget-object v5, p0, Lcom/android/phone/callsettings/IntCallSettingPreference;->mIntCallServicePreference:Lcom/android/phone/callsettings/IntCallServicePreference;

    invoke-virtual {v5}, Lcom/android/phone/callsettings/IntCallServicePreference;->checkKeypadonResume()V

    iget-object v5, p0, Lcom/android/phone/callsettings/IntCallSettingPreference;->mIntCallServicePreference:Lcom/android/phone/callsettings/IntCallServicePreference;

    invoke-virtual {v5, v3}, Lcom/android/phone/callsettings/IntCallServicePreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_3
    return-void

    :cond_4
    move-object v2, v0

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    const/4 v4, 0x0

    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v2, 0x7f070037

    invoke-virtual {p0, v2}, Lcom/android/phone/callsettings/IntCallSettingPreference;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/android/phone/callsettings/IntCallSettingPreference;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    const-string/jumbo v2, "intcallsetting_outgoing"

    const-string/jumbo v3, "SwitchPreference"

    invoke-direct {p0, v1, v2, v3}, Lcom/android/phone/callsettings/IntCallSettingPreference;->getPreference(Landroid/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/SwitchPreference;

    iput-object v2, p0, Lcom/android/phone/callsettings/IntCallSettingPreference;->mIntCallOutgoingLock:Landroid/preference/TwoStatePreference;

    const-string/jumbo v2, "intcallsetting_voice_noti"

    const-string/jumbo v3, "SwitchPreference"

    invoke-direct {p0, v1, v2, v3}, Lcom/android/phone/callsettings/IntCallSettingPreference;->getPreference(Landroid/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/SwitchPreference;

    iput-object v2, p0, Lcom/android/phone/callsettings/IntCallSettingPreference;->mIntCallVoiceNoti:Landroid/preference/TwoStatePreference;

    iget-object v2, p0, Lcom/android/phone/callsettings/IntCallSettingPreference;->mIntCallOutgoingLock:Landroid/preference/TwoStatePreference;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/phone/callsettings/IntCallSettingPreference;->mIntCallOutgoingLock:Landroid/preference/TwoStatePreference;

    check-cast v2, Landroid/preference/SwitchPreference;

    new-instance v3, Lcom/android/phone/callsettings/IntCallSettingPreference$1;

    invoke-direct {v3, p0}, Lcom/android/phone/callsettings/IntCallSettingPreference$1;-><init>(Lcom/android/phone/callsettings/IntCallSettingPreference;)V

    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_0
    iget-object v2, p0, Lcom/android/phone/callsettings/IntCallSettingPreference;->mIntCallVoiceNoti:Landroid/preference/TwoStatePreference;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/phone/callsettings/IntCallSettingPreference;->mIntCallVoiceNoti:Landroid/preference/TwoStatePreference;

    check-cast v2, Landroid/preference/SwitchPreference;

    new-instance v3, Lcom/android/phone/callsettings/IntCallSettingPreference$2;

    invoke-direct {v3, p0}, Lcom/android/phone/callsettings/IntCallSettingPreference$2;-><init>(Lcom/android/phone/callsettings/IntCallSettingPreference;)V

    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_1
    const-string/jumbo v2, "intcallsetting_outgoing"

    const-string/jumbo v3, "CheckBoxPreference"

    invoke-direct {p0, v1, v2, v3}, Lcom/android/phone/callsettings/IntCallSettingPreference;->getPreference(Landroid/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    const-string/jumbo v2, "intcallsetting_voice_noti"

    const-string/jumbo v3, "CheckBoxPreference"

    invoke-direct {p0, v1, v2, v3}, Lcom/android/phone/callsettings/IntCallSettingPreference;->getPreference(Landroid/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    const-string/jumbo v2, "intcallsetting_incoming"

    invoke-virtual {p0, v2}, Lcom/android/phone/callsettings/IntCallSettingPreference;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/phone/callsettings/IntCallSettingPreference;->mIntCallIncomingLock:Landroid/preference/CheckBoxPreference;

    const-string/jumbo v2, "meterial_intcallsetting_incoming"

    invoke-virtual {p0, v2}, Lcom/android/phone/callsettings/IntCallSettingPreference;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/SwitchPreference;

    iput-object v2, p0, Lcom/android/phone/callsettings/IntCallSettingPreference;->mMeterialIntCallIncomingLock:Landroid/preference/SwitchPreference;

    const-string/jumbo v2, "intcallservice_preference"

    invoke-virtual {p0, v2}, Lcom/android/phone/callsettings/IntCallSettingPreference;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/phone/callsettings/IntCallServicePreference;

    iput-object v2, p0, Lcom/android/phone/callsettings/IntCallSettingPreference;->mIntCallServicePreference:Lcom/android/phone/callsettings/IntCallServicePreference;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/IntCallSettingPreference;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_2
    iget-object v2, p0, Lcom/android/phone/callsettings/IntCallSettingPreference;->mIntCallIncomingLock:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/android/phone/callsettings/IntCallSettingPreference;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/callsettings/IntCallSettingPreference;->mIntCallIncomingLock:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    iput-object v4, p0, Lcom/android/phone/callsettings/IntCallSettingPreference;->mIntCallIncomingLock:Landroid/preference/CheckBoxPreference;

    :cond_3
    iget-object v2, p0, Lcom/android/phone/callsettings/IntCallSettingPreference;->mMeterialIntCallIncomingLock:Landroid/preference/SwitchPreference;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/phone/callsettings/IntCallSettingPreference;->mMeterialIntCallIncomingLock:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_4
    const-string/jumbo v2, "international_call_service"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/android/phone/callsettings/IntCallSettingPreference;->mIntCallServicePreference:Lcom/android/phone/callsettings/IntCallServicePreference;

    if-eqz v2, :cond_5

    invoke-virtual {p0}, Lcom/android/phone/callsettings/IntCallSettingPreference;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/callsettings/IntCallSettingPreference;->mIntCallServicePreference:Lcom/android/phone/callsettings/IntCallServicePreference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    iput-object v4, p0, Lcom/android/phone/callsettings/IntCallSettingPreference;->mIntCallServicePreference:Lcom/android/phone/callsettings/IntCallServicePreference;

    :cond_5
    return-void
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onPause()V

    const-string/jumbo v0, "support_bixby"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/callsettings/IntCallSettingPreference;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/bixby/BixbyApi;->clearInterimStateListener()V

    iget-object v0, p0, Lcom/android/phone/callsettings/IntCallSettingPreference;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    const-string/jumbo v1, "InternationalCallSettings"

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/bixby/BixbyApi;->logExitState(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/phone/callsettings/IntCallSettingPreference;->mStateListener:Lcom/android/phone/ia/IAInterimListener;

    invoke-interface {v0}, Lcom/android/phone/ia/IAInterimListener;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/callsettings/IntCallSettingPreference;->mStateListener:Lcom/android/phone/ia/IAInterimListener;

    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 6

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/android/phone/callsettings/IntCallSettingPreference;->mMeterialIntCallIncomingLock:Landroid/preference/SwitchPreference;

    if-ne p1, v4, :cond_2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p0}, Lcom/android/phone/callsettings/IntCallSettingPreference;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "incoming_intcall_lock"

    if-eqz v1, :cond_0

    move v2, v3

    :cond_0
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    if-eqz v1, :cond_1

    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/IntCallSettingPreference;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/phone/callsettings/IntCallSettingPreference;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d064e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v4, Lcom/android/phone/callsettings/IntCallSettingPreference$4;

    invoke-direct {v4, p0}, Lcom/android/phone/callsettings/IntCallSettingPreference$4;-><init>(Lcom/android/phone/callsettings/IntCallSettingPreference;)V

    const v5, 0x7f0d032a

    invoke-virtual {v2, v5, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :cond_1
    return v3

    :cond_2
    return v2
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 7

    const/4 v4, 0x0

    const/4 v3, 0x1

    iget-object v2, p0, Lcom/android/phone/callsettings/IntCallSettingPreference;->mIntCallOutgoingLock:Landroid/preference/TwoStatePreference;

    if-ne p2, v2, :cond_2

    iget-object v2, p0, Lcom/android/phone/callsettings/IntCallSettingPreference;->mIntCallOutgoingLock:Landroid/preference/TwoStatePreference;

    invoke-virtual {v2}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v1

    invoke-virtual {p0}, Lcom/android/phone/callsettings/IntCallSettingPreference;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "outging_intcall_lock"

    if-eqz v1, :cond_1

    move v2, v3

    :goto_0
    invoke-static {v5, v6, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/android/phone/callsettings/IntCallSettingPreference;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v5, "outging_intcall_lock_roaming"

    if-eqz v1, :cond_0

    move v4, v3

    :cond_0
    invoke-static {v2, v5, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return v3

    :cond_1
    move v2, v4

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/phone/callsettings/IntCallSettingPreference;->mIntCallIncomingLock:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_5

    iget-object v2, p0, Lcom/android/phone/callsettings/IntCallSettingPreference;->mIntCallIncomingLock:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    invoke-virtual {p0}, Lcom/android/phone/callsettings/IntCallSettingPreference;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v5, "incoming_intcall_lock"

    if-eqz v1, :cond_3

    move v4, v3

    :cond_3
    invoke-static {v2, v5, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    if-eqz v1, :cond_4

    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/IntCallSettingPreference;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0d064c

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/phone/callsettings/IntCallSettingPreference;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d064e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v4, Lcom/android/phone/callsettings/IntCallSettingPreference$3;

    invoke-direct {v4, p0}, Lcom/android/phone/callsettings/IntCallSettingPreference$3;-><init>(Lcom/android/phone/callsettings/IntCallSettingPreference;)V

    const v5, 0x7f0d032a

    invoke-virtual {v2, v5, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :cond_4
    return v3

    :cond_5
    iget-object v2, p0, Lcom/android/phone/callsettings/IntCallSettingPreference;->mIntCallVoiceNoti:Landroid/preference/TwoStatePreference;

    if-ne p2, v2, :cond_7

    iget-object v2, p0, Lcom/android/phone/callsettings/IntCallSettingPreference;->mIntCallVoiceNoti:Landroid/preference/TwoStatePreference;

    invoke-virtual {v2}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v1

    invoke-virtual {p0}, Lcom/android/phone/callsettings/IntCallSettingPreference;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v5, "intcall_voice_noti"

    if-eqz v1, :cond_6

    move v4, v3

    :cond_6
    invoke-static {v2, v5, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return v3

    :cond_7
    invoke-super {p0, p1, p2}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    return v2
.end method

.method public onResume()V
    .locals 7

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-super {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onResume()V

    invoke-virtual {p0}, Lcom/android/phone/callsettings/IntCallSettingPreference;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v6, "outging_intcall_lock"

    invoke-static {v3, v6, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p0}, Lcom/android/phone/callsettings/IntCallSettingPreference;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v6, "incoming_intcall_lock"

    invoke-static {v3, v6, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0}, Lcom/android/phone/callsettings/IntCallSettingPreference;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v6, "intcall_voice_noti"

    invoke-static {v3, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-direct {p0}, Lcom/android/phone/callsettings/IntCallSettingPreference;->updateInternationalCallServicePreference()V

    iget-object v3, p0, Lcom/android/phone/callsettings/IntCallSettingPreference;->mIntCallOutgoingLock:Landroid/preference/TwoStatePreference;

    if-eqz v3, :cond_0

    iget-object v6, p0, Lcom/android/phone/callsettings/IntCallSettingPreference;->mIntCallOutgoingLock:Landroid/preference/TwoStatePreference;

    if-lez v1, :cond_7

    move v3, v4

    :goto_0
    invoke-virtual {v6, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    :cond_0
    iget-object v3, p0, Lcom/android/phone/callsettings/IntCallSettingPreference;->mIntCallIncomingLock:Landroid/preference/CheckBoxPreference;

    if-eqz v3, :cond_1

    iget-object v6, p0, Lcom/android/phone/callsettings/IntCallSettingPreference;->mIntCallIncomingLock:Landroid/preference/CheckBoxPreference;

    if-lez v0, :cond_8

    move v3, v4

    :goto_1
    invoke-virtual {v6, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    :cond_1
    iget-object v3, p0, Lcom/android/phone/callsettings/IntCallSettingPreference;->mIntCallVoiceNoti:Landroid/preference/TwoStatePreference;

    if-eqz v3, :cond_2

    iget-object v6, p0, Lcom/android/phone/callsettings/IntCallSettingPreference;->mIntCallVoiceNoti:Landroid/preference/TwoStatePreference;

    if-lez v2, :cond_9

    move v3, v4

    :goto_2
    invoke-virtual {v6, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    :cond_2
    iget-object v3, p0, Lcom/android/phone/callsettings/IntCallSettingPreference;->mMeterialIntCallIncomingLock:Landroid/preference/SwitchPreference;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/phone/callsettings/IntCallSettingPreference;->mMeterialIntCallIncomingLock:Landroid/preference/SwitchPreference;

    if-lez v0, :cond_a

    :goto_3
    invoke-virtual {v3, v4}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :cond_3
    const-string/jumbo v3, "support_bixby"

    invoke-static {v3}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    new-instance v3, Lcom/android/phone/ia/IntCallSettingPreferenceStateListener;

    invoke-direct {v3, p0}, Lcom/android/phone/ia/IntCallSettingPreferenceStateListener;-><init>(Lcom/android/phone/callsettings/IntCallSettingPreference;)V

    iput-object v3, p0, Lcom/android/phone/callsettings/IntCallSettingPreference;->mStateListener:Lcom/android/phone/ia/IAInterimListener;

    iget-object v3, p0, Lcom/android/phone/callsettings/IntCallSettingPreference;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    iget-object v4, p0, Lcom/android/phone/callsettings/IntCallSettingPreference;->mStateListener:Lcom/android/phone/ia/IAInterimListener;

    invoke-virtual {v3, v4}, Lcom/samsung/android/sdk/bixby/BixbyApi;->setInterimStateListener(Lcom/samsung/android/sdk/bixby/BixbyApi$InterimStateListener;)V

    invoke-static {}, Lcom/android/phone/ia/IAUtil;->isIAExecutingState()Z

    move-result v3

    if-eqz v3, :cond_5

    const-string/jumbo v3, "InternationalCallSettings"

    invoke-static {}, Lcom/android/phone/ia/IAUtil;->getIAExecutingStateId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-static {}, Lcom/android/phone/ia/IAUtil;->isIAExecutingLastState()Z

    move-result v3

    if-eqz v3, :cond_4

    const-string/jumbo v3, "InternationalCallSettings"

    invoke-static {v3}, Lcom/android/phone/ia/IAUtil;->requestNLG(Ljava/lang/String;)V

    :cond_4
    sget-object v3, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    const-string/jumbo v4, ""

    invoke-static {v3, v4}, Lcom/android/phone/ia/IAUtil;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;Ljava/lang/String;)V

    :cond_5
    iget-object v3, p0, Lcom/android/phone/callsettings/IntCallSettingPreference;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    const-string/jumbo v4, "InternationalCallSettings"

    invoke-virtual {v3, v4}, Lcom/samsung/android/sdk/bixby/BixbyApi;->logEnterState(Ljava/lang/String;)V

    :cond_6
    return-void

    :cond_7
    move v3, v5

    goto :goto_0

    :cond_8
    move v3, v5

    goto :goto_1

    :cond_9
    move v3, v5

    goto :goto_2

    :cond_a
    move v4, v5

    goto :goto_3
.end method

.method public onStart()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-super {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onStart()V

    invoke-virtual {p0}, Lcom/android/phone/callsettings/IntCallSettingPreference;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/callsettings/IntCallSettingPreference;->emptyView:Lcom/android/phone/callsettings/IntCallSettingPreference$EmptyView;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/phone/callsettings/IntCallSettingPreference$EmptyView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/phone/callsettings/IntCallSettingPreference$EmptyView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/phone/callsettings/IntCallSettingPreference;->emptyView:Lcom/android/phone/callsettings/IntCallSettingPreference$EmptyView;

    :goto_0
    iget-object v1, p0, Lcom/android/phone/callsettings/IntCallSettingPreference;->emptyView:Lcom/android/phone/callsettings/IntCallSettingPreference$EmptyView;

    invoke-virtual {v0, v1, v4, v3}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setHeaderDividersEnabled(Z)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/phone/callsettings/IntCallSettingPreference;->emptyView:Lcom/android/phone/callsettings/IntCallSettingPreference$EmptyView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->removeHeaderView(Landroid/view/View;)Z

    goto :goto_0
.end method
