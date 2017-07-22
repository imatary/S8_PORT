.class public Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;
.super Landroid/preference/PreferenceActivity;
.source "MobileNetworkSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings$1;,
        Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings$2;,
        Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings$3;,
        Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings$4;,
        Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings$5;
    }
.end annotation


# instance fields
.field private enableEmergency:Z

.field private mAirplainModeEnabledObserver:Landroid/database/ContentObserver;

.field mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

.field private mButtonApnExpand:Landroid/preference/PreferenceScreen;

.field private mButtonDataEnabled:Landroid/preference/TwoStatePreference;

.field private mButtonDataNetworkMode:Landroid/preference/PreferenceScreen;

.field private mButtonDataRoam:Lcom/android/phone/RestrictedSwitchPreference;

.field private mButtonLTEDataRoam:Landroid/preference/CheckBoxPreference;

.field private mButtonNetworkStatus:Landroid/preference/ListPreference;

.field private mDataNetworkDialog:Landroid/app/Dialog;

.field private mDataNetworkObserver:Landroid/database/ContentObserver;

.field private mHandler:Landroid/os/Handler;

.field private mIsMultiIMSI:Z

.field private mMobileNetworkStatus:I

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field mStateListener:Lcom/android/phone/ia/IAInterimListener;

.field private mUm:Landroid/os/UserManager;

.field private mUseDataRoamingObserver:Landroid/database/ContentObserver;

.field private mUseLTEDataRoamingObserver:Landroid/database/ContentObserver;

.field private mXmlResId:I


# direct methods
.method static synthetic -get0(Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;)Landroid/preference/TwoStatePreference;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->mButtonDataEnabled:Landroid/preference/TwoStatePreference;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;)Lcom/android/phone/RestrictedSwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->mButtonDataRoam:Lcom/android/phone/RestrictedSwitchPreference;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;)Landroid/preference/CheckBoxPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->mButtonLTEDataRoam:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;)Landroid/preference/ListPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->mButtonNetworkStatus:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;)Landroid/app/Dialog;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->mDataNetworkDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;)I
    .locals 1

    iget v0, p0, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->mMobileNetworkStatus:I

    return v0
.end method

.method static synthetic -wrap0(Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->isAirPlaneModeOn()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->isDataRoamingEnable()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->isLteRoamingOn()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->setMobileNetwork()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;Landroid/preference/ListPreference;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->updateNetworkStatusSummary(Landroid/preference/ListPreference;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->enableEmergency:Z

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string/jumbo v1, "CscFeature_RIL_MultiIMSI"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->mIsMultiIMSI:Z

    invoke-static {}, Lcom/samsung/android/sdk/bixby/BixbyApi;->getInstance()Lcom/samsung/android/sdk/bixby/BixbyApi;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    new-instance v0, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings$1;

    invoke-direct {v0, p0}, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings$1;-><init>(Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;)V

    iput-object v0, p0, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings$2;-><init>(Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->mDataNetworkObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings$3;-><init>(Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->mUseLTEDataRoamingObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings$4;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings$4;-><init>(Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->mUseDataRoamingObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings$5;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings$5;-><init>(Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->mAirplainModeEnabledObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method private getDataWarningMessage(Z)I
    .locals 3

    const v0, 0x7f0d09b7

    const-string/jumbo v1, "feature_ktt"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v1

    const-string/jumbo v2, "CscFeature_RIL_ForceConnectMMS"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p1, :cond_0

    :goto_0
    return v0

    :cond_0
    const v0, 0x7f0d09b2

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    :goto_1
    return v0

    :cond_2
    const v0, 0x7f0d09b3

    goto :goto_1

    :cond_3
    const-string/jumbo v0, "feature_lgt"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    if-eqz p1, :cond_4

    const v0, 0x7f0d09b8

    :goto_2
    return v0

    :cond_4
    const v0, 0x7f0d09b4

    goto :goto_2

    :cond_5
    const-string/jumbo v0, "feature_skt"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    if-eqz p1, :cond_6

    const v0, 0x7f0d09b6

    :goto_3
    return v0

    :cond_6
    const v0, 0x7f0d09b1

    goto :goto_3

    :cond_7
    if-eqz p1, :cond_8

    const v0, 0x7f0d09b9

    :goto_4
    return v0

    :cond_8
    const v0, 0x7f0d09b5

    goto :goto_4
.end method

.method private isAirPlaneModeOn()Z
    .locals 1

    invoke-static {p0}, Lcom/android/phone/mobilenetworks/MobileNetworkUtils;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private isDataRoamingEnable()Z
    .locals 1

    invoke-static {}, Lcom/android/phone/mobilenetworks/boundary/SettingProxy;->getDataRoamingEnable()Z

    move-result v0

    return v0
.end method

.method public static isEmergencyMode(Landroid/content/Context;)Z
    .locals 1

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-static {p0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private isLteRoamingOn()Z
    .locals 1

    invoke-static {}, Lcom/android/phone/mobilenetworks/boundary/SettingProxy;->isLteRoamingOn()Z

    move-result v0

    return v0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "MobileNetworkSettings"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private menuSimplification(Landroid/preference/PreferenceScreen;)V
    .locals 2

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->mButtonDataEnabled:Landroid/preference/TwoStatePreference;

    check-cast v0, Landroid/preference/SwitchPreference;

    new-instance v1, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings$9;

    invoke-direct {v1, p0}, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings$9;-><init>(Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;)V

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->mButtonDataRoam:Lcom/android/phone/RestrictedSwitchPreference;

    new-instance v1, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings$10;

    invoke-direct {v1, p0}, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings$10;-><init>(Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;)V

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method private registerObservers()V
    .locals 6

    const/4 v5, 0x0

    const-string/jumbo v4, "mobile_data"

    invoke-static {v4}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const-string/jumbo v4, "data_roaming"

    invoke-static {v4}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string/jumbo v4, "lte_roaming_mode_on"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string/jumbo v4, "airplane_mode_on"

    invoke-static {v4}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v4, p0, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->mDataNetworkObserver:Landroid/database/ContentObserver;

    invoke-static {v3, v5, v4}, Lcom/android/phone/mobilenetworks/boundary/SettingProxy;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v4, p0, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->mUseDataRoamingObserver:Landroid/database/ContentObserver;

    invoke-static {v1, v5, v4}, Lcom/android/phone/mobilenetworks/boundary/SettingProxy;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v4, p0, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->mUseLTEDataRoamingObserver:Landroid/database/ContentObserver;

    invoke-static {v2, v5, v4}, Lcom/android/phone/mobilenetworks/boundary/SettingProxy;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v4, p0, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->mAirplainModeEnabledObserver:Landroid/database/ContentObserver;

    const/4 v5, 0x1

    invoke-static {v0, v5, v4}, Lcom/android/phone/mobilenetworks/boundary/SettingProxy;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method private setMobileNetwork()V
    .locals 5

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->mButtonDataEnabled:Landroid/preference/TwoStatePreference;

    invoke-virtual {v1}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    iget-object v2, p0, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->mButtonDataEnabled:Landroid/preference/TwoStatePreference;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v2, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->mDataNetworkDialog:Landroid/app/Dialog;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->mDataNetworkDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const-string/jumbo v1, "feature_kor_open"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "KOR Open do not make dialog, when setMobileDataEnabled true : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->log(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/android/phone/mobilenetworks/boundary/NetworkProxy;->setMobileDataEnable(Z)V

    :goto_1
    return-void

    :cond_2
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0}, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->getDataWarningMessage(Z)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1040014

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings$11;

    invoke-direct {v2, p0, v0}, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings$11;-><init>(Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;Z)V

    const v3, 0x1040013

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1040009

    invoke-virtual {v1, v2, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->mDataNetworkDialog:Landroid/app/Dialog;

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->mDataNetworkDialog:Landroid/app/Dialog;

    new-instance v2, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings$12;

    invoke-direct {v2, p0}, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings$12;-><init>(Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;)V

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->mDataNetworkDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    goto :goto_1
.end method

.method private showLteRoamingOnDialog(Landroid/preference/TwoStatePreference;)V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0d06fe

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const-string/jumbo v1, "mobile_newtork_style_for_skt"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f0d0c5e

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    :goto_0
    new-instance v1, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings$6;

    invoke-direct {v1, p0}, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings$6;-><init>(Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;)V

    const v2, 0x1040013

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings$7;

    invoke-direct {v1, p0, p1}, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings$7;-><init>(Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;Landroid/preference/TwoStatePreference;)V

    const v2, 0x1040009

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings$8;

    invoke-direct {v1, p0, p1}, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings$8;-><init>(Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;Landroid/preference/TwoStatePreference;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void

    :cond_0
    const-string/jumbo v1, "mobile_newtork_style_for_ktt"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x7f0d0c5f

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    :cond_1
    const v1, 0x7f0d0c5d

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_0
.end method

.method private unregisterObservers()V
    .locals 1

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->mDataNetworkObserver:Landroid/database/ContentObserver;

    invoke-static {v0}, Lcom/android/phone/mobilenetworks/boundary/SettingProxy;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->mUseDataRoamingObserver:Landroid/database/ContentObserver;

    invoke-static {v0}, Lcom/android/phone/mobilenetworks/boundary/SettingProxy;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->mUseLTEDataRoamingObserver:Landroid/database/ContentObserver;

    invoke-static {v0}, Lcom/android/phone/mobilenetworks/boundary/SettingProxy;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->mAirplainModeEnabledObserver:Landroid/database/ContentObserver;

    invoke-static {v0}, Lcom/android/phone/mobilenetworks/boundary/SettingProxy;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method private updateByDevicePolicy()V
    .locals 7

    const/4 v4, 0x0

    const-string/jumbo v5, "enterprise_policy_new"

    invoke-virtual {p0, v5}, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/EnterpriseDeviceManager;

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/android/phone/mobilenetworks/MobileNetworkUtils;->isRoamingArea(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->mButtonDataEnabled:Landroid/preference/TwoStatePreference;

    invoke-virtual {v5, v4}, Landroid/preference/TwoStatePreference;->setEnabled(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getRestrictionPolicy()Lcom/samsung/android/knox/restriction/RestrictionPolicy;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->isCellularDataAllowed()Z

    move-result v1

    invoke-virtual {v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getPhoneRestrictionPolicy()Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->checkEnableUseOfPacketData(Z)Z

    move-result v2

    invoke-virtual {v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getRoamingPolicy()Lcom/samsung/android/knox/restriction/RoamingPolicy;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/knox/restriction/RoamingPolicy;->isRoamingDataEnabled()Z

    move-result v3

    iget-object v5, p0, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->mButtonDataEnabled:Landroid/preference/TwoStatePreference;

    invoke-virtual {p0}, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/android/phone/mobilenetworks/MobileNetworkUtils;->isRoamingArea(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_5

    move v2, v4

    :cond_2
    :goto_1
    invoke-virtual {v5, v2}, Landroid/preference/TwoStatePreference;->setEnabled(Z)V

    iget-object v5, p0, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->mButtonDataRoam:Lcom/android/phone/RestrictedSwitchPreference;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->mUm:Landroid/os/UserManager;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->mUm:Landroid/os/UserManager;

    const-string/jumbo v6, "no_data_roaming"

    invoke-virtual {v5, v6}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    :cond_3
    :goto_2
    if-nez v3, :cond_4

    invoke-static {v4}, Lcom/android/phone/mobilenetworks/boundary/PhoneProxy;->setDataRoamingEnabled(Z)V

    iget-object v5, p0, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->mButtonDataRoam:Lcom/android/phone/RestrictedSwitchPreference;

    invoke-virtual {v5, v4}, Lcom/android/phone/RestrictedSwitchPreference;->setChecked(Z)V

    :cond_4
    const-string/jumbo v4, "set DataroamEnabled by MDM"

    invoke-static {v4}, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->log(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    if-nez v1, :cond_2

    move v2, v4

    goto :goto_1

    :cond_6
    iget-object v5, p0, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->mButtonDataRoam:Lcom/android/phone/RestrictedSwitchPreference;

    invoke-virtual {v5, v3}, Lcom/android/phone/RestrictedSwitchPreference;->setEnabled(Z)V

    goto :goto_2
.end method

.method private updateDataNetworkModeDependency()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->mButtonDataNetworkMode:Landroid/preference/PreferenceScreen;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string/jumbo v0, "feature_lgt"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "feature_skt"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->mButtonDataNetworkMode:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setDependency(Ljava/lang/String;)V

    :cond_2
    const-string/jumbo v0, "feature_lgt"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/android/phone/mobilenetworks/MobileNetworkUtils;->isDataNetworkModeVisible()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->mButtonDataNetworkMode:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setDependency(Ljava/lang/String;)V

    :cond_3
    const-string/jumbo v0, "feature_ktt"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->mButtonDataNetworkMode:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setDependency(Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method private updateNetworkStatusSummary(Landroid/preference/ListPreference;)V
    .locals 1

    invoke-virtual {p1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/phone/mobilenetworks/boundary/PhoneProxy;->setDataRoamingEnabled(Z)V

    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const-string/jumbo v0, "config_hide_status_bar"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/android/phone/PhoneUtilsCommon;->setHideLandscapeIndicatorBar(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9

    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/android/phone/mobilenetworks/MobileNetworkUtils;->isMonkeyRunning()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->finish()V

    :cond_0
    const v2, 0x7f070047

    iput v2, p0, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->mXmlResId:I

    iget v2, p0, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->mXmlResId:I

    invoke-virtual {p0, v2}, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->addPreferencesFromResource(I)V

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    const-string/jumbo v2, "user"

    invoke-virtual {p0, v2}, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    iput-object v2, p0, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->mUm:Landroid/os/UserManager;

    invoke-virtual {p0}, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-static {p0}, Lcom/android/phone/mobilenetworks/MobileNetworkUtils;->removePreferenceActivityPadding(Landroid/preference/PreferenceActivity;)V

    const-string/jumbo v2, "button_data_enabled_key"

    invoke-static {v1, v2}, Lcom/android/phone/mobilenetworks/MobileNetworkUtils;->findPreference(Landroid/preference/PreferenceScreen;Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/TwoStatePreference;

    iput-object v2, p0, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->mButtonDataEnabled:Landroid/preference/TwoStatePreference;

    const-string/jumbo v2, "button_roaming_key"

    invoke-static {v1, v2}, Lcom/android/phone/mobilenetworks/MobileNetworkUtils;->findPreference(Landroid/preference/PreferenceScreen;Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/phone/RestrictedSwitchPreference;

    iput-object v2, p0, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->mButtonDataRoam:Lcom/android/phone/RestrictedSwitchPreference;

    invoke-direct {p0, v1}, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->menuSimplification(Landroid/preference/PreferenceScreen;)V

    const-string/jumbo v2, "button_lte_roaming_key"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->mButtonLTEDataRoam:Landroid/preference/CheckBoxPreference;

    const-string/jumbo v2, "button_apn_key"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceScreen;

    iput-object v2, p0, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->mButtonApnExpand:Landroid/preference/PreferenceScreen;

    const-string/jumbo v2, "button_data_network_mode_key"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceScreen;

    iput-object v2, p0, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->mButtonDataNetworkMode:Landroid/preference/PreferenceScreen;

    const-string/jumbo v2, "button_network_status_key"

    invoke-virtual {p0, v2}, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/ListPreference;

    iput-object v2, p0, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->mButtonNetworkStatus:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "button_carrier_sel_key"

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v5, "com.samsung.android.intent.action.SELECT_CARRIER"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v3, v4, v6}, Lcom/android/phone/mobilenetworks/MobileNetworkUtils;->updatePreferenceToSpecificActivity(Landroid/content/Context;Landroid/preference/Preference;Landroid/content/Intent;I)Z

    invoke-virtual {p0}, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, v8}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    invoke-virtual {v0, v6}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    invoke-virtual {v0, v8}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    invoke-virtual {v0, v7}, Landroid/app/ActionBar;->setIcon(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, v6}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    :cond_1
    invoke-direct {p0}, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->updateDataNetworkModeDependency()V

    iget-object v2, p0, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->mButtonNetworkStatus:Landroid/preference/ListPreference;

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/android/phone/mobilenetworks/boundary/SettingProxy;->getNetworkStatus()I

    move-result v2

    iput v2, p0, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->mMobileNetworkStatus:I

    iget-object v2, p0, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->mButtonNetworkStatus:Landroid/preference/ListPreference;

    iget v3, p0, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->mMobileNetworkStatus:I

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setValueIndex(I)V

    iget-object v2, p0, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->mButtonNetworkStatus:Landroid/preference/ListPreference;

    invoke-virtual {v2, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v2, p0, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->mButtonNetworkStatus:Landroid/preference/ListPreference;

    invoke-direct {p0, v2}, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->updateNetworkStatusSummary(Landroid/preference/ListPreference;)V

    :cond_2
    invoke-static {}, Lcom/android/phone/mobilenetworks/MobileNetworksManager;->getInstance()Lcom/android/phone/mobilenetworks/MobileNetworksManager;

    move-result-object v2

    iget v3, p0, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->mXmlResId:I

    invoke-virtual {v2, v1, v3}, Lcom/android/phone/mobilenetworks/MobileNetworksManager;->removePreferences(Landroid/preference/PreferenceScreen;I)V

    const-string/jumbo v2, "config_hide_status_bar"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {p0}, Lcom/android/phone/PhoneUtilsCommon;->setHideLandscapeIndicatorBar(Landroid/app/Activity;)V

    :cond_3
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->unregisterObservers()V

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->mButtonDataRoam:Lcom/android/phone/RestrictedSwitchPreference;

    invoke-static {}, Lcom/android/phone/mobilenetworks/boundary/PhoneProxy;->getDataRoamingEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/phone/RestrictedSwitchPreference;->setChecked(Z)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->finish()V

    const/4 v1, 0x1

    return v1

    :cond_0
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    return v1
.end method

.method protected onPause()V
    .locals 2

    invoke-direct {p0}, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->unregisterObservers()V

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    const-string/jumbo v0, "support_bixby"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/bixby/BixbyApi;->clearInterimStateListener()V

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    const-string/jumbo v1, "MobileNetworks"

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/bixby/BixbyApi;->logExitState(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->mStateListener:Lcom/android/phone/ia/IAInterimListener;

    invoke-interface {v0}, Lcom/android/phone/ia/IAInterimListener;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->mStateListener:Lcom/android/phone/ia/IAInterimListener;

    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 7

    const/4 v6, 0x1

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->mButtonNetworkStatus:Landroid/preference/ListPreference;

    if-ne p1, v3, :cond_1

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iget v3, p0, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->mMobileNetworkStatus:I

    if-ne v3, v2, :cond_0

    return v6

    :cond_0
    iput v2, p0, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->mMobileNetworkStatus:I

    const-string/jumbo v3, "MobileNetworkSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "New mobile network status: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->mMobileNetworkStatus:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v3, p0, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->mMobileNetworkStatus:I

    iget-object v4, p0, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x64

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/phone/mobilenetworks/boundary/PhoneProxy;->invokeChangeNetworkStatusWithoutQCRIL(ILandroid/os/Message;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v3, "MobileNetworkSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "invokeChangeNetworkStatusWithoutQCRIL has Exception. curernt status is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->mMobileNetworkStatus:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v3, "MobileNetworkSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "New status is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->mMobileNetworkStatus:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_1
    const/4 v3, 0x0

    return v3
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "preference: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->log(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->mButtonDataRoam:Lcom/android/phone/RestrictedSwitchPreference;

    if-ne p2, v3, :cond_3

    iget-object v3, p0, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->mButtonDataRoam:Lcom/android/phone/RestrictedSwitchPreference;

    invoke-virtual {v3}, Lcom/android/phone/RestrictedSwitchPreference;->isChecked()Z

    move-result v3

    if-nez v3, :cond_2

    const-string/jumbo v3, "feature_skt"

    invoke-static {v3}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "feature_ktt"

    invoke-static {v3}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "feature_lgt"

    invoke-static {v3}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.SKT_ROAMING_DATA_POPUP"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->sendBroadcast(Landroid/content/Intent;)V

    :goto_0
    return v5

    :cond_1
    const-string/jumbo v3, "KOR OPEN do not make dialog, DataRoamingEnabled : true"

    invoke-static {v3}, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->log(Ljava/lang/String;)V

    invoke-static {v6}, Lcom/android/phone/mobilenetworks/boundary/PhoneProxy;->setDataRoamingEnabled(Z)V

    goto :goto_0

    :cond_2
    invoke-static {v5}, Lcom/android/phone/mobilenetworks/boundary/PhoneProxy;->setDataRoamingEnabled(Z)V

    return v5

    :cond_3
    const-string/jumbo v3, "button_data_enabled_key"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    return v6

    :cond_4
    const-string/jumbo v3, "button_lte_roaming_key"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->mButtonLTEDataRoam:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->mButtonLTEDataRoam:Landroid/preference/CheckBoxPreference;

    invoke-direct {p0, v3}, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->showLteRoamingOnDialog(Landroid/preference/TwoStatePreference;)V

    :goto_1
    return v6

    :cond_5
    invoke-static {v5}, Lcom/android/phone/mobilenetworks/boundary/SettingProxy;->setLTEModeOn(Z)V

    goto :goto_1

    :cond_6
    const-string/jumbo v3, "button_apn_key"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v3, "android.settings.APN_SETTINGS"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, ":settings:show_fragment_as_subsetting"

    invoke-virtual {v1, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->startActivity(Landroid/content/Intent;)V

    return v6

    :cond_7
    const-string/jumbo v3, "button_network_status_key"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-static {}, Lcom/android/phone/mobilenetworks/boundary/SettingProxy;->getNetworkStatus()I

    move-result v3

    iput v3, p0, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->mMobileNetworkStatus:I

    iget-object v3, p0, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->mButtonNetworkStatus:Landroid/preference/ListPreference;

    iget v4, p0, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->mMobileNetworkStatus:I

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setValueIndex(I)V

    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v3

    return v3

    :cond_8
    const-string/jumbo v3, "button_carrier_sel_key"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    return v5

    :cond_9
    invoke-virtual {p1, v5}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    return v5
.end method

.method protected onResume()V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    const v2, 0x7f0d020a

    invoke-virtual {p0, v2}, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/utils/SALogging;->sendSAViewFlowLog(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->registerObservers()V

    invoke-direct {p0}, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->isAirPlaneModeOn()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0d0c55

    invoke-static {v2, v3, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->finish()V

    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    iget-object v2, p0, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->mButtonDataRoam:Lcom/android/phone/RestrictedSwitchPreference;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->mButtonDataRoam:Lcom/android/phone/RestrictedSwitchPreference;

    invoke-static {}, Lcom/android/phone/mobilenetworks/boundary/PhoneProxy;->getDataRoamingEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/phone/RestrictedSwitchPreference;->setChecked(Z)V

    :cond_1
    iget-object v2, p0, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->mButtonLTEDataRoam:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->mButtonLTEDataRoam:Landroid/preference/CheckBoxPreference;

    invoke-direct {p0}, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->isLteRoamingOn()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    invoke-static {}, Lcom/android/phone/mobilenetworks/boundary/SettingProxy;->getDataRoamingEnable()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->mIsMultiIMSI:Z

    invoke-static {v2}, Lcom/android/phone/mobilenetworks/MobileNetworkUtils;->isExceptionalUSIM(Z)Z

    move-result v2

    if-eqz v2, :cond_e

    :cond_2
    iget-object v2, p0, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->mButtonLTEDataRoam:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    :cond_3
    :goto_0
    iget-object v2, p0, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->mButtonDataEnabled:Landroid/preference/TwoStatePreference;

    if-eqz v2, :cond_4

    const-string/jumbo v2, "MobileNetworkSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onResume : mButtonDataEnabled setChecked : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/android/phone/mobilenetworks/boundary/NetworkProxy;->getMobileDataEnabled()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->mButtonDataEnabled:Landroid/preference/TwoStatePreference;

    invoke-static {}, Lcom/android/phone/mobilenetworks/boundary/NetworkProxy;->getMobileDataEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    :cond_4
    const-string/jumbo v2, "feature_ktt"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {p0}, Lcom/android/phone/mobilenetworks/MobileNetworkUtils;->isRoamingArea(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_f

    invoke-static {}, Lcom/android/phone/mobilenetworks/MobileNetworkUtils;->isKtSim()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-static {}, Lcom/android/phone/mobilenetworks/MobileNetworkUtils;->isSktSim()Z

    move-result v2

    if-eqz v2, :cond_f

    :cond_5
    :goto_1
    const-string/jumbo v2, "feature_kor_open"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string/jumbo v2, "feature_ktt"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string/jumbo v2, "feature_skt"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    :cond_6
    iget-object v2, p0, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->mButtonDataNetworkMode:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/mobilenetworks/MobileNetworkUtils;->isRoamingArea(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_7

    move v0, v1

    :cond_7
    invoke-virtual {v2, v0}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    :cond_8
    invoke-direct {p0}, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->updateByDevicePolicy()V

    const-string/jumbo v0, "data_roaming_style_for_kor"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/mobilenetworks/MobileNetworkUtils;->isRoamingArea(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_10

    :cond_9
    :goto_2
    iget-object v0, p0, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->mButtonDataRoam:Lcom/android/phone/RestrictedSwitchPreference;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->mButtonDataRoam:Lcom/android/phone/RestrictedSwitchPreference;

    invoke-static {}, Lcom/android/phone/mobilenetworks/boundary/PhoneProxy;->getDataRoamingEnabled()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/phone/RestrictedSwitchPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->mButtonDataRoam:Lcom/android/phone/RestrictedSwitchPreference;

    invoke-virtual {v0, v1}, Lcom/android/phone/RestrictedSwitchPreference;->setDisabledByAdmin(Z)V

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->mButtonDataRoam:Lcom/android/phone/RestrictedSwitchPreference;

    invoke-virtual {v0}, Lcom/android/phone/RestrictedSwitchPreference;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_a

    const-string/jumbo v0, "no_data_roaming"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-static {p0, v0, v2}, Lcom/android/settingslib/RestrictedLockUtils;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->mButtonDataRoam:Lcom/android/phone/RestrictedSwitchPreference;

    invoke-virtual {v0, v1}, Lcom/android/phone/RestrictedSwitchPreference;->setEnabled(Z)V

    :cond_a
    :goto_3
    const-string/jumbo v0, "support_bixby"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    new-instance v0, Lcom/android/phone/ia/MobileNetworkSettingsStateListener;

    invoke-direct {v0, p0}, Lcom/android/phone/ia/MobileNetworkSettingsStateListener;-><init>(Landroid/preference/PreferenceActivity;)V

    iput-object v0, p0, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->mStateListener:Lcom/android/phone/ia/IAInterimListener;

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->mStateListener:Lcom/android/phone/ia/IAInterimListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/bixby/BixbyApi;->setInterimStateListener(Lcom/samsung/android/sdk/bixby/BixbyApi$InterimStateListener;)V

    invoke-static {}, Lcom/android/phone/ia/IAUtil;->isIAExecutingState()Z

    move-result v0

    if-eqz v0, :cond_c

    const-string/jumbo v0, "MobileNetworks"

    invoke-static {}, Lcom/android/phone/ia/IAUtil;->getIAExecutingStateId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-static {}, Lcom/android/phone/ia/IAUtil;->isIAExecutingLastState()Z

    move-result v0

    if-eqz v0, :cond_b

    const-string/jumbo v0, "MobileNetworks"

    invoke-static {v0}, Lcom/android/phone/ia/IAUtil;->requestNLG(Ljava/lang/String;)V

    :cond_b
    sget-object v0, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-static {v0}, Lcom/android/phone/ia/IAUtil;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    :cond_c
    iget-object v0, p0, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    const-string/jumbo v1, "MobileNetworks"

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/bixby/BixbyApi;->logEnterState(Ljava/lang/String;)V

    :cond_d
    return-void

    :cond_e
    iget-object v2, p0, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->mButtonLTEDataRoam:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto/16 :goto_0

    :cond_f
    iget-object v2, p0, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->mButtonNetworkStatus:Landroid/preference/ListPreference;

    invoke-virtual {v2, v1}, Landroid/preference/ListPreference;->setEnabled(Z)V

    goto/16 :goto_1

    :cond_10
    iget-object v0, p0, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->mButtonDataRoam:Lcom/android/phone/RestrictedSwitchPreference;

    invoke-virtual {v0, v1}, Lcom/android/phone/RestrictedSwitchPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->mButtonLTEDataRoam:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->mButtonLTEDataRoam:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto/16 :goto_2

    :cond_11
    iget-object v0, p0, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->mButtonDataRoam:Lcom/android/phone/RestrictedSwitchPreference;

    const-string/jumbo v1, "no_data_roaming"

    invoke-virtual {v0, v1}, Lcom/android/phone/RestrictedSwitchPreference;->checkRestrictionAndSetDisabled(Ljava/lang/String;)V

    goto :goto_3
.end method
