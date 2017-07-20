.class public Lcom/android/phone/KTHDVoiceSetting;
.super Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;
.source "KTHDVoiceSetting.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/KTHDVoiceSetting$EmptyView;
    }
.end annotation


# instance fields
.field private mHDVoiceChecked:Landroid/preference/TwoStatePreference;

.field private mLTENetworkChecked:Landroid/preference/TwoStatePreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;-><init>()V

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

.method private log(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "KTHDVoiceSetting"

    invoke-static {v0, p1}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private log(Ljava/lang/String;Z)V
    .locals 1

    const-string/jumbo v0, "KTHDVoiceSetting"

    invoke-static {v0, p1, p2}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v2, 0x7f07003d

    invoke-virtual {p0, v2}, Lcom/android/phone/KTHDVoiceSetting;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/android/phone/KTHDVoiceSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    const-string/jumbo v2, "kt_hd_voice"

    const-string/jumbo v3, "SwitchPreference"

    invoke-direct {p0, v1, v2, v3}, Lcom/android/phone/KTHDVoiceSetting;->getPreference(Landroid/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/SwitchPreference;

    iput-object v2, p0, Lcom/android/phone/KTHDVoiceSetting;->mHDVoiceChecked:Landroid/preference/TwoStatePreference;

    const-string/jumbo v2, "kt_hd_voice_lte_pref"

    const-string/jumbo v3, "SwitchPreference"

    invoke-direct {p0, v1, v2, v3}, Lcom/android/phone/KTHDVoiceSetting;->getPreference(Landroid/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/SwitchPreference;

    iput-object v2, p0, Lcom/android/phone/KTHDVoiceSetting;->mLTENetworkChecked:Landroid/preference/TwoStatePreference;

    iget-object v2, p0, Lcom/android/phone/KTHDVoiceSetting;->mHDVoiceChecked:Landroid/preference/TwoStatePreference;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/phone/KTHDVoiceSetting;->mHDVoiceChecked:Landroid/preference/TwoStatePreference;

    check-cast v2, Landroid/preference/SwitchPreference;

    new-instance v3, Lcom/android/phone/KTHDVoiceSetting$1;

    invoke-direct {v3, p0}, Lcom/android/phone/KTHDVoiceSetting$1;-><init>(Lcom/android/phone/KTHDVoiceSetting;)V

    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_0
    iget-object v2, p0, Lcom/android/phone/KTHDVoiceSetting;->mLTENetworkChecked:Landroid/preference/TwoStatePreference;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/phone/KTHDVoiceSetting;->mLTENetworkChecked:Landroid/preference/TwoStatePreference;

    check-cast v2, Landroid/preference/SwitchPreference;

    new-instance v3, Lcom/android/phone/KTHDVoiceSetting$2;

    invoke-direct {v3, p0}, Lcom/android/phone/KTHDVoiceSetting$2;-><init>(Lcom/android/phone/KTHDVoiceSetting;)V

    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_1
    const-string/jumbo v2, "kt_hd_voice"

    const-string/jumbo v3, "CheckBoxPreference"

    invoke-direct {p0, v1, v2, v3}, Lcom/android/phone/KTHDVoiceSetting;->getPreference(Landroid/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    const-string/jumbo v2, "kt_hd_voice_lte_pref"

    const-string/jumbo v3, "CheckBoxPreference"

    invoke-direct {p0, v1, v2, v3}, Lcom/android/phone/KTHDVoiceSetting;->getPreference(Landroid/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    invoke-virtual {p0}, Lcom/android/phone/KTHDVoiceSetting;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_2
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    return v1
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 11

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    if-nez p2, :cond_0

    return v7

    :cond_0
    iget-object v5, p0, Lcom/android/phone/KTHDVoiceSetting;->mHDVoiceChecked:Landroid/preference/TwoStatePreference;

    if-ne p2, v5, :cond_f

    iget-object v5, p0, Lcom/android/phone/KTHDVoiceSetting;->mHDVoiceChecked:Landroid/preference/TwoStatePreference;

    invoke-virtual {v5}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v4

    const/4 v1, 0x0

    const-string/jumbo v5, "enabled"

    invoke-static {v5}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {}, Lcom/android/phone/PhoneUtilsIMS;->isRegistered()Z

    move-result v1

    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "isVolteSupported = "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/phone/KTHDVoiceSetting;->log(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/phone/KTHDVoiceSetting;->mLTENetworkChecked:Landroid/preference/TwoStatePreference;

    if-eqz v5, :cond_2

    if-eqz v1, :cond_6

    iget-object v5, p0, Lcom/android/phone/KTHDVoiceSetting;->mLTENetworkChecked:Landroid/preference/TwoStatePreference;

    invoke-virtual {v5, v4}, Landroid/preference/TwoStatePreference;->setEnabled(Z)V

    :cond_2
    :goto_0
    invoke-static {v4}, Lcom/android/phone/operator/kor/PhoneUtilsKOR;->setHDVoiceNetworkPref(Z)V

    invoke-virtual {p0}, Lcom/android/phone/KTHDVoiceSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v9, "hd_voice_network_pref"

    invoke-static {v5, v9, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v4, :cond_7

    if-nez v2, :cond_7

    invoke-virtual {p0}, Lcom/android/phone/KTHDVoiceSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v9, "voicecall_type"

    invoke-static {v5, v9, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_1
    const-string/jumbo v5, "support_uicc_mobility"

    invoke-static {v5}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {}, Lcom/android/phone/PhoneUtils;->isSKTSIM()Z

    move-result v5

    if-nez v5, :cond_9

    const-string/jumbo v5, "feature_ktt"

    invoke-static {v5}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    :cond_3
    :goto_2
    const-string/jumbo v5, "interworking_hd_voice_by_intent"

    invoke-static {v5}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    if-eqz v4, :cond_d

    if-ne v2, v7, :cond_d

    const/4 v3, 0x0

    :goto_3
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v5, "android.intent.action.HD_VOICE_CHANGED"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v8, "enable"

    if-nez v3, :cond_e

    move v5, v7

    :goto_4
    invoke-virtual {v0, v8, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/android/phone/PhoneGlobals;->sendBroadcast(Landroid/content/Intent;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "sendBroadcast HD_VOICE_CHANGED - "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-nez v3, :cond_4

    move v6, v7

    :cond_4
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5, v7}, Lcom/android/phone/KTHDVoiceSetting;->log(Ljava/lang/String;Z)V

    :cond_5
    return v7

    :cond_6
    iget-object v5, p0, Lcom/android/phone/KTHDVoiceSetting;->mLTENetworkChecked:Landroid/preference/TwoStatePreference;

    invoke-virtual {v5, v6}, Landroid/preference/TwoStatePreference;->setEnabled(Z)V

    goto :goto_0

    :cond_7
    invoke-virtual {p0}, Lcom/android/phone/KTHDVoiceSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "voicecall_type"

    if-eqz v4, :cond_8

    move v5, v6

    :goto_5
    invoke-static {v8, v9, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_8
    move v5, v7

    goto :goto_5

    :cond_9
    invoke-virtual {p0}, Lcom/android/phone/KTHDVoiceSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "voicecall_type"

    if-eqz v4, :cond_a

    move v5, v6

    :goto_6
    invoke-static {v8, v9, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/android/phone/KTHDVoiceSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "hd_voice_network_pref"

    if-eqz v4, :cond_b

    move v5, v7

    :goto_7
    invoke-static {v8, v9, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v5, p0, Lcom/android/phone/KTHDVoiceSetting;->mLTENetworkChecked:Landroid/preference/TwoStatePreference;

    if-eqz v5, :cond_3

    iget-object v8, p0, Lcom/android/phone/KTHDVoiceSetting;->mLTENetworkChecked:Landroid/preference/TwoStatePreference;

    if-eqz v4, :cond_c

    move v5, v7

    :goto_8
    invoke-virtual {v8, v5}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v5, p0, Lcom/android/phone/KTHDVoiceSetting;->mLTENetworkChecked:Landroid/preference/TwoStatePreference;

    invoke-virtual {v5, v6}, Landroid/preference/TwoStatePreference;->setEnabled(Z)V

    goto/16 :goto_2

    :cond_a
    move v5, v7

    goto :goto_6

    :cond_b
    move v5, v6

    goto :goto_7

    :cond_c
    move v5, v6

    goto :goto_8

    :cond_d
    const/4 v3, 0x1

    goto :goto_3

    :cond_e
    move v5, v6

    goto :goto_4

    :cond_f
    iget-object v5, p0, Lcom/android/phone/KTHDVoiceSetting;->mLTENetworkChecked:Landroid/preference/TwoStatePreference;

    if-ne p2, v5, :cond_16

    invoke-virtual {p0}, Lcom/android/phone/KTHDVoiceSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "hd_voice_network_pref"

    iget-object v5, p0, Lcom/android/phone/KTHDVoiceSetting;->mLTENetworkChecked:Landroid/preference/TwoStatePreference;

    invoke-virtual {v5}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_12

    move v5, v7

    :goto_9
    invoke-static {v9, v10, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/android/phone/KTHDVoiceSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "voicecall_type"

    iget-object v5, p0, Lcom/android/phone/KTHDVoiceSetting;->mLTENetworkChecked:Landroid/preference/TwoStatePreference;

    invoke-virtual {v5}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_13

    move v5, v6

    :goto_a
    invoke-static {v9, v10, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string/jumbo v5, "interworking_hd_voice_by_intent"

    invoke-static {v5}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_11

    iget-object v5, p0, Lcom/android/phone/KTHDVoiceSetting;->mLTENetworkChecked:Landroid/preference/TwoStatePreference;

    invoke-virtual {v5}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_14

    const/4 v3, 0x0

    :goto_b
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v5, "android.intent.action.HD_VOICE_CHANGED"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v8, "enable"

    if-nez v3, :cond_15

    move v5, v7

    :goto_c
    invoke-virtual {v0, v8, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/android/phone/PhoneGlobals;->sendBroadcast(Landroid/content/Intent;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "sendBroadcast HD_VOICE_CHANGED - "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-nez v3, :cond_10

    move v6, v7

    :cond_10
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5, v7}, Lcom/android/phone/KTHDVoiceSetting;->log(Ljava/lang/String;Z)V

    :cond_11
    return v7

    :cond_12
    move v5, v6

    goto :goto_9

    :cond_13
    move v5, v8

    goto :goto_a

    :cond_14
    const/4 v3, 0x1

    goto :goto_b

    :cond_15
    move v5, v6

    goto :goto_c

    :cond_16
    invoke-super {p0, p1, p2}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v5

    return v5
.end method

.method public onResume()V
    .locals 10

    const/4 v8, 0x1

    const/4 v7, 0x0

    invoke-super {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onResume()V

    invoke-virtual {p0}, Lcom/android/phone/KTHDVoiceSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v9, "voicecall_type"

    invoke-static {v6, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0}, Lcom/android/phone/KTHDVoiceSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v9, "hd_voice_network_pref"

    invoke-static {v6, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string/jumbo v6, "enabled"

    invoke-static {v6}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-static {}, Lcom/android/phone/PhoneUtilsIMS;->isRegistered()Z

    move-result v3

    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "isVolteSupported = "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6, v8}, Lcom/android/phone/KTHDVoiceSetting;->log(Ljava/lang/String;Z)V

    iget-object v6, p0, Lcom/android/phone/KTHDVoiceSetting;->mHDVoiceChecked:Landroid/preference/TwoStatePreference;

    if-eqz v6, :cond_1

    iget-object v9, p0, Lcom/android/phone/KTHDVoiceSetting;->mHDVoiceChecked:Landroid/preference/TwoStatePreference;

    if-ne v0, v8, :cond_5

    move v6, v7

    :goto_0
    invoke-virtual {v9, v6}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    :cond_1
    iget-object v6, p0, Lcom/android/phone/KTHDVoiceSetting;->mLTENetworkChecked:Landroid/preference/TwoStatePreference;

    if-eqz v6, :cond_2

    iget-object v9, p0, Lcom/android/phone/KTHDVoiceSetting;->mLTENetworkChecked:Landroid/preference/TwoStatePreference;

    if-lez v4, :cond_6

    move v6, v8

    :goto_1
    invoke-virtual {v9, v6}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    if-eqz v3, :cond_7

    if-eq v0, v8, :cond_7

    const/4 v2, 0x1

    :goto_2
    iget-object v6, p0, Lcom/android/phone/KTHDVoiceSetting;->mLTENetworkChecked:Landroid/preference/TwoStatePreference;

    invoke-virtual {v6, v2}, Landroid/preference/TwoStatePreference;->setEnabled(Z)V

    :cond_2
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v6

    iget-object v6, v6, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v5, v6, :cond_8

    const/4 v1, 0x1

    :goto_3
    const-string/jumbo v6, "KTHDVoiceSetting"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "KTHDVoiceSetting isCalling :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_9

    iget-object v6, p0, Lcom/android/phone/KTHDVoiceSetting;->mHDVoiceChecked:Landroid/preference/TwoStatePreference;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/phone/KTHDVoiceSetting;->mHDVoiceChecked:Landroid/preference/TwoStatePreference;

    invoke-virtual {v6, v7}, Landroid/preference/TwoStatePreference;->setEnabled(Z)V

    :cond_3
    iget-object v6, p0, Lcom/android/phone/KTHDVoiceSetting;->mLTENetworkChecked:Landroid/preference/TwoStatePreference;

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/phone/KTHDVoiceSetting;->mLTENetworkChecked:Landroid/preference/TwoStatePreference;

    invoke-virtual {v6, v7}, Landroid/preference/TwoStatePreference;->setEnabled(Z)V

    :cond_4
    :goto_4
    return-void

    :cond_5
    move v6, v8

    goto :goto_0

    :cond_6
    move v6, v7

    goto :goto_1

    :cond_7
    const/4 v2, 0x0

    goto :goto_2

    :cond_8
    const/4 v1, 0x0

    goto :goto_3

    :cond_9
    const-string/jumbo v6, "support_uicc_mobility"

    invoke-static {v6}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    const-string/jumbo v6, "feature_ktt"

    invoke-static {v6}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    iget-object v6, p0, Lcom/android/phone/KTHDVoiceSetting;->mLTENetworkChecked:Landroid/preference/TwoStatePreference;

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/phone/KTHDVoiceSetting;->mLTENetworkChecked:Landroid/preference/TwoStatePreference;

    invoke-virtual {v6, v7}, Landroid/preference/TwoStatePreference;->setEnabled(Z)V

    goto :goto_4
.end method

.method public onStart()V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onStart()V

    invoke-virtual {p0}, Lcom/android/phone/KTHDVoiceSetting;->getListView()Landroid/widget/ListView;

    move-result-object v1

    new-instance v0, Lcom/android/phone/KTHDVoiceSetting$EmptyView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/phone/KTHDVoiceSetting$EmptyView;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setHeaderDividersEnabled(Z)V

    return-void
.end method
