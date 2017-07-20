.class public Lcom/android/phone/MobileNetworkSettings;
.super Landroid/preference/PreferenceActivity;
.source "MobileNetworkSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/MobileNetworkSettings$-void_VolteCallSettingTreeClick_boolean_enabled_android_preference_SwitchPreference_mVolteCall_LambdaImpl0;,
        Lcom/android/phone/MobileNetworkSettings$-void_registerIntentReceivers__LambdaImpl0;,
        Lcom/android/phone/MobileNetworkSettings$-void_registerIntentReceivers__LambdaImpl1;,
        Lcom/android/phone/MobileNetworkSettings$-void_registerIntentReceivers__LambdaImpl2;,
        Lcom/android/phone/MobileNetworkSettings$-void_registerIntentReceivers__LambdaImpl3;,
        Lcom/android/phone/MobileNetworkSettings$-void_registerIntentReceivers__LambdaImpl4;,
        Lcom/android/phone/MobileNetworkSettings$-void_registerIntentReceivers__LambdaImpl5;,
        Lcom/android/phone/MobileNetworkSettings$-void_registerIntentReceivers__LambdaImpl6;,
        Lcom/android/phone/MobileNetworkSettings$1;,
        Lcom/android/phone/MobileNetworkSettings$2;,
        Lcom/android/phone/MobileNetworkSettings$3;,
        Lcom/android/phone/MobileNetworkSettings$4;,
        Lcom/android/phone/MobileNetworkSettings$5;,
        Lcom/android/phone/MobileNetworkSettings$6;,
        Lcom/android/phone/MobileNetworkSettings$7;,
        Lcom/android/phone/MobileNetworkSettings$8;
    }
.end annotation


# static fields
.field public static sSimId:I


# instance fields
.field private mAirplainModeEnabledObserver:Landroid/database/ContentObserver;

.field mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

.field private mButtonDataEnabled:Landroid/preference/TwoStatePreference;

.field private mButtonDataRoam:Lcom/android/phone/RestrictedSwitchPreference;

.field private mButtonEnhancedRoamingMode:Lcom/samsung/android/settingslib/RestrictedPreference;

.field private mButtonGlobalDataRoamingAccess:Lcom/android/phone/GlobalDataRoamingAccess;

.field private mButtonPreferredDataRoamingMode:Lcom/android/phone/RestrictedListPreference;

.field private mButtonRoamingSettingKey:Lcom/samsung/android/settingslib/RestrictedPreference;

.field private mButtonRoamingState:Landroid/preference/Preference;

.field private mButtonSignalStrength:Landroid/preference/Preference;

.field private mCdmaOptions:Lcom/android/phone/CdmaOptions;

.field private mClickedPreference:Landroid/preference/Preference;

.field private mDataEnabledObserver:Landroid/database/ContentObserver;

.field private mDataRoamEnabledObserver:Landroid/database/ContentObserver;

.field private mEnhanced4GLTE:Landroid/preference/PreferenceScreen;

.field private mGsmUmtsOptions:Lcom/android/phone/GsmUmtsOptions;

.field private mHandler:Landroid/os/Handler;

.field private mIntentManager:Lcom/android/phone/mobilenetworks/controller/IntentManager;

.field private mInternationalEnhanced4GLTE:Lcom/samsung/android/settingslib/RestrictedPreference;

.field private mMobileNetworksDialogManager:Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager;

.field private mNetworkModeSpinnerPreference:Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;

.field private mNetworkModeSpinnerPreference2:Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

.field mStateListener:Lcom/android/phone/ia/IAInterimListener;

.field private mSummaryManager:Lcom/android/phone/mobilenetworks/SummaryManager;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mToddlerEnabledObserver:Landroid/database/ContentObserver;

.field private mUm:Landroid/os/UserManager;

.field private mVoiceOverLteObserver:Landroid/database/ContentObserver;

.field private mVolteCall:Landroid/preference/SwitchPreference;

.field private mWifiCalling:Landroid/preference/SwitchPreference;

.field private mWifiCallingObserver:Landroid/database/ContentObserver;

.field private mXmlResId:I


# direct methods
.method static synthetic -com_android_phone_MobileNetworkSettings_lambda$1(Landroid/preference/SwitchPreference;Landroid/content/DialogInterface;I)V
    .locals 1

    const/4 v0, 0x0

    packed-switch p2, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/phone/mobilenetworks/boundary/SettingProxy;->setVoiceCallType(Z)V

    goto :goto_0

    :pswitch_1
    invoke-static {v0}, Lcom/android/phone/mobilenetworks/boundary/SettingProxy;->setVoiceCallType(Z)V

    invoke-virtual {p0, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic -get0(Lcom/android/phone/MobileNetworkSettings;)Landroid/preference/TwoStatePreference;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataEnabled:Landroid/preference/TwoStatePreference;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/phone/MobileNetworkSettings;)Lcom/android/phone/RestrictedSwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataRoam:Lcom/android/phone/RestrictedSwitchPreference;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/phone/MobileNetworkSettings;)Lcom/android/phone/GsmUmtsOptions;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mGsmUmtsOptions:Lcom/android/phone/GsmUmtsOptions;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/phone/MobileNetworkSettings;)Landroid/telephony/PhoneStateListener;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/phone/MobileNetworkSettings;)Landroid/os/UserManager;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mUm:Landroid/os/UserManager;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/phone/MobileNetworkSettings;)Landroid/preference/SwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mVolteCall:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/phone/MobileNetworkSettings;)Landroid/preference/SwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mWifiCalling:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/phone/MobileNetworkSettings;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/phone/MobileNetworkSettings;->getMobileDataEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/phone/MobileNetworkSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/MobileNetworkSettings;->checkAndSetEnabledForVolteCall()V

    return-void
.end method

.method static synthetic -wrap2(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/android/phone/MobileNetworkSettings;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/phone/MobileNetworkSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/MobileNetworkSettings;->updateEnterpriseDeviceManager()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/phone/MobileNetworkSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/MobileNetworkSettings;->updateRoamingSummary()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/phone/MobileNetworkSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/MobileNetworkSettings;->updateSignalStrength()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/android/phone/MobileNetworkSettings;->sSimId:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    invoke-static {}, Lcom/samsung/android/sdk/bixby/BixbyApi;->getInstance()Lcom/samsung/android/sdk/bixby/BixbyApi;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    new-instance v0, Lcom/android/phone/MobileNetworkSettings$1;

    invoke-direct {v0, p0}, Lcom/android/phone/MobileNetworkSettings$1;-><init>(Lcom/android/phone/MobileNetworkSettings;)V

    iput-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/phone/MobileNetworkSettings$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/phone/MobileNetworkSettings$2;-><init>(Lcom/android/phone/MobileNetworkSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mDataEnabledObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/android/phone/MobileNetworkSettings$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/phone/MobileNetworkSettings$3;-><init>(Lcom/android/phone/MobileNetworkSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mDataRoamEnabledObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/android/phone/MobileNetworkSettings$4;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/phone/MobileNetworkSettings$4;-><init>(Lcom/android/phone/MobileNetworkSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mVoiceOverLteObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/android/phone/MobileNetworkSettings$5;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/phone/MobileNetworkSettings$5;-><init>(Lcom/android/phone/MobileNetworkSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mWifiCallingObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/android/phone/MobileNetworkSettings$6;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/phone/MobileNetworkSettings$6;-><init>(Lcom/android/phone/MobileNetworkSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mToddlerEnabledObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/android/phone/MobileNetworkSettings$7;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/phone/MobileNetworkSettings$7;-><init>(Lcom/android/phone/MobileNetworkSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mAirplainModeEnabledObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/android/phone/MobileNetworkSettings$8;

    invoke-direct {v0, p0}, Lcom/android/phone/MobileNetworkSettings$8;-><init>(Lcom/android/phone/MobileNetworkSettings;)V

    iput-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    return-void
.end method

.method private VolteCallSettingTreeClick(ZLandroid/preference/SwitchPreference;)V
    .locals 4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "VolteCallSettingTreeClick : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/MobileNetworkSettings;->log(Ljava/lang/String;)V

    const-string/jumbo v1, "volte_settings_in_mobile_networks_chn"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    new-instance v0, Lcom/android/phone/MobileNetworkSettings$-void_VolteCallSettingTreeClick_boolean_enabled_android_preference_SwitchPreference_mVolteCall_LambdaImpl0;

    invoke-direct {v0, p2}, Lcom/android/phone/MobileNetworkSettings$-void_VolteCallSettingTreeClick_boolean_enabled_android_preference_SwitchPreference_mVolteCall_LambdaImpl0;-><init>(Landroid/preference/SwitchPreference;)V

    invoke-static {}, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager;->getInstance()Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager;

    move-result-object v1

    invoke-virtual {v1, p0, v0, p2}, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager;->setVolteCall(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/preference/SwitchPreference;)V

    return-void

    :cond_0
    const-string/jumbo v1, "volte_settings_in_mobile_networks_hk"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "volte_settings_in_mobile_networks_tw"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    if-eqz p1, :cond_2

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    const v2, 0x7f0d08f2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    :cond_2
    invoke-static {p1}, Lcom/android/phone/mobilenetworks/boundary/SettingProxy;->setVoiceCallType(Z)V

    return-void
.end method

.method private checkAndSetEnabledForRoamingMenu()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataRoam:Lcom/android/phone/RestrictedSwitchPreference;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/phone/mobilenetworks/MobileNetworksSearchController;->getInstance()Lcom/android/phone/mobilenetworks/MobileNetworksSearchController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/mobilenetworks/MobileNetworksSearchController;->earlyTwoStatePreference()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataRoam:Lcom/android/phone/RestrictedSwitchPreference;

    invoke-static {}, Lcom/android/phone/mobilenetworks/MobileNetworksSearchController;->getInstance()Lcom/android/phone/mobilenetworks/MobileNetworksSearchController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/mobilenetworks/MobileNetworksSearchController;->getSettingValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/phone/RestrictedSwitchPreference;->setChecked(Z)V

    :goto_0
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataRoam:Lcom/android/phone/RestrictedSwitchPreference;

    invoke-virtual {v0, v2}, Lcom/android/phone/RestrictedSwitchPreference;->setDisabledByAdmin(Z)V

    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataRoam:Lcom/android/phone/RestrictedSwitchPreference;

    invoke-virtual {v0}, Lcom/android/phone/RestrictedSwitchPreference;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "no_data_roaming"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-static {p0, v0, v1}, Lcom/android/settingslib/RestrictedLockUtils;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataRoam:Lcom/android/phone/RestrictedSwitchPreference;

    invoke-virtual {v0, v2}, Lcom/android/phone/RestrictedSwitchPreference;->setEnabled(Z)V

    :cond_0
    :goto_1
    const-string/jumbo v0, "remove_mobile_networks_international_enhanced_4glte"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "no_data_roaming"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-static {p0, v0, v1}, Lcom/android/settingslib/RestrictedLockUtils;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mInternationalEnhanced4GLTE:Lcom/samsung/android/settingslib/RestrictedPreference;

    invoke-virtual {v0, v2}, Lcom/samsung/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    :cond_1
    :goto_2
    const-string/jumbo v0, "remove_mobile_networks_global_data_roaming_access"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonGlobalDataRoamingAccess:Lcom/android/phone/GlobalDataRoamingAccess;

    invoke-virtual {v0, v2}, Lcom/android/phone/GlobalDataRoamingAccess;->setDisabledByAdmin(Z)V

    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonGlobalDataRoamingAccess:Lcom/android/phone/GlobalDataRoamingAccess;

    invoke-virtual {v0}, Lcom/android/phone/GlobalDataRoamingAccess;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "no_data_roaming"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-static {p0, v0, v1}, Lcom/android/settingslib/RestrictedLockUtils;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonGlobalDataRoamingAccess:Lcom/android/phone/GlobalDataRoamingAccess;

    invoke-virtual {v0, v2}, Lcom/android/phone/GlobalDataRoamingAccess;->setEnabled(Z)V

    :cond_2
    :goto_3
    invoke-static {}, Lcom/android/phone/mobilenetworks/MobileNetworksManager;->getInstance()Lcom/android/phone/mobilenetworks/MobileNetworksManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/mobilenetworks/MobileNetworksManager;->isRemoveMobileNetworksPreferredRoaming()Z

    move-result v0

    if-nez v0, :cond_3

    const-string/jumbo v0, "no_data_roaming"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-static {p0, v0, v1}, Lcom/android/settingslib/RestrictedLockUtils;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredDataRoamingMode:Lcom/android/phone/RestrictedListPreference;

    invoke-virtual {v0, v2}, Lcom/android/phone/RestrictedListPreference;->setEnabled(Z)V

    :cond_3
    :goto_4
    invoke-static {}, Lcom/android/phone/mobilenetworks/MobileNetworksManager;->getInstance()Lcom/android/phone/mobilenetworks/MobileNetworksManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/mobilenetworks/MobileNetworksManager;->isRemoveMobileNetworksEnhancedRoamingMode()Z

    move-result v0

    if-nez v0, :cond_4

    const-string/jumbo v0, "no_data_roaming"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-static {p0, v0, v1}, Lcom/android/settingslib/RestrictedLockUtils;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonEnhancedRoamingMode:Lcom/samsung/android/settingslib/RestrictedPreference;

    invoke-virtual {v0, v2}, Lcom/samsung/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    :cond_4
    :goto_5
    invoke-static {}, Lcom/android/phone/mobilenetworks/MobileNetworksManager;->getInstance()Lcom/android/phone/mobilenetworks/MobileNetworksManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/mobilenetworks/MobileNetworksManager;->isRemoveMobileNetworksEnhancedRoamingMode()Z

    move-result v0

    if-nez v0, :cond_5

    const-string/jumbo v0, "no_data_roaming"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-static {p0, v0, v1}, Lcom/android/settingslib/RestrictedLockUtils;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonRoamingSettingKey:Lcom/samsung/android/settingslib/RestrictedPreference;

    invoke-virtual {v0, v2}, Lcom/samsung/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    :cond_5
    :goto_6
    return-void

    :cond_6
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataRoam:Lcom/android/phone/RestrictedSwitchPreference;

    invoke-static {}, Lcom/android/phone/mobilenetworks/boundary/PhoneProxy;->getDataRoamingEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/phone/RestrictedSwitchPreference;->setChecked(Z)V

    goto/16 :goto_0

    :cond_7
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataRoam:Lcom/android/phone/RestrictedSwitchPreference;

    const-string/jumbo v1, "no_data_roaming"

    invoke-virtual {v0, v1}, Lcom/android/phone/RestrictedSwitchPreference;->checkRestrictionAndSetDisabled(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_8
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mInternationalEnhanced4GLTE:Lcom/samsung/android/settingslib/RestrictedPreference;

    const-string/jumbo v1, "no_data_roaming"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settingslib/RestrictedPreference;->checkRestrictionAndSetDisabled(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_9
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonGlobalDataRoamingAccess:Lcom/android/phone/GlobalDataRoamingAccess;

    const-string/jumbo v1, "no_data_roaming"

    invoke-virtual {v0, v1}, Lcom/android/phone/GlobalDataRoamingAccess;->checkRestrictionAndSetDisabled(Ljava/lang/String;)V

    goto :goto_3

    :cond_a
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredDataRoamingMode:Lcom/android/phone/RestrictedListPreference;

    const-string/jumbo v1, "no_data_roaming"

    invoke-virtual {v0, v1}, Lcom/android/phone/RestrictedListPreference;->checkRestrictionAndSetDisabled(Ljava/lang/String;)V

    goto :goto_4

    :cond_b
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonEnhancedRoamingMode:Lcom/samsung/android/settingslib/RestrictedPreference;

    const-string/jumbo v1, "no_data_roaming"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settingslib/RestrictedPreference;->checkRestrictionAndSetDisabled(Ljava/lang/String;)V

    goto :goto_5

    :cond_c
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonRoamingSettingKey:Lcom/samsung/android/settingslib/RestrictedPreference;

    const-string/jumbo v1, "no_data_roaming"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settingslib/RestrictedPreference;->checkRestrictionAndSetDisabled(Ljava/lang/String;)V

    goto :goto_6
.end method

.method private checkAndSetEnabledForVolteCall()V
    .locals 7

    const-string/jumbo v4, "volte_settings_in_mobile_networks_chn"

    invoke-static {v4}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string/jumbo v4, "volte_settings_in_mobile_networks_hk"

    invoke-static {v4}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string/jumbo v4, "volte_settings_in_mobile_networks_tw"

    invoke-static {v4}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_0
    iget-object v4, p0, Lcom/android/phone/MobileNetworkSettings;->mVolteCall:Landroid/preference/SwitchPreference;

    if-eqz v4, :cond_3

    invoke-static {}, Lcom/android/phone/mobilenetworks/MobileNetworksManager;->getInstance()Lcom/android/phone/mobilenetworks/MobileNetworksManager;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    iget-object v6, p0, Lcom/android/phone/MobileNetworkSettings;->mVolteCall:Landroid/preference/SwitchPreference;

    invoke-virtual {v4, v5, v6}, Lcom/android/phone/mobilenetworks/MobileNetworksManager;->updatePreferencesVolteCall(Landroid/preference/PreferenceScreen;Landroid/preference/SwitchPreference;)V

    iget-object v4, p0, Lcom/android/phone/MobileNetworkSettings;->mSummaryManager:Lcom/android/phone/mobilenetworks/SummaryManager;

    iget-object v5, p0, Lcom/android/phone/MobileNetworkSettings;->mVolteCall:Landroid/preference/SwitchPreference;

    invoke-virtual {v4, v5}, Lcom/android/phone/mobilenetworks/SummaryManager;->changeSummaryWhenVolteInabled(Landroid/preference/SwitchPreference;)V

    iget-object v5, p0, Lcom/android/phone/MobileNetworkSettings;->mVolteCall:Landroid/preference/SwitchPreference;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v4

    iget-object v4, v4, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v4

    sget-object v6, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v4, v6, :cond_2

    const/4 v4, 0x1

    :goto_0
    invoke-virtual {v5, v4}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    const-string/jumbo v4, "MobileNetworkSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "checkAndSetEnabledForVolteCall for CHN: check if voltecall is enabled, callstate : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v6

    iget-object v6, v6, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/phone/MobileNetworkSettings;->mVolteCall:Landroid/preference/SwitchPreference;

    invoke-static {}, Lcom/android/phone/mobilenetworks/boundary/SettingProxy;->isVolteCallTypeEnabled()Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    const/4 v4, 0x0

    goto :goto_0

    :cond_3
    const-string/jumbo v4, "volte_settings_in_mobile_networks_usc"

    invoke-static {v4}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {}, Lcom/android/phone/PhoneUtilsCommon;->isSupportVoLTE()Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/phone/MobileNetworkSettings;->mVolteCall:Landroid/preference/SwitchPreference;

    if-eqz v4, :cond_5

    invoke-static {}, Lcom/android/phone/mobilenetworks/boundary/PhoneProxy;->getState()Lcom/android/phone/mobilenetworks/boundary/PhoneProxy$State;

    move-result-object v3

    invoke-static {}, Lcom/android/phone/mobilenetworks/boundary/SettingProxy;->isVoPSSupported()Z

    move-result v2

    invoke-static {}, Lcom/android/phone/mobilenetworks/boundary/NetworkProxy;->isNetworkLTEInHome()Z

    move-result v1

    if-eqz v1, :cond_4

    if-eqz v2, :cond_4

    sget-object v4, Lcom/android/phone/mobilenetworks/boundary/PhoneProxy$State;->IDLE:Lcom/android/phone/mobilenetworks/boundary/PhoneProxy$State;

    if-ne v3, v4, :cond_4

    const/4 v0, 0x1

    :goto_2
    iget-object v4, p0, Lcom/android/phone/MobileNetworkSettings;->mVolteCall:Landroid/preference/SwitchPreference;

    invoke-virtual {v4, v0}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    iget-object v4, p0, Lcom/android/phone/MobileNetworkSettings;->mVolteCall:Landroid/preference/SwitchPreference;

    invoke-static {}, Lcom/android/phone/mobilenetworks/boundary/SettingProxy;->isVolteCallTypeEnabled()Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    const-string/jumbo v4, "MobileNetworkSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "USC : onServiceStateChanged, misNetworkLTEInHome : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " misVoPSSupported : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " callstate : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    goto :goto_2

    :cond_5
    const-string/jumbo v4, "volte_settings_in_mobile_networks_common"

    invoke-static {v4}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-static {}, Lcom/android/phone/PhoneUtilsCommon;->isSupportVoLTE()Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/phone/MobileNetworkSettings;->mVolteCall:Landroid/preference/SwitchPreference;

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/phone/MobileNetworkSettings;->mVolteCall:Landroid/preference/SwitchPreference;

    invoke-static {}, Lcom/android/phone/mobilenetworks/boundary/SettingProxy;->isVolteCallTypeEnabled()Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto/16 :goto_1

    :cond_6
    const-string/jumbo v4, "volte_settings_in_mobile_networks_global"

    invoke-static {v4}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/phone/MobileNetworkSettings;->mVolteCall:Landroid/preference/SwitchPreference;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/phone/MobileNetworkSettings;->mVolteCall:Landroid/preference/SwitchPreference;

    invoke-static {}, Lcom/android/phone/PhoneUtilsIMS;->isVoLTEFeatureEnabled()Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto/16 :goto_1
.end method

.method private createGsmUmtsOptions(Landroid/preference/PreferenceActivity;Landroid/preference/PreferenceScreen;)V
    .locals 2

    const-string/jumbo v0, "feature_multisim"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/phone/GsmUmtsOptions;

    sget v1, Lcom/android/phone/MobileNetworkSettings;->sSimId:I

    invoke-direct {v0, p1, p2, v1}, Lcom/android/phone/GsmUmtsOptions;-><init>(Landroid/preference/PreferenceActivity;Landroid/preference/PreferenceScreen;I)V

    iput-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mGsmUmtsOptions:Lcom/android/phone/GsmUmtsOptions;

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/android/phone/GsmUmtsOptions;

    invoke-direct {v0, p1, p2}, Lcom/android/phone/GsmUmtsOptions;-><init>(Landroid/preference/PreferenceActivity;Landroid/preference/PreferenceScreen;)V

    iput-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mGsmUmtsOptions:Lcom/android/phone/GsmUmtsOptions;

    goto :goto_0
.end method

.method private createOptions(Landroid/preference/PreferenceScreen;IZ)V
    .locals 3

    const/4 v1, 0x2

    if-ne p2, v1, :cond_0

    const-string/jumbo v0, "chn_cdma_network_on_all_rat"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "feature_multisim"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string/jumbo v0, "global_network_cdma_gsm_enable"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_1
    const-string/jumbo v0, "roaming_enhancement"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "cdma_apn_enable"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    new-instance v0, Lcom/android/phone/CdmaOptions;

    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-direct {v0, p0, p1, v1}, Lcom/android/phone/CdmaOptions;-><init>(Landroid/preference/PreferenceActivity;Landroid/preference/PreferenceScreen;Lcom/android/internal/telephony/Phone;)V

    iput-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mCdmaOptions:Lcom/android/phone/CdmaOptions;

    :cond_3
    if-eqz p3, :cond_4

    const-string/jumbo v0, "global_network_cdma_gsm_enable"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    :cond_4
    const-string/jumbo v0, "chn_cdma_network_on_all_rat"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_5
    invoke-direct {p0, p0, p1}, Lcom/android/phone/MobileNetworkSettings;->createGsmUmtsOptions(Landroid/preference/PreferenceActivity;Landroid/preference/PreferenceScreen;)V

    :cond_6
    :goto_0
    return-void

    :cond_7
    const/4 v0, 0x1

    if-eq p2, v0, :cond_8

    if-ne p2, v1, :cond_9

    const-string/jumbo v0, "chn_cdma_network_on_all_rat"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string/jumbo v0, "feature_multisim"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_8
    invoke-direct {p0, p0, p1}, Lcom/android/phone/MobileNetworkSettings;->createGsmUmtsOptions(Landroid/preference/PreferenceActivity;Landroid/preference/PreferenceScreen;)V

    goto :goto_0

    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unexpected phone type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private createReceivers()V
    .locals 2

    const-string/jumbo v0, "global_data_roaming_access_enable"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "network_mode_cdma_lte"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->notifySignalStrength(I)V

    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->notifyServiceState(I)V

    :cond_1
    return-void
.end method

.method private disableMenu()V
    .locals 3

    const/4 v2, 0x0

    const-string/jumbo v1, "S_roaming disable menu"

    invoke-static {v1}, Lcom/android/phone/MobileNetworkSettings;->log(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataRoam:Lcom/android/phone/RestrictedSwitchPreference;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataRoam:Lcom/android/phone/RestrictedSwitchPreference;

    invoke-virtual {v1, v2}, Lcom/android/phone/RestrictedSwitchPreference;->setEnabled(Z)V

    :cond_0
    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataEnabled:Landroid/preference/TwoStatePreference;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataEnabled:Landroid/preference/TwoStatePreference;

    invoke-virtual {v1, v2}, Landroid/preference/TwoStatePreference;->setEnabled(Z)V

    :cond_1
    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mVolteCall:Landroid/preference/SwitchPreference;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mVolteCall:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_2
    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mEnhanced4GLTE:Landroid/preference/PreferenceScreen;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mEnhanced4GLTE:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_3
    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mInternationalEnhanced4GLTE:Lcom/samsung/android/settingslib/RestrictedPreference;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mInternationalEnhanced4GLTE:Lcom/samsung/android/settingslib/RestrictedPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_4
    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mWifiCalling:Landroid/preference/SwitchPreference;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mWifiCalling:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_5
    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredDataRoamingMode:Lcom/android/phone/RestrictedListPreference;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredDataRoamingMode:Lcom/android/phone/RestrictedListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_6
    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonGlobalDataRoamingAccess:Lcom/android/phone/GlobalDataRoamingAccess;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonGlobalDataRoamingAccess:Lcom/android/phone/GlobalDataRoamingAccess;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_7
    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonRoamingState:Landroid/preference/Preference;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonRoamingState:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_8
    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonSignalStrength:Landroid/preference/Preference;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonSignalStrength:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_9
    return-void
.end method

.method private finishActivityWhenSpecipicState()V
    .locals 1

    const-string/jumbo v0, "finishActivityWhenSpecipicState"

    invoke-static {v0}, Lcom/android/phone/MobileNetworkSettings;->log(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettings;->checkAbsentSimStateAndDisplayToast()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettings;->finish()V

    :cond_0
    return-void
.end method

.method private getMobileDataEnabled()Z
    .locals 4

    invoke-static {}, Lcom/android/phone/mobilenetworks/boundary/NetworkProxy;->getMobileDataEnabled()Z

    move-result v0

    const-string/jumbo v1, "MobileNetworkSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getMobileDataEnabled: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private handleActionCheckAndSetEnabled(Landroid/content/Intent;)V
    .locals 5

    const/4 v4, 0x0

    const-string/jumbo v1, "updateFromRil"

    invoke-virtual {p1, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    const-string/jumbo v1, "MobileNetworkSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ACTION_CHECK_AND_SET_ENABLED - updateFromRil :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "updateFromRil"

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mNetworkModeSpinnerPreference:Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mNetworkModeSpinnerPreference:Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;

    invoke-virtual {v1}, Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;->getPreferredNetworkType()V

    :cond_0
    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mNetworkModeSpinnerPreference:Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;

    invoke-virtual {v1}, Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;->checkAndSetEnabled()V

    :cond_1
    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mNetworkModeSpinnerPreference2:Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;

    if-eqz v1, :cond_3

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mNetworkModeSpinnerPreference2:Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;

    invoke-virtual {v1}, Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;->getPreferredNetworkType()V

    :cond_2
    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mNetworkModeSpinnerPreference2:Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;

    invoke-virtual {v1}, Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;->checkAndSetEnabled()V

    :cond_3
    invoke-direct {p0}, Lcom/android/phone/MobileNetworkSettings;->checkAndSetEnabledForVolteCall()V

    return-void
.end method

.method private handleActionHotSwap()V
    .locals 2

    const-string/jumbo v0, "MobileNetworkSettings"

    const-string/jumbo v1, "ACTION_SIMHOTSWAP (app finish !!)"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettings;->finish()V

    return-void
.end method

.method private handleActionImsOnSimLoaded(Landroid/content/Intent;)V
    .locals 4

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "MobileNetworkSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "VoLteBoradcastReceiver onReceive - action :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "com.samsung.ims.action.onsimloaded"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mVolteCall:Landroid/preference/SwitchPreference;

    if-eqz v1, :cond_0

    const-string/jumbo v1, "MobileNetworkSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ACTION_IMS_ON_SIMLOADED - mVolteCall :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/MobileNetworkSettings;->mVolteCall:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/phone/MobileNetworkSettings;->checkAndSetEnabledForVolteCall()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v1, "android.intent.action.IMS_SETTINGS_UPDATED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mVolteCall:Landroid/preference/SwitchPreference;

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/phone/MobileNetworkSettings;->checkAndSetEnabledForVolteCall()V

    const-string/jumbo v1, "MobileNetworkSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "IMS_SETTINGS_UPDATED - mVolteCall :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/MobileNetworkSettings;->mVolteCall:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private handleActionSimStateChanged()V
    .locals 4

    const-string/jumbo v0, "MobileNetworkSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ACTION_SIM_STATE_CHANGED - TelephonyProperties.PROPERTY_SIM_STATE :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "gsm.sim.state"

    const-string/jumbo v3, "UNKNOWN"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mNetworkModeSpinnerPreference:Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mNetworkModeSpinnerPreference:Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;

    invoke-virtual {v0}, Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;->checkAndSetEnabled()V

    :cond_0
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mNetworkModeSpinnerPreference2:Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mNetworkModeSpinnerPreference2:Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;

    invoke-virtual {v0}, Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;->checkAndSetEnabled()V

    :cond_1
    return-void
.end method

.method private handleActionUpdatePreference()V
    .locals 3

    const-string/jumbo v0, "MobileNetworkSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "MultiSimBoradcastReceiver : getMobileDataEnabled() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/phone/MobileNetworkSettings;->getMobileDataEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettings;->onResume()V

    return-void
.end method

.method private handleIntentCallBack(Landroid/content/Intent;)V
    .locals 4

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "MobileNetworkSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handleIntentCallBack: onReceive - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "com.samsung.intent.action.SIMHOTSWAP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/phone/MobileNetworkSettings;->handleActionHotSwap()V

    :cond_0
    return-void
.end method

.method private handleSoftSimUpdateMenu()V
    .locals 2

    const-string/jumbo v0, "MobileNetworkSettings"

    const-string/jumbo v1, "ACTION_STRING_SOFT_SIM_UPDATE_MENU"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mNetworkModeSpinnerPreference:Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mNetworkModeSpinnerPreference:Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;

    invoke-virtual {v0}, Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;->checkAndSetEnabled()V

    :cond_0
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mNetworkModeSpinnerPreference2:Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mNetworkModeSpinnerPreference2:Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;

    invoke-virtual {v0}, Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;->checkAndSetEnabled()V

    :cond_1
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataRoam:Lcom/android/phone/RestrictedSwitchPreference;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataRoam:Lcom/android/phone/RestrictedSwitchPreference;

    invoke-static {}, Lcom/android/phone/mobilenetworks/boundary/PhoneProxy;->getDataRoamingEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/phone/RestrictedSwitchPreference;->setChecked(Z)V

    invoke-static {}, Lcom/android/phone/mobilenetworks/boundary/PhoneProxy;->getDataRoamingEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "MobileNetworkSettings"

    const-string/jumbo v1, "ACTION_STRING_SOFT_SIM_UPDATE_MENU : true"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void

    :cond_3
    const-string/jumbo v0, "MobileNetworkSettings"

    const-string/jumbo v1, "ACTION_STRING_SOFT_SIM_UPDATE_MENU : false"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private initPreference(Landroid/preference/PreferenceScreen;)V
    .locals 2

    const-string/jumbo v0, "MobileNetworkSettings"

    const-string/jumbo v1, "initPreference"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "feature_multisim"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/phone/MobileNetworkSettings;->initPreferenceForMultiSim(Landroid/preference/PreferenceScreen;)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/phone/MobileNetworkSettings;->initPreferenceForOpenVersion(Landroid/preference/PreferenceScreen;)V

    goto :goto_0
.end method

.method private initPreferenceForMultiSim(Landroid/preference/PreferenceScreen;)V
    .locals 5

    const/4 v2, 0x0

    const/4 v4, 0x1

    const-string/jumbo v1, "MobileNetworkSettings"

    const-string/jumbo v3, "initPreferenceForMultiSim"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "feature_multisim"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/android/phone/PhoneUtilsMultiSIM;->getInsertedSimCard()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    const-string/jumbo v1, "button_prefer_networkmodespinner1_key"

    invoke-virtual {p1, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;

    iput-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mNetworkModeSpinnerPreference:Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;

    const-string/jumbo v1, "button_prefer_networkmodespinner2_key"

    invoke-virtual {p1, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;

    iput-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mNetworkModeSpinnerPreference2:Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;

    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mNetworkModeSpinnerPreference:Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mNetworkModeSpinnerPreference:Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;

    invoke-static {p0, v2}, Lcom/android/phone/mobilenetworks/MobileNetworkUtils;->getNetworkModePreferenceTitle(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;->setTitle(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mNetworkModeSpinnerPreference2:Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mNetworkModeSpinnerPreference2:Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;

    invoke-static {p0, v4}, Lcom/android/phone/mobilenetworks/MobileNetworkUtils;->getNetworkModePreferenceTitle(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;->setTitle(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mNetworkModeSpinnerPreference:Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;

    if-eqz v1, :cond_3

    iget-object v3, p0, Lcom/android/phone/MobileNetworkSettings;->mNetworkModeSpinnerPreference:Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;

    if-ne v0, v4, :cond_6

    sget v1, Lcom/android/phone/MobileNetworkSettings;->sSimId:I

    :goto_1
    invoke-virtual {v3, v1}, Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;->setUp(I)V

    :cond_3
    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mNetworkModeSpinnerPreference2:Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mNetworkModeSpinnerPreference2:Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;

    invoke-virtual {v1, v4}, Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;->setUp(I)V

    :cond_4
    return-void

    :cond_5
    const-string/jumbo v1, "button_prefer_networkmodespinner_key"

    invoke-virtual {p1, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;

    iput-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mNetworkModeSpinnerPreference:Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;

    goto :goto_0

    :cond_6
    move v1, v2

    goto :goto_1
.end method

.method private initPreferenceForOpenVersion(Landroid/preference/PreferenceScreen;)V
    .locals 2

    const-string/jumbo v0, "MobileNetworkSettings"

    const-string/jumbo v1, "initPreferenceForOpenVersion"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "feature_multisim"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string/jumbo v0, "button_prefer_networkmodespinner_key"

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;

    iput-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mNetworkModeSpinnerPreference:Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;

    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mNetworkModeSpinnerPreference:Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mNetworkModeSpinnerPreference:Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;->setUp(I)V

    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mNetworkModeSpinnerPreference:Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;

    invoke-virtual {v0, p0}, Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;->setContext(Landroid/content/Context;)V

    :cond_1
    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "MobileNetworkSettings"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private menuSimplification(Landroid/preference/PreferenceScreen;)V
    .locals 2

    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataEnabled:Landroid/preference/TwoStatePreference;

    check-cast v0, Landroid/preference/SwitchPreference;

    new-instance v1, Lcom/android/phone/MobileNetworkSettings$9;

    invoke-direct {v1, p0}, Lcom/android/phone/MobileNetworkSettings$9;-><init>(Lcom/android/phone/MobileNetworkSettings;)V

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataRoam:Lcom/android/phone/RestrictedSwitchPreference;

    new-instance v1, Lcom/android/phone/MobileNetworkSettings$10;

    invoke-direct {v1, p0}, Lcom/android/phone/MobileNetworkSettings$10;-><init>(Lcom/android/phone/MobileNetworkSettings;)V

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mVolteCall:Landroid/preference/SwitchPreference;

    new-instance v1, Lcom/android/phone/MobileNetworkSettings$11;

    invoke-direct {v1, p0}, Lcom/android/phone/MobileNetworkSettings$11;-><init>(Lcom/android/phone/MobileNetworkSettings;)V

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mWifiCalling:Landroid/preference/SwitchPreference;

    new-instance v1, Lcom/android/phone/MobileNetworkSettings$12;

    invoke-direct {v1, p0}, Lcom/android/phone/MobileNetworkSettings$12;-><init>(Lcom/android/phone/MobileNetworkSettings;)V

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method private onCreateConsumed()Z
    .locals 6

    const/4 v5, 0x1

    invoke-static {}, Lcom/android/phone/mobilenetworks/MobileNetworksSearchController;->getInstance()Lcom/android/phone/mobilenetworks/MobileNetworksSearchController;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/android/phone/mobilenetworks/MobileNetworksSearchController;->updateSearchIntent(Landroid/preference/PreferenceActivity;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettings;->finish()V

    :cond_0
    const-string/jumbo v2, "mobile_newtork_style_for_kor"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    :try_start_0
    const-string/jumbo v2, "mobile_newtork_style_for_lgt"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v2, "android.settings.DATA_ROAMING_SETTINGS"

    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettings;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.samsung.settings.GLOBAL_ROAMING_LGT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x4000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/android/phone/MobileNetworkSettings;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettings;->finish()V

    return v5

    :cond_1
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.MAIN"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "com.android.phone"

    const-string/jumbo v4, "com.android.phone.mobilenetworks.kor.MobileNetworkSettings"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/phone/MobileNetworkSettings;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettings;->finish()V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v5

    :catch_0
    move-exception v0

    const-string/jumbo v2, "MobileNetworkSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "ActivityNotFoundException: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 v2, 0x0

    return v2
.end method

.method private onCreateMultiSim(Landroid/content/Intent;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string/jumbo v1, "feature_multisim"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const-string/jumbo v1, "sim_id"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "sim_id"

    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/phone/MobileNetworkSettings;->sSimId:I

    :cond_1
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sSimId : ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/phone/MobileNetworkSettings;->sSimId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/MobileNetworkSettings;->log(Ljava/lang/String;)V

    sget v1, Lcom/android/phone/MobileNetworkSettings;->sSimId:I

    invoke-static {v1}, Lcom/android/phone/PhoneUtilsMultiSIM;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    return-void

    :cond_2
    invoke-static {}, Lcom/android/phone/PhoneUtilsMultiSIM;->getCurrentNetworkPhoneId()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "dataPreferSlotId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/MobileNetworkSettings;->log(Ljava/lang/String;)V

    if-nez v0, :cond_3

    sput v3, Lcom/android/phone/MobileNetworkSettings;->sSimId:I

    goto :goto_0

    :cond_3
    if-ne v0, v4, :cond_1

    sput v4, Lcom/android/phone/MobileNetworkSettings;->sSimId:I

    goto :goto_0
.end method

.method private registerContentObservers()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    const-string/jumbo v0, "mobile_data"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mDataEnabledObserver:Landroid/database/ContentObserver;

    invoke-static {v0, v2, v1}, Lcom/android/phone/mobilenetworks/boundary/SettingProxy;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string/jumbo v0, "data_roaming"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mDataRoamEnabledObserver:Landroid/database/ContentObserver;

    invoke-static {v0, v2, v1}, Lcom/android/phone/mobilenetworks/boundary/SettingProxy;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string/jumbo v0, "airplane_mode_on"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mAirplainModeEnabledObserver:Landroid/database/ContentObserver;

    invoke-static {v0, v2, v1}, Lcom/android/phone/mobilenetworks/boundary/SettingProxy;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string/jumbo v0, "toddler_mode_switch"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mToddlerEnabledObserver:Landroid/database/ContentObserver;

    invoke-static {v0, v2, v1}, Lcom/android/phone/mobilenetworks/boundary/SettingProxy;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string/jumbo v0, "volte_settings_in_mobile_networks_common"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/phone/PhoneUtilsCommon;->isSupportVoLTE()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "voicecall_type"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mVoiceOverLteObserver:Landroid/database/ContentObserver;

    invoke-static {v0, v3, v1}, Lcom/android/phone/mobilenetworks/boundary/SettingProxy;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_0
    const-string/jumbo v0, "support_wfc_dt"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/phone/PhoneUtilsIMS;->isVoWifiSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "wifi_call_enable"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mWifiCallingObserver:Landroid/database/ContentObserver;

    invoke-static {v0, v3, v1}, Lcom/android/phone/mobilenetworks/boundary/SettingProxy;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_1
    const-string/jumbo v0, "global_data_roaming_access_enable"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "network_mode_cdma_lte"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    invoke-direct {p0}, Lcom/android/phone/MobileNetworkSettings;->updateRoamingSummary()V

    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->registerIntent()V

    invoke-direct {p0}, Lcom/android/phone/MobileNetworkSettings;->updateSignalStrength()V

    :cond_3
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v1, 0x61

    invoke-static {v0, v1}, Lcom/android/phone/mobilenetworks/boundary/NetworkProxy;->listen(Landroid/telephony/PhoneStateListener;I)V

    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mGsmUmtsOptions:Lcom/android/phone/GsmUmtsOptions;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mGsmUmtsOptions:Lcom/android/phone/GsmUmtsOptions;

    invoke-virtual {v0}, Lcom/android/phone/GsmUmtsOptions;->updateOperatorSelectionExpand()V

    :cond_4
    return-void
.end method

.method private registerIntentReceivers()V
    .locals 3

    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mIntentManager:Lcom/android/phone/mobilenetworks/controller/IntentManager;

    const-string/jumbo v1, "com.samsung.intent.action.SIMHOTSWAP"

    new-instance v2, Lcom/android/phone/MobileNetworkSettings$-void_registerIntentReceivers__LambdaImpl0;

    invoke-direct {v2, p0}, Lcom/android/phone/MobileNetworkSettings$-void_registerIntentReceivers__LambdaImpl0;-><init>(Lcom/android/phone/MobileNetworkSettings;)V

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/phone/mobilenetworks/controller/IntentManager;->registerReceiver(Ljava/lang/Object;Ljava/lang/String;Lcom/android/phone/mobilenetworks/controller/IIntentCallBack;)V

    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mIntentManager:Lcom/android/phone/mobilenetworks/controller/IntentManager;

    const-string/jumbo v1, "com.samsung.ims.action.onsimloaded"

    new-instance v2, Lcom/android/phone/MobileNetworkSettings$-void_registerIntentReceivers__LambdaImpl1;

    invoke-direct {v2, p0}, Lcom/android/phone/MobileNetworkSettings$-void_registerIntentReceivers__LambdaImpl1;-><init>(Lcom/android/phone/MobileNetworkSettings;)V

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/phone/mobilenetworks/controller/IntentManager;->registerReceiver(Ljava/lang/Object;Ljava/lang/String;Lcom/android/phone/mobilenetworks/controller/IIntentCallBack;)V

    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mIntentManager:Lcom/android/phone/mobilenetworks/controller/IntentManager;

    const-string/jumbo v1, "android.intent.action.IMS_SETTINGS_UPDATED"

    new-instance v2, Lcom/android/phone/MobileNetworkSettings$-void_registerIntentReceivers__LambdaImpl2;

    invoke-direct {v2, p0}, Lcom/android/phone/MobileNetworkSettings$-void_registerIntentReceivers__LambdaImpl2;-><init>(Lcom/android/phone/MobileNetworkSettings;)V

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/phone/mobilenetworks/controller/IntentManager;->registerReceiver(Ljava/lang/Object;Ljava/lang/String;Lcom/android/phone/mobilenetworks/controller/IIntentCallBack;)V

    const-string/jumbo v0, "feature_multisim"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mIntentManager:Lcom/android/phone/mobilenetworks/controller/IntentManager;

    const-string/jumbo v1, "com.androd.phone.intent.action.locale.UPDATE_PREFERENCE"

    new-instance v2, Lcom/android/phone/MobileNetworkSettings$-void_registerIntentReceivers__LambdaImpl3;

    invoke-direct {v2, p0}, Lcom/android/phone/MobileNetworkSettings$-void_registerIntentReceivers__LambdaImpl3;-><init>(Lcom/android/phone/MobileNetworkSettings;)V

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/phone/mobilenetworks/controller/IntentManager;->registerReceiver(Ljava/lang/Object;Ljava/lang/String;Lcom/android/phone/mobilenetworks/controller/IIntentCallBack;)V

    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mIntentManager:Lcom/android/phone/mobilenetworks/controller/IntentManager;

    const-string/jumbo v1, "com.android.phone.intent.action.locale.CHECK_AND_SET_ENABED"

    new-instance v2, Lcom/android/phone/MobileNetworkSettings$-void_registerIntentReceivers__LambdaImpl4;

    invoke-direct {v2, p0}, Lcom/android/phone/MobileNetworkSettings$-void_registerIntentReceivers__LambdaImpl4;-><init>(Lcom/android/phone/MobileNetworkSettings;)V

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/phone/mobilenetworks/controller/IntentManager;->registerReceiver(Ljava/lang/Object;Ljava/lang/String;Lcom/android/phone/mobilenetworks/controller/IIntentCallBack;)V

    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mIntentManager:Lcom/android/phone/mobilenetworks/controller/IntentManager;

    const-string/jumbo v1, "android.intent.action.SIM_STATE_CHANGED"

    new-instance v2, Lcom/android/phone/MobileNetworkSettings$-void_registerIntentReceivers__LambdaImpl5;

    invoke-direct {v2, p0}, Lcom/android/phone/MobileNetworkSettings$-void_registerIntentReceivers__LambdaImpl5;-><init>(Lcom/android/phone/MobileNetworkSettings;)V

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/phone/mobilenetworks/controller/IntentManager;->registerReceiver(Ljava/lang/Object;Ljava/lang/String;Lcom/android/phone/mobilenetworks/controller/IIntentCallBack;)V

    :cond_0
    const-string/jumbo v0, "support_soft_sim"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mIntentManager:Lcom/android/phone/mobilenetworks/controller/IntentManager;

    const-string/jumbo v1, "com.samsung.intent.action.locale.SoftSimUpdateMenu"

    new-instance v2, Lcom/android/phone/MobileNetworkSettings$-void_registerIntentReceivers__LambdaImpl6;

    invoke-direct {v2, p0}, Lcom/android/phone/MobileNetworkSettings$-void_registerIntentReceivers__LambdaImpl6;-><init>(Lcom/android/phone/MobileNetworkSettings;)V

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/phone/mobilenetworks/controller/IntentManager;->registerReceiver(Ljava/lang/Object;Ljava/lang/String;Lcom/android/phone/mobilenetworks/controller/IIntentCallBack;)V

    :cond_1
    return-void
.end method

.method private sendBroadcastWifiCallEnable(I)V
    .locals 4

    const-string/jumbo v1, "MobileNetworkSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendBroadcastWifiCallEnable = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "action_wifi_call_enable_broadcast"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "wifi_call_enable"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/phone/MobileNetworkSettings;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private setPreferredNetworkModeEnabled()V
    .locals 6

    const/4 v2, 0x1

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "SprintForceLTE"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    const-string/jumbo v3, "omadm_lte_forced_not_support_network_mode_popup"

    invoke-static {v3}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    const-string/jumbo v3, "global_network_cdma_gsm_enable"

    invoke-static {v3}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string/jumbo v3, "network_mode_spinner"

    invoke-static {v3}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/phone/MobileNetworkSettings;->mNetworkModeSpinnerPreference:Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;

    if-eqz v3, :cond_1

    const-string/jumbo v3, "MobileNetworkSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setPreferredNetworkModeEnabled:NETWORK_MODE_SPINNER "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/phone/MobileNetworkSettings;->mNetworkModeSpinnerPreference:Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;

    if-eq v1, v2, :cond_2

    :goto_1
    invoke-virtual {v3, v2}, Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;->setEnabled(Z)V

    :cond_1
    return-void

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    const-string/jumbo v3, "MobileNetworkSettings"

    const-string/jumbo v4, "SprintForceLTE - SettingNotFoundException"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private setSummaryText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d080c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/phone/MobileNetworkSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/phone/MobileNetworkSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method private unregisterContentObservers()V
    .locals 3

    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mDataEnabledObserver:Landroid/database/ContentObserver;

    invoke-static {v1}, Lcom/android/phone/mobilenetworks/boundary/SettingProxy;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mDataRoamEnabledObserver:Landroid/database/ContentObserver;

    invoke-static {v1}, Lcom/android/phone/mobilenetworks/boundary/SettingProxy;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mVoiceOverLteObserver:Landroid/database/ContentObserver;

    invoke-static {v1}, Lcom/android/phone/mobilenetworks/boundary/SettingProxy;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mWifiCallingObserver:Landroid/database/ContentObserver;

    invoke-static {v1}, Lcom/android/phone/mobilenetworks/boundary/SettingProxy;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mToddlerEnabledObserver:Landroid/database/ContentObserver;

    invoke-static {v1}, Lcom/android/phone/mobilenetworks/boundary/SettingProxy;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mAirplainModeEnabledObserver:Landroid/database/ContentObserver;

    invoke-static {v1}, Lcom/android/phone/mobilenetworks/boundary/SettingProxy;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/phone/mobilenetworks/boundary/NetworkProxy;->listen(Landroid/telephony/PhoneStateListener;I)V

    :try_start_0
    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->unregisterIntent()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "MobileNetworkSettings"

    const-string/jumbo v2, "failed to unregisterContentObserver : mPhoneStateReceiver"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private unregisterIntentReceivers()V
    .locals 1

    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mIntentManager:Lcom/android/phone/mobilenetworks/controller/IntentManager;

    invoke-virtual {v0, p0}, Lcom/android/phone/mobilenetworks/controller/IntentManager;->unregisterReceiver(Ljava/lang/Object;)V

    return-void
.end method

.method private updateDataEnabledEnterpriseDeviceManager()V
    .locals 5

    const/4 v3, 0x0

    const-string/jumbo v4, "enterprise_policy_new"

    invoke-virtual {p0, v4}, Lcom/android/phone/MobileNetworkSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/knox/EnterpriseDeviceManager;

    if-eqz v1, :cond_0

    iget-object v4, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataEnabled:Landroid/preference/TwoStatePreference;

    if-eqz v4, :cond_0

    invoke-virtual {v1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getRestrictionPolicy()Lcom/samsung/android/knox/restriction/RestrictionPolicy;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->isCellularDataAllowed()Z

    move-result v2

    invoke-virtual {v1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getPhoneRestrictionPolicy()Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->checkEnableUseOfPacketData(Z)Z

    move-result v0

    iget-object v4, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataEnabled:Landroid/preference/TwoStatePreference;

    if-eqz v2, :cond_1

    :goto_0
    invoke-virtual {v4, v0}, Landroid/preference/TwoStatePreference;->setEnabled(Z)V

    :cond_0
    return-void

    :cond_1
    move v0, v3

    goto :goto_0
.end method

.method private updateEnterpriseDeviceManager()V
    .locals 8

    const/4 v6, 0x0

    const-string/jumbo v5, "enterprise_policy_new"

    invoke-virtual {p0, v5}, Lcom/android/phone/MobileNetworkSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/knox/EnterpriseDeviceManager;

    const/4 v1, 0x1

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getRoamingPolicy()Lcom/samsung/android/knox/restriction/RoamingPolicy;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/knox/restriction/RoamingPolicy;->isRoamingDataEnabled()Z

    move-result v4

    invoke-virtual {v2}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getRestrictionPolicy()Lcom/samsung/android/knox/restriction/RestrictionPolicy;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->isCellularDataAllowed()Z

    move-result v3

    invoke-virtual {v2}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getPhoneRestrictionPolicy()Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;

    move-result-object v5

    invoke-virtual {v5, v6}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->checkEnableUseOfPacketData(Z)Z

    move-result v0

    iget-object v5, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataRoam:Lcom/android/phone/RestrictedSwitchPreference;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/phone/MobileNetworkSettings;->mUm:Landroid/os/UserManager;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/phone/MobileNetworkSettings;->mUm:Landroid/os/UserManager;

    const-string/jumbo v7, "no_data_roaming"

    invoke-virtual {v5, v7}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    :cond_0
    :goto_0
    if-nez v4, :cond_1

    invoke-static {v6}, Lcom/android/phone/mobilenetworks/boundary/PhoneProxy;->setDataRoamingEnabled(Z)V

    iget-object v5, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataRoam:Lcom/android/phone/RestrictedSwitchPreference;

    invoke-virtual {v5, v6}, Lcom/android/phone/RestrictedSwitchPreference;->setChecked(Z)V

    :cond_1
    iget-object v5, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredDataRoamingMode:Lcom/android/phone/RestrictedListPreference;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/phone/MobileNetworkSettings;->mUm:Landroid/os/UserManager;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/phone/MobileNetworkSettings;->mUm:Landroid/os/UserManager;

    const-string/jumbo v7, "no_data_roaming"

    invoke-virtual {v5, v7}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b

    :cond_2
    :goto_1
    const-string/jumbo v5, "MDM-Roaming-policy"

    const-string/jumbo v7, "setEnabled"

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v5, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataEnabled:Landroid/preference/TwoStatePreference;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataEnabled:Landroid/preference/TwoStatePreference;

    if-eqz v3, :cond_4

    move v6, v0

    :cond_4
    invoke-virtual {v5, v6}, Landroid/preference/TwoStatePreference;->setEnabled(Z)V

    const-string/jumbo v5, "MDM-Roaming-policy"

    const-string/jumbo v6, "setEnabled"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    const-string/jumbo v5, "enhanced_4glte_menu"

    invoke-static {v5}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    move v1, v0

    iget-object v5, p0, Lcom/android/phone/MobileNetworkSettings;->mInternationalEnhanced4GLTE:Lcom/samsung/android/settingslib/RestrictedPreference;

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/android/phone/MobileNetworkSettings;->mUm:Landroid/os/UserManager;

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/android/phone/MobileNetworkSettings;->mUm:Landroid/os/UserManager;

    const-string/jumbo v6, "no_data_roaming"

    invoke-virtual {v5, v6}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_d

    :cond_6
    :goto_2
    const-string/jumbo v5, "remove_mobile_networks_global_data_roaming_access"

    invoke-static {v5}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_7

    iget-object v5, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonGlobalDataRoamingAccess:Lcom/android/phone/GlobalDataRoamingAccess;

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/android/phone/MobileNetworkSettings;->mUm:Landroid/os/UserManager;

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/android/phone/MobileNetworkSettings;->mUm:Landroid/os/UserManager;

    const-string/jumbo v6, "no_data_roaming"

    invoke-virtual {v5, v6}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_e

    :cond_7
    :goto_3
    iget-object v5, p0, Lcom/android/phone/MobileNetworkSettings;->mEnhanced4GLTE:Landroid/preference/PreferenceScreen;

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/android/phone/MobileNetworkSettings;->mEnhanced4GLTE:Landroid/preference/PreferenceScreen;

    invoke-virtual {v5, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    :cond_8
    return-void

    :cond_9
    iget-object v7, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataRoam:Lcom/android/phone/RestrictedSwitchPreference;

    if-eqz v4, :cond_a

    invoke-direct {p0}, Lcom/android/phone/MobileNetworkSettings;->getMobileDataEnabled()Z

    move-result v5

    :goto_4
    invoke-virtual {v7, v5}, Lcom/android/phone/RestrictedSwitchPreference;->setEnabled(Z)V

    goto/16 :goto_0

    :cond_a
    move v5, v6

    goto :goto_4

    :cond_b
    iget-object v7, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredDataRoamingMode:Lcom/android/phone/RestrictedListPreference;

    if-eqz v4, :cond_c

    invoke-direct {p0}, Lcom/android/phone/MobileNetworkSettings;->getMobileDataEnabled()Z

    move-result v5

    :goto_5
    invoke-virtual {v7, v5}, Lcom/android/phone/RestrictedListPreference;->setEnabled(Z)V

    goto :goto_1

    :cond_c
    move v5, v6

    goto :goto_5

    :cond_d
    iget-object v5, p0, Lcom/android/phone/MobileNetworkSettings;->mInternationalEnhanced4GLTE:Lcom/samsung/android/settingslib/RestrictedPreference;

    invoke-virtual {v5, v4}, Lcom/samsung/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    goto :goto_2

    :cond_e
    iget-object v5, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonGlobalDataRoamingAccess:Lcom/android/phone/GlobalDataRoamingAccess;

    invoke-virtual {v5, v4}, Lcom/android/phone/GlobalDataRoamingAccess;->setEnabled(Z)V

    goto :goto_3
.end method

.method private updatePlaySim()V
    .locals 4

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string/jumbo v2, "national_roaming_mode_menu_play"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/phone/PhoneUtilsMultiSIM;->getDefaultDataSlotId()I

    move-result v2

    invoke-static {v2}, Lcom/android/phone/TelephonyConfig;->isPlaySIM(I)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isPlay = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/MobileNetworkSettings;->log(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "national_roaming_mode_menu"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    iget-object v2, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredDataRoamingMode:Lcom/android/phone/RestrictedListPreference;

    invoke-virtual {v2, p0}, Lcom/android/phone/RestrictedListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    invoke-static {}, Lcom/android/phone/mobilenetworks/boundary/SettingProxy;->getNationalRoamingMode()I

    move-result v1

    iget-object v2, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredDataRoamingMode:Lcom/android/phone/RestrictedListPreference;

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/phone/RestrictedListPreference;->setValue(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "NATIONAL_ROAMING_MODE is true. settingsDataRoamingMode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/MobileNetworkSettings;->log(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method private updateRoamingButtonForATT()V
    .locals 5

    const/4 v1, 0x0

    const-string/jumbo v2, "MobileNetworkSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getIntent() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettings;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "MobileNetworkSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getIntent().getExtras() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettings;->getIntent()Landroid/content/Intent;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettings;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    :cond_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettings;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettings;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-nez v1, :cond_2

    :cond_1
    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettings;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "enable_roaming"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const-string/jumbo v1, "MobileNetworkSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isRoaming = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataRoam:Lcom/android/phone/RestrictedSwitchPreference;

    if-nez v1, :cond_4

    :cond_3
    return-void

    :cond_4
    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataRoam:Lcom/android/phone/RestrictedSwitchPreference;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/phone/RestrictedSwitchPreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mMobileNetworksDialogManager:Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager;

    iget-object v2, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataRoam:Lcom/android/phone/RestrictedSwitchPreference;

    invoke-virtual {v1, p0, v2}, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager;->setDataRoamingforATT(Landroid/content/Context;Landroid/preference/TwoStatePreference;)V

    return-void
.end method

.method private updateRoamingSummary()V
    .locals 4

    const-string/jumbo v1, "true"

    const-string/jumbo v2, "gsm.operator.isroaming"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v1, "roaming_state_key"

    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0808

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/phone/MobileNetworkSettings;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v1, "roaming_state_key"

    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d080b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/phone/MobileNetworkSettings;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateSignalStrength()V
    .locals 7

    const/4 v6, -0x1

    iget-object v4, p0, Lcom/android/phone/MobileNetworkSettings;->mNetworkModeSpinnerPreference:Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/phone/MobileNetworkSettings;->mNetworkModeSpinnerPreference:Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;

    invoke-virtual {v4}, Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;->getIsSpinnerShowing()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string/jumbo v4, "MobileNetworkSettings"

    const-string/jumbo v5, "Because networkmodespinner is showing,signalstrength can\'t be updated!!"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v4, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonSignalStrength:Landroid/preference/Preference;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/phone/MobileNetworkSettings;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getState()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v4, 0x1

    if-eq v4, v3, :cond_1

    const/4 v4, 0x3

    if-ne v4, v3, :cond_2

    :cond_1
    iget-object v4, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonSignalStrength:Landroid/preference/Preference;

    const-string/jumbo v5, "0"

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_2
    iget-object v4, p0, Lcom/android/phone/MobileNetworkSettings;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->getSignalStrengthDbm()I

    move-result v2

    if-ne v6, v2, :cond_3

    const/4 v2, 0x0

    :cond_3
    iget-object v4, p0, Lcom/android/phone/MobileNetworkSettings;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->getSignalStrengthLevelAsu()I

    move-result v1

    if-ne v6, v1, :cond_4

    const/4 v1, 0x0

    :cond_4
    iget-object v4, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonSignalStrength:Landroid/preference/Preference;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const v6, 0x7f0d0810

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "   "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const v6, 0x7f0d0811

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_5
    return-void
.end method


# virtual methods
.method synthetic -com_android_phone_MobileNetworkSettings_lambda$2(Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/MobileNetworkSettings;->handleIntentCallBack(Landroid/content/Intent;)V

    return-void
.end method

.method synthetic -com_android_phone_MobileNetworkSettings_lambda$3(Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/MobileNetworkSettings;->handleActionImsOnSimLoaded(Landroid/content/Intent;)V

    return-void
.end method

.method synthetic -com_android_phone_MobileNetworkSettings_lambda$4(Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/MobileNetworkSettings;->handleActionImsOnSimLoaded(Landroid/content/Intent;)V

    return-void
.end method

.method synthetic -com_android_phone_MobileNetworkSettings_lambda$5(Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/MobileNetworkSettings;->handleActionUpdatePreference()V

    return-void
.end method

.method synthetic -com_android_phone_MobileNetworkSettings_lambda$6(Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/MobileNetworkSettings;->handleActionCheckAndSetEnabled(Landroid/content/Intent;)V

    return-void
.end method

.method synthetic -com_android_phone_MobileNetworkSettings_lambda$7(Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/MobileNetworkSettings;->handleActionSimStateChanged()V

    return-void
.end method

.method synthetic -com_android_phone_MobileNetworkSettings_lambda$8(Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/MobileNetworkSettings;->handleSoftSimUpdateMenu()V

    return-void
.end method

.method checkAbsentSimStateAndDisplayToast()Z
    .locals 4

    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->isAbsentSimState(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    const v2, 0x7f0d088a

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    :cond_0
    return v0
.end method

.method public getButtonDataRoam()Landroid/preference/TwoStatePreference;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataRoam:Lcom/android/phone/RestrictedSwitchPreference;

    return-object v0
.end method

.method public getGsmUmtsOptions()Lcom/android/phone/GsmUmtsOptions;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mGsmUmtsOptions:Lcom/android/phone/GsmUmtsOptions;

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 6

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    const-string/jumbo v4, "exit_ecm_result"

    const/4 v5, 0x0

    invoke-virtual {p3, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/phone/MobileNetworkSettings;->mCdmaOptions:Lcom/android/phone/CdmaOptions;

    iget-object v5, p0, Lcom/android/phone/MobileNetworkSettings;->mClickedPreference:Landroid/preference/Preference;

    invoke-virtual {v4, v5}, Lcom/android/phone/CdmaOptions;->showDialog(Landroid/preference/Preference;)V

    goto :goto_0

    :pswitch_1
    if-eqz p3, :cond_0

    const-string/jumbo v4, "mNetworkModeAutoManual"

    const/4 v5, 0x2

    invoke-virtual {p3, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string/jumbo v4, "mSimNumber"

    const/4 v5, -0x1

    invoke-virtual {p3, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const-string/jumbo v3, ""

    packed-switch v0, :pswitch_data_1

    :goto_1
    iget-object v4, p0, Lcom/android/phone/MobileNetworkSettings;->mSummaryManager:Lcom/android/phone/mobilenetworks/SummaryManager;

    iget-object v5, p0, Lcom/android/phone/MobileNetworkSettings;->mGsmUmtsOptions:Lcom/android/phone/GsmUmtsOptions;

    invoke-virtual {v4, v3, v2, v5}, Lcom/android/phone/mobilenetworks/SummaryManager;->compositeSummaryNetworkOperator(Ljava/lang/String;ILcom/android/phone/GsmUmtsOptions;)V

    goto :goto_0

    :pswitch_2
    const v4, 0x7f0d0352

    invoke-virtual {p0, v4}, Lcom/android/phone/MobileNetworkSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :pswitch_3
    const v4, 0x7f0d0c30

    invoke-virtual {p0, v4}, Lcom/android/phone/MobileNetworkSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :pswitch_4
    const v4, 0x7f0d0350

    invoke-virtual {p0, v4}, Lcom/android/phone/MobileNetworkSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    const-string/jumbo v0, "MobileNetworkSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onConfigurationChanged"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

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
    .locals 14

    const/4 v13, 0x1

    const-string/jumbo v10, "onCreate:+"

    invoke-static {v10}, Lcom/android/phone/MobileNetworkSettings;->log(Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettings;->checkAbsentSimStateAndDisplayToast()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettings;->finish()V

    return-void

    :cond_0
    const-string/jumbo v10, "user"

    invoke-virtual {p0, v10}, Lcom/android/phone/MobileNetworkSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/UserManager;

    iput-object v10, p0, Lcom/android/phone/MobileNetworkSettings;->mUm:Landroid/os/UserManager;

    invoke-static {}, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager;->getInstance()Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager;

    move-result-object v10

    iput-object v10, p0, Lcom/android/phone/MobileNetworkSettings;->mMobileNetworksDialogManager:Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager;

    new-instance v10, Lcom/android/phone/mobilenetworks/SummaryManager;

    invoke-direct {v10, p0}, Lcom/android/phone/mobilenetworks/SummaryManager;-><init>(Landroid/content/Context;)V

    iput-object v10, p0, Lcom/android/phone/MobileNetworkSettings;->mSummaryManager:Lcom/android/phone/mobilenetworks/SummaryManager;

    invoke-static {}, Lcom/android/phone/mobilenetworks/controller/IntentManager;->getInstance()Lcom/android/phone/mobilenetworks/controller/IntentManager;

    move-result-object v10

    iput-object v10, p0, Lcom/android/phone/MobileNetworkSettings;->mIntentManager:Lcom/android/phone/mobilenetworks/controller/IntentManager;

    const-string/jumbo v10, "MobileNetworkSettings"

    const-string/jumbo v11, "onCreate"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v10, p0, Lcom/android/phone/MobileNetworkSettings;->mUm:Landroid/os/UserManager;

    if-eqz v10, :cond_1

    iget-object v10, p0, Lcom/android/phone/MobileNetworkSettings;->mUm:Landroid/os/UserManager;

    const-string/jumbo v11, "no_config_mobile_networks"

    invoke-virtual {v10, v11}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    const-string/jumbo v10, "MobileNetworkSettings"

    const-string/jumbo v11, "onResume: DISALLOW_CONFIG_MOBILE_NETWORKS > this activity is finished."

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    const-string/jumbo v11, "no_config_mobile_networks"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v12

    invoke-static {v10, v11, v12}, Lcom/android/settingslib/RestrictedLockUtils;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10, v1}, Lcom/android/settingslib/RestrictedLockUtils;->getShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/phone/MobileNetworkSettings;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettings;->finish()V

    :cond_1
    invoke-direct {p0}, Lcom/android/phone/MobileNetworkSettings;->onCreateConsumed()Z

    move-result v10

    if-eqz v10, :cond_2

    const-string/jumbo v10, "MobileNetworkSettings"

    const-string/jumbo v11, "onCreate: consumed"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    const v10, 0x7f070046

    iput v10, p0, Lcom/android/phone/MobileNetworkSettings;->mXmlResId:I

    iget v10, p0, Lcom/android/phone/MobileNetworkSettings;->mXmlResId:I

    invoke-virtual {p0, v10}, Lcom/android/phone/MobileNetworkSettings;->addPreferencesFromResource(I)V

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v10

    iput-object v10, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettings;->getIntent()Landroid/content/Intent;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/phone/MobileNetworkSettings;->onCreateMultiSim(Landroid/content/Intent;)V

    invoke-static {p0}, Lcom/android/phone/mobilenetworks/MobileNetworkUtils;->removePreferenceActivityPadding(Landroid/preference/PreferenceActivity;)V

    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    const-string/jumbo v10, "button_roaming_key"

    invoke-static {v7, v10}, Lcom/android/phone/mobilenetworks/MobileNetworkUtils;->findPreference(Landroid/preference/PreferenceScreen;Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Lcom/android/phone/RestrictedSwitchPreference;

    iput-object v10, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataRoam:Lcom/android/phone/RestrictedSwitchPreference;

    const-string/jumbo v10, "button_data_enabled_key"

    invoke-static {v7, v10}, Lcom/android/phone/mobilenetworks/MobileNetworkUtils;->findPreference(Landroid/preference/PreferenceScreen;Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/TwoStatePreference;

    iput-object v10, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataEnabled:Landroid/preference/TwoStatePreference;

    const-string/jumbo v10, "volte_call_key"

    invoke-virtual {v7, v10}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/SwitchPreference;

    iput-object v10, p0, Lcom/android/phone/MobileNetworkSettings;->mVolteCall:Landroid/preference/SwitchPreference;

    const-string/jumbo v10, "wifi_calling_key"

    invoke-virtual {v7, v10}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/SwitchPreference;

    iput-object v10, p0, Lcom/android/phone/MobileNetworkSettings;->mWifiCalling:Landroid/preference/SwitchPreference;

    const-string/jumbo v10, "button_enhanced_4glte_key"

    invoke-virtual {v7, v10}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/PreferenceScreen;

    iput-object v10, p0, Lcom/android/phone/MobileNetworkSettings;->mEnhanced4GLTE:Landroid/preference/PreferenceScreen;

    const-string/jumbo v10, "button_international_enhanced_4glte_key"

    invoke-virtual {v7, v10}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Lcom/samsung/android/settingslib/RestrictedPreference;

    iput-object v10, p0, Lcom/android/phone/MobileNetworkSettings;->mInternationalEnhanced4GLTE:Lcom/samsung/android/settingslib/RestrictedPreference;

    const-string/jumbo v10, "preferred_roaming_key"

    invoke-virtual {v7, v10}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Lcom/android/phone/RestrictedListPreference;

    iput-object v10, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredDataRoamingMode:Lcom/android/phone/RestrictedListPreference;

    const-string/jumbo v10, "enhanced_roaming_mode_key"

    invoke-virtual {v7, v10}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Lcom/samsung/android/settingslib/RestrictedPreference;

    iput-object v10, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonEnhancedRoamingMode:Lcom/samsung/android/settingslib/RestrictedPreference;

    const-string/jumbo v10, "button_roaming_settings_key"

    invoke-virtual {v7, v10}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Lcom/samsung/android/settingslib/RestrictedPreference;

    iput-object v10, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonRoamingSettingKey:Lcom/samsung/android/settingslib/RestrictedPreference;

    invoke-direct {p0, v7}, Lcom/android/phone/MobileNetworkSettings;->menuSimplification(Landroid/preference/PreferenceScreen;)V

    iget-object v10, p0, Lcom/android/phone/MobileNetworkSettings;->mSummaryManager:Lcom/android/phone/mobilenetworks/SummaryManager;

    iget-object v11, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataEnabled:Landroid/preference/TwoStatePreference;

    invoke-virtual {v10, v11}, Lcom/android/phone/mobilenetworks/SummaryManager;->setSummaryButtonDataEnabled(Landroid/preference/TwoStatePreference;)V

    iget-object v10, p0, Lcom/android/phone/MobileNetworkSettings;->mSummaryManager:Lcom/android/phone/mobilenetworks/SummaryManager;

    iget-object v11, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataRoam:Lcom/android/phone/RestrictedSwitchPreference;

    invoke-virtual {v10, v11}, Lcom/android/phone/mobilenetworks/SummaryManager;->setSummaryButtonDataRoam(Landroid/preference/TwoStatePreference;)V

    invoke-direct {p0}, Lcom/android/phone/MobileNetworkSettings;->updatePlaySim()V

    invoke-static {}, Lcom/android/phone/mobilenetworks/boundary/PhoneProxy;->getPhoneType()I

    move-result v6

    invoke-static {}, Lcom/android/phone/mobilenetworks/boundary/PhoneProxy;->getLteOnCdmaMode()I

    move-result v10

    if-ne v10, v13, :cond_b

    const/4 v4, 0x1

    :goto_0
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "isLteOnCdma = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/phone/MobileNetworkSettings;->log(Ljava/lang/String;)V

    invoke-direct {p0, v7, v6, v4}, Lcom/android/phone/MobileNetworkSettings;->createOptions(Landroid/preference/PreferenceScreen;IZ)V

    invoke-direct {p0, v7}, Lcom/android/phone/MobileNetworkSettings;->initPreference(Landroid/preference/PreferenceScreen;)V

    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettings;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0, v13}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_3
    const-string/jumbo v10, "feature_att"

    invoke-static {v10}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-direct {p0}, Lcom/android/phone/MobileNetworkSettings;->updateRoamingButtonForATT()V

    :cond_4
    const-string/jumbo v10, "phone"

    invoke-virtual {p0, v10}, Lcom/android/phone/MobileNetworkSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/telephony/TelephonyManager;

    iput-object v10, p0, Lcom/android/phone/MobileNetworkSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const-string/jumbo v10, "global_data_roaming_access_key"

    invoke-virtual {v7, v10}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Lcom/android/phone/GlobalDataRoamingAccess;

    iput-object v10, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonGlobalDataRoamingAccess:Lcom/android/phone/GlobalDataRoamingAccess;

    const-string/jumbo v10, "roaming_state_key"

    invoke-virtual {v7, v10}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    iput-object v10, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonRoamingState:Landroid/preference/Preference;

    const-string/jumbo v10, "signal_strength_key"

    invoke-virtual {v7, v10}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    iput-object v10, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonSignalStrength:Landroid/preference/Preference;

    const-string/jumbo v10, "omadm_lte_forced_nv"

    invoke-static {v10}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-direct {p0}, Lcom/android/phone/MobileNetworkSettings;->setPreferredNetworkModeEnabled()V

    :cond_5
    iget-object v10, p0, Lcom/android/phone/MobileNetworkSettings;->mSummaryManager:Lcom/android/phone/mobilenetworks/SummaryManager;

    iget-object v11, p0, Lcom/android/phone/MobileNetworkSettings;->mVolteCall:Landroid/preference/SwitchPreference;

    invoke-virtual {v10, v11}, Lcom/android/phone/mobilenetworks/SummaryManager;->changeSummaryWhenVolteInabled(Landroid/preference/SwitchPreference;)V

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v10

    if-eqz v10, :cond_c

    const/4 v5, 0x1

    :goto_1
    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x1120075

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    iget-object v10, p0, Lcom/android/phone/MobileNetworkSettings;->mUm:Landroid/os/UserManager;

    if-eqz v10, :cond_6

    iget-object v10, p0, Lcom/android/phone/MobileNetworkSettings;->mUm:Landroid/os/UserManager;

    const-string/jumbo v11, "no_config_cell_broadcasts"

    invoke-virtual {v10, v11}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    :cond_6
    if-nez v5, :cond_d

    if-eqz v3, :cond_d

    :cond_7
    :goto_2
    const-string/jumbo v10, "feature_zvv"

    invoke-static {v10}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_8

    iget-object v10, p0, Lcom/android/phone/MobileNetworkSettings;->mSummaryManager:Lcom/android/phone/mobilenetworks/SummaryManager;

    iget-object v11, p0, Lcom/android/phone/MobileNetworkSettings;->mGsmUmtsOptions:Lcom/android/phone/GsmUmtsOptions;

    invoke-virtual {v10, v11}, Lcom/android/phone/mobilenetworks/SummaryManager;->setSummaryButtonCarrierOperator(Lcom/android/phone/GsmUmtsOptions;)V

    :cond_8
    invoke-static {}, Lcom/android/phone/mobilenetworks/MobileNetworksManager;->getInstance()Lcom/android/phone/mobilenetworks/MobileNetworksManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/phone/mobilenetworks/MobileNetworksManager;->isRemoveGsmUmtsOptionsSRoaming()Z

    move-result v10

    if-eqz v10, :cond_9

    invoke-direct {p0}, Lcom/android/phone/MobileNetworkSettings;->finishActivityWhenSpecipicState()V

    :cond_9
    invoke-static {}, Lcom/android/phone/mobilenetworks/MobileNetworksManager;->getInstance()Lcom/android/phone/mobilenetworks/MobileNetworksManager;

    move-result-object v10

    iget v11, p0, Lcom/android/phone/MobileNetworkSettings;->mXmlResId:I

    invoke-virtual {v10, v7, v11}, Lcom/android/phone/mobilenetworks/MobileNetworksManager;->removePreferences(Landroid/preference/PreferenceScreen;I)V

    const-string/jumbo v10, "config_hide_status_bar"

    invoke-static {v10}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_a

    invoke-static {p0}, Lcom/android/phone/PhoneUtilsCommon;->setHideLandscapeIndicatorBar(Landroid/app/Activity;)V

    :cond_a
    invoke-direct {p0}, Lcom/android/phone/MobileNetworkSettings;->createReceivers()V

    const-string/jumbo v10, "MobileNetworkSettings"

    const-string/jumbo v11, "Settings.onCreate()"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_b
    const/4 v4, 0x0

    goto/16 :goto_0

    :cond_c
    const/4 v5, 0x0

    goto :goto_1

    :cond_d
    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    const-string/jumbo v10, "cell_broadcast_settings"

    invoke-virtual {p0, v10}, Lcom/android/phone/MobileNetworkSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    if-eqz v8, :cond_7

    invoke-virtual {v9, v8}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_2
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 3

    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0345

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    return-object v0
.end method

.method protected onDestroy()V
    .locals 1

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mNetworkModeSpinnerPreference:Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mNetworkModeSpinnerPreference:Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;

    invoke-virtual {v0}, Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;->cleanUp()V

    :cond_0
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mNetworkModeSpinnerPreference2:Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mNetworkModeSpinnerPreference2:Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;

    invoke-virtual {v0}, Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;->cleanUp()V

    :cond_1
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mMobileNetworksDialogManager:Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mMobileNetworksDialogManager:Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager;

    invoke-virtual {v0}, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager;->dismissIfPossible()V

    :cond_2
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettings;->finish()V

    const/4 v1, 0x1

    return v1

    :cond_0
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    return v1
.end method

.method protected onPause()V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    const-string/jumbo v0, "onPause:+"

    invoke-static {v0}, Lcom/android/phone/MobileNetworkSettings;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mNetworkModeSpinnerPreference:Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mNetworkModeSpinnerPreference:Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;

    invoke-virtual {v0}, Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;->teardown()V

    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mNetworkModeSpinnerPreference:Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;

    invoke-virtual {v0, v2}, Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;->setContext(Landroid/content/Context;)V

    :cond_0
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mNetworkModeSpinnerPreference2:Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mNetworkModeSpinnerPreference2:Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;

    invoke-virtual {v0}, Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;->teardown()V

    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mNetworkModeSpinnerPreference2:Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;

    invoke-virtual {v0, v2}, Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;->setContext(Landroid/content/Context;)V

    :cond_1
    const-string/jumbo v0, "support_bixby"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/bixby/BixbyApi;->clearInterimStateListener()V

    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    const-string/jumbo v1, "MobileNetworks"

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/bixby/BixbyApi;->logExitState(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mStateListener:Lcom/android/phone/ia/IAInterimListener;

    invoke-interface {v0}, Lcom/android/phone/ia/IAInterimListener;->clear()V

    iput-object v2, p0, Lcom/android/phone/MobileNetworkSettings;->mStateListener:Lcom/android/phone/ia/IAInterimListener;

    :cond_2
    invoke-direct {p0}, Lcom/android/phone/MobileNetworkSettings;->unregisterContentObservers()V

    invoke-direct {p0}, Lcom/android/phone/MobileNetworkSettings;->unregisterIntentReceivers()V

    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4

    const/4 v2, 0x1

    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredDataRoamingMode:Lcom/android/phone/RestrictedListPreference;

    if-ne p1, v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredDataRoamingMode:Lcom/android/phone/RestrictedListPreference;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v1, p2}, Lcom/android/phone/RestrictedListPreference;->setValue(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredDataRoamingMode:Lcom/android/phone/RestrictedListPreference;

    invoke-virtual {v1}, Lcom/android/phone/RestrictedListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const-string/jumbo v1, "data_roaming_option_national"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v1, "data_roaming_option_all"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    :goto_0
    if-nez v1, :cond_3

    if-ne v0, v2, :cond_3

    :cond_0
    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mMobileNetworksDialogManager:Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager;

    iget-object v3, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredDataRoamingMode:Lcom/android/phone/RestrictedListPreference;

    invoke-virtual {v1, v0, v3}, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager;->showRoamingWarningDialog(ILandroid/preference/ListPreference;)V

    :cond_1
    :goto_1
    return v2

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    const-string/jumbo v1, "data_roaming_option_all"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    :cond_4
    invoke-static {v0}, Lcom/android/phone/mobilenetworks/boundary/PhoneProxy;->setSelectedDataRoamingMode(I)V

    goto :goto_1
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 6

    const/4 v3, 0x0

    const/4 v5, 0x1

    iget-object v2, p0, Lcom/android/phone/MobileNetworkSettings;->mNetworkModeSpinnerPreference:Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/phone/MobileNetworkSettings;->mNetworkModeSpinnerPreference:Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;

    invoke-virtual {v2}, Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;->getIsSpinnerShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "onPreferenceTreeClick IsSpinnerShowing True"

    invoke-static {v2}, Lcom/android/phone/MobileNetworkSettings;->log(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/phone/MobileNetworkSettings;->mNetworkModeSpinnerPreference:Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;

    invoke-virtual {v2, v3}, Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;->setIsSpinnerShowing(Z)V

    :cond_0
    iget-object v2, p0, Lcom/android/phone/MobileNetworkSettings;->mGsmUmtsOptions:Lcom/android/phone/GsmUmtsOptions;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/phone/MobileNetworkSettings;->mGsmUmtsOptions:Lcom/android/phone/GsmUmtsOptions;

    invoke-virtual {v2, p2}, Lcom/android/phone/GsmUmtsOptions;->preferenceTreeClick(Landroid/preference/Preference;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v5

    :cond_1
    iget-object v2, p0, Lcom/android/phone/MobileNetworkSettings;->mCdmaOptions:Lcom/android/phone/CdmaOptions;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/phone/MobileNetworkSettings;->mCdmaOptions:Lcom/android/phone/CdmaOptions;

    invoke-virtual {v2, p2}, Lcom/android/phone/CdmaOptions;->preferenceTreeClick(Landroid/preference/Preference;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string/jumbo v2, "ril.cdma.inecmmode"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    iput-object p2, p0, Lcom/android/phone/MobileNetworkSettings;->mClickedPreference:Landroid/preference/Preference;

    :try_start_0
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.ACTION_SHOW_NOTICE_ECM_BLOCK_OTHERS"

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/16 v3, 0x11

    invoke-virtual {p0, v2, v3}, Lcom/android/phone/MobileNetworkSettings;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    return v5

    :catch_0
    move-exception v0

    const-string/jumbo v2, "MobileNetworkSettings"

    const-string/jumbo v3, "No activity found"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataRoam:Lcom/android/phone/RestrictedSwitchPreference;

    if-ne p2, v2, :cond_5

    const v2, 0x7f0d020a

    invoke-virtual {p0, v2}, Lcom/android/phone/MobileNetworkSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0d0294

    invoke-virtual {p0, v3}, Lcom/android/phone/MobileNetworkSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/utils/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "data_roaming_style_for_att"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/phone/MobileNetworkSettings;->mMobileNetworksDialogManager:Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager;

    iget-object v3, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataRoam:Lcom/android/phone/RestrictedSwitchPreference;

    invoke-virtual {v2, p0, v3}, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager;->setDataRoamingforATT(Landroid/content/Context;Landroid/preference/TwoStatePreference;)V

    :goto_1
    return v5

    :cond_4
    iget-object v2, p0, Lcom/android/phone/MobileNetworkSettings;->mMobileNetworksDialogManager:Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager;

    iget-object v3, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataRoam:Lcom/android/phone/RestrictedSwitchPreference;

    invoke-virtual {v2, p0, v3}, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager;->setDataRoaming(Landroid/content/Context;Landroid/preference/TwoStatePreference;)V

    goto :goto_1

    :cond_5
    iget-object v2, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataEnabled:Landroid/preference/TwoStatePreference;

    if-ne p2, v2, :cond_6

    iget-object v2, p0, Lcom/android/phone/MobileNetworkSettings;->mMobileNetworksDialogManager:Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager;

    iget-object v3, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataEnabled:Landroid/preference/TwoStatePreference;

    invoke-virtual {v2, p0, v3}, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager;->setMobileDataEnabledDialog(Landroid/content/Context;Landroid/preference/TwoStatePreference;)V

    return v5

    :cond_6
    iget-object v2, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredDataRoamingMode:Lcom/android/phone/RestrictedListPreference;

    if-ne p2, v2, :cond_7

    return v5

    :cond_7
    iget-object v2, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonGlobalDataRoamingAccess:Lcom/android/phone/GlobalDataRoamingAccess;

    if-ne p2, v2, :cond_8

    return v5

    :cond_8
    iget-object v2, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonRoamingState:Landroid/preference/Preference;

    if-ne p2, v2, :cond_9

    return v5

    :cond_9
    iget-object v2, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonSignalStrength:Landroid/preference/Preference;

    if-ne p2, v2, :cond_a

    invoke-direct {p0}, Lcom/android/phone/MobileNetworkSettings;->updateSignalStrength()V

    return v5

    :cond_a
    iget-object v2, p0, Lcom/android/phone/MobileNetworkSettings;->mNetworkModeSpinnerPreference:Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;

    if-ne p2, v2, :cond_b

    return v5

    :cond_b
    iget-object v2, p0, Lcom/android/phone/MobileNetworkSettings;->mNetworkModeSpinnerPreference2:Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;

    if-ne p2, v2, :cond_c

    return v5

    :cond_c
    iget-object v2, p0, Lcom/android/phone/MobileNetworkSettings;->mVolteCall:Landroid/preference/SwitchPreference;

    if-ne p2, v2, :cond_d

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onPreferenceTreeClick volte : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/MobileNetworkSettings;->mVolteCall:Landroid/preference/SwitchPreference;

    invoke-virtual {v3}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/MobileNetworkSettings;->log(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/phone/MobileNetworkSettings;->mVolteCall:Landroid/preference/SwitchPreference;

    invoke-virtual {v2}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v2

    iget-object v3, p0, Lcom/android/phone/MobileNetworkSettings;->mVolteCall:Landroid/preference/SwitchPreference;

    invoke-direct {p0, v2, v3}, Lcom/android/phone/MobileNetworkSettings;->VolteCallSettingTreeClick(ZLandroid/preference/SwitchPreference;)V

    return v5

    :cond_d
    iget-object v2, p0, Lcom/android/phone/MobileNetworkSettings;->mWifiCalling:Landroid/preference/SwitchPreference;

    if-ne p2, v2, :cond_10

    iget-object v2, p0, Lcom/android/phone/MobileNetworkSettings;->mWifiCalling:Landroid/preference/SwitchPreference;

    invoke-virtual {v2}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_f

    const/4 v1, 0x1

    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onPreferenceTreeClick mWifiCalling : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/MobileNetworkSettings;->log(Ljava/lang/String;)V

    const-string/jumbo v2, "wifi_call_enable"

    invoke-static {p0, v2, v1}, Lcom/android/phone/VoWifiSettingsDataBaseManager;->setInt(Landroid/content/Context;Ljava/lang/String;I)V

    invoke-static {}, Lcom/android/phone/TelephonyConfig;->isCellC()Z

    move-result v2

    if-nez v2, :cond_e

    invoke-direct {p0, v1}, Lcom/android/phone/MobileNetworkSettings;->sendBroadcastWifiCallEnable(I)V

    :cond_e
    iget-object v2, p0, Lcom/android/phone/MobileNetworkSettings;->mSummaryManager:Lcom/android/phone/mobilenetworks/SummaryManager;

    iget-object v3, p0, Lcom/android/phone/MobileNetworkSettings;->mWifiCalling:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v3}, Lcom/android/phone/mobilenetworks/SummaryManager;->setWifiCallingMenuSummary(Landroid/preference/SwitchPreference;)V

    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d01f1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d0243

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/utils/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return v5

    :cond_f
    const/4 v1, 0x0

    goto :goto_2

    :cond_10
    invoke-virtual {p1, v3}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    return v3
.end method

.method protected onResume()V
    .locals 14

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    const v11, 0x7f0d020a

    invoke-virtual {p0, v11}, Lcom/android/phone/MobileNetworkSettings;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/phone/utils/SALogging;->sendSAViewFlowLog(Ljava/lang/String;)V

    const-string/jumbo v11, "onResume:+"

    invoke-static {v11}, Lcom/android/phone/MobileNetworkSettings;->log(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/android/phone/mobilenetworks/MobileNetworkUtils;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v11

    const v12, 0x7f0d0c55

    const/4 v13, 0x1

    invoke-static {v11, v12, v13}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettings;->finish()V

    :cond_0
    iget-object v11, p0, Lcom/android/phone/MobileNetworkSettings;->mUm:Landroid/os/UserManager;

    if-eqz v11, :cond_1

    iget-object v11, p0, Lcom/android/phone/MobileNetworkSettings;->mUm:Landroid/os/UserManager;

    const-string/jumbo v12, "no_config_mobile_networks"

    invoke-virtual {v11, v12}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1

    const-string/jumbo v11, "MobileNetworkSettings"

    const-string/jumbo v12, "onResume: DISALLOW_CONFIG_MOBILE_NETWORKS > this activity is finished."

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v11, "no_config_mobile_networks"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v12

    invoke-static {p0, v11, v12}, Lcom/android/settingslib/RestrictedLockUtils;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/settingslib/RestrictedLockUtils;->getShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/phone/MobileNetworkSettings;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettings;->finish()V

    :cond_1
    invoke-static {p0}, Lcom/android/phone/mobilenetworks/MobileNetworkUtils;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_2

    const-string/jumbo v11, "MobileNetworkSettings"

    const-string/jumbo v12, "onResume: isFlighModeOn"

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettings;->finish()V

    :cond_2
    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v11

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    const-string/jumbo v11, "connectivity"

    invoke-virtual {p0, v11}, Lcom/android/phone/MobileNetworkSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    iget-object v11, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataEnabled:Landroid/preference/TwoStatePreference;

    if-eqz v11, :cond_3

    invoke-static {}, Lcom/android/phone/mobilenetworks/MobileNetworksSearchController;->getInstance()Lcom/android/phone/mobilenetworks/MobileNetworksSearchController;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/phone/mobilenetworks/MobileNetworksSearchController;->earlyTwoStatePreference()Z

    move-result v11

    if-eqz v11, :cond_19

    iget-object v11, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataEnabled:Landroid/preference/TwoStatePreference;

    invoke-static {}, Lcom/android/phone/mobilenetworks/MobileNetworksSearchController;->getInstance()Lcom/android/phone/mobilenetworks/MobileNetworksSearchController;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/phone/mobilenetworks/MobileNetworksSearchController;->getSettingValue()Z

    move-result v12

    invoke-virtual {v11, v12}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    :cond_3
    :goto_0
    const-string/jumbo v11, "volte_settings_in_mobile_networks_dcm"

    invoke-static {v11}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1c

    invoke-static {}, Lcom/android/phone/PhoneUtilsCommon;->isSupportVoLTE()Z

    move-result v11

    if-eqz v11, :cond_4

    iget-object v11, p0, Lcom/android/phone/MobileNetworkSettings;->mVolteCall:Landroid/preference/SwitchPreference;

    if-eqz v11, :cond_4

    invoke-static {}, Lcom/android/phone/mobilenetworks/boundary/PhoneProxy;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v11

    invoke-virtual {v11}, Landroid/telephony/ServiceState;->getState()I

    move-result v7

    iget-object v12, p0, Lcom/android/phone/MobileNetworkSettings;->mVolteCall:Landroid/preference/SwitchPreference;

    if-nez v7, :cond_1b

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v11

    iget-object v11, v11, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v11}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v11

    sget-object v13, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v11, v13, :cond_1a

    const/4 v11, 0x1

    :goto_1
    invoke-virtual {v12, v11}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    const-string/jumbo v11, "MobileNetworkSettings"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "DCM : check if voltecall is enabled, servicestate : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_2
    invoke-direct {p0}, Lcom/android/phone/MobileNetworkSettings;->checkAndSetEnabledForVolteCall()V

    invoke-direct {p0}, Lcom/android/phone/MobileNetworkSettings;->checkAndSetEnabledForRoamingMenu()V

    invoke-direct {p0}, Lcom/android/phone/MobileNetworkSettings;->updateEnterpriseDeviceManager()V

    const-string/jumbo v11, "vzw_volte_ui"

    invoke-static {v11}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_5

    const-string/jumbo v11, "volte_settings_in_mobile_networks_hk"

    invoke-static {v11}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_5

    const-string/jumbo v11, "volte_settings_in_mobile_networks_tw"

    invoke-static {v11}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_7

    :cond_5
    iget-object v11, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataEnabled:Landroid/preference/TwoStatePreference;

    if-eqz v11, :cond_7

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v11

    iget-object v11, v11, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v11}, Lcom/android/phone/PhoneUtilsCommon;->isOnVoLTECall(Lcom/android/internal/telephony/CallManager;)Z

    move-result v11

    if-nez v11, :cond_6

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v11

    iget-object v11, v11, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v11}, Lcom/android/phone/PhoneUtilsCommon;->isOnVoLTEVideoCall(Lcom/android/internal/telephony/CallManager;)Z

    move-result v11

    if-eqz v11, :cond_7

    :cond_6
    iget-object v11, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataEnabled:Landroid/preference/TwoStatePreference;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/preference/TwoStatePreference;->setEnabled(Z)V

    :cond_7
    const-string/jumbo v11, "toddler_mode_jpn"

    invoke-static {v11}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_9

    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string/jumbo v12, "toddler_mode_switch"

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    const/4 v12, 0x1

    if-eq v11, v12, :cond_8

    invoke-static {p0}, Lcom/android/phone/mobilenetworks/MobileNetworkUtils;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_23

    :cond_8
    const-string/jumbo v11, "MobileNetworkSettings"

    const-string/jumbo v12, "TODDLER_MODE_SWITCH or AIRPLAIN_MODE_SWITCH set! It blocked to set DATA"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v11, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataEnabled:Landroid/preference/TwoStatePreference;

    if-eqz v11, :cond_9

    iget-object v11, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataEnabled:Landroid/preference/TwoStatePreference;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/preference/TwoStatePreference;->setEnabled(Z)V

    :cond_9
    :goto_3
    iget-object v11, p0, Lcom/android/phone/MobileNetworkSettings;->mNetworkModeSpinnerPreference:Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;

    if-eqz v11, :cond_a

    iget-object v11, p0, Lcom/android/phone/MobileNetworkSettings;->mNetworkModeSpinnerPreference:Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;

    invoke-virtual {v11}, Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;->prepare()V

    :cond_a
    iget-object v11, p0, Lcom/android/phone/MobileNetworkSettings;->mNetworkModeSpinnerPreference2:Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;

    if-eqz v11, :cond_b

    iget-object v11, p0, Lcom/android/phone/MobileNetworkSettings;->mNetworkModeSpinnerPreference2:Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;

    invoke-virtual {v11}, Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;->prepare()V

    :cond_b
    const-string/jumbo v11, "global_network_cdma_gsm_enable"

    invoke-static {v11}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_c

    iget-object v11, p0, Lcom/android/phone/MobileNetworkSettings;->mGsmUmtsOptions:Lcom/android/phone/GsmUmtsOptions;

    if-eqz v11, :cond_c

    invoke-static {}, Lcom/android/phone/mobilenetworks/boundary/NetworkProxy;->getSimState()I

    move-result v9

    invoke-static {}, Lcom/android/phone/mobilenetworks/boundary/SettingProxy;->getPreferredNetworkMode()I

    move-result v8

    invoke-static {v8}, Lcom/android/phone/mobilenetworks/MobileNetworkUtils;->isGsmIncluded(I)Z

    move-result v5

    const/4 v11, 0x1

    if-eq v9, v11, :cond_24

    move v0, v5

    :goto_4
    iget-object v11, p0, Lcom/android/phone/MobileNetworkSettings;->mGsmUmtsOptions:Lcom/android/phone/GsmUmtsOptions;

    invoke-virtual {v11, v0}, Lcom/android/phone/GsmUmtsOptions;->setOperatorSelectionExpandEnabled(Z)V

    :cond_c
    const-string/jumbo v11, "omadm_lte_forced_nv"

    invoke-static {v11}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_d

    invoke-direct {p0}, Lcom/android/phone/MobileNetworkSettings;->setPreferredNetworkModeEnabled()V

    :cond_d
    const-string/jumbo v11, "support_soft_sim"

    invoke-static {v11}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_f

    invoke-static {p0}, Lcom/android/phone/PhoneUtilsMultiSIM;->getSRomaingVirtualSlot(Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_f

    iget-object v11, p0, Lcom/android/phone/MobileNetworkSettings;->mNetworkModeSpinnerPreference:Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;

    if-eqz v11, :cond_e

    iget-object v11, p0, Lcom/android/phone/MobileNetworkSettings;->mNetworkModeSpinnerPreference:Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;->setEnabled(Z)V

    :cond_e
    iget-object v11, p0, Lcom/android/phone/MobileNetworkSettings;->mNetworkModeSpinnerPreference2:Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;

    if-eqz v11, :cond_f

    iget-object v11, p0, Lcom/android/phone/MobileNetworkSettings;->mNetworkModeSpinnerPreference2:Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;->setEnabled(Z)V

    :cond_f
    const-string/jumbo v11, "feature_zvv"

    invoke-static {v11}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_10

    iget-object v11, p0, Lcom/android/phone/MobileNetworkSettings;->mSummaryManager:Lcom/android/phone/mobilenetworks/SummaryManager;

    iget-object v12, p0, Lcom/android/phone/MobileNetworkSettings;->mGsmUmtsOptions:Lcom/android/phone/GsmUmtsOptions;

    invoke-virtual {v11, v12}, Lcom/android/phone/mobilenetworks/SummaryManager;->setSummaryButtonCarrierOperator(Lcom/android/phone/GsmUmtsOptions;)V

    :cond_10
    iget-object v11, p0, Lcom/android/phone/MobileNetworkSettings;->mWifiCalling:Landroid/preference/SwitchPreference;

    if-eqz v11, :cond_12

    invoke-static {}, Lcom/android/phone/PhoneUtilsIMS;->isVoWifiSupported()Z

    move-result v11

    if-eqz v11, :cond_12

    invoke-static {}, Lcom/android/phone/utils/WifiSettingUtils;->getWiFiCallingTitle()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_11

    iget-object v11, p0, Lcom/android/phone/MobileNetworkSettings;->mWifiCalling:Landroid/preference/SwitchPreference;

    invoke-virtual {v11, v10}, Landroid/preference/SwitchPreference;->setTitle(Ljava/lang/CharSequence;)V

    :cond_11
    iget-object v11, p0, Lcom/android/phone/MobileNetworkSettings;->mSummaryManager:Lcom/android/phone/mobilenetworks/SummaryManager;

    iget-object v12, p0, Lcom/android/phone/MobileNetworkSettings;->mWifiCalling:Landroid/preference/SwitchPreference;

    invoke-virtual {v11, v12}, Lcom/android/phone/mobilenetworks/SummaryManager;->setWifiCallingMenuSummary(Landroid/preference/SwitchPreference;)V

    iget-object v11, p0, Lcom/android/phone/MobileNetworkSettings;->mWifiCalling:Landroid/preference/SwitchPreference;

    invoke-static {}, Lcom/android/phone/PhoneUtils;->isWifiCallStatus()Z

    move-result v12

    invoke-virtual {v11, v12}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :cond_12
    invoke-direct {p0}, Lcom/android/phone/MobileNetworkSettings;->registerContentObservers()V

    invoke-direct {p0}, Lcom/android/phone/MobileNetworkSettings;->registerIntentReceivers()V

    invoke-static {}, Lcom/android/phone/mobilenetworks/MobileNetworksSearchController;->getInstance()Lcom/android/phone/mobilenetworks/MobileNetworksSearchController;

    move-result-object v11

    invoke-virtual {v11, p0}, Lcom/android/phone/mobilenetworks/MobileNetworksSearchController;->launchPreferences(Landroid/preference/PreferenceActivity;)V

    iget-object v11, p0, Lcom/android/phone/MobileNetworkSettings;->mNetworkModeSpinnerPreference:Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;

    if-eqz v11, :cond_13

    iget-object v11, p0, Lcom/android/phone/MobileNetworkSettings;->mNetworkModeSpinnerPreference:Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;

    invoke-virtual {v11, p0}, Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;->setContext(Landroid/content/Context;)V

    :cond_13
    iget-object v11, p0, Lcom/android/phone/MobileNetworkSettings;->mNetworkModeSpinnerPreference2:Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;

    if-eqz v11, :cond_14

    iget-object v11, p0, Lcom/android/phone/MobileNetworkSettings;->mNetworkModeSpinnerPreference2:Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;

    invoke-virtual {v11, p0}, Lcom/android/phone/mobilenetworks/NetworkModeSpinnerPreference;->setContext(Landroid/content/Context;)V

    :cond_14
    invoke-static {}, Lcom/android/phone/mobilenetworks/MobileNetworksManager;->getInstance()Lcom/android/phone/mobilenetworks/MobileNetworksManager;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/phone/mobilenetworks/MobileNetworksManager;->isRemoveGsmUmtsOptionsSRoaming()Z

    move-result v11

    if-nez v11, :cond_15

    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->isAbsentSimState(Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_25

    invoke-direct {p0}, Lcom/android/phone/MobileNetworkSettings;->disableMenu()V

    iget-object v11, p0, Lcom/android/phone/MobileNetworkSettings;->mGsmUmtsOptions:Lcom/android/phone/GsmUmtsOptions;

    if-eqz v11, :cond_15

    iget-object v11, p0, Lcom/android/phone/MobileNetworkSettings;->mGsmUmtsOptions:Lcom/android/phone/GsmUmtsOptions;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/phone/GsmUmtsOptions;->updateMenu4SRoaming(Z)V

    :cond_15
    :goto_5
    const-string/jumbo v11, "support_bixby"

    invoke-static {v11}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_18

    new-instance v11, Lcom/android/phone/ia/MobileNetworkSettingsStateListener;

    invoke-direct {v11, p0}, Lcom/android/phone/ia/MobileNetworkSettingsStateListener;-><init>(Landroid/preference/PreferenceActivity;)V

    iput-object v11, p0, Lcom/android/phone/MobileNetworkSettings;->mStateListener:Lcom/android/phone/ia/IAInterimListener;

    iget-object v11, p0, Lcom/android/phone/MobileNetworkSettings;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    iget-object v12, p0, Lcom/android/phone/MobileNetworkSettings;->mStateListener:Lcom/android/phone/ia/IAInterimListener;

    invoke-virtual {v11, v12}, Lcom/samsung/android/sdk/bixby/BixbyApi;->setInterimStateListener(Lcom/samsung/android/sdk/bixby/BixbyApi$InterimStateListener;)V

    invoke-static {}, Lcom/android/phone/ia/IAUtil;->isIAExecutingState()Z

    move-result v11

    if-eqz v11, :cond_17

    const-string/jumbo v11, "MobileNetworks"

    invoke-static {}, Lcom/android/phone/ia/IAUtil;->getIAExecutingStateId()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_17

    invoke-static {}, Lcom/android/phone/ia/IAUtil;->isIAExecutingLastState()Z

    move-result v11

    if-eqz v11, :cond_16

    const-string/jumbo v11, "MobileNetworks"

    invoke-static {v11}, Lcom/android/phone/ia/IAUtil;->requestNLG(Ljava/lang/String;)V

    :cond_16
    sget-object v11, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-static {v11}, Lcom/android/phone/ia/IAUtil;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    :cond_17
    iget-object v11, p0, Lcom/android/phone/MobileNetworkSettings;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    const-string/jumbo v12, "MobileNetworks"

    invoke-virtual {v11, v12}, Lcom/samsung/android/sdk/bixby/BixbyApi;->logEnterState(Ljava/lang/String;)V

    :cond_18
    iget-object v11, p0, Lcom/android/phone/MobileNetworkSettings;->mMobileNetworksDialogManager:Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager;

    invoke-virtual {v11, p0}, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager;->recreateDialogFromContextIfNeeded(Landroid/content/Context;)V

    const-string/jumbo v11, "MobileNetworkSettings"

    const-string/jumbo v12, "onResume()"

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_19
    iget-object v11, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataEnabled:Landroid/preference/TwoStatePreference;

    invoke-direct {p0}, Lcom/android/phone/MobileNetworkSettings;->getMobileDataEnabled()Z

    move-result v12

    invoke-virtual {v11, v12}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v11, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataRoam:Lcom/android/phone/RestrictedSwitchPreference;

    invoke-direct {p0}, Lcom/android/phone/MobileNetworkSettings;->getMobileDataEnabled()Z

    move-result v12

    invoke-virtual {v11, v12}, Lcom/android/phone/RestrictedSwitchPreference;->setEnabled(Z)V

    goto/16 :goto_0

    :cond_1a
    const/4 v11, 0x0

    goto/16 :goto_1

    :cond_1b
    const/4 v11, 0x0

    goto/16 :goto_1

    :cond_1c
    invoke-static {}, Lcom/android/phone/mobilenetworks/boundary/PhoneProxy;->getState()Lcom/android/phone/mobilenetworks/boundary/PhoneProxy$State;

    move-result-object v6

    const-string/jumbo v11, "volte_settings_in_mobile_networks_usc"

    invoke-static {v11}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1d

    iget-object v11, p0, Lcom/android/phone/MobileNetworkSettings;->mVolteCall:Landroid/preference/SwitchPreference;

    if-eqz v11, :cond_4

    const-string/jumbo v11, "MobileNetworkSettings"

    const-string/jumbo v12, "USC : check if voltecall is enabled, onResume"

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_1d
    const-string/jumbo v11, "volte_settings_in_mobile_networks_tmo"

    invoke-static {v11}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_20

    iget-object v11, p0, Lcom/android/phone/MobileNetworkSettings;->mVolteCall:Landroid/preference/SwitchPreference;

    if-eqz v11, :cond_4

    invoke-static {}, Lcom/android/phone/mobilenetworks/boundary/NetworkProxy;->isEPSonly()Z

    move-result v4

    iget-object v12, p0, Lcom/android/phone/MobileNetworkSettings;->mVolteCall:Landroid/preference/SwitchPreference;

    if-nez v4, :cond_1f

    sget-object v11, Lcom/android/phone/mobilenetworks/boundary/PhoneProxy$State;->IDLE:Lcom/android/phone/mobilenetworks/boundary/PhoneProxy$State;

    if-ne v6, v11, :cond_1e

    const/4 v11, 0x1

    :goto_6
    invoke-virtual {v12, v11}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    const-string/jumbo v11, "MobileNetworkSettings"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "TMO : check if voltecall is enabled, isEpsonly : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " phoneState : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_1e
    const/4 v11, 0x0

    goto :goto_6

    :cond_1f
    const/4 v11, 0x0

    goto :goto_6

    :cond_20
    const-string/jumbo v11, "volte_settings_in_mobile_networks_common"

    invoke-static {v11}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_21

    const-string/jumbo v11, "volte_settings_in_mobile_networks_global"

    invoke-static {v11}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_4

    :cond_21
    invoke-static {}, Lcom/android/phone/PhoneUtilsCommon;->isSupportVoLTE()Z

    move-result v11

    if-eqz v11, :cond_4

    iget-object v11, p0, Lcom/android/phone/MobileNetworkSettings;->mVolteCall:Landroid/preference/SwitchPreference;

    if-eqz v11, :cond_4

    iget-object v12, p0, Lcom/android/phone/MobileNetworkSettings;->mVolteCall:Landroid/preference/SwitchPreference;

    sget-object v11, Lcom/android/phone/mobilenetworks/boundary/PhoneProxy$State;->IDLE:Lcom/android/phone/mobilenetworks/boundary/PhoneProxy$State;

    if-ne v6, v11, :cond_22

    const/4 v11, 0x1

    :goto_7
    invoke-virtual {v12, v11}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    const-string/jumbo v11, "MobileNetworkSettings"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "check if voltecall is enabled, callstate : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_22
    const/4 v11, 0x0

    goto :goto_7

    :cond_23
    invoke-direct {p0}, Lcom/android/phone/MobileNetworkSettings;->updateDataEnabledEnterpriseDeviceManager()V

    goto/16 :goto_3

    :cond_24
    const/4 v0, 0x0

    goto/16 :goto_4

    :cond_25
    iget-object v11, p0, Lcom/android/phone/MobileNetworkSettings;->mGsmUmtsOptions:Lcom/android/phone/GsmUmtsOptions;

    if-eqz v11, :cond_15

    iget-object v11, p0, Lcom/android/phone/MobileNetworkSettings;->mGsmUmtsOptions:Lcom/android/phone/GsmUmtsOptions;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/android/phone/GsmUmtsOptions;->updateMenu4SRoaming(Z)V

    goto/16 :goto_5
.end method
