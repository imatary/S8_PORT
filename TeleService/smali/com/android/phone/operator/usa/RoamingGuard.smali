.class public Lcom/android/phone/operator/usa/RoamingGuard;
.super Landroid/preference/PreferenceActivity;
.source "RoamingGuard.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mButtonDomesticCdmaDataRoamingGuard:Landroid/preference/SwitchPreference;

.field private mButtonDomesticCdmaVoiceRoamingGuard:Landroid/preference/SwitchPreference;

.field private mButtonInternationalCdmaDataRoamingGuard:Landroid/preference/SwitchPreference;

.field private mButtonInternationalCdmaSmsRoamingGuard:Landroid/preference/SwitchPreference;

.field private mButtonInternationalCdmaVoiceRoamingGuard:Landroid/preference/SwitchPreference;

.field private mEnterpriseDeviceManager:Lcom/samsung/android/knox/EnterpriseDeviceManager;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mRoamingPolicy:Lcom/samsung/android/knox/restriction/RoamingPolicy;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method private domesticCdmaDataRoamingGuardTreeClick(Z)V
    .locals 5

    const/4 v2, 0x0

    const/4 v1, 0x1

    const-string/jumbo v0, "RoamingGuard"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "domesticCdmaDataRoamingGuardTreeClick : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v3, "roam_guard_data_domestic"

    if-eqz p1, :cond_3

    move v0, v1

    :goto_0
    invoke-static {v3, v0}, Lcom/android/phone/operator/usa/TelephonyExtension;->setSecureSettingValue(Ljava/lang/String;I)V

    const-string/jumbo v0, "lte_roaming_enhancement"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "roam_guard_data_lte"

    if-eqz p1, :cond_0

    move v2, v1

    :cond_0
    invoke-static {v0, v2}, Lcom/android/phone/operator/usa/TelephonyExtension;->setSecureSettingValue(Ljava/lang/String;I)V

    :cond_1
    if-nez p1, :cond_2

    iget-object v0, p0, Lcom/android/phone/operator/usa/RoamingGuard;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/Phone;->setDataRoamingEnabled(Z)V

    :cond_2
    return-void

    :cond_3
    move v0, v2

    goto :goto_0
.end method

.method private domesticCdmaVoiceRoamingGuardTreeClick(Z)V
    .locals 3

    const-string/jumbo v0, "RoamingGuard"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "domesticCdmaVoiceRoamingGuardTreeClick : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "roam_guard_call_domestic"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v0}, Lcom/android/phone/operator/usa/TelephonyExtension;->setSecureSettingValue(Ljava/lang/String;I)V

    invoke-static {}, Lcom/android/phone/operator/usa/TelephonyExtension;->updateShowVoiceRoamingGuardValue()V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private internationalCdmaDataRoamingGuardTreeClick(Z)V
    .locals 5

    const/4 v2, 0x0

    const/4 v1, 0x1

    const-string/jumbo v0, "RoamingGuard"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "internationalCdmaDataRoamingGuardTreeClick : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v3, "roam_guard_data_international"

    if-eqz p1, :cond_3

    move v0, v1

    :goto_0
    invoke-static {v3, v0}, Lcom/android/phone/operator/usa/TelephonyExtension;->setSecureSettingValue(Ljava/lang/String;I)V

    const-string/jumbo v0, "lte_roaming_enhancement"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v3, "roam_guard_data_lte_international"

    if-eqz p1, :cond_4

    move v0, v1

    :goto_1
    invoke-static {v3, v0}, Lcom/android/phone/operator/usa/TelephonyExtension;->setSecureSettingValue(Ljava/lang/String;I)V

    :cond_0
    const-string/jumbo v0, "sprint_gsm_data_guard"

    if-eqz p1, :cond_1

    move v2, v1

    :cond_1
    invoke-static {v0, v2}, Lcom/android/phone/operator/usa/TelephonyExtension;->setSecureSettingValue(Ljava/lang/String;I)V

    if-nez p1, :cond_2

    iget-object v0, p0, Lcom/android/phone/operator/usa/RoamingGuard;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/Phone;->setDataRoamingEnabled(Z)V

    :cond_2
    return-void

    :cond_3
    move v0, v2

    goto :goto_0

    :cond_4
    move v0, v2

    goto :goto_1
.end method

.method private internationalCdmaSmsRoamingGuardTreeClick(Z)V
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string/jumbo v0, "RoamingGuard"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "internationalCdmaSmsRoamingGuardTreeClick : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v3, "roam_guard_sms_international"

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v3, v0}, Lcom/android/phone/operator/usa/TelephonyExtension;->setSecureSettingValue(Ljava/lang/String;I)V

    const-string/jumbo v0, "sprint_gsm_sms_guard"

    if-eqz p1, :cond_1

    :goto_1
    invoke-static {v0, v1}, Lcom/android/phone/operator/usa/TelephonyExtension;->setSecureSettingValue(Ljava/lang/String;I)V

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method private internationalCdmaVoiceRoamingGuardTreeClick(Z)V
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string/jumbo v0, "RoamingGuard"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "internationalCdmaVoiceRoamingGuardTreeClick : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v3, "roam_guard_call_international"

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v3, v0}, Lcom/android/phone/operator/usa/TelephonyExtension;->setSecureSettingValue(Ljava/lang/String;I)V

    const-string/jumbo v0, "sprint_gsm_voice_guard"

    if-eqz p1, :cond_1

    :goto_1
    invoke-static {v0, v1}, Lcom/android/phone/operator/usa/TelephonyExtension;->setSecureSettingValue(Ljava/lang/String;I)V

    invoke-static {}, Lcom/android/phone/operator/usa/TelephonyExtension;->updateShowVoiceRoamingGuardValue()V

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method private updateRoamingGuard()V
    .locals 13

    const/4 v9, 0x0

    const/4 v10, 0x1

    const-string/jumbo v8, "roam_guard_call_domestic"

    invoke-static {v8, v10}, Lcom/android/phone/operator/usa/TelephonyExtension;->getSecureSettingBoolean(Ljava/lang/String;I)Z

    move-result v2

    const-string/jumbo v8, "RoamingGuard"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "domesticCdmaVoiceRoamingGuard : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11, v10}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    iget-object v8, p0, Lcom/android/phone/operator/usa/RoamingGuard;->mButtonDomesticCdmaVoiceRoamingGuard:Landroid/preference/SwitchPreference;

    invoke-virtual {v8, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    const-string/jumbo v8, "roam_guard_call_domestic_forced"

    invoke-static {v8, v9}, Lcom/android/phone/operator/usa/TelephonyExtension;->getSecureSettingBoolean(Ljava/lang/String;I)Z

    move-result v3

    const-string/jumbo v8, "RoamingGuard"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "domesticCdmaVoiceRoamingGuardForced : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11, v10}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    iget-object v11, p0, Lcom/android/phone/operator/usa/RoamingGuard;->mButtonDomesticCdmaVoiceRoamingGuard:Landroid/preference/SwitchPreference;

    if-eqz v3, :cond_4

    move v8, v9

    :goto_0
    invoke-virtual {v11, v8}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    const-string/jumbo v8, "roam_guard_call_international"

    invoke-static {v8, v10}, Lcom/android/phone/operator/usa/TelephonyExtension;->getSecureSettingBoolean(Ljava/lang/String;I)Z

    move-result v6

    const-string/jumbo v8, "RoamingGuard"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "internationalCdmaVoiceRoamingGuard : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11, v10}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    iget-object v8, p0, Lcom/android/phone/operator/usa/RoamingGuard;->mButtonInternationalCdmaVoiceRoamingGuard:Landroid/preference/SwitchPreference;

    invoke-virtual {v8, v6}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    const-string/jumbo v8, "roam_guard_call_international_forced"

    invoke-static {v8, v9}, Lcom/android/phone/operator/usa/TelephonyExtension;->getSecureSettingBoolean(Ljava/lang/String;I)Z

    move-result v7

    const-string/jumbo v8, "RoamingGuard"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "internationalCdmaVoiceRoamingGuardForced : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11, v10}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    iget-object v11, p0, Lcom/android/phone/operator/usa/RoamingGuard;->mButtonInternationalCdmaVoiceRoamingGuard:Landroid/preference/SwitchPreference;

    if-eqz v7, :cond_5

    move v8, v9

    :goto_1
    invoke-virtual {v11, v8}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    const-string/jumbo v8, "roam_guard_data_domestic"

    invoke-static {v8, v10}, Lcom/android/phone/operator/usa/TelephonyExtension;->getSecureSettingBoolean(Ljava/lang/String;I)Z

    move-result v1

    const-string/jumbo v8, "RoamingGuard"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "domesticCdmaDataRoamingGuardValue : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11, v10}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    const-string/jumbo v8, "lte_roaming_enhancement"

    invoke-static {v8}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    :cond_0
    iget-object v8, p0, Lcom/android/phone/operator/usa/RoamingGuard;->mButtonDomesticCdmaDataRoamingGuard:Landroid/preference/SwitchPreference;

    invoke-virtual {v8, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    const-string/jumbo v8, "roam_guard_data_domestic_forced"

    invoke-static {v8, v9}, Lcom/android/phone/operator/usa/TelephonyExtension;->getSecureSettingBoolean(Ljava/lang/String;I)Z

    move-result v0

    const-string/jumbo v8, "RoamingGuard"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "domesticCdmaDataRoamingGuardEnabled : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11, v10}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    const-string/jumbo v8, "lte_roaming_enhancement"

    invoke-static {v8}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    :cond_1
    iget-object v11, p0, Lcom/android/phone/operator/usa/RoamingGuard;->mButtonDomesticCdmaDataRoamingGuard:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_6

    move v8, v9

    :goto_2
    invoke-virtual {v11, v8}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    const-string/jumbo v8, "roam_guard_data_international"

    invoke-static {v8, v9}, Lcom/android/phone/operator/usa/TelephonyExtension;->getSecureSettingBoolean(Ljava/lang/String;I)Z

    move-result v5

    const-string/jumbo v8, "RoamingGuard"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "internationalCdmaDataRoamingGuardValue : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11, v10}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    const-string/jumbo v8, "lte_roaming_enhancement"

    invoke-static {v8}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    :cond_2
    iget-object v8, p0, Lcom/android/phone/operator/usa/RoamingGuard;->mButtonInternationalCdmaDataRoamingGuard:Landroid/preference/SwitchPreference;

    invoke-virtual {v8, v5}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    const-string/jumbo v8, "roam_guard_data_international_forced"

    invoke-static {v8, v9}, Lcom/android/phone/operator/usa/TelephonyExtension;->getSecureSettingBoolean(Ljava/lang/String;I)Z

    move-result v4

    const-string/jumbo v8, "RoamingGuard"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "internationalCdmaDataRoamingGuardEnabled : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11, v10}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    const-string/jumbo v8, "lte_roaming_enhancement"

    invoke-static {v8}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    :cond_3
    iget-object v8, p0, Lcom/android/phone/operator/usa/RoamingGuard;->mButtonInternationalCdmaDataRoamingGuard:Landroid/preference/SwitchPreference;

    if-eqz v4, :cond_7

    :goto_3
    invoke-virtual {v8, v9}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    iget-object v8, p0, Lcom/android/phone/operator/usa/RoamingGuard;->mButtonInternationalCdmaSmsRoamingGuard:Landroid/preference/SwitchPreference;

    const-string/jumbo v9, "roam_guard_sms_international"

    invoke-static {v9, v10}, Lcom/android/phone/operator/usa/TelephonyExtension;->getSecureSettingBoolean(Ljava/lang/String;I)Z

    move-result v9

    invoke-virtual {v8, v9}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    return-void

    :cond_4
    move v8, v10

    goto/16 :goto_0

    :cond_5
    move v8, v10

    goto/16 :goto_1

    :cond_6
    move v8, v10

    goto :goto_2

    :cond_7
    move v9, v10

    goto :goto_3
.end method

.method private updateRoamingPolicy()V
    .locals 2

    const/4 v1, 0x0

    const-string/jumbo v0, "enterprise_policy_new"

    invoke-virtual {p0, v0}, Lcom/android/phone/operator/usa/RoamingGuard;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/phone/operator/usa/RoamingGuard;->mEnterpriseDeviceManager:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    iget-object v0, p0, Lcom/android/phone/operator/usa/RoamingGuard;->mEnterpriseDeviceManager:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/operator/usa/RoamingGuard;->mEnterpriseDeviceManager:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    invoke-virtual {v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getRoamingPolicy()Lcom/samsung/android/knox/restriction/RoamingPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/operator/usa/RoamingGuard;->mRoamingPolicy:Lcom/samsung/android/knox/restriction/RoamingPolicy;

    :cond_0
    iget-object v0, p0, Lcom/android/phone/operator/usa/RoamingGuard;->mRoamingPolicy:Lcom/samsung/android/knox/restriction/RoamingPolicy;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/operator/usa/RoamingGuard;->mRoamingPolicy:Lcom/samsung/android/knox/restriction/RoamingPolicy;

    invoke-virtual {v0}, Lcom/samsung/android/knox/restriction/RoamingPolicy;->isRoamingVoiceCallsEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/operator/usa/RoamingGuard;->mButtonDomesticCdmaVoiceRoamingGuard:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/phone/operator/usa/RoamingGuard;->mButtonDomesticCdmaVoiceRoamingGuard:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/phone/operator/usa/RoamingGuard;->mButtonInternationalCdmaVoiceRoamingGuard:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/phone/operator/usa/RoamingGuard;->mButtonInternationalCdmaVoiceRoamingGuard:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/phone/operator/usa/RoamingGuard;->mButtonInternationalCdmaSmsRoamingGuard:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/phone/operator/usa/RoamingGuard;->mButtonInternationalCdmaSmsRoamingGuard:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    invoke-static {}, Lcom/android/phone/operator/usa/TelephonyExtension;->updateShowVoiceRoamingGuardValue()V

    :cond_1
    iget-object v0, p0, Lcom/android/phone/operator/usa/RoamingGuard;->mRoamingPolicy:Lcom/samsung/android/knox/restriction/RoamingPolicy;

    invoke-virtual {v0}, Lcom/samsung/android/knox/restriction/RoamingPolicy;->isRoamingDataEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/operator/usa/RoamingGuard;->mButtonDomesticCdmaDataRoamingGuard:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/phone/operator/usa/RoamingGuard;->mButtonDomesticCdmaDataRoamingGuard:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/phone/operator/usa/RoamingGuard;->mButtonInternationalCdmaDataRoamingGuard:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/phone/operator/usa/RoamingGuard;->mButtonInternationalCdmaDataRoamingGuard:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    :cond_2
    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const-string/jumbo v0, "RoamingGuard"

    const-string/jumbo v1, "onConfigurationChanged"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/operator/usa/RoamingGuard;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-direct {p0}, Lcom/android/phone/operator/usa/RoamingGuard;->updateRoamingGuard()V

    invoke-direct {p0}, Lcom/android/phone/operator/usa/RoamingGuard;->updateRoamingPolicy()V

    const-string/jumbo v0, "config_hide_status_bar"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/android/phone/PhoneUtilsCommon;->setHideLandscapeIndicatorBar(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    const-string/jumbo v2, "RoamingGuard"

    const-string/jumbo v3, "onCreate"

    invoke-static {v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v2, 0x7f070055

    invoke-virtual {p0, v2}, Lcom/android/phone/operator/usa/RoamingGuard;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/android/phone/operator/usa/RoamingGuard;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    const-string/jumbo v2, "domestic_cdma_voice_roaming_guard_key"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/SwitchPreference;

    iput-object v2, p0, Lcom/android/phone/operator/usa/RoamingGuard;->mButtonDomesticCdmaVoiceRoamingGuard:Landroid/preference/SwitchPreference;

    const-string/jumbo v2, "domestic_cdma_data_roaming_guard_key"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/SwitchPreference;

    iput-object v2, p0, Lcom/android/phone/operator/usa/RoamingGuard;->mButtonDomesticCdmaDataRoamingGuard:Landroid/preference/SwitchPreference;

    const-string/jumbo v2, "international_cdma_voice_roaming_guard_key"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/SwitchPreference;

    iput-object v2, p0, Lcom/android/phone/operator/usa/RoamingGuard;->mButtonInternationalCdmaVoiceRoamingGuard:Landroid/preference/SwitchPreference;

    const-string/jumbo v2, "international_cdma_data_roaming_guard_key"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/SwitchPreference;

    iput-object v2, p0, Lcom/android/phone/operator/usa/RoamingGuard;->mButtonInternationalCdmaDataRoamingGuard:Landroid/preference/SwitchPreference;

    const-string/jumbo v2, "international_cdma_sms_roaming_guard_key"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/SwitchPreference;

    iput-object v2, p0, Lcom/android/phone/operator/usa/RoamingGuard;->mButtonInternationalCdmaSmsRoamingGuard:Landroid/preference/SwitchPreference;

    iget-object v2, p0, Lcom/android/phone/operator/usa/RoamingGuard;->mButtonDomesticCdmaVoiceRoamingGuard:Landroid/preference/SwitchPreference;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/phone/operator/usa/RoamingGuard;->mButtonDomesticCdmaVoiceRoamingGuard:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_0
    iget-object v2, p0, Lcom/android/phone/operator/usa/RoamingGuard;->mButtonDomesticCdmaDataRoamingGuard:Landroid/preference/SwitchPreference;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/phone/operator/usa/RoamingGuard;->mButtonDomesticCdmaDataRoamingGuard:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_1
    iget-object v2, p0, Lcom/android/phone/operator/usa/RoamingGuard;->mButtonInternationalCdmaVoiceRoamingGuard:Landroid/preference/SwitchPreference;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/phone/operator/usa/RoamingGuard;->mButtonInternationalCdmaVoiceRoamingGuard:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_2
    iget-object v2, p0, Lcom/android/phone/operator/usa/RoamingGuard;->mButtonInternationalCdmaDataRoamingGuard:Landroid/preference/SwitchPreference;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/phone/operator/usa/RoamingGuard;->mButtonInternationalCdmaDataRoamingGuard:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_3
    iget-object v2, p0, Lcom/android/phone/operator/usa/RoamingGuard;->mButtonInternationalCdmaSmsRoamingGuard:Landroid/preference/SwitchPreference;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/phone/operator/usa/RoamingGuard;->mButtonInternationalCdmaSmsRoamingGuard:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_4
    const-string/jumbo v2, "roaming_setting_guard_data_only"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/phone/operator/usa/RoamingGuard;->mButtonDomesticCdmaVoiceRoamingGuard:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    iget-object v2, p0, Lcom/android/phone/operator/usa/RoamingGuard;->mButtonInternationalCdmaVoiceRoamingGuard:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    iget-object v2, p0, Lcom/android/phone/operator/usa/RoamingGuard;->mButtonInternationalCdmaSmsRoamingGuard:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_5
    invoke-virtual {p0}, Lcom/android/phone/operator/usa/RoamingGuard;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_6

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_6
    const-string/jumbo v2, "config_hide_status_bar"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-static {p0}, Lcom/android/phone/PhoneUtilsCommon;->setHideLandscapeIndicatorBar(Landroid/app/Activity;)V

    :cond_7
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/operator/usa/RoamingGuard;->finish()V

    const/4 v1, 0x1

    return v1

    :cond_0
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    return v1
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    const-string/jumbo v0, "RoamingGuard"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onPreferenceChange :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/operator/usa/RoamingGuard;->mButtonDomesticCdmaVoiceRoamingGuard:Landroid/preference/SwitchPreference;

    if-ne p1, v0, :cond_1

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/phone/operator/usa/RoamingGuard;->domesticCdmaVoiceRoamingGuardTreeClick(Z)V

    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/phone/operator/usa/RoamingGuard;->mButtonDomesticCdmaDataRoamingGuard:Landroid/preference/SwitchPreference;

    if-ne p1, v0, :cond_2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/phone/operator/usa/RoamingGuard;->domesticCdmaDataRoamingGuardTreeClick(Z)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/phone/operator/usa/RoamingGuard;->mButtonInternationalCdmaVoiceRoamingGuard:Landroid/preference/SwitchPreference;

    if-ne p1, v0, :cond_3

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/phone/operator/usa/RoamingGuard;->internationalCdmaVoiceRoamingGuardTreeClick(Z)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/phone/operator/usa/RoamingGuard;->mButtonInternationalCdmaDataRoamingGuard:Landroid/preference/SwitchPreference;

    if-ne p1, v0, :cond_4

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/phone/operator/usa/RoamingGuard;->internationalCdmaDataRoamingGuardTreeClick(Z)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/phone/operator/usa/RoamingGuard;->mButtonInternationalCdmaSmsRoamingGuard:Landroid/preference/SwitchPreference;

    if-ne p1, v0, :cond_0

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/phone/operator/usa/RoamingGuard;->internationalCdmaSmsRoamingGuardTreeClick(Z)V

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 3

    const-string/jumbo v0, "RoamingGuard"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onPreferenceTreeClick: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0
.end method

.method protected onResume()V
    .locals 2

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    const-string/jumbo v0, "RoamingGuard"

    const-string/jumbo v1, "onResume"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/operator/usa/RoamingGuard;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/phone/operator/usa/RoamingGuard;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    invoke-direct {p0}, Lcom/android/phone/operator/usa/RoamingGuard;->updateRoamingGuard()V

    invoke-direct {p0}, Lcom/android/phone/operator/usa/RoamingGuard;->updateRoamingPolicy()V

    return-void
.end method
