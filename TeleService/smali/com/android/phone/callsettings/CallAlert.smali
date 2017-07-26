.class public Lcom/android/phone/callsettings/CallAlert;
.super Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;
.source "CallAlert.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# instance fields
.field private mAlertsOnCallPreference:Landroid/preference/CheckBoxPreference;

.field private mAnswerVibPreference:Landroid/preference/CheckBoxPreference;

.field mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

.field private mConnectTonePreference:Landroid/preference/CheckBoxPreference;

.field private mEndTonePreference:Landroid/preference/CheckBoxPreference;

.field private mEndVibPreference:Landroid/preference/CheckBoxPreference;

.field private mMaterialAlertsOnCallPreference:Landroid/preference/SwitchPreference;

.field private mMaterialAnswerVibPreference:Landroid/preference/SwitchPreference;

.field private mMaterialConnectTonePreference:Landroid/preference/SwitchPreference;

.field private mMaterialEndTonePreference:Landroid/preference/SwitchPreference;

.field private mMaterialEndVibPreference:Landroid/preference/SwitchPreference;

.field private mMaterialMinuteMinderPeference:Landroid/preference/SwitchPreference;

.field private mMinuteMinderPeference:Landroid/preference/CheckBoxPreference;

.field private mSharedPreferences:Landroid/content/SharedPreferences;

.field mStateListener:Lcom/android/phone/ia/IAInterimListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;-><init>()V

    invoke-static {}, Lcom/samsung/android/sdk/bixby/BixbyApi;->getInstance()Lcom/samsung/android/sdk/bixby/BixbyApi;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/callsettings/CallAlert;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    const v4, 0x7f0d060c

    const v3, 0x7f0d05bf

    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v1, 0x7f0d024e

    invoke-virtual {p0, v1}, Lcom/android/phone/callsettings/CallAlert;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0d0292

    invoke-virtual {p0, v2}, Lcom/android/phone/callsettings/CallAlert;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/utils/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    const v1, 0x7f070014

    invoke-virtual {p0, v1}, Lcom/android/phone/callsettings/CallAlert;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallAlert;->registerAirplainModeObserver()V

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallAlert;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/callsettings/CallAlert;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "answer_vibration_preference"

    invoke-virtual {p0, v1}, Lcom/android/phone/callsettings/CallAlert;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/phone/callsettings/CallAlert;->mAnswerVibPreference:Landroid/preference/CheckBoxPreference;

    const-string/jumbo v1, "end_vibration_preference"

    invoke-virtual {p0, v1}, Lcom/android/phone/callsettings/CallAlert;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/phone/callsettings/CallAlert;->mEndVibPreference:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/phone/callsettings/CallAlert;->mEndVibPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setTitleDescription(I)V

    const-string/jumbo v1, "connect_tone_preference"

    invoke-virtual {p0, v1}, Lcom/android/phone/callsettings/CallAlert;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/phone/callsettings/CallAlert;->mConnectTonePreference:Landroid/preference/CheckBoxPreference;

    const-string/jumbo v1, "minute_minder_preference"

    invoke-virtual {p0, v1}, Lcom/android/phone/callsettings/CallAlert;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/phone/callsettings/CallAlert;->mMinuteMinderPeference:Landroid/preference/CheckBoxPreference;

    const-string/jumbo v1, "end_tone_preference"

    invoke-virtual {p0, v1}, Lcom/android/phone/callsettings/CallAlert;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/phone/callsettings/CallAlert;->mEndTonePreference:Landroid/preference/CheckBoxPreference;

    const-string/jumbo v1, "alertoncall_preference"

    invoke-virtual {p0, v1}, Lcom/android/phone/callsettings/CallAlert;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/phone/callsettings/CallAlert;->mAlertsOnCallPreference:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/phone/callsettings/CallAlert;->mAlertsOnCallPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setTitleDescription(I)V

    const-string/jumbo v1, "material_answer_vibration_preference"

    invoke-virtual {p0, v1}, Lcom/android/phone/callsettings/CallAlert;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreference;

    iput-object v1, p0, Lcom/android/phone/callsettings/CallAlert;->mMaterialAnswerVibPreference:Landroid/preference/SwitchPreference;

    const-string/jumbo v1, "material_end_vibration_preference"

    invoke-virtual {p0, v1}, Lcom/android/phone/callsettings/CallAlert;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreference;

    iput-object v1, p0, Lcom/android/phone/callsettings/CallAlert;->mMaterialEndVibPreference:Landroid/preference/SwitchPreference;

    iget-object v1, p0, Lcom/android/phone/callsettings/CallAlert;->mMaterialEndVibPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v4}, Landroid/preference/SwitchPreference;->setTitleDescription(I)V

    const-string/jumbo v1, "material_connect_tone_preference"

    invoke-virtual {p0, v1}, Lcom/android/phone/callsettings/CallAlert;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreference;

    iput-object v1, p0, Lcom/android/phone/callsettings/CallAlert;->mMaterialConnectTonePreference:Landroid/preference/SwitchPreference;

    const-string/jumbo v1, "material_minute_minder_preference"

    invoke-virtual {p0, v1}, Lcom/android/phone/callsettings/CallAlert;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreference;

    iput-object v1, p0, Lcom/android/phone/callsettings/CallAlert;->mMaterialMinuteMinderPeference:Landroid/preference/SwitchPreference;

    const-string/jumbo v1, "material_end_tone_preference"

    invoke-virtual {p0, v1}, Lcom/android/phone/callsettings/CallAlert;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreference;

    iput-object v1, p0, Lcom/android/phone/callsettings/CallAlert;->mMaterialEndTonePreference:Landroid/preference/SwitchPreference;

    const-string/jumbo v1, "material_alertoncall_preference"

    invoke-virtual {p0, v1}, Lcom/android/phone/callsettings/CallAlert;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreference;

    iput-object v1, p0, Lcom/android/phone/callsettings/CallAlert;->mMaterialAlertsOnCallPreference:Landroid/preference/SwitchPreference;

    iget-object v1, p0, Lcom/android/phone/callsettings/CallAlert;->mMaterialAlertsOnCallPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v3}, Landroid/preference/SwitchPreference;->setTitleDescription(I)V

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallAlert;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/callsettings/CallAlert;->mAnswerVibPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallAlert;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/callsettings/CallAlert;->mEndVibPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallAlert;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/callsettings/CallAlert;->mConnectTonePreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallAlert;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/callsettings/CallAlert;->mMinuteMinderPeference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallAlert;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/callsettings/CallAlert;->mEndTonePreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallAlert;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/callsettings/CallAlert;->mAlertsOnCallPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    iget-object v1, p0, Lcom/android/phone/callsettings/CallAlert;->mMaterialMinuteMinderPeference:Landroid/preference/SwitchPreference;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallAlert;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/callsettings/CallAlert;->mMaterialMinuteMinderPeference:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallAlert;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_1
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onPause()V

    iget-object v0, p0, Lcom/android/phone/callsettings/CallAlert;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    const-string/jumbo v0, "support_bixby"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/callsettings/CallAlert;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/bixby/BixbyApi;->clearInterimStateListener()V

    iget-object v0, p0, Lcom/android/phone/callsettings/CallAlert;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    const-string/jumbo v1, "CallAlerts"

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/bixby/BixbyApi;->logExitState(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/phone/callsettings/CallAlert;->mStateListener:Lcom/android/phone/ia/IAInterimListener;

    invoke-interface {v0}, Lcom/android/phone/ia/IAInterimListener;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/callsettings/CallAlert;->mStateListener:Lcom/android/phone/ia/IAInterimListener;

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-super {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onResume()V

    const v4, 0x7f0d0253

    invoke-virtual {p0, v4}, Lcom/android/phone/callsettings/CallAlert;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/phone/utils/SALogging;->sendSAViewFlowLog(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/phone/callsettings/CallAlert;->mMaterialAnswerVibPreference:Landroid/preference/SwitchPreference;

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallAlert;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "call_answer_vib"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-lez v4, :cond_9

    const/4 v0, 0x1

    :goto_0
    iget-object v4, p0, Lcom/android/phone/callsettings/CallAlert;->mMaterialAnswerVibPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v4, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :cond_0
    iget-object v4, p0, Lcom/android/phone/callsettings/CallAlert;->mMaterialEndVibPreference:Landroid/preference/SwitchPreference;

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallAlert;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "call_end_vib"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-lez v4, :cond_a

    const/4 v0, 0x1

    :goto_1
    iget-object v4, p0, Lcom/android/phone/callsettings/CallAlert;->mMaterialEndVibPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v4, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :cond_1
    iget-object v4, p0, Lcom/android/phone/callsettings/CallAlert;->mMaterialConnectTonePreference:Landroid/preference/SwitchPreference;

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallAlert;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "call_conn_tone"

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-lez v4, :cond_b

    const/4 v1, 0x1

    :goto_2
    iget-object v4, p0, Lcom/android/phone/callsettings/CallAlert;->mMaterialConnectTonePreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v4, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :cond_2
    iget-object v4, p0, Lcom/android/phone/callsettings/CallAlert;->mMaterialMinuteMinderPeference:Landroid/preference/SwitchPreference;

    if-eqz v4, :cond_3

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallAlert;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "min_minder"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-lez v4, :cond_c

    const/4 v3, 0x1

    :goto_3
    iget-object v4, p0, Lcom/android/phone/callsettings/CallAlert;->mMaterialMinuteMinderPeference:Landroid/preference/SwitchPreference;

    invoke-virtual {v4, v3}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :cond_3
    iget-object v4, p0, Lcom/android/phone/callsettings/CallAlert;->mMaterialEndTonePreference:Landroid/preference/SwitchPreference;

    if-eqz v4, :cond_4

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallAlert;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "call_end_tone"

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-lez v4, :cond_d

    const/4 v2, 0x1

    :goto_4
    iget-object v4, p0, Lcom/android/phone/callsettings/CallAlert;->mMaterialEndTonePreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v4, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :cond_4
    iget-object v4, p0, Lcom/android/phone/callsettings/CallAlert;->mMaterialAlertsOnCallPreference:Landroid/preference/SwitchPreference;

    if-eqz v4, :cond_5

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallAlert;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "alertoncall_mode"

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-lez v4, :cond_e

    const/4 v0, 0x1

    :goto_5
    iget-object v4, p0, Lcom/android/phone/callsettings/CallAlert;->mMaterialAlertsOnCallPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v4, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :cond_5
    iget-object v4, p0, Lcom/android/phone/callsettings/CallAlert;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v4, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    const-string/jumbo v4, "support_bixby"

    invoke-static {v4}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    new-instance v4, Lcom/android/phone/ia/CallAlertStateListener;

    invoke-direct {v4, p0}, Lcom/android/phone/ia/CallAlertStateListener;-><init>(Lcom/android/phone/callsettings/CallAlert;)V

    iput-object v4, p0, Lcom/android/phone/callsettings/CallAlert;->mStateListener:Lcom/android/phone/ia/IAInterimListener;

    iget-object v4, p0, Lcom/android/phone/callsettings/CallAlert;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    iget-object v5, p0, Lcom/android/phone/callsettings/CallAlert;->mStateListener:Lcom/android/phone/ia/IAInterimListener;

    invoke-virtual {v4, v5}, Lcom/samsung/android/sdk/bixby/BixbyApi;->setInterimStateListener(Lcom/samsung/android/sdk/bixby/BixbyApi$InterimStateListener;)V

    invoke-static {}, Lcom/android/phone/ia/IAUtil;->isIAExecutingState()Z

    move-result v4

    if-eqz v4, :cond_7

    const-string/jumbo v4, "CallAlerts"

    invoke-static {}, Lcom/android/phone/ia/IAUtil;->getIAExecutingStateId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-static {}, Lcom/android/phone/ia/IAUtil;->isIAExecutingLastState()Z

    move-result v4

    if-eqz v4, :cond_6

    const-string/jumbo v4, "CallAlerts"

    invoke-static {v4}, Lcom/android/phone/ia/IAUtil;->requestNLG(Ljava/lang/String;)V

    :cond_6
    sget-object v4, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    const-string/jumbo v5, ""

    invoke-static {v4, v5}, Lcom/android/phone/ia/IAUtil;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;Ljava/lang/String;)V

    :cond_7
    iget-object v4, p0, Lcom/android/phone/callsettings/CallAlert;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    const-string/jumbo v5, "CallAlerts"

    invoke-virtual {v4, v5}, Lcom/samsung/android/sdk/bixby/BixbyApi;->logEnterState(Ljava/lang/String;)V

    :cond_8
    return-void

    :cond_9
    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_a
    const/4 v0, 0x0

    goto/16 :goto_1

    :cond_b
    const/4 v1, 0x0

    goto/16 :goto_2

    :cond_c
    const/4 v3, 0x0

    goto/16 :goto_3

    :cond_d
    const/4 v2, 0x0

    goto :goto_4

    :cond_e
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 10

    const/4 v9, 0x0

    const v8, 0x7f0d0253

    const/4 v5, 0x1

    const-string/jumbo v2, "material_answer_vibration_preference"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1, p2, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_c

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {p0, v8}, Lcom/android/phone/callsettings/CallAlert;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0d02ab

    invoke-virtual {p0, v3}, Lcom/android/phone/callsettings/CallAlert;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "call_answer_vib"

    int-to-long v6, v1

    invoke-static {v2, v3, v4, v6, v7}, Lcom/android/phone/utils/SALogging;->sendSAEventSettingLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallAlert;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "call_answer_vib"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    const-string/jumbo v2, "material_end_vibration_preference"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1, p2, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_d

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {p0, v8}, Lcom/android/phone/callsettings/CallAlert;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0d02ac

    invoke-virtual {p0, v3}, Lcom/android/phone/callsettings/CallAlert;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "call_end_vib"

    int-to-long v6, v1

    invoke-static {v2, v3, v4, v6, v7}, Lcom/android/phone/utils/SALogging;->sendSAEventSettingLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallAlert;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "call_end_vib"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_1
    const-string/jumbo v2, "material_connect_tone_preference"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1, p2, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_e

    const/4 v1, 0x1

    :goto_2
    invoke-virtual {p0, v8}, Lcom/android/phone/callsettings/CallAlert;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0d02ad

    invoke-virtual {p0, v3}, Lcom/android/phone/callsettings/CallAlert;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "call_conn_tone"

    int-to-long v6, v1

    invoke-static {v2, v3, v4, v6, v7}, Lcom/android/phone/utils/SALogging;->sendSAEventSettingLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallAlert;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "call_conn_tone"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_2
    const-string/jumbo v2, "material_minute_minder_preference"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1, p2, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_f

    const/4 v1, 0x1

    :goto_3
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallAlert;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "min_minder"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_3
    const-string/jumbo v2, "material_end_tone_preference"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p1, p2, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_10

    const/4 v1, 0x1

    :goto_4
    invoke-virtual {p0, v8}, Lcom/android/phone/callsettings/CallAlert;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0d02ae

    invoke-virtual {p0, v3}, Lcom/android/phone/callsettings/CallAlert;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "call_end_tone"

    int-to-long v6, v1

    invoke-static {v2, v3, v4, v6, v7}, Lcom/android/phone/utils/SALogging;->sendSAEventSettingLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallAlert;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "call_end_tone"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_4
    const-string/jumbo v2, "material_alertoncall_preference"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {p1, p2, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_11

    const/4 v0, 0x1

    :goto_5
    invoke-virtual {p0, v8}, Lcom/android/phone/callsettings/CallAlert;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0d02af

    invoke-virtual {p0, v3}, Lcom/android/phone/callsettings/CallAlert;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "alertoncall_mode"

    int-to-long v6, v0

    invoke-static {v2, v3, v4, v6, v7}, Lcom/android/phone/utils/SALogging;->sendSAEventSettingLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallAlert;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "alertoncall_mode"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_5
    const-string/jumbo v2, "answer_vibration_preference"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {p1, p2, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_12

    const/4 v1, 0x1

    :goto_6
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallAlert;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "call_answer_vib"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_6
    const-string/jumbo v2, "end_vibration_preference"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {p1, p2, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_13

    const/4 v1, 0x1

    :goto_7
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallAlert;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "call_end_vib"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_7
    const-string/jumbo v2, "connect_tone_preference"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {p1, p2, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_14

    const/4 v1, 0x1

    :goto_8
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallAlert;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "call_conn_tone"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_8
    const-string/jumbo v2, "minute_minder_preference"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {p1, p2, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_15

    const/4 v1, 0x1

    :goto_9
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallAlert;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "min_minder"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_9
    const-string/jumbo v2, "end_tone_preference"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {p1, p2, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_16

    const/4 v1, 0x1

    :goto_a
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallAlert;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "call_end_tone"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_a
    const-string/jumbo v2, "alertoncall_preference"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {p1, p2, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_17

    const/4 v0, 0x1

    :goto_b
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallAlert;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "alertoncall_mode"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_b
    return-void

    :cond_c
    const/4 v1, 0x0

    goto/16 :goto_0

    :cond_d
    const/4 v1, 0x0

    goto/16 :goto_1

    :cond_e
    const/4 v1, 0x0

    goto/16 :goto_2

    :cond_f
    const/4 v1, 0x0

    goto/16 :goto_3

    :cond_10
    const/4 v1, 0x0

    goto/16 :goto_4

    :cond_11
    const/4 v0, 0x0

    goto/16 :goto_5

    :cond_12
    const/4 v1, 0x0

    goto/16 :goto_6

    :cond_13
    const/4 v1, 0x0

    goto/16 :goto_7

    :cond_14
    const/4 v1, 0x0

    goto :goto_8

    :cond_15
    const/4 v1, 0x0

    goto :goto_9

    :cond_16
    const/4 v1, 0x0

    goto :goto_a

    :cond_17
    const/4 v0, 0x0

    goto :goto_b
.end method
