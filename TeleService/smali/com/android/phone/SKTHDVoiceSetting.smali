.class public Lcom/android/phone/SKTHDVoiceSetting;
.super Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;
.source "SKTHDVoiceSetting.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mCallTypePreference:Landroid/preference/ListPreference;

.field private mInstantLetteringPreference:Landroid/preference/PreferenceScreen;

.field private mVoLTENotiPreference:Landroid/preference/SwitchPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method public static getVoiceCallTypeValue(Landroid/content/ContentResolver;)I
    .locals 5

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string/jumbo v4, "enabled"

    invoke-static {v4}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v0, 0x1

    const-string/jumbo v4, "voicecall_type"

    invoke-static {p0, v4, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_0

    move v1, v2

    :goto_0
    return v1

    :cond_0
    move v1, v3

    goto :goto_0

    :cond_1
    return v3
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 8

    const v7, 0x7f0d08a3

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v6, 0x0

    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v2, 0x7f07005f

    invoke-virtual {p0, v2}, Lcom/android/phone/SKTHDVoiceSetting;->addPreferencesFromResource(I)V

    const-string/jumbo v2, "voicecall_type"

    invoke-virtual {p0, v2}, Lcom/android/phone/SKTHDVoiceSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/ListPreference;

    iput-object v2, p0, Lcom/android/phone/SKTHDVoiceSetting;->mCallTypePreference:Landroid/preference/ListPreference;

    const-string/jumbo v2, "volte_noti_preference"

    invoke-virtual {p0, v2}, Lcom/android/phone/SKTHDVoiceSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/SwitchPreference;

    iput-object v2, p0, Lcom/android/phone/SKTHDVoiceSetting;->mVoLTENotiPreference:Landroid/preference/SwitchPreference;

    const-string/jumbo v2, "volte_instant_lettering_preference"

    invoke-virtual {p0, v2}, Lcom/android/phone/SKTHDVoiceSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceScreen;

    iput-object v2, p0, Lcom/android/phone/SKTHDVoiceSetting;->mInstantLetteringPreference:Landroid/preference/PreferenceScreen;

    const-string/jumbo v2, "support_folder_single_lcd"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/phone/SKTHDVoiceSetting;->mInstantLetteringPreference:Landroid/preference/PreferenceScreen;

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/SKTHDVoiceSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    const-string/jumbo v5, "volte_instant_lettering_preference"

    invoke-virtual {p0, v5}, Lcom/android/phone/SKTHDVoiceSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_0
    iput-object v6, p0, Lcom/android/phone/SKTHDVoiceSetting;->mInstantLetteringPreference:Landroid/preference/PreferenceScreen;

    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/SKTHDVoiceSetting;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_2
    iget-object v2, p0, Lcom/android/phone/SKTHDVoiceSetting;->mCallTypePreference:Landroid/preference/ListPreference;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/phone/SKTHDVoiceSetting;->mCallTypePreference:Landroid/preference/ListPreference;

    invoke-virtual {v2, v7}, Landroid/preference/ListPreference;->setTitle(I)V

    iget-object v2, p0, Lcom/android/phone/SKTHDVoiceSetting;->mCallTypePreference:Landroid/preference/ListPreference;

    invoke-virtual {v2, v7}, Landroid/preference/ListPreference;->setDialogTitle(I)V

    iget-object v2, p0, Lcom/android/phone/SKTHDVoiceSetting;->mCallTypePreference:Landroid/preference/ListPreference;

    const v5, 0x7f0d08a4

    invoke-virtual {v2, v5}, Landroid/preference/ListPreference;->setSummary(I)V

    const/4 v2, 0x2

    new-array v1, v2, [Ljava/lang/String;

    const v2, 0x7f0d08a5

    invoke-virtual {p0, v2}, Lcom/android/phone/SKTHDVoiceSetting;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    const v2, 0x7f0d08a6

    invoke-virtual {p0, v2}, Lcom/android/phone/SKTHDVoiceSetting;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/android/phone/SKTHDVoiceSetting;->mCallTypePreference:Landroid/preference/ListPreference;

    invoke-virtual {v2, v1}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/phone/SKTHDVoiceSetting;->mCallTypePreference:Landroid/preference/ListPreference;

    invoke-virtual {v2, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_3
    iget-object v2, p0, Lcom/android/phone/SKTHDVoiceSetting;->mVoLTENotiPreference:Landroid/preference/SwitchPreference;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/phone/SKTHDVoiceSetting;->mVoLTENotiPreference:Landroid/preference/SwitchPreference;

    new-instance v5, Lcom/android/phone/SKTHDVoiceSetting$1;

    invoke-direct {v5, p0}, Lcom/android/phone/SKTHDVoiceSetting$1;-><init>(Lcom/android/phone/SKTHDVoiceSetting;)V

    invoke-virtual {v2, v5}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string/jumbo v2, "support_uicc_mobility"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v5, p0, Lcom/android/phone/SKTHDVoiceSetting;->mVoLTENotiPreference:Landroid/preference/SwitchPreference;

    invoke-static {}, Lcom/android/phone/PhoneUtils;->isSKTSIM()Z

    move-result v2

    if-eqz v2, :cond_5

    move v2, v3

    :goto_0
    invoke-virtual {v5, v2}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    :cond_4
    return-void

    :cond_5
    move v2, v4

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    return v1
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 8

    const/4 v3, 0x0

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/android/phone/SKTHDVoiceSetting;->mCallTypePreference:Landroid/preference/ListPreference;

    if-ne p1, v5, :cond_4

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    :try_start_0
    invoke-virtual {p0}, Lcom/android/phone/SKTHDVoiceSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "voicecall_type"

    invoke-static {v5, v6, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    if-nez v2, :cond_2

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/phone/PhoneUtilsIMS;->isVolteEnabledFromNetwork()Z

    move-result v1

    const-string/jumbo v5, "SKTHDVoiceSetting"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "isVolteServiceOn = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-static {v5, v6, v7}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/android/phone/SKTHDVoiceSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "voicecall_type"

    const/4 v7, 0x1

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v5, p0, Lcom/android/phone/SKTHDVoiceSetting;->mCallTypePreference:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/android/phone/SKTHDVoiceSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-static {v6}, Lcom/android/phone/SKTHDVoiceSetting;->getVoiceCallTypeValue(Landroid/content/ContentResolver;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/phone/SKTHDVoiceSetting;->mInstantLetteringPreference:Landroid/preference/PreferenceScreen;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/phone/SKTHDVoiceSetting;->mInstantLetteringPreference:Landroid/preference/PreferenceScreen;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/SKTHDVoiceSetting;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const v6, 0x7f0d08ab

    const/4 v7, 0x1

    invoke-static {v5, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    return v3

    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/SKTHDVoiceSetting;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const v6, 0x7f0d08a9

    const/4 v7, 0x1

    invoke-static {v5, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    :cond_2
    iget-object v5, p0, Lcom/android/phone/SKTHDVoiceSetting;->mInstantLetteringPreference:Landroid/preference/PreferenceScreen;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/phone/SKTHDVoiceSetting;->mInstantLetteringPreference:Landroid/preference/PreferenceScreen;

    if-nez v2, :cond_3

    move v3, v4

    :cond_3
    invoke-virtual {v5, v3}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    :goto_0
    return v4

    :catch_0
    move-exception v0

    const-string/jumbo v3, "SKTHDVoiceSetting"

    const-string/jumbo v5, "could not persist voice call type setting"

    invoke-static {v3, v5, v0}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/android/phone/SKTHDVoiceSetting;->mVoLTENotiPreference:Landroid/preference/SwitchPreference;

    if-ne p2, v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/SKTHDVoiceSetting;->mVoLTENotiPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/SKTHDVoiceSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "volte_noti_settings"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_0
    return v3

    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/SKTHDVoiceSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "volte_noti_settings"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 7

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-super {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onResume()V

    iget-object v2, p0, Lcom/android/phone/SKTHDVoiceSetting;->mCallTypePreference:Landroid/preference/ListPreference;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/phone/SKTHDVoiceSetting;->mCallTypePreference:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/android/phone/SKTHDVoiceSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5}, Lcom/android/phone/SKTHDVoiceSetting;->getVoiceCallTypeValue(Landroid/content/ContentResolver;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    iget-object v2, v2, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v1, v2, :cond_3

    const/4 v0, 0x1

    :goto_0
    iget-object v5, p0, Lcom/android/phone/SKTHDVoiceSetting;->mCallTypePreference:Landroid/preference/ListPreference;

    if-eqz v0, :cond_4

    move v2, v3

    :goto_1
    invoke-virtual {v5, v2}, Landroid/preference/ListPreference;->setEnabled(Z)V

    const-string/jumbo v2, "SKTHDVoiceSetting"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mCallTypePreference isCalling :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v2, p0, Lcom/android/phone/SKTHDVoiceSetting;->mVoLTENotiPreference:Landroid/preference/SwitchPreference;

    if-eqz v2, :cond_1

    iget-object v5, p0, Lcom/android/phone/SKTHDVoiceSetting;->mVoLTENotiPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/phone/SKTHDVoiceSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v6, "volte_noti_settings"

    invoke-static {v2, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_5

    move v2, v3

    :goto_2
    invoke-virtual {v5, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :cond_1
    iget-object v2, p0, Lcom/android/phone/SKTHDVoiceSetting;->mInstantLetteringPreference:Landroid/preference/PreferenceScreen;

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/android/phone/SKTHDVoiceSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/SKTHDVoiceSetting;->getVoiceCallTypeValue(Landroid/content/ContentResolver;)I

    move-result v2

    if-ne v2, v4, :cond_6

    iget-object v2, p0, Lcom/android/phone/SKTHDVoiceSetting;->mInstantLetteringPreference:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    :cond_2
    :goto_3
    return-void

    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    :cond_4
    move v2, v4

    goto :goto_1

    :cond_5
    move v2, v4

    goto :goto_2

    :cond_6
    iget-object v2, p0, Lcom/android/phone/SKTHDVoiceSetting;->mInstantLetteringPreference:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v4}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto :goto_3
.end method
