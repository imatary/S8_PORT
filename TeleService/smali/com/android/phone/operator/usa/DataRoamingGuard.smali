.class public Lcom/android/phone/operator/usa/DataRoamingGuard;
.super Landroid/app/Activity;
.source "DataRoamingGuard.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/operator/usa/DataRoamingGuard$1;,
        Lcom/android/phone/operator/usa/DataRoamingGuard$2;,
        Lcom/android/phone/operator/usa/DataRoamingGuard$3;,
        Lcom/android/phone/operator/usa/DataRoamingGuard$4;,
        Lcom/android/phone/operator/usa/DataRoamingGuard$RoamHandler;
    }
.end annotation


# instance fields
.field private mAirplainModeEnabledObserver:Landroid/database/ContentObserver;

.field private mCancelListener:Landroid/view/View$OnClickListener;

.field private mDataRoamingSettingsExtra:Ljava/lang/String;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mRoamHandler:Lcom/android/phone/operator/usa/DataRoamingGuard$RoamHandler;

.field private mRoamListener:Landroid/view/View$OnClickListener;


# direct methods
.method static synthetic -wrap0(Lcom/android/phone/operator/usa/DataRoamingGuard;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/operator/usa/DataRoamingGuard;->setCdmaRoaming()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/phone/operator/usa/DataRoamingGuard;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/operator/usa/DataRoamingGuard;->setSecureRoamGuardDataValue(I)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/phone/operator/usa/DataRoamingGuard;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/operator/usa/DataRoamingGuard;->setSecureRoamSettingCallValue(I)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/phone/operator/usa/DataRoamingGuard;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/operator/usa/DataRoamingGuard;->setSecureRoamSettingDataValue(I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Lcom/android/phone/operator/usa/DataRoamingGuard$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/phone/operator/usa/DataRoamingGuard$1;-><init>(Lcom/android/phone/operator/usa/DataRoamingGuard;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/phone/operator/usa/DataRoamingGuard;->mAirplainModeEnabledObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/android/phone/operator/usa/DataRoamingGuard$2;

    invoke-direct {v0, p0}, Lcom/android/phone/operator/usa/DataRoamingGuard$2;-><init>(Lcom/android/phone/operator/usa/DataRoamingGuard;)V

    iput-object v0, p0, Lcom/android/phone/operator/usa/DataRoamingGuard;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    new-instance v0, Lcom/android/phone/operator/usa/DataRoamingGuard$3;

    invoke-direct {v0, p0}, Lcom/android/phone/operator/usa/DataRoamingGuard$3;-><init>(Lcom/android/phone/operator/usa/DataRoamingGuard;)V

    iput-object v0, p0, Lcom/android/phone/operator/usa/DataRoamingGuard;->mCancelListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/phone/operator/usa/DataRoamingGuard$4;

    invoke-direct {v0, p0}, Lcom/android/phone/operator/usa/DataRoamingGuard$4;-><init>(Lcom/android/phone/operator/usa/DataRoamingGuard;)V

    iput-object v0, p0, Lcom/android/phone/operator/usa/DataRoamingGuard;->mRoamListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method private setCdmaRoaming()V
    .locals 3

    iget-object v1, p0, Lcom/android/phone/operator/usa/DataRoamingGuard;->mRoamHandler:Lcom/android/phone/operator/usa/DataRoamingGuard$RoamHandler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/android/phone/operator/usa/DataRoamingGuard$RoamHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/operator/usa/DataRoamingGuard;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v1, v0}, Lcom/android/phone/operator/usa/TelephonyExtension;->setCdmaRoaming(Lcom/android/internal/telephony/Phone;Landroid/os/Message;)V

    return-void
.end method

.method private setLTECdmaRoaming()V
    .locals 3

    iget-object v1, p0, Lcom/android/phone/operator/usa/DataRoamingGuard;->mRoamHandler:Lcom/android/phone/operator/usa/DataRoamingGuard$RoamHandler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/android/phone/operator/usa/DataRoamingGuard$RoamHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/operator/usa/DataRoamingGuard;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v1, v0}, Lcom/android/phone/operator/usa/TelephonyExtension;->setLTECdmaRoaming(Lcom/android/internal/telephony/Phone;Landroid/os/Message;)V

    return-void
.end method

.method private setSecureRoamGuardDataValue(I)V
    .locals 3

    invoke-static {}, Lcom/android/phone/mobilenetworks/boundary/PhoneProxy;->getPhoneType()I

    move-result v0

    iget-object v1, p0, Lcom/android/phone/operator/usa/DataRoamingGuard;->mDataRoamingSettingsExtra:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/phone/operator/usa/DataRoamingGuard;->mDataRoamingSettingsExtra:Ljava/lang/String;

    const-string/jumbo v2, "domestic_cdma_data_roaming_setting_extra"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "roam_guard_data_domestic"

    invoke-static {v1, p1}, Lcom/android/phone/operator/usa/TelephonyExtension;->setSecureSettingValue(Ljava/lang/String;I)V

    const-string/jumbo v1, "lte_roaming_enhancement"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "roam_guard_data_lte"

    invoke-static {v1, p1}, Lcom/android/phone/operator/usa/TelephonyExtension;->setSecureSettingValue(Ljava/lang/String;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/phone/operator/usa/DataRoamingGuard;->mDataRoamingSettingsExtra:Ljava/lang/String;

    const-string/jumbo v2, "international_cdma_data_roaming_setting_extra"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "roam_guard_data_international"

    invoke-static {v1, p1}, Lcom/android/phone/operator/usa/TelephonyExtension;->setSecureSettingValue(Ljava/lang/String;I)V

    const-string/jumbo v1, "lte_roaming_enhancement"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "roam_guard_data_lte_international"

    invoke-static {v1, p1}, Lcom/android/phone/operator/usa/TelephonyExtension;->setSecureSettingValue(Ljava/lang/String;I)V

    :cond_2
    const-string/jumbo v1, "sprint_gsm_data_guard"

    invoke-static {v1, p1}, Lcom/android/phone/operator/usa/TelephonyExtension;->setSecureSettingValue(Ljava/lang/String;I)V

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/android/phone/operator/usa/TelephonyExtension;->isDomesticRoamingInService()Z

    move-result v1

    if-nez v1, :cond_4

    const-string/jumbo v1, "lte_roaming_enhancement"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {}, Lcom/android/phone/mobilenetworks/boundary/PhoneProxy;->IsDomesticLteRoaming()Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_4
    const-string/jumbo v1, "roam_guard_data_domestic"

    invoke-static {v1, p1}, Lcom/android/phone/operator/usa/TelephonyExtension;->setSecureSettingValue(Ljava/lang/String;I)V

    const-string/jumbo v1, "lte_roaming_enhancement"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "roam_guard_data_lte"

    invoke-static {v1, p1}, Lcom/android/phone/operator/usa/TelephonyExtension;->setSecureSettingValue(Ljava/lang/String;I)V

    goto :goto_0

    :cond_5
    invoke-static {}, Lcom/android/phone/operator/usa/TelephonyExtension;->isInternationalRoamingInService()Z

    move-result v1

    if-nez v1, :cond_6

    const-string/jumbo v1, "lte_roaming_enhancement"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/phone/mobilenetworks/boundary/PhoneProxy;->IsInternationalLteRoaming()Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_6
    const-string/jumbo v1, "roam_guard_data_international"

    invoke-static {v1, p1}, Lcom/android/phone/operator/usa/TelephonyExtension;->setSecureSettingValue(Ljava/lang/String;I)V

    const-string/jumbo v1, "lte_roaming_enhancement"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string/jumbo v1, "roam_guard_data_lte_international"

    invoke-static {v1, p1}, Lcom/android/phone/operator/usa/TelephonyExtension;->setSecureSettingValue(Ljava/lang/String;I)V

    :cond_7
    const-string/jumbo v1, "sprint_gsm_data_guard"

    invoke-static {v1, p1}, Lcom/android/phone/operator/usa/TelephonyExtension;->setSecureSettingValue(Ljava/lang/String;I)V

    goto/16 :goto_0
.end method

.method private setSecureRoamSettingCallValue(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/phone/operator/usa/DataRoamingGuard;->mDataRoamingSettingsExtra:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/operator/usa/DataRoamingGuard;->mDataRoamingSettingsExtra:Ljava/lang/String;

    const-string/jumbo v1, "domestic_cdma_data_roaming_setting_extra"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "roam_setting_call_domestic"

    invoke-static {v0, p1}, Lcom/android/phone/operator/usa/TelephonyExtension;->setSecureSettingValue(Ljava/lang/String;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/android/phone/operator/usa/TelephonyExtension;->isDomesticRoamingInService()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "roam_setting_call_domestic"

    invoke-static {v0, p1}, Lcom/android/phone/operator/usa/TelephonyExtension;->setSecureSettingValue(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private setSecureRoamSettingDataValue(I)V
    .locals 3

    invoke-static {}, Lcom/android/phone/mobilenetworks/boundary/PhoneProxy;->getPhoneType()I

    move-result v0

    iget-object v1, p0, Lcom/android/phone/operator/usa/DataRoamingGuard;->mDataRoamingSettingsExtra:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/operator/usa/DataRoamingGuard;->mDataRoamingSettingsExtra:Ljava/lang/String;

    const-string/jumbo v2, "domestic_cdma_data_roaming_setting_extra"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "roam_setting_data_domestic"

    invoke-static {v1, p1}, Lcom/android/phone/operator/usa/TelephonyExtension;->setSecureSettingValue(Ljava/lang/String;I)V

    const-string/jumbo v1, "lte_roaming_enhancement"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "roam_setting_data_lte"

    invoke-static {v1, p1}, Lcom/android/phone/operator/usa/TelephonyExtension;->setSecureSettingValue(Ljava/lang/String;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/android/phone/operator/usa/TelephonyExtension;->isDomesticRoamingInService()Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v1, "lte_roaming_enhancement"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/phone/mobilenetworks/boundary/PhoneProxy;->IsDomesticLteRoaming()Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    const-string/jumbo v1, "roam_setting_data_domestic"

    invoke-static {v1, p1}, Lcom/android/phone/operator/usa/TelephonyExtension;->setSecureSettingValue(Ljava/lang/String;I)V

    const-string/jumbo v1, "lte_roaming_enhancement"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string/jumbo v1, "roam_setting_data_lte"

    invoke-static {v1, p1}, Lcom/android/phone/operator/usa/TelephonyExtension;->setSecureSettingValue(Ljava/lang/String;I)V

    :cond_3
    const-string/jumbo v1, "lte_roaming_enhancement"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/phone/operator/usa/DataRoamingGuard;->setLTECdmaRoaming()V

    goto :goto_0
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const-string/jumbo v0, "config_hide_status_bar"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/android/phone/PhoneUtilsCommon;->setHideLandscapeIndicatorBar(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9

    const/4 v8, 0x0

    const/4 v7, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string/jumbo v5, "DataRoamingGuard"

    const-string/jumbo v6, "onCreate"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const v5, 0x7f04002f

    invoke-virtual {p0, v5}, Lcom/android/phone/operator/usa/DataRoamingGuard;->setContentView(I)V

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    iput-object v5, p0, Lcom/android/phone/operator/usa/DataRoamingGuard;->mPhone:Lcom/android/internal/telephony/Phone;

    const-string/jumbo v5, "roaming_setting_guard_data_only"

    invoke-static {v5}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    new-instance v5, Lcom/android/phone/operator/usa/DataRoamingGuard$RoamHandler;

    invoke-direct {v5, v7}, Lcom/android/phone/operator/usa/DataRoamingGuard$RoamHandler;-><init>(Lcom/android/phone/operator/usa/DataRoamingGuard$RoamHandler;)V

    iput-object v5, p0, Lcom/android/phone/operator/usa/DataRoamingGuard;->mRoamHandler:Lcom/android/phone/operator/usa/DataRoamingGuard$RoamHandler;

    invoke-virtual {p0}, Lcom/android/phone/operator/usa/DataRoamingGuard;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string/jumbo v6, "data_roaming_settings_extra"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/operator/usa/DataRoamingGuard;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string/jumbo v6, "data_roaming_settings_extra"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/phone/operator/usa/DataRoamingGuard;->mDataRoamingSettingsExtra:Ljava/lang/String;

    :cond_0
    :goto_0
    const v5, 0x7f1000a9

    invoke-virtual {p0, v5}, Lcom/android/phone/operator/usa/DataRoamingGuard;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v5, 0x7f1000ab

    invoke-virtual {p0, v5}, Lcom/android/phone/operator/usa/DataRoamingGuard;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iget-object v5, p0, Lcom/android/phone/operator/usa/DataRoamingGuard;->mRoamListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v5, 0x7f100026

    invoke-virtual {p0, v5}, Lcom/android/phone/operator/usa/DataRoamingGuard;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iget-object v5, p0, Lcom/android/phone/operator/usa/DataRoamingGuard;->mCancelListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Lcom/android/phone/mobilenetworks/boundary/PhoneProxy;->getPhoneType()I

    move-result v3

    const-string/jumbo v5, "roaming_setting_guard_data_only"

    invoke-static {v5}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/android/phone/operator/usa/DataRoamingGuard;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lcom/android/phone/mobilenetworks/boundary/NetworkProxy;->listen(Landroid/telephony/PhoneStateListener;I)V

    :cond_1
    invoke-static {}, Lcom/android/phone/operator/usa/TelephonyExtension;->isInternationalRoamingInService()Z

    move-result v5

    if-eqz v5, :cond_6

    const v5, 0x7f0d082d

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(I)V

    const v5, 0x7f0d0830

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setText(I)V

    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/android/phone/operator/usa/DataRoamingGuard;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0, v8}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_3
    const-string/jumbo v5, "config_hide_status_bar"

    invoke-static {v5}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-static {p0}, Lcom/android/phone/PhoneUtilsCommon;->setHideLandscapeIndicatorBar(Landroid/app/Activity;)V

    :cond_4
    return-void

    :cond_5
    const-string/jumbo v5, "lte_roaming_enhancement"

    invoke-static {v5}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    new-instance v5, Lcom/android/phone/operator/usa/DataRoamingGuard$RoamHandler;

    invoke-direct {v5, v7}, Lcom/android/phone/operator/usa/DataRoamingGuard$RoamHandler;-><init>(Lcom/android/phone/operator/usa/DataRoamingGuard$RoamHandler;)V

    iput-object v5, p0, Lcom/android/phone/operator/usa/DataRoamingGuard;->mRoamHandler:Lcom/android/phone/operator/usa/DataRoamingGuard$RoamHandler;

    goto :goto_0

    :cond_6
    const-string/jumbo v5, "global_network_cdma_gsm_enable_for_spr"

    invoke-static {v5}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string/jumbo v5, "data_roaming"

    invoke-static {v5, v8}, Lcom/android/phone/operator/usa/TelephonyExtension;->setSecureSettingValue(Ljava/lang/String;I)V

    const-string/jumbo v5, "DataRoamingGuard"

    const-string/jumbo v6, "onCreate - domestic roaming guard : set DATA_ROAMING into false"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    invoke-static {}, Lcom/android/phone/operator/usa/TelephonyExtensionManager;->getInstance()Lcom/android/phone/operator/usa/TelephonyExtensionManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/phone/operator/usa/TelephonyExtensionManager;->setDataRoamingGuardActivity(Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/android/phone/operator/usa/DataRoamingGuard;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/phone/mobilenetworks/boundary/NetworkProxy;->listen(Landroid/telephony/PhoneStateListener;I)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    :goto_0
    const/4 v0, 0x1

    return v0

    :pswitch_0
    invoke-direct {p0, v1}, Lcom/android/phone/operator/usa/DataRoamingGuard;->setSecureRoamSettingDataValue(I)V

    const-string/jumbo v0, "roaming_setting_guard_data_only"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v1}, Lcom/android/phone/operator/usa/DataRoamingGuard;->setSecureRoamSettingCallValue(I)V

    invoke-direct {p0}, Lcom/android/phone/operator/usa/DataRoamingGuard;->setCdmaRoaming()V

    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/operator/usa/DataRoamingGuard;->finish()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    iget-object v0, p0, Lcom/android/phone/operator/usa/DataRoamingGuard;->mAirplainModeEnabledObserver:Landroid/database/ContentObserver;

    invoke-static {v0}, Lcom/android/phone/mobilenetworks/boundary/SettingProxy;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method protected onResume()V
    .locals 3

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    const-string/jumbo v0, "airplane_mode_on"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/operator/usa/DataRoamingGuard;->mAirplainModeEnabledObserver:Landroid/database/ContentObserver;

    const/4 v2, 0x1

    invoke-static {v0, v2, v1}, Lcom/android/phone/mobilenetworks/boundary/SettingProxy;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-static {}, Lcom/android/phone/operator/usa/TelephonyExtensionManager;->getInstance()Lcom/android/phone/operator/usa/TelephonyExtensionManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/phone/operator/usa/TelephonyExtensionManager;->setDataRoamingGuardActivity(Landroid/app/Activity;)V

    return-void
.end method
