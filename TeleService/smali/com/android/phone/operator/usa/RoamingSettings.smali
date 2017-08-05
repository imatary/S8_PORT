.class public Lcom/android/phone/operator/usa/RoamingSettings;
.super Landroid/preference/PreferenceActivity;
.source "RoamingSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/operator/usa/RoamingSettings$RoamHandler;
    }
.end annotation


# static fields
.field static final preferredNetworkMode:I


# instance fields
.field private mButtonDomesticCdmaDataRoamingSetting:Landroid/preference/CheckBoxPreference;

.field private mButtonDomesticCdmaVoiceRoamingSetting:Landroid/preference/CheckBoxPreference;

.field private mButtonInternationalCdmaDataRoamingSetting:Landroid/preference/CheckBoxPreference;

.field private mButtonInternationalCdmaVoiceRoamingSetting:Landroid/preference/CheckBoxPreference;

.field private mButtonInternationalGsmDataRoamingSetting:Landroid/preference/CheckBoxPreference;

.field private mButtonInternationalGsmVoiceRoamingSetting:Landroid/preference/CheckBoxPreference;

.field private mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

.field private mEnterpriseDeviceManager:Lcom/samsung/android/knox/EnterpriseDeviceManager;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mRoamHandler:Lcom/android/phone/operator/usa/RoamingSettings$RoamHandler;

.field private mRoamingPolicy:Lcom/samsung/android/knox/restriction/RoamingPolicy;


# direct methods
.method static synthetic -get0(Lcom/android/phone/operator/usa/RoamingSettings;)Landroid/preference/ListPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/operator/usa/RoamingSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/phone/operator/usa/RoamingSettings;)Lcom/android/internal/telephony/Phone;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/operator/usa/RoamingSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic -wrap0(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/android/phone/operator/usa/RoamingSettings;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/phone/operator/usa/RoamingSettings;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/operator/usa/RoamingSettings;->sendDataRoamingGuardBroadcast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/phone/operator/usa/RoamingSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/operator/usa/RoamingSettings;->setCdmaRoaming()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/phone/operator/usa/RoamingSettings;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/phone/operator/usa/RoamingSettings;->setCheckSecureSettingRoamValue(II)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    sget v0, Lcom/android/internal/telephony/Phone;->PREFERRED_NT_MODE:I

    sput v0, Lcom/android/phone/operator/usa/RoamingSettings;->preferredNetworkMode:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method private domesticCdmaDataRoamingSettingTreeClick()V
    .locals 5

    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string/jumbo v0, "RoamingSettings"

    const-string/jumbo v1, "domesticCdmaDataRoamingSettingTreeClick"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/operator/usa/RoamingSettings;->mButtonDomesticCdmaDataRoamingSetting:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/phone/operator/usa/RoamingSettings;->mButtonDomesticCdmaVoiceRoamingSetting:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "roaming_setting_guard_data_only"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    invoke-static {}, Lcom/android/phone/operator/usa/TelephonyExtension;->isDomesticRoamingInService()Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "roaming_setting_guard_data_only"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_1
    const-string/jumbo v0, "domestic_cdma_data_roaming_setting_extra"

    invoke-direct {p0, v0}, Lcom/android/phone/operator/usa/RoamingSettings;->sendDataRoamingGuardBroadcast(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/phone/operator/usa/RoamingSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d06e9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040014

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/phone/operator/usa/RoamingSettings$3;

    invoke-direct {v1, p0}, Lcom/android/phone/operator/usa/RoamingSettings$3;-><init>(Lcom/android/phone/operator/usa/RoamingSettings;)V

    const v2, 0x7f0d0502

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/phone/operator/usa/RoamingSettings$4;

    invoke-direct {v1, p0}, Lcom/android/phone/operator/usa/RoamingSettings$4;-><init>(Lcom/android/phone/operator/usa/RoamingSettings;)V

    const v2, 0x7f0d0503

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/android/phone/operator/usa/RoamingSettings;->mButtonDomesticCdmaDataRoamingSetting:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0

    :cond_4
    invoke-direct {p0, v2, v4}, Lcom/android/phone/operator/usa/RoamingSettings;->setSecureSettingRoamValue(II)V

    goto :goto_0

    :cond_5
    const-string/jumbo v0, "roaming_setting_guard_data_only"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-direct {p0, v4, v3}, Lcom/android/phone/operator/usa/RoamingSettings;->setCheckSecureSettingRoamValue(II)V

    invoke-direct {p0}, Lcom/android/phone/operator/usa/RoamingSettings;->setCdmaRoaming()V

    :cond_6
    invoke-direct {p0, v2, v3}, Lcom/android/phone/operator/usa/RoamingSettings;->setCheckSecureSettingRoamValue(II)V

    invoke-static {}, Lcom/android/phone/operator/usa/TelephonyExtension;->isDomesticRoamingInService()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/operator/usa/RoamingSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/Phone;->setDataRoamingEnabled(Z)V

    goto :goto_0
.end method

.method private domesticCdmaVoiceRoamingSettingTreeClick()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string/jumbo v0, "RoamingSettings"

    const-string/jumbo v1, "domesticCdmaVoiceRoamingSettingTreeClick"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/operator/usa/RoamingSettings;->mButtonDomesticCdmaVoiceRoamingSetting:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/phone/operator/usa/RoamingSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d06e8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040014

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/phone/operator/usa/RoamingSettings$1;

    invoke-direct {v1, p0}, Lcom/android/phone/operator/usa/RoamingSettings$1;-><init>(Lcom/android/phone/operator/usa/RoamingSettings;)V

    const v2, 0x7f0d0502

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/phone/operator/usa/RoamingSettings$2;

    invoke-direct {v1, p0}, Lcom/android/phone/operator/usa/RoamingSettings$2;-><init>(Lcom/android/phone/operator/usa/RoamingSettings;)V

    const v2, 0x7f0d0503

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/android/phone/operator/usa/RoamingSettings;->mButtonDomesticCdmaVoiceRoamingSetting:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, v4, v3}, Lcom/android/phone/operator/usa/RoamingSettings;->setCheckSecureSettingRoamValue(II)V

    invoke-direct {p0}, Lcom/android/phone/operator/usa/RoamingSettings;->setCdmaRoaming()V

    const/4 v0, 0x2

    invoke-direct {p0, v0, v3}, Lcom/android/phone/operator/usa/RoamingSettings;->setCheckSecureSettingRoamValue(II)V

    invoke-static {}, Lcom/android/phone/operator/usa/TelephonyExtension;->isDomesticRoamingInService()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/operator/usa/RoamingSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/Phone;->setDataRoamingEnabled(Z)V

    goto :goto_0
.end method

.method private internationalCdmaDataRoamingSettingTreeClick()V
    .locals 5

    const/4 v2, 0x4

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string/jumbo v0, "RoamingSettings"

    const-string/jumbo v1, "internationalCdmaDataRoamingSettingTreeClick"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/operator/usa/RoamingSettings;->mButtonInternationalCdmaDataRoamingSetting:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/phone/operator/usa/RoamingSettings;->mButtonInternationalCdmaVoiceRoamingSetting:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "roaming_setting_guard_data_only"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    invoke-static {}, Lcom/android/phone/operator/usa/TelephonyExtension;->isInternationalRoamingInService()Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "roaming_setting_guard_data_only"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_1
    const-string/jumbo v0, "international_cdma_data_roaming_setting_extra"

    invoke-direct {p0, v0}, Lcom/android/phone/operator/usa/RoamingSettings;->sendDataRoamingGuardBroadcast(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/phone/operator/usa/RoamingSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d06ea

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040014

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/phone/operator/usa/RoamingSettings$7;

    invoke-direct {v1, p0}, Lcom/android/phone/operator/usa/RoamingSettings$7;-><init>(Lcom/android/phone/operator/usa/RoamingSettings;)V

    const v2, 0x7f0d0502

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/phone/operator/usa/RoamingSettings$8;

    invoke-direct {v1, p0}, Lcom/android/phone/operator/usa/RoamingSettings$8;-><init>(Lcom/android/phone/operator/usa/RoamingSettings;)V

    const v2, 0x7f0d0503

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/android/phone/operator/usa/RoamingSettings;->mButtonInternationalCdmaDataRoamingSetting:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0

    :cond_4
    invoke-direct {p0, v2, v4}, Lcom/android/phone/operator/usa/RoamingSettings;->setSecureSettingRoamValue(II)V

    goto :goto_0

    :cond_5
    const-string/jumbo v0, "roaming_setting_guard_data_only"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x3

    invoke-direct {p0, v0, v3}, Lcom/android/phone/operator/usa/RoamingSettings;->setCheckSecureSettingRoamValue(II)V

    invoke-direct {p0}, Lcom/android/phone/operator/usa/RoamingSettings;->setCdmaRoaming()V

    :cond_6
    invoke-direct {p0, v2, v3}, Lcom/android/phone/operator/usa/RoamingSettings;->setCheckSecureSettingRoamValue(II)V

    invoke-static {}, Lcom/android/phone/operator/usa/TelephonyExtension;->isInternationalRoamingInService()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/operator/usa/RoamingSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/Phone;->setDataRoamingEnabled(Z)V

    goto :goto_0
.end method

.method private internationalCdmaVoiceRoamingSettingTreeClick()V
    .locals 4

    const/4 v3, 0x0

    const-string/jumbo v0, "RoamingSettings"

    const-string/jumbo v1, "internationalCdmaVoiceRoamingSettingTreeClick"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/operator/usa/RoamingSettings;->mButtonInternationalCdmaVoiceRoamingSetting:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/phone/operator/usa/RoamingSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d06e8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040014

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/phone/operator/usa/RoamingSettings$5;

    invoke-direct {v1, p0}, Lcom/android/phone/operator/usa/RoamingSettings$5;-><init>(Lcom/android/phone/operator/usa/RoamingSettings;)V

    const v2, 0x7f0d0502

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/phone/operator/usa/RoamingSettings$6;

    invoke-direct {v1, p0}, Lcom/android/phone/operator/usa/RoamingSettings$6;-><init>(Lcom/android/phone/operator/usa/RoamingSettings;)V

    const v2, 0x7f0d0503

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/android/phone/operator/usa/RoamingSettings;->mButtonInternationalCdmaVoiceRoamingSetting:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x3

    invoke-direct {p0, v0, v3}, Lcom/android/phone/operator/usa/RoamingSettings;->setCheckSecureSettingRoamValue(II)V

    invoke-direct {p0}, Lcom/android/phone/operator/usa/RoamingSettings;->setCdmaRoaming()V

    const/4 v0, 0x4

    invoke-direct {p0, v0, v3}, Lcom/android/phone/operator/usa/RoamingSettings;->setCheckSecureSettingRoamValue(II)V

    invoke-static {}, Lcom/android/phone/operator/usa/TelephonyExtension;->isInternationalRoamingInService()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0
.end method

.method private internationalGsmDataRoamingSettingTreeClick()V
    .locals 3

    const/16 v2, 0x8

    const-string/jumbo v0, "RoamingSettings"

    const-string/jumbo v1, "internationalGsmDataRoamingSettingTreeClick"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/operator/usa/RoamingSettings;->mButtonInternationalGsmDataRoamingSetting:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/phone/operator/usa/TelephonyExtension;->isInternationalRoamingInService()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "international_gsm_data_roaming_setting_extra"

    invoke-direct {p0, v0}, Lcom/android/phone/operator/usa/RoamingSettings;->sendDataRoamingGuardBroadcast(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v2, v0}, Lcom/android/phone/operator/usa/RoamingSettings;->setSecureSettingRoamValue(II)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v2, v0}, Lcom/android/phone/operator/usa/RoamingSettings;->setCheckSecureSettingRoamValue(II)V

    goto :goto_0
.end method

.method private internationalGsmVoiceRoamingSettingTreeClick()V
    .locals 0

    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "RoamingSettings"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private sendDataRoamingGuardBroadcast(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.ACTION_SHOW_DIALOG_DATA_ROAMING_GUARD"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "roaming_setting_guard_data_only"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "data_roaming_settings_extra"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/phone/operator/usa/RoamingSettings;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private setCdmaRoaming()V
    .locals 3

    iget-object v1, p0, Lcom/android/phone/operator/usa/RoamingSettings;->mRoamHandler:Lcom/android/phone/operator/usa/RoamingSettings$RoamHandler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/android/phone/operator/usa/RoamingSettings$RoamHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/operator/usa/RoamingSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v1, v0}, Lcom/android/phone/operator/usa/TelephonyExtension;->setCdmaRoaming(Lcom/android/internal/telephony/Phone;Landroid/os/Message;)V

    const-string/jumbo v1, "lte_roaming_enhancement"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "RoamingSettings"

    const-string/jumbo v2, "setCdmaRoaming() for LTE Roaming"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/phone/operator/usa/RoamingSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v1, v0}, Lcom/android/phone/operator/usa/TelephonyExtension;->setLTECdmaRoaming(Lcom/android/internal/telephony/Phone;Landroid/os/Message;)V

    :cond_0
    return-void
.end method

.method private setCheckSecureSettingRoamValue(II)V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string/jumbo v2, "RoamingSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setCheckSecureSettingRoamValue() key : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", value  : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch p1, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v2, p0, Lcom/android/phone/operator/usa/RoamingSettings;->mButtonDomesticCdmaVoiceRoamingSetting:Landroid/preference/CheckBoxPreference;

    if-eqz p2, :cond_0

    :goto_1
    invoke-virtual {v2, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    invoke-direct {p0, p1, p2}, Lcom/android/phone/operator/usa/RoamingSettings;->setSecureSettingRoamValue(II)V

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :pswitch_2
    iget-object v2, p0, Lcom/android/phone/operator/usa/RoamingSettings;->mButtonDomesticCdmaDataRoamingSetting:Landroid/preference/CheckBoxPreference;

    if-eqz p2, :cond_1

    :goto_2
    invoke-virtual {v2, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    invoke-direct {p0, p1, p2}, Lcom/android/phone/operator/usa/RoamingSettings;->setSecureSettingRoamValue(II)V

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_2

    :pswitch_3
    iget-object v2, p0, Lcom/android/phone/operator/usa/RoamingSettings;->mButtonInternationalCdmaVoiceRoamingSetting:Landroid/preference/CheckBoxPreference;

    if-eqz p2, :cond_2

    :goto_3
    invoke-virtual {v2, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    invoke-direct {p0, p1, p2}, Lcom/android/phone/operator/usa/RoamingSettings;->setSecureSettingRoamValue(II)V

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_3

    :pswitch_4
    iget-object v2, p0, Lcom/android/phone/operator/usa/RoamingSettings;->mButtonInternationalCdmaDataRoamingSetting:Landroid/preference/CheckBoxPreference;

    if-eqz p2, :cond_3

    :goto_4
    invoke-virtual {v2, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    invoke-direct {p0, p1, p2}, Lcom/android/phone/operator/usa/RoamingSettings;->setSecureSettingRoamValue(II)V

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_4

    :pswitch_5
    iget-object v2, p0, Lcom/android/phone/operator/usa/RoamingSettings;->mButtonInternationalGsmDataRoamingSetting:Landroid/preference/CheckBoxPreference;

    if-eqz p2, :cond_4

    :goto_5
    invoke-virtual {v2, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    invoke-direct {p0, p1, p2}, Lcom/android/phone/operator/usa/RoamingSettings;->setSecureSettingRoamValue(II)V

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_5

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method private setPreferenceEnabledPhoneType()V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x1

    const-string/jumbo v2, "global_network_cdma_gsm_enable_for_spr"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/phone/operator/usa/RoamingSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "preferred_network_mode"

    sget v4, Lcom/android/internal/telephony/Phone;->PREFERRED_NT_MODE:I

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/16 v2, 0xa

    if-ne v2, v1, :cond_1

    iget-object v2, p0, Lcom/android/phone/operator/usa/RoamingSettings;->mButtonDomesticCdmaVoiceRoamingSetting:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v5}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    iget-object v2, p0, Lcom/android/phone/operator/usa/RoamingSettings;->mButtonDomesticCdmaDataRoamingSetting:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v5}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    iget-object v2, p0, Lcom/android/phone/operator/usa/RoamingSettings;->mButtonInternationalCdmaVoiceRoamingSetting:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v5}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    iget-object v2, p0, Lcom/android/phone/operator/usa/RoamingSettings;->mButtonInternationalCdmaDataRoamingSetting:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v5}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    iget-object v2, p0, Lcom/android/phone/operator/usa/RoamingSettings;->mButtonInternationalGsmVoiceRoamingSetting:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v5}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    iget-object v2, p0, Lcom/android/phone/operator/usa/RoamingSettings;->mButtonInternationalGsmDataRoamingSetting:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v5}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/phone/operator/usa/RoamingSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    iget-object v2, p0, Lcom/android/phone/operator/usa/RoamingSettings;->mButtonInternationalGsmVoiceRoamingSetting:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v6}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    iget-object v2, p0, Lcom/android/phone/operator/usa/RoamingSettings;->mButtonInternationalGsmDataRoamingSetting:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v6}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0

    :cond_2
    if-eq v0, v5, :cond_3

    const/4 v2, 0x3

    if-ne v0, v2, :cond_4

    :cond_3
    iget-object v2, p0, Lcom/android/phone/operator/usa/RoamingSettings;->mButtonDomesticCdmaVoiceRoamingSetting:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v6}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    iget-object v2, p0, Lcom/android/phone/operator/usa/RoamingSettings;->mButtonDomesticCdmaDataRoamingSetting:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v6}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    iget-object v2, p0, Lcom/android/phone/operator/usa/RoamingSettings;->mButtonInternationalCdmaVoiceRoamingSetting:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v6}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    iget-object v2, p0, Lcom/android/phone/operator/usa/RoamingSettings;->mButtonInternationalCdmaDataRoamingSetting:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v6}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0

    :cond_4
    const/4 v2, 0x5

    if-eq v0, v2, :cond_3

    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unexpected phone type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private setSecureSettingRoamValue(II)V
    .locals 3

    const-string/jumbo v0, "RoamingSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setSecureSettingRoamValue() key : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", value  : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    const-string/jumbo v0, "roam_setting_call_domestic"

    invoke-static {v0, p2}, Lcom/android/phone/operator/usa/TelephonyExtension;->setSecureSettingValue(Ljava/lang/String;I)V

    const-string/jumbo v0, "roam_guard_call_domestic"

    invoke-static {v0, p2}, Lcom/android/phone/operator/usa/TelephonyExtension;->setSecureSettingValue(Ljava/lang/String;I)V

    goto :goto_0

    :pswitch_2
    const-string/jumbo v0, "roam_setting_data_domestic"

    invoke-static {v0, p2}, Lcom/android/phone/operator/usa/TelephonyExtension;->setSecureSettingValue(Ljava/lang/String;I)V

    const-string/jumbo v0, "roam_guard_data_domestic"

    invoke-static {v0, p2}, Lcom/android/phone/operator/usa/TelephonyExtension;->setSecureSettingValue(Ljava/lang/String;I)V

    const-string/jumbo v0, "lte_roaming_enhancement"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "roam_setting_data_lte"

    invoke-static {v0, p2}, Lcom/android/phone/operator/usa/TelephonyExtension;->setSecureSettingValue(Ljava/lang/String;I)V

    goto :goto_0

    :pswitch_3
    const-string/jumbo v0, "roam_setting_call_international"

    invoke-static {v0, p2}, Lcom/android/phone/operator/usa/TelephonyExtension;->setSecureSettingValue(Ljava/lang/String;I)V

    const-string/jumbo v0, "roam_guard_call_international"

    invoke-static {v0, p2}, Lcom/android/phone/operator/usa/TelephonyExtension;->setSecureSettingValue(Ljava/lang/String;I)V

    goto :goto_0

    :pswitch_4
    const-string/jumbo v0, "roam_setting_data_international"

    invoke-static {v0, p2}, Lcom/android/phone/operator/usa/TelephonyExtension;->setSecureSettingValue(Ljava/lang/String;I)V

    const-string/jumbo v0, "roam_guard_data_international"

    invoke-static {v0, p2}, Lcom/android/phone/operator/usa/TelephonyExtension;->setSecureSettingValue(Ljava/lang/String;I)V

    const-string/jumbo v0, "lte_roaming_enhancement"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "roam_setting_data_lte_international"

    invoke-static {v0, p2}, Lcom/android/phone/operator/usa/TelephonyExtension;->setSecureSettingValue(Ljava/lang/String;I)V

    goto :goto_0

    :pswitch_5
    const-string/jumbo v0, "sprint_gsm_data_roaming"

    invoke-static {v0, p2}, Lcom/android/phone/operator/usa/TelephonyExtension;->setSecureSettingValue(Ljava/lang/String;I)V

    const-string/jumbo v0, "sprint_gsm_data_guard"

    invoke-static {v0, p2}, Lcom/android/phone/operator/usa/TelephonyExtension;->setSecureSettingValue(Ljava/lang/String;I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const-string/jumbo v0, "RoamingSettings"

    const-string/jumbo v1, "onConfigurationChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/operator/usa/RoamingSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-direct {p0}, Lcom/android/phone/operator/usa/RoamingSettings;->setPreferenceEnabledPhoneType()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    const/4 v4, 0x0

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    const-string/jumbo v2, "RoamingSettings"

    const-string/jumbo v3, "onCreate"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v2, 0x7f070056

    invoke-virtual {p0, v2}, Lcom/android/phone/operator/usa/RoamingSettings;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/android/phone/operator/usa/RoamingSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    new-instance v2, Lcom/android/phone/operator/usa/RoamingSettings$RoamHandler;

    invoke-direct {v2, p0, v4}, Lcom/android/phone/operator/usa/RoamingSettings$RoamHandler;-><init>(Lcom/android/phone/operator/usa/RoamingSettings;Lcom/android/phone/operator/usa/RoamingSettings$RoamHandler;)V

    iput-object v2, p0, Lcom/android/phone/operator/usa/RoamingSettings;->mRoamHandler:Lcom/android/phone/operator/usa/RoamingSettings$RoamHandler;

    const-string/jumbo v2, "domestic_cdma_voice_roaming_settings_key"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/phone/operator/usa/RoamingSettings;->mButtonDomesticCdmaVoiceRoamingSetting:Landroid/preference/CheckBoxPreference;

    const-string/jumbo v2, "domestic_cdma_data_roaming_settings_key"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/phone/operator/usa/RoamingSettings;->mButtonDomesticCdmaDataRoamingSetting:Landroid/preference/CheckBoxPreference;

    const-string/jumbo v2, "international_cdma_voice_roaming_settings_key"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/phone/operator/usa/RoamingSettings;->mButtonInternationalCdmaVoiceRoamingSetting:Landroid/preference/CheckBoxPreference;

    const-string/jumbo v2, "international_cdma_data_roaming_settings_key"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/phone/operator/usa/RoamingSettings;->mButtonInternationalCdmaDataRoamingSetting:Landroid/preference/CheckBoxPreference;

    const-string/jumbo v2, "international_gsm_voice_roaming_settings_key"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/phone/operator/usa/RoamingSettings;->mButtonInternationalGsmVoiceRoamingSetting:Landroid/preference/CheckBoxPreference;

    const-string/jumbo v2, "international_gsm_data_roaming_settings_key"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/phone/operator/usa/RoamingSettings;->mButtonInternationalGsmDataRoamingSetting:Landroid/preference/CheckBoxPreference;

    const-string/jumbo v2, "global_network_cdma_gsm_enable_for_spr"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/phone/operator/usa/RoamingSettings;->mButtonInternationalGsmVoiceRoamingSetting:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    iget-object v2, p0, Lcom/android/phone/operator/usa/RoamingSettings;->mButtonInternationalGsmDataRoamingSetting:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    const-string/jumbo v2, "international_gsm_category_key"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :goto_0
    const-string/jumbo v2, "roaming_setting_guard_data_only"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/phone/operator/usa/RoamingSettings;->mButtonDomesticCdmaVoiceRoamingSetting:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    iget-object v2, p0, Lcom/android/phone/operator/usa/RoamingSettings;->mButtonInternationalCdmaVoiceRoamingSetting:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/operator/usa/RoamingSettings;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_1
    return-void

    :cond_2
    iget-object v2, p0, Lcom/android/phone/operator/usa/RoamingSettings;->mButtonInternationalGsmVoiceRoamingSetting:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    const-string/jumbo v2, "domestic_cdma_category_key"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    const v3, 0x7f0d08e4

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setTitle(I)V

    const-string/jumbo v2, "international_cdma_category_key"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    const v3, 0x7f0d08e6

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setTitle(I)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/operator/usa/RoamingSettings;->finish()V

    const/4 v1, 0x1

    return v1

    :cond_0
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    return v1
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 3

    const-string/jumbo v0, "RoamingSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onPreferenceTreeClick: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/operator/usa/RoamingSettings;->mButtonDomesticCdmaVoiceRoamingSetting:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_1

    invoke-direct {p0}, Lcom/android/phone/operator/usa/RoamingSettings;->domesticCdmaVoiceRoamingSettingTreeClick()V

    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/phone/operator/usa/RoamingSettings;->mButtonDomesticCdmaDataRoamingSetting:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_2

    invoke-direct {p0}, Lcom/android/phone/operator/usa/RoamingSettings;->domesticCdmaDataRoamingSettingTreeClick()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/phone/operator/usa/RoamingSettings;->mButtonInternationalCdmaVoiceRoamingSetting:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_3

    invoke-direct {p0}, Lcom/android/phone/operator/usa/RoamingSettings;->internationalCdmaVoiceRoamingSettingTreeClick()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/phone/operator/usa/RoamingSettings;->mButtonInternationalCdmaDataRoamingSetting:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_4

    invoke-direct {p0}, Lcom/android/phone/operator/usa/RoamingSettings;->internationalCdmaDataRoamingSettingTreeClick()V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/phone/operator/usa/RoamingSettings;->mButtonInternationalGsmVoiceRoamingSetting:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_5

    invoke-direct {p0}, Lcom/android/phone/operator/usa/RoamingSettings;->internationalGsmVoiceRoamingSettingTreeClick()V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/android/phone/operator/usa/RoamingSettings;->mButtonInternationalGsmDataRoamingSetting:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_0

    invoke-direct {p0}, Lcom/android/phone/operator/usa/RoamingSettings;->internationalGsmDataRoamingSettingTreeClick()V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 4

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    const-string/jumbo v0, "RoamingSettings"

    const-string/jumbo v3, "onResume"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/operator/usa/RoamingSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/phone/operator/usa/RoamingSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/phone/operator/usa/RoamingSettings;->mButtonDomesticCdmaDataRoamingSetting:Landroid/preference/CheckBoxPreference;

    const-string/jumbo v3, "roam_setting_data_domestic"

    invoke-static {v3, v1}, Lcom/android/phone/operator/usa/TelephonyExtension;->getSecureSettingBoolean(Ljava/lang/String;I)Z

    move-result v3

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v3, p0, Lcom/android/phone/operator/usa/RoamingSettings;->mButtonDomesticCdmaDataRoamingSetting:Landroid/preference/CheckBoxPreference;

    const-string/jumbo v0, "roam_setting_data_domestic_forced"

    invoke-static {v0, v1}, Lcom/android/phone/operator/usa/TelephonyExtension;->getSecureSettingBoolean(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/phone/operator/usa/RoamingSettings;->mButtonInternationalCdmaDataRoamingSetting:Landroid/preference/CheckBoxPreference;

    const-string/jumbo v3, "roam_setting_data_international"

    invoke-static {v3, v1}, Lcom/android/phone/operator/usa/TelephonyExtension;->getSecureSettingBoolean(Ljava/lang/String;I)Z

    move-result v3

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v3, p0, Lcom/android/phone/operator/usa/RoamingSettings;->mButtonInternationalCdmaDataRoamingSetting:Landroid/preference/CheckBoxPreference;

    const-string/jumbo v0, "roam_setting_data_international_forced"

    invoke-static {v0, v1}, Lcom/android/phone/operator/usa/TelephonyExtension;->getSecureSettingBoolean(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/phone/operator/usa/RoamingSettings;->mButtonDomesticCdmaVoiceRoamingSetting:Landroid/preference/CheckBoxPreference;

    const-string/jumbo v3, "roam_setting_call_domestic"

    invoke-static {v3, v2}, Lcom/android/phone/operator/usa/TelephonyExtension;->getSecureSettingBoolean(Ljava/lang/String;I)Z

    move-result v3

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v3, p0, Lcom/android/phone/operator/usa/RoamingSettings;->mButtonDomesticCdmaVoiceRoamingSetting:Landroid/preference/CheckBoxPreference;

    const-string/jumbo v0, "roam_setting_call_domestic_forced"

    invoke-static {v0, v1}, Lcom/android/phone/operator/usa/TelephonyExtension;->getSecureSettingBoolean(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/phone/operator/usa/RoamingSettings;->mButtonInternationalCdmaVoiceRoamingSetting:Landroid/preference/CheckBoxPreference;

    const-string/jumbo v3, "roam_setting_call_international"

    invoke-static {v3, v1}, Lcom/android/phone/operator/usa/TelephonyExtension;->getSecureSettingBoolean(Ljava/lang/String;I)Z

    move-result v3

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/phone/operator/usa/RoamingSettings;->mButtonInternationalCdmaVoiceRoamingSetting:Landroid/preference/CheckBoxPreference;

    const-string/jumbo v3, "roam_setting_call_international_forced"

    invoke-static {v3, v1}, Lcom/android/phone/operator/usa/TelephonyExtension;->getSecureSettingBoolean(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    move v2, v1

    :cond_0
    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/phone/operator/usa/RoamingSettings;->mButtonInternationalGsmVoiceRoamingSetting:Landroid/preference/CheckBoxPreference;

    const-string/jumbo v2, "sprint_gsm_voice_roaming"

    invoke-static {v2, v1}, Lcom/android/phone/operator/usa/TelephonyExtension;->getSecureSettingBoolean(Ljava/lang/String;I)Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/phone/operator/usa/RoamingSettings;->mButtonInternationalGsmDataRoamingSetting:Landroid/preference/CheckBoxPreference;

    const-string/jumbo v2, "sprint_gsm_data_roaming"

    invoke-static {v2, v1}, Lcom/android/phone/operator/usa/TelephonyExtension;->getSecureSettingBoolean(Ljava/lang/String;I)Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    invoke-direct {p0}, Lcom/android/phone/operator/usa/RoamingSettings;->setPreferenceEnabledPhoneType()V

    const-string/jumbo v0, "enterprise_policy_new"

    invoke-virtual {p0, v0}, Lcom/android/phone/operator/usa/RoamingSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/phone/operator/usa/RoamingSettings;->mEnterpriseDeviceManager:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    iget-object v0, p0, Lcom/android/phone/operator/usa/RoamingSettings;->mEnterpriseDeviceManager:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/operator/usa/RoamingSettings;->mEnterpriseDeviceManager:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    invoke-virtual {v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getRoamingPolicy()Lcom/samsung/android/knox/restriction/RoamingPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/operator/usa/RoamingSettings;->mRoamingPolicy:Lcom/samsung/android/knox/restriction/RoamingPolicy;

    :cond_1
    iget-object v0, p0, Lcom/android/phone/operator/usa/RoamingSettings;->mRoamingPolicy:Lcom/samsung/android/knox/restriction/RoamingPolicy;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/phone/operator/usa/RoamingSettings;->mRoamingPolicy:Lcom/samsung/android/knox/restriction/RoamingPolicy;

    invoke-virtual {v0}, Lcom/samsung/android/knox/restriction/RoamingPolicy;->isRoamingDataEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/operator/usa/RoamingSettings;->mButtonDomesticCdmaDataRoamingSetting:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/phone/operator/usa/RoamingSettings;->mButtonDomesticCdmaDataRoamingSetting:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/phone/operator/usa/RoamingSettings;->mButtonInternationalCdmaDataRoamingSetting:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/phone/operator/usa/RoamingSettings;->mButtonInternationalCdmaDataRoamingSetting:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/phone/operator/usa/RoamingSettings;->mButtonInternationalGsmDataRoamingSetting:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/phone/operator/usa/RoamingSettings;->mButtonInternationalGsmDataRoamingSetting:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    :cond_2
    iget-object v0, p0, Lcom/android/phone/operator/usa/RoamingSettings;->mRoamingPolicy:Lcom/samsung/android/knox/restriction/RoamingPolicy;

    invoke-virtual {v0}, Lcom/samsung/android/knox/restriction/RoamingPolicy;->isRoamingVoiceCallsEnabled()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/phone/operator/usa/RoamingSettings;->mButtonDomesticCdmaVoiceRoamingSetting:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/phone/operator/usa/RoamingSettings;->mButtonDomesticCdmaVoiceRoamingSetting:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/phone/operator/usa/RoamingSettings;->mButtonInternationalCdmaVoiceRoamingSetting:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/phone/operator/usa/RoamingSettings;->mButtonInternationalCdmaVoiceRoamingSetting:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/phone/operator/usa/RoamingSettings;->mButtonInternationalGsmVoiceRoamingSetting:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/phone/operator/usa/RoamingSettings;->mButtonInternationalGsmVoiceRoamingSetting:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    :cond_3
    return-void

    :cond_4
    move v0, v2

    goto/16 :goto_0

    :cond_5
    move v0, v2

    goto/16 :goto_1

    :cond_6
    move v0, v2

    goto/16 :goto_2
.end method
