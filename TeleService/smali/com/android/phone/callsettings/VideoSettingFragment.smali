.class public Lcom/android/phone/callsettings/VideoSettingFragment;
.super Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;
.source "VideoSettingFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/callsettings/VideoSettingFragment$1;,
        Lcom/android/phone/callsettings/VideoSettingFragment$2;,
        Lcom/android/phone/callsettings/VideoSettingFragment$3;
    }
.end annotation


# instance fields
.field private final DIALOG_DATA_LTE_ON:I

.field private final DIALOG_ENHANCED_LTE_ON:I

.field private final DIALOG_MOBILE_DATA_ON:I

.field private final DIALOG_ROAMING_DATA_LTE_ON:I

.field private final DIALOG_ROAMING_ENHANCED_LTE_ON:I

.field private final DIALOG_ROAMING_MOBILE_DATA_ON:I

.field private mATTVideoCall:Landroid/preference/SwitchPreference;

.field private mActivity:Landroid/app/Activity;

.field private mDataEnabledObserver:Landroid/database/ContentObserver;

.field private mDialogFragment:Lcom/android/phone/callsettings/CallSettingsDialogFragment;

.field private mHideVideo:Landroid/preference/PreferenceScreen;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPrefCategory:Landroid/preference/PreferenceCategory;

.field private mSwitchVoice:Landroid/preference/SwitchPreference;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mVZWVideoCall:Landroid/preference/SwitchPreference;

.field private mVideoCall:Landroid/preference/SwitchPreference;

.field private mVideoQuality:Landroid/preference/SwitchPreference;

.field private mVideoSpeaker:Landroid/preference/SwitchPreference;

.field public preferenceCount:I


# direct methods
.method static synthetic -get0(Lcom/android/phone/callsettings/VideoSettingFragment;)Landroid/preference/SwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/callsettings/VideoSettingFragment;->mATTVideoCall:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/phone/callsettings/VideoSettingFragment;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/callsettings/VideoSettingFragment;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/phone/callsettings/VideoSettingFragment;)Lcom/android/internal/telephony/Phone;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/callsettings/VideoSettingFragment;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/phone/callsettings/VideoSettingFragment;)Landroid/preference/SwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/callsettings/VideoSettingFragment;->mVZWVideoCall:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/phone/callsettings/VideoSettingFragment;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/callsettings/VideoSettingFragment;->onVoLTEVideoCallEnablePreferenceTreeClick(Z)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/phone/callsettings/VideoSettingFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/callsettings/VideoSettingFragment;->updateATTVideoCallSetting()V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/android/internal/telephony/Phone;Landroid/preference/PreferenceCategory;)V
    .locals 2

    invoke-direct {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;-><init>()V

    const/16 v0, 0x324

    iput v0, p0, Lcom/android/phone/callsettings/VideoSettingFragment;->DIALOG_ENHANCED_LTE_ON:I

    const/16 v0, 0x325

    iput v0, p0, Lcom/android/phone/callsettings/VideoSettingFragment;->DIALOG_MOBILE_DATA_ON:I

    const/16 v0, 0x326

    iput v0, p0, Lcom/android/phone/callsettings/VideoSettingFragment;->DIALOG_DATA_LTE_ON:I

    const/16 v0, 0x327

    iput v0, p0, Lcom/android/phone/callsettings/VideoSettingFragment;->DIALOG_ROAMING_ENHANCED_LTE_ON:I

    const/16 v0, 0x328

    iput v0, p0, Lcom/android/phone/callsettings/VideoSettingFragment;->DIALOG_ROAMING_MOBILE_DATA_ON:I

    const/16 v0, 0x329

    iput v0, p0, Lcom/android/phone/callsettings/VideoSettingFragment;->DIALOG_ROAMING_DATA_LTE_ON:I

    new-instance v0, Lcom/android/phone/callsettings/VideoSettingFragment$1;

    invoke-direct {v0, p0}, Lcom/android/phone/callsettings/VideoSettingFragment$1;-><init>(Lcom/android/phone/callsettings/VideoSettingFragment;)V

    iput-object v0, p0, Lcom/android/phone/callsettings/VideoSettingFragment;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/phone/callsettings/VideoSettingFragment$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/phone/callsettings/VideoSettingFragment$2;-><init>(Lcom/android/phone/callsettings/VideoSettingFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/phone/callsettings/VideoSettingFragment;->mDataEnabledObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/android/phone/callsettings/VideoSettingFragment$3;

    invoke-direct {v0, p0}, Lcom/android/phone/callsettings/VideoSettingFragment$3;-><init>(Lcom/android/phone/callsettings/VideoSettingFragment;)V

    iput-object v0, p0, Lcom/android/phone/callsettings/VideoSettingFragment;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    iput-object p3, p0, Lcom/android/phone/callsettings/VideoSettingFragment;->mPrefCategory:Landroid/preference/PreferenceCategory;

    iput-object p2, p0, Lcom/android/phone/callsettings/VideoSettingFragment;->mPhone:Lcom/android/internal/telephony/Phone;

    iput-object p1, p0, Lcom/android/phone/callsettings/VideoSettingFragment;->mActivity:Landroid/app/Activity;

    iget-object v0, p0, Lcom/android/phone/callsettings/VideoSettingFragment;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/phone/callsettings/VideoSettingFragment;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-static {}, Lcom/android/phone/callsettings/VideoSettingManager;->getInstance()Lcom/android/phone/callsettings/VideoSettingManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/callsettings/VideoSettingFragment;->mPrefCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Lcom/android/phone/callsettings/VideoSettingManager;->removePreferences(Landroid/preference/PreferenceCategory;)V

    iget-object v0, p0, Lcom/android/phone/callsettings/VideoSettingFragment;->mPrefCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v0

    iput v0, p0, Lcom/android/phone/callsettings/VideoSettingFragment;->preferenceCount:I

    invoke-virtual {p0}, Lcom/android/phone/callsettings/VideoSettingFragment;->initializeVideoSetting()V

    return-void
.end method

.method private getVideoCallATTEnabled()Z
    .locals 4

    const/4 v2, 0x0

    const/4 v0, 0x0

    const-string/jumbo v1, "videocall_type"

    invoke-static {v1, v2}, Lcom/android/phone/TeleServiceSystemDB;->getSettingDB(Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string/jumbo v1, "VideoSettingFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getVideoCallATTEnabled :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getVideoCallEnabled()Z
    .locals 4

    const/4 v2, 0x0

    const/4 v0, 0x0

    const-string/jumbo v1, "videocall_type"

    invoke-static {v1, v2}, Lcom/android/phone/TeleServiceSystemDB;->getSettingDB(Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string/jumbo v1, "VideoSettingFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getVideoCallEnabled :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onVoLTEVideoCallEnablePreferenceTreeClick(Z)V
    .locals 8

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/phone/callsettings/VideoSettingFragment;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0d024e

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v1, p0, Lcom/android/phone/callsettings/VideoSettingFragment;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f0d02f8

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :goto_0
    int-to-long v6, v1

    invoke-static {v3, v4, v6, v7}, Lcom/android/phone/utils/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;J)V

    if-eqz p1, :cond_2

    invoke-static {}, Lcom/android/phone/PhoneUtilsIMS;->setLTEVideoCallEnable()V

    :goto_1
    const-string/jumbo v1, "vzw_volte_ui"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "volteVTSettingShowNeverAgain"

    invoke-static {v1, v2}, Lcom/android/phone/TeleServiceSystemDB;->getSettingDB(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    const/16 v1, 0x320

    invoke-virtual {p0, v1}, Lcom/android/phone/callsettings/VideoSettingFragment;->showDialog(I)V

    :cond_0
    return-void

    :cond_1
    move v1, v2

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/android/phone/PhoneUtilsIMS;->setLTEVideoCallDisable()V

    goto :goto_1
.end method

.method private setVideoCallATTEnabled(Z)V
    .locals 8

    const/4 v2, 0x0

    const/4 v1, 0x1

    const-string/jumbo v0, "VideoSettingFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setVideoCallATTEnabled :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    iget-object v0, p0, Lcom/android/phone/callsettings/VideoSettingFragment;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0d024e

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/android/phone/callsettings/VideoSettingFragment;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f0d02f8

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "videocall_type"

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    int-to-long v6, v0

    invoke-static {v3, v4, v5, v6, v7}, Lcom/android/phone/utils/SALogging;->sendSAEventSettingLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    const-string/jumbo v0, "videocall_type"

    if-eqz p1, :cond_1

    :goto_1
    invoke-static {v0, v2}, Lcom/android/phone/TeleServiceSystemDB;->setSettingDB(Ljava/lang/String;I)V

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v2, v1

    goto :goto_1
.end method

.method private setVideoCallEnabled(Z)V
    .locals 8

    const/4 v2, 0x0

    const/4 v1, 0x1

    const-string/jumbo v0, "VideoSettingFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setVideoCallEnabled :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    iget-object v0, p0, Lcom/android/phone/callsettings/VideoSettingFragment;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0d024e

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/android/phone/callsettings/VideoSettingFragment;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f0d02f8

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "videocall_type"

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    int-to-long v6, v0

    invoke-static {v3, v4, v5, v6, v7}, Lcom/android/phone/utils/SALogging;->sendSAEventSettingLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    const-string/jumbo v0, "videocall_type"

    if-eqz p1, :cond_1

    :goto_1
    invoke-static {v0, v2}, Lcom/android/phone/TeleServiceSystemDB;->setSettingDB(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/android/phone/callsettings/VideoSettingFragment;->mActivity:Landroid/app/Activity;

    const v2, 0x7f0d0918

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v2, v1

    goto :goto_1
.end method

.method private updateATTVideoCallSetting()V
    .locals 14

    const/4 v9, 0x0

    const/4 v13, 0x1

    iget-object v10, p0, Lcom/android/phone/callsettings/VideoSettingFragment;->mATTVideoCall:Landroid/preference/SwitchPreference;

    if-nez v10, :cond_0

    return-void

    :cond_0
    sget-boolean v6, Lcom/android/phone/PhoneGlobals;->mVIDEOCALLToggleEnabled:Z

    iget-object v10, p0, Lcom/android/phone/callsettings/VideoSettingFragment;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v10}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lcom/android/phone/utils/VideoSettingUtils;->isMobileDataOn(Landroid/content/Context;)Z

    move-result v3

    const-string/jumbo v10, "voicecall_type"

    invoke-static {v10, v9}, Lcom/android/phone/TeleServiceSystemDB;->getSettingDB(Ljava/lang/String;I)I

    move-result v10

    if-nez v10, :cond_5

    const/4 v2, 0x1

    :goto_0
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v10

    invoke-static {v10}, Lcom/android/phone/PhoneUtilsCommon;->isInternationalRoaming(Lcom/android/internal/telephony/Phone;)Z

    move-result v5

    iget-object v10, p0, Lcom/android/phone/callsettings/VideoSettingFragment;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v10}, Lcom/android/internal/telephony/Phone;->getDataRoamingEnabled()Z

    move-result v4

    const-string/jumbo v10, "international_voicecall_type"

    invoke-static {v10, v9}, Lcom/android/phone/TeleServiceSystemDB;->getSettingDB(Ljava/lang/String;I)I

    move-result v10

    if-nez v10, :cond_6

    const/4 v1, 0x1

    :goto_1
    invoke-static {}, Lcom/android/phone/PhoneUtils;->isWifiCallStatus()Z

    move-result v7

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v10

    iget-object v0, v10, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {}, Lcom/android/phone/TeleServiceFeature;->getOmcNwCode()Ljava/lang/String;

    move-result-object v8

    invoke-static {}, Lcom/android/phone/TeleServiceSystemDB;->isUltraPowerSavingMode()Z

    move-result v10

    if-nez v10, :cond_1

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v10

    sget-object v11, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v10, v11, :cond_7

    :cond_1
    iget-object v10, p0, Lcom/android/phone/callsettings/VideoSettingFragment;->mATTVideoCall:Landroid/preference/SwitchPreference;

    if-eqz v10, :cond_2

    iget-object v10, p0, Lcom/android/phone/callsettings/VideoSettingFragment;->mATTVideoCall:Landroid/preference/SwitchPreference;

    invoke-virtual {v10, v9}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    :cond_2
    :goto_2
    const-string/jumbo v10, "VideoSettingFragment"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "isRoamingEnabled : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v13}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    if-eqz v5, :cond_9

    const-string/jumbo v10, "VideoSettingFragment"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "isRoamingDataEnabled : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v13}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    const-string/jumbo v10, "VideoSettingFragment"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "isIntLteServiceEnabled : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v13}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    const-string/jumbo v10, "VideoSettingFragment"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "isWfcSettingEnabled : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v13}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    iget-object v10, p0, Lcom/android/phone/callsettings/VideoSettingFragment;->mATTVideoCall:Landroid/preference/SwitchPreference;

    if-nez v4, :cond_3

    if-eqz v7, :cond_4

    :cond_3
    if-eqz v1, :cond_4

    invoke-direct {p0}, Lcom/android/phone/callsettings/VideoSettingFragment;->getVideoCallATTEnabled()Z

    move-result v9

    :cond_4
    invoke-virtual {v10, v9}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :goto_3
    invoke-virtual {p0}, Lcom/android/phone/callsettings/VideoSettingFragment;->updateATTVideoCallSummary()V

    return-void

    :cond_5
    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_6
    const/4 v1, 0x0

    goto/16 :goto_1

    :cond_7
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_8

    const-string/jumbo v10, "ATT"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    :cond_8
    const-string/jumbo v10, "VideoSettingFragment"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "isVideoSettingEnabled : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v13}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    iget-object v10, p0, Lcom/android/phone/callsettings/VideoSettingFragment;->mATTVideoCall:Landroid/preference/SwitchPreference;

    if-eqz v10, :cond_2

    iget-object v10, p0, Lcom/android/phone/callsettings/VideoSettingFragment;->mATTVideoCall:Landroid/preference/SwitchPreference;

    invoke-virtual {v10, v6}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    goto/16 :goto_2

    :cond_9
    const-string/jumbo v10, "VideoSettingFragment"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "isMobileDataEnabled : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v13}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    const-string/jumbo v10, "VideoSettingFragment"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "isLTEServiceEnabled : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v13}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    const-string/jumbo v10, "VideoSettingFragment"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "isWfcSettingEnabled : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v13}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    iget-object v10, p0, Lcom/android/phone/callsettings/VideoSettingFragment;->mATTVideoCall:Landroid/preference/SwitchPreference;

    if-nez v3, :cond_a

    if-eqz v7, :cond_b

    :cond_a
    if-eqz v2, :cond_b

    invoke-direct {p0}, Lcom/android/phone/callsettings/VideoSettingFragment;->getVideoCallATTEnabled()Z

    move-result v9

    :cond_b
    invoke-virtual {v10, v9}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto/16 :goto_3
.end method

.method private updateVZWVideoCallSetting()V
    .locals 5

    const/4 v4, 0x1

    invoke-static {}, Lcom/android/phone/TeleServiceFeature;->getOmcNwCode()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/callsettings/VideoSettingFragment;->mVZWVideoCall:Landroid/preference/SwitchPreference;

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/phone/PhoneUtilsIMS;->getImsManager()Lcom/sec/ims/ImsManager;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/callsettings/VideoSettingFragment;->mVZWVideoCall:Landroid/preference/SwitchPreference;

    iget-object v2, p0, Lcom/android/phone/callsettings/VideoSettingFragment;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/utils/VideoSettingUtils;->canEnablevolteVideoCall(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    invoke-static {}, Lcom/android/phone/TeleServiceSystemDB;->isUltraPowerSavingMode()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v1}, Lcom/android/phone/PhoneUtilsCommon;->isOnVoLTEVideoCall(Lcom/android/internal/telephony/CallManager;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, Lcom/android/phone/PhoneUtilsCommon;->isTtyModeOn()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "CCT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "VZW"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    iget-object v1, p0, Lcom/android/phone/callsettings/VideoSettingFragment;->mVZWVideoCall:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v4}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    :goto_0
    const-string/jumbo v1, "VideoSettingFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mVZWVideoCall checked : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/callsettings/VideoSettingFragment;->mVZWVideoCall:Landroid/preference/SwitchPreference;

    invoke-virtual {v3}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    const-string/jumbo v1, "VideoSettingFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mVZWVideoCall enabled : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/callsettings/VideoSettingFragment;->mVZWVideoCall:Landroid/preference/SwitchPreference;

    invoke-virtual {v3}, Landroid/preference/SwitchPreference;->isEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    :cond_1
    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/phone/callsettings/VideoSettingFragment;->mVZWVideoCall:Landroid/preference/SwitchPreference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_0
.end method

.method private updateVideoCallSetting()V
    .locals 7

    const/4 v6, 0x1

    const/4 v2, 0x0

    const-string/jumbo v3, "voicecall_type"

    invoke-static {v3, v2}, Lcom/android/phone/TeleServiceSystemDB;->getSettingDB(Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_3

    const/4 v0, 0x1

    :goto_0
    invoke-static {}, Lcom/android/phone/TeleServiceFeature;->getOmcNwCode()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/android/phone/callsettings/VideoSettingFragment;->mVideoCall:Landroid/preference/SwitchPreference;

    if-eqz v3, :cond_2

    invoke-static {}, Lcom/android/phone/PhoneUtilsIMS;->getImsManager()Lcom/sec/ims/ImsManager;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-static {}, Lcom/android/phone/TeleServiceSystemDB;->isUltraPowerSavingMode()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v3

    iget-object v3, v3, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v3}, Lcom/android/phone/PhoneUtilsCommon;->isOnVoLTEVideoCall(Lcom/android/internal/telephony/CallManager;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-static {}, Lcom/android/phone/PhoneUtilsCommon;->isTtyModeOn()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "USC"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "TEL"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_0
    iget-object v3, p0, Lcom/android/phone/callsettings/VideoSettingFragment;->mVideoCall:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v6}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    :goto_1
    const-string/jumbo v3, "VideoSettingFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isLTEServiceEnabled : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v6}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    iget-object v3, p0, Lcom/android/phone/callsettings/VideoSettingFragment;->mVideoCall:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/phone/callsettings/VideoSettingFragment;->getVideoCallEnabled()Z

    move-result v2

    :cond_1
    invoke-virtual {v3, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :cond_2
    return-void

    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/android/phone/callsettings/VideoSettingFragment;->mVideoCall:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v2}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_1
.end method


# virtual methods
.method public getpreferenceCount()I
    .locals 1

    iget v0, p0, Lcom/android/phone/callsettings/VideoSettingFragment;->preferenceCount:I

    return v0
.end method

.method protected initializeVideoSetting()V
    .locals 3

    invoke-static {}, Lcom/android/phone/callsettings/VideoSettingManager;->getInstance()Lcom/android/phone/callsettings/VideoSettingManager;

    iget-object v0, p0, Lcom/android/phone/callsettings/VideoSettingFragment;->mPrefCategory:Landroid/preference/PreferenceCategory;

    const-string/jumbo v1, "meterial_auto_divert_to_voice_call"

    sget-object v2, Lcom/android/phone/callsettings/CallsettingsConstants;->SwitchPreference:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/android/phone/callsettings/VideoSettingManager;->findPreference(Landroid/preference/PreferenceCategory;Ljava/lang/String;Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/android/phone/callsettings/VideoSettingFragment;->mSwitchVoice:Landroid/preference/SwitchPreference;

    iget-object v0, p0, Lcom/android/phone/callsettings/VideoSettingFragment;->mSwitchVoice:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/callsettings/VideoSettingFragment;->mSwitchVoice:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_0
    invoke-static {}, Lcom/android/phone/callsettings/VideoSettingManager;->getInstance()Lcom/android/phone/callsettings/VideoSettingManager;

    iget-object v0, p0, Lcom/android/phone/callsettings/VideoSettingFragment;->mPrefCategory:Landroid/preference/PreferenceCategory;

    const-string/jumbo v1, "meterial_video_call_quality_info"

    sget-object v2, Lcom/android/phone/callsettings/CallsettingsConstants;->SwitchPreference:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/android/phone/callsettings/VideoSettingManager;->findPreference(Landroid/preference/PreferenceCategory;Ljava/lang/String;Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/android/phone/callsettings/VideoSettingFragment;->mVideoQuality:Landroid/preference/SwitchPreference;

    iget-object v0, p0, Lcom/android/phone/callsettings/VideoSettingFragment;->mVideoQuality:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/callsettings/VideoSettingFragment;->mVideoQuality:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_1
    invoke-static {}, Lcom/android/phone/callsettings/VideoSettingManager;->getInstance()Lcom/android/phone/callsettings/VideoSettingManager;

    iget-object v0, p0, Lcom/android/phone/callsettings/VideoSettingFragment;->mPrefCategory:Landroid/preference/PreferenceCategory;

    const-string/jumbo v1, "meterial_video_call_speaker"

    sget-object v2, Lcom/android/phone/callsettings/CallsettingsConstants;->SwitchPreference:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/android/phone/callsettings/VideoSettingManager;->findPreference(Landroid/preference/PreferenceCategory;Ljava/lang/String;Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/android/phone/callsettings/VideoSettingFragment;->mVideoSpeaker:Landroid/preference/SwitchPreference;

    iget-object v0, p0, Lcom/android/phone/callsettings/VideoSettingFragment;->mVideoSpeaker:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/callsettings/VideoSettingFragment;->mVideoSpeaker:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_2
    invoke-static {}, Lcom/android/phone/callsettings/VideoSettingManager;->getInstance()Lcom/android/phone/callsettings/VideoSettingManager;

    iget-object v0, p0, Lcom/android/phone/callsettings/VideoSettingFragment;->mPrefCategory:Landroid/preference/PreferenceCategory;

    const-string/jumbo v1, "volte_videocall_enable"

    sget-object v2, Lcom/android/phone/callsettings/CallsettingsConstants;->SwitchPreference:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/android/phone/callsettings/VideoSettingManager;->findPreference(Landroid/preference/PreferenceCategory;Ljava/lang/String;Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/android/phone/callsettings/VideoSettingFragment;->mVZWVideoCall:Landroid/preference/SwitchPreference;

    iget-object v0, p0, Lcom/android/phone/callsettings/VideoSettingFragment;->mVZWVideoCall:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/phone/callsettings/VideoSettingFragment;->mVZWVideoCall:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_3
    invoke-static {}, Lcom/android/phone/callsettings/VideoSettingManager;->getInstance()Lcom/android/phone/callsettings/VideoSettingManager;

    iget-object v0, p0, Lcom/android/phone/callsettings/VideoSettingFragment;->mPrefCategory:Landroid/preference/PreferenceCategory;

    const-string/jumbo v1, "button_enable_video_call_att"

    sget-object v2, Lcom/android/phone/callsettings/CallsettingsConstants;->SwitchPreference:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/android/phone/callsettings/VideoSettingManager;->findPreference(Landroid/preference/PreferenceCategory;Ljava/lang/String;Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/android/phone/callsettings/VideoSettingFragment;->mATTVideoCall:Landroid/preference/SwitchPreference;

    iget-object v0, p0, Lcom/android/phone/callsettings/VideoSettingFragment;->mATTVideoCall:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/phone/callsettings/VideoSettingFragment;->mATTVideoCall:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_4
    invoke-static {}, Lcom/android/phone/callsettings/VideoSettingManager;->getInstance()Lcom/android/phone/callsettings/VideoSettingManager;

    iget-object v0, p0, Lcom/android/phone/callsettings/VideoSettingFragment;->mPrefCategory:Landroid/preference/PreferenceCategory;

    const-string/jumbo v1, "button_enable_video_call"

    sget-object v2, Lcom/android/phone/callsettings/CallsettingsConstants;->SwitchPreference:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/android/phone/callsettings/VideoSettingManager;->findPreference(Landroid/preference/PreferenceCategory;Ljava/lang/String;Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/android/phone/callsettings/VideoSettingFragment;->mVideoCall:Landroid/preference/SwitchPreference;

    iget-object v0, p0, Lcom/android/phone/callsettings/VideoSettingFragment;->mVideoCall:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/phone/callsettings/VideoSettingFragment;->mVideoCall:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_5
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 14

    const v13, 0x7f0d08fd

    const v12, 0x7f0d032a

    const v11, 0x7f0d051c

    const v10, 0x7f0d09d7

    const/16 v9, 0x8

    const-string/jumbo v6, "VideoSettingFragment"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onCreateDialog : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-static {v6, v7, v8}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    iget-object v6, p0, Lcom/android/phone/callsettings/VideoSettingFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v6, 0x7f040103

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v6, 0x7f1002c4

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    const v6, 0x1020001

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Checkable;

    const v6, 0x7f100020

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/android/phone/callsettings/VideoSettingFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/16 v6, 0x326

    if-ne p1, v6, :cond_0

    invoke-virtual {v3, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const v6, 0x7f0d0924

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    new-instance v6, Lcom/android/phone/callsettings/VideoSettingFragment$4;

    invoke-direct {v6, p0}, Lcom/android/phone/callsettings/VideoSettingFragment$4;-><init>(Lcom/android/phone/callsettings/VideoSettingFragment;)V

    invoke-virtual {v0, v11, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v6, Lcom/android/phone/callsettings/VideoSettingFragment$5;

    invoke-direct {v6, p0}, Lcom/android/phone/callsettings/VideoSettingFragment$5;-><init>(Lcom/android/phone/callsettings/VideoSettingFragment;)V

    invoke-virtual {v0, v10, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    return-object v6

    :cond_0
    const/16 v6, 0x325

    if-ne p1, v6, :cond_1

    invoke-virtual {v3, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const v6, 0x7f0d0923

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    new-instance v6, Lcom/android/phone/callsettings/VideoSettingFragment$6;

    invoke-direct {v6, p0}, Lcom/android/phone/callsettings/VideoSettingFragment$6;-><init>(Lcom/android/phone/callsettings/VideoSettingFragment;)V

    invoke-virtual {v0, v11, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v6, Lcom/android/phone/callsettings/VideoSettingFragment$7;

    invoke-direct {v6, p0}, Lcom/android/phone/callsettings/VideoSettingFragment$7;-><init>(Lcom/android/phone/callsettings/VideoSettingFragment;)V

    invoke-virtual {v0, v10, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    return-object v6

    :cond_1
    const/16 v6, 0x324

    if-ne p1, v6, :cond_2

    invoke-virtual {v3, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const v6, 0x7f0d0922

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    new-instance v6, Lcom/android/phone/callsettings/VideoSettingFragment$8;

    invoke-direct {v6, p0}, Lcom/android/phone/callsettings/VideoSettingFragment$8;-><init>(Lcom/android/phone/callsettings/VideoSettingFragment;)V

    invoke-virtual {v0, v11, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v6, Lcom/android/phone/callsettings/VideoSettingFragment$9;

    invoke-direct {v6, p0}, Lcom/android/phone/callsettings/VideoSettingFragment$9;-><init>(Lcom/android/phone/callsettings/VideoSettingFragment;)V

    invoke-virtual {v0, v10, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    return-object v6

    :cond_2
    const/16 v6, 0x327

    if-ne p1, v6, :cond_3

    invoke-virtual {v3, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const v6, 0x7f0d0924

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    new-instance v6, Lcom/android/phone/callsettings/VideoSettingFragment$10;

    invoke-direct {v6, p0}, Lcom/android/phone/callsettings/VideoSettingFragment$10;-><init>(Lcom/android/phone/callsettings/VideoSettingFragment;)V

    invoke-virtual {v0, v11, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v6, Lcom/android/phone/callsettings/VideoSettingFragment$11;

    invoke-direct {v6, p0}, Lcom/android/phone/callsettings/VideoSettingFragment$11;-><init>(Lcom/android/phone/callsettings/VideoSettingFragment;)V

    invoke-virtual {v0, v10, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    return-object v6

    :cond_3
    const/16 v6, 0x328

    if-ne p1, v6, :cond_4

    invoke-virtual {v3, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const v6, 0x7f0d0925

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    new-instance v6, Lcom/android/phone/callsettings/VideoSettingFragment$12;

    invoke-direct {v6, p0}, Lcom/android/phone/callsettings/VideoSettingFragment$12;-><init>(Lcom/android/phone/callsettings/VideoSettingFragment;)V

    invoke-virtual {v0, v11, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v6, Lcom/android/phone/callsettings/VideoSettingFragment$13;

    invoke-direct {v6, p0}, Lcom/android/phone/callsettings/VideoSettingFragment$13;-><init>(Lcom/android/phone/callsettings/VideoSettingFragment;)V

    invoke-virtual {v0, v10, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    return-object v6

    :cond_4
    const/16 v6, 0x329

    if-ne p1, v6, :cond_5

    invoke-virtual {v3, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const v6, 0x7f0d0926

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    new-instance v6, Lcom/android/phone/callsettings/VideoSettingFragment$14;

    invoke-direct {v6, p0}, Lcom/android/phone/callsettings/VideoSettingFragment$14;-><init>(Lcom/android/phone/callsettings/VideoSettingFragment;)V

    invoke-virtual {v0, v11, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v6, Lcom/android/phone/callsettings/VideoSettingFragment$15;

    invoke-direct {v6, p0}, Lcom/android/phone/callsettings/VideoSettingFragment$15;-><init>(Lcom/android/phone/callsettings/VideoSettingFragment;)V

    invoke-virtual {v0, v10, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    return-object v6

    :cond_5
    const/16 v6, 0x320

    if-ne p1, v6, :cond_7

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-static {}, Lcom/android/phone/PhoneUtilsIMS;->isLTEVideoCallEnabled()Z

    move-result v6

    if-eqz v6, :cond_6

    const v6, 0x7f0d0942

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    new-instance v6, Lcom/android/phone/callsettings/VideoSettingFragment$16;

    invoke-direct {v6, p0, v2}, Lcom/android/phone/callsettings/VideoSettingFragment$16;-><init>(Lcom/android/phone/callsettings/VideoSettingFragment;Landroid/widget/Checkable;)V

    invoke-virtual {v0, v12, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    return-object v6

    :cond_6
    const v6, 0x7f0d0943

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_7
    const/16 v6, 0x321

    if-ne p1, v6, :cond_8

    invoke-virtual {v3, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const v6, 0x7f0d0a8e

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    const v6, 0x7f0d08fe

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    new-instance v6, Lcom/android/phone/callsettings/VideoSettingFragment$17;

    invoke-direct {v6, p0}, Lcom/android/phone/callsettings/VideoSettingFragment$17;-><init>(Lcom/android/phone/callsettings/VideoSettingFragment;)V

    invoke-virtual {v0, v13, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v6, Lcom/android/phone/callsettings/VideoSettingFragment$18;

    invoke-direct {v6, p0}, Lcom/android/phone/callsettings/VideoSettingFragment$18;-><init>(Lcom/android/phone/callsettings/VideoSettingFragment;)V

    invoke-virtual {v0, v10, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    return-object v6

    :cond_8
    const/16 v6, 0x322

    if-ne p1, v6, :cond_9

    invoke-virtual {v3, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const v6, 0x7f0d0a8f

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    const v6, 0x7f0d08fc

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    new-instance v6, Lcom/android/phone/callsettings/VideoSettingFragment$19;

    invoke-direct {v6, p0}, Lcom/android/phone/callsettings/VideoSettingFragment$19;-><init>(Lcom/android/phone/callsettings/VideoSettingFragment;)V

    invoke-virtual {v0, v13, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v6, Lcom/android/phone/callsettings/VideoSettingFragment$20;

    invoke-direct {v6, p0}, Lcom/android/phone/callsettings/VideoSettingFragment$20;-><init>(Lcom/android/phone/callsettings/VideoSettingFragment;)V

    invoke-virtual {v0, v10, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    return-object v6

    :cond_9
    const/16 v6, 0x323

    if-ne p1, v6, :cond_a

    invoke-virtual {v3, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const v6, 0x7f0d0a90

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    new-instance v6, Lcom/android/phone/callsettings/VideoSettingFragment$21;

    invoke-direct {v6, p0}, Lcom/android/phone/callsettings/VideoSettingFragment$21;-><init>(Lcom/android/phone/callsettings/VideoSettingFragment;)V

    invoke-virtual {v0, v12, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    return-object v6

    :cond_a
    const/4 v6, 0x0

    return-object v6
.end method

.method public onPause()V
    .locals 0

    invoke-super {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onPause()V

    invoke-virtual {p0}, Lcom/android/phone/callsettings/VideoSettingFragment;->unregisterAllReceiver()V

    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 12

    const-string/jumbo v9, "VideoSettingFragment"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "onPreferenceChange: \""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "\" changed to \""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "\""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, p0, Lcom/android/phone/callsettings/VideoSettingFragment;->mSwitchVoice:Landroid/preference/SwitchPreference;

    if-ne p1, v9, :cond_2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_1

    const/4 v6, 0x1

    :goto_0
    const-string/jumbo v9, "videocall_settings"

    invoke-static {v9, v6}, Lcom/android/phone/TeleServiceSystemDB;->setSettingDB(Ljava/lang/String;I)V

    :cond_0
    :goto_1
    const/4 v9, 0x1

    return v9

    :cond_1
    const/4 v6, 0x0

    goto :goto_0

    :cond_2
    iget-object v9, p0, Lcom/android/phone/callsettings/VideoSettingFragment;->mVideoQuality:Landroid/preference/SwitchPreference;

    if-ne p1, v9, :cond_4

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_3

    const/4 v6, 0x1

    :goto_2
    const-string/jumbo v9, "videocallmessage_settings"

    invoke-static {v9, v6}, Lcom/android/phone/TeleServiceSystemDB;->setSettingDB(Ljava/lang/String;I)V

    goto :goto_1

    :cond_3
    const/4 v6, 0x0

    goto :goto_2

    :cond_4
    iget-object v9, p0, Lcom/android/phone/callsettings/VideoSettingFragment;->mVideoSpeaker:Landroid/preference/SwitchPreference;

    if-ne p1, v9, :cond_6

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_5

    const/4 v6, 0x1

    :goto_3
    const-string/jumbo v9, "videocall_speaker"

    invoke-static {v9, v6}, Lcom/android/phone/TeleServiceSystemDB;->setSettingDB(Ljava/lang/String;I)V

    goto :goto_1

    :cond_5
    const/4 v6, 0x0

    goto :goto_3

    :cond_6
    iget-object v9, p0, Lcom/android/phone/callsettings/VideoSettingFragment;->mATTVideoCall:Landroid/preference/SwitchPreference;

    if-ne p1, v9, :cond_13

    move-object v7, p2

    check-cast v7, Ljava/lang/Boolean;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v9

    invoke-static {v9}, Lcom/android/phone/PhoneUtilsCommon;->isInternationalRoaming(Lcom/android/internal/telephony/Phone;)Z

    move-result v4

    iget-object v9, p0, Lcom/android/phone/callsettings/VideoSettingFragment;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v9}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/android/phone/utils/VideoSettingUtils;->isMobileDataOn(Landroid/content/Context;)Z

    move-result v3

    const-string/jumbo v9, "voicecall_type"

    const/4 v10, 0x0

    invoke-static {v9, v10}, Lcom/android/phone/TeleServiceSystemDB;->getSettingDB(Ljava/lang/String;I)I

    move-result v9

    if-nez v9, :cond_8

    const/4 v2, 0x1

    :goto_4
    iget-object v9, p0, Lcom/android/phone/callsettings/VideoSettingFragment;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v9}, Lcom/android/internal/telephony/Phone;->getDataRoamingEnabled()Z

    move-result v5

    const-string/jumbo v9, "international_voicecall_type"

    const/4 v10, 0x0

    invoke-static {v9, v10}, Lcom/android/phone/TeleServiceSystemDB;->getSettingDB(Ljava/lang/String;I)I

    move-result v9

    if-nez v9, :cond_9

    const/4 v1, 0x1

    :goto_5
    const-string/jumbo v9, "VideoSettingFragment"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "isRoaming = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    invoke-static {v9, v10, v11}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    if-eqz v4, :cond_c

    const-string/jumbo v9, "VideoSettingFragment"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "isRoamingData = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    invoke-static {v9, v10, v11}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    const-string/jumbo v9, "VideoSettingFragment"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "isIntLteService = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    invoke-static {v9, v10, v11}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    if-nez v5, :cond_7

    if-eqz v1, :cond_a

    :cond_7
    if-nez v5, :cond_b

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_b

    const/16 v9, 0x328

    invoke-virtual {p0, v9}, Lcom/android/phone/callsettings/VideoSettingFragment;->showDialog(I)V

    const/4 v9, 0x0

    return v9

    :cond_8
    const/4 v2, 0x0

    goto :goto_4

    :cond_9
    const/4 v1, 0x0

    goto :goto_5

    :cond_a
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_7

    const/16 v9, 0x329

    invoke-virtual {p0, v9}, Lcom/android/phone/callsettings/VideoSettingFragment;->showDialog(I)V

    const/4 v9, 0x0

    return v9

    :cond_b
    if-nez v1, :cond_10

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_10

    const/16 v9, 0x327

    invoke-virtual {p0, v9}, Lcom/android/phone/callsettings/VideoSettingFragment;->showDialog(I)V

    const/4 v9, 0x0

    return v9

    :cond_c
    const-string/jumbo v9, "VideoSettingFragment"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "isLTEService = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    invoke-static {v9, v10, v11}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    const-string/jumbo v9, "VideoSettingFragment"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "isMobileData = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    invoke-static {v9, v10, v11}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    if-nez v3, :cond_d

    if-eqz v2, :cond_e

    :cond_d
    if-nez v3, :cond_f

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_f

    const/16 v9, 0x325

    invoke-virtual {p0, v9}, Lcom/android/phone/callsettings/VideoSettingFragment;->showDialog(I)V

    const/4 v9, 0x0

    return v9

    :cond_e
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_d

    const/16 v9, 0x326

    invoke-virtual {p0, v9}, Lcom/android/phone/callsettings/VideoSettingFragment;->showDialog(I)V

    const/4 v9, 0x0

    return v9

    :cond_f
    if-nez v2, :cond_10

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_10

    const/16 v9, 0x324

    invoke-virtual {p0, v9}, Lcom/android/phone/callsettings/VideoSettingFragment;->showDialog(I)V

    const/4 v9, 0x0

    return v9

    :cond_10
    invoke-static {}, Lcom/android/phone/PhoneUtilsIMS;->getImsManager()Lcom/sec/ims/ImsManager;

    move-result-object v9

    if-eqz v9, :cond_11

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    invoke-direct {p0, v9}, Lcom/android/phone/callsettings/VideoSettingFragment;->setVideoCallATTEnabled(Z)V

    :cond_11
    const/4 v9, 0x0

    sput-boolean v9, Lcom/android/phone/PhoneGlobals;->mVIDEOCALLToggleEnabled:Z

    iget-object v9, p0, Lcom/android/phone/callsettings/VideoSettingFragment;->mATTVideoCall:Landroid/preference/SwitchPreference;

    if-eqz v9, :cond_12

    iget-object v9, p0, Lcom/android/phone/callsettings/VideoSettingFragment;->mATTVideoCall:Landroid/preference/SwitchPreference;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    :cond_12
    invoke-virtual {p0}, Lcom/android/phone/callsettings/VideoSettingFragment;->updateATTVideoCallSummary()V

    new-instance v8, Landroid/content/Intent;

    const-string/jumbo v9, "com.android.phone.action.DISABLE_VIDEOCALL_TOGGLE"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/phone/callsettings/VideoSettingFragment;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v9}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9, v8}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const/4 v9, 0x1

    return v9

    :cond_13
    iget-object v9, p0, Lcom/android/phone/callsettings/VideoSettingFragment;->mVZWVideoCall:Landroid/preference/SwitchPreference;

    if-ne p1, v9, :cond_19

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-static {}, Lcom/android/phone/utils/VideoSettingUtils;->noVolteCallActive()Z

    move-result v9

    if-eqz v9, :cond_17

    iget-object v9, p0, Lcom/android/phone/callsettings/VideoSettingFragment;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v9}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/android/phone/utils/VideoSettingUtils;->isMobileDataOn(Landroid/content/Context;)Z

    move-result v9

    if-nez v9, :cond_14

    const/16 v9, 0x321

    invoke-virtual {p0, v9}, Lcom/android/phone/callsettings/VideoSettingFragment;->showDialog(I)V

    const/4 v9, 0x0

    return v9

    :cond_14
    iget-object v9, p0, Lcom/android/phone/callsettings/VideoSettingFragment;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v9}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/android/phone/utils/VideoSettingUtils;->isAdvanceCallingOn(Landroid/content/Context;)Z

    move-result v9

    if-nez v9, :cond_15

    const/16 v9, 0x322

    invoke-virtual {p0, v9}, Lcom/android/phone/callsettings/VideoSettingFragment;->showDialog(I)V

    const/4 v9, 0x0

    return v9

    :cond_15
    iget-object v9, p0, Lcom/android/phone/callsettings/VideoSettingFragment;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v9}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/android/phone/utils/VideoSettingUtils;->isLvcBlock(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_16

    const/16 v9, 0x323

    invoke-virtual {p0, v9}, Lcom/android/phone/callsettings/VideoSettingFragment;->showDialog(I)V

    const/4 v9, 0x0

    return v9

    :cond_16
    const/4 v9, 0x1

    invoke-direct {p0, v9}, Lcom/android/phone/callsettings/VideoSettingFragment;->onVoLTEVideoCallEnablePreferenceTreeClick(Z)V

    const/4 v9, 0x1

    return v9

    :cond_17
    if-nez v0, :cond_18

    invoke-static {}, Lcom/android/phone/utils/VideoSettingUtils;->noVolteCallActive()Z

    move-result v9

    if-eqz v9, :cond_18

    const/4 v9, 0x0

    invoke-direct {p0, v9}, Lcom/android/phone/callsettings/VideoSettingFragment;->onVoLTEVideoCallEnablePreferenceTreeClick(Z)V

    const/4 v9, 0x1

    return v9

    :cond_18
    const/4 v9, 0x0

    return v9

    :cond_19
    iget-object v9, p0, Lcom/android/phone/callsettings/VideoSettingFragment;->mVideoCall:Landroid/preference/SwitchPreference;

    if-ne p1, v9, :cond_0

    move-object v7, p2

    check-cast v7, Ljava/lang/Boolean;

    invoke-static {}, Lcom/android/phone/PhoneUtilsIMS;->getImsManager()Lcom/sec/ims/ImsManager;

    move-result-object v9

    if-eqz v9, :cond_1a

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    invoke-direct {p0, v9}, Lcom/android/phone/callsettings/VideoSettingFragment;->setVideoCallEnabled(Z)V

    :cond_1a
    const/4 v9, 0x1

    return v9
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 7

    const v6, 0x7f0d053b

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string/jumbo v1, "VideoSettingFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onPreferenceTreeClick : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v5}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    iget-object v1, p0, Lcom/android/phone/callsettings/VideoSettingFragment;->mHideVideo:Landroid/preference/PreferenceScreen;

    if-ne p2, v1, :cond_3

    const-string/jumbo v1, "com.sec.android.app.camera"

    invoke-static {v1}, Lcom/android/phone/PhoneUtilsCommon;->isPackageEnabled(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "com.sec.android.gallery3d"

    invoke-static {v1}, Lcom/android/phone/PhoneUtilsCommon;->isPackageEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const-string/jumbo v1, "com.sec.android.gallery3d"

    invoke-static {v1}, Lcom/android/phone/PhoneUtilsCommon;->isPackageEnabled(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/phone/callsettings/VideoSettingFragment;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    const-string/jumbo v3, "com.sec.android.gallery3d"

    invoke-static {v3}, Lcom/android/phone/PhoneUtilsCommon;->getPackageLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->displayToast(Ljava/lang/String;)V

    return v4

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "com.sec.android.gallery3d"

    invoke-static {v2}, Lcom/android/phone/PhoneUtilsCommon;->getPackageLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "com.sec.android.app.camera"

    invoke-static {v2}, Lcom/android/phone/PhoneUtilsCommon;->getPackageLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/callsettings/VideoSettingFragment;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    aput-object v0, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->displayToast(Ljava/lang/String;)V

    return v4

    :cond_2
    const-string/jumbo v1, "com.sec.android.app.camera"

    invoke-static {v1}, Lcom/android/phone/PhoneUtilsCommon;->isPackageEnabled(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/phone/callsettings/VideoSettingFragment;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    const-string/jumbo v3, "com.sec.android.app.camera"

    invoke-static {v3}, Lcom/android/phone/PhoneUtilsCommon;->getPackageLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->displayToast(Ljava/lang/String;)V

    return v4

    :cond_3
    return v5
.end method

.method protected registerAllReceiver()V
    .locals 5

    const/4 v3, 0x0

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "support_enhanced_4glte_setting_video_call"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "com.android.phone.action.ENABLE_VIDEOCALL_TOGGLE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcom/android/phone/callsettings/VideoSettingFragment;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/callsettings/VideoSettingFragment;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/phone/callsettings/VideoSettingFragment;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/android/phone/callsettings/VideoSettingFragment;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v3, 0x21

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    iget-object v1, p0, Lcom/android/phone/callsettings/VideoSettingFragment;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "mobile_data"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/callsettings/VideoSettingFragment;->mDataEnabledObserver:Landroid/database/ContentObserver;

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method protected showDialog(I)V
    .locals 6

    iget-object v3, p0, Lcom/android/phone/callsettings/VideoSettingFragment;->mDialogFragment:Lcom/android/phone/callsettings/CallSettingsDialogFragment;

    if-eqz v3, :cond_1

    const-string/jumbo v3, "VideoSettingFragment"

    const-string/jumbo v4, "Old dialog fragment not null!"

    invoke-static {v3, v4}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/phone/callsettings/VideoSettingFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/android/phone/callsettings/CallSettingsDialogFragment;

    :cond_0
    iget-object v3, p0, Lcom/android/phone/callsettings/VideoSettingFragment;->mDialogFragment:Lcom/android/phone/callsettings/CallSettingsDialogFragment;

    if-ne v2, v3, :cond_1

    const-string/jumbo v3, "VideoSettingFragment"

    const-string/jumbo v4, "But, same dialog. We ignore showDialog command."

    invoke-static {v3, v4}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    new-instance v3, Lcom/android/phone/callsettings/CallSettingsDialogFragment;

    invoke-direct {v3, p0, p1}, Lcom/android/phone/callsettings/CallSettingsDialogFragment;-><init>(Lcom/android/phone/callsettings/DialogCreatable;I)V

    iput-object v3, p0, Lcom/android/phone/callsettings/VideoSettingFragment;->mDialogFragment:Lcom/android/phone/callsettings/CallSettingsDialogFragment;

    :try_start_0
    iget-object v3, p0, Lcom/android/phone/callsettings/VideoSettingFragment;->mDialogFragment:Lcom/android/phone/callsettings/CallSettingsDialogFragment;

    iget-object v4, p0, Lcom/android/phone/callsettings/VideoSettingFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/phone/callsettings/CallSettingsDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0
.end method

.method protected unregisterAllReceiver()V
    .locals 3

    iget-object v0, p0, Lcom/android/phone/callsettings/VideoSettingFragment;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/callsettings/VideoSettingFragment;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/android/phone/callsettings/VideoSettingFragment;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/phone/callsettings/VideoSettingFragment;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    iget-object v0, p0, Lcom/android/phone/callsettings/VideoSettingFragment;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/callsettings/VideoSettingFragment;->mDataEnabledObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public updateATTVideoCallSummary()V
    .locals 4

    const/4 v3, 0x0

    sget-boolean v1, Lcom/android/phone/PhoneGlobals;->mVIDEOCALLToggleEnabled:Z

    const-string/jumbo v2, "videocall_type"

    invoke-static {v2, v3}, Lcom/android/phone/TeleServiceSystemDB;->getSettingDB(Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_1

    const/4 v0, 0x1

    :goto_0
    iget-object v2, p0, Lcom/android/phone/callsettings/VideoSettingFragment;->mATTVideoCall:Landroid/preference/SwitchPreference;

    if-eqz v2, :cond_0

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/android/phone/callsettings/VideoSettingFragment;->mATTVideoCall:Landroid/preference/SwitchPreference;

    const v3, 0x7f0d0917

    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreference;->setSummary(I)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_3

    iget-object v2, p0, Lcom/android/phone/callsettings/VideoSettingFragment;->mATTVideoCall:Landroid/preference/SwitchPreference;

    const v3, 0x7f0d0928

    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreference;->setSummary(I)V

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/android/phone/callsettings/VideoSettingFragment;->mATTVideoCall:Landroid/preference/SwitchPreference;

    const v3, 0x7f0d0927

    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreference;->setSummary(I)V

    goto :goto_1
.end method

.method public updateVideoSetting()V
    .locals 5

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/phone/callsettings/VideoSettingFragment;->registerAllReceiver()V

    iget-object v1, p0, Lcom/android/phone/callsettings/VideoSettingFragment;->mSwitchVoice:Landroid/preference/SwitchPreference;

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    const-string/jumbo v1, "feature_kor_open"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "feature_skt"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "feature_ktt"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :cond_1
    iget-object v4, p0, Lcom/android/phone/callsettings/VideoSettingFragment;->mSwitchVoice:Landroid/preference/SwitchPreference;

    const-string/jumbo v1, "videocall_settings"

    invoke-static {v1, v0}, Lcom/android/phone/TeleServiceSystemDB;->getSettingDB(Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_8

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :cond_2
    iget-object v1, p0, Lcom/android/phone/callsettings/VideoSettingFragment;->mVideoQuality:Landroid/preference/SwitchPreference;

    if-eqz v1, :cond_3

    iget-object v4, p0, Lcom/android/phone/callsettings/VideoSettingFragment;->mVideoQuality:Landroid/preference/SwitchPreference;

    const-string/jumbo v1, "videocallmessage_settings"

    invoke-static {v1, v3}, Lcom/android/phone/TeleServiceSystemDB;->getSettingDB(Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_9

    move v1, v2

    :goto_1
    invoke-virtual {v4, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :cond_3
    iget-object v1, p0, Lcom/android/phone/callsettings/VideoSettingFragment;->mVideoSpeaker:Landroid/preference/SwitchPreference;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/phone/callsettings/VideoSettingFragment;->mVideoSpeaker:Landroid/preference/SwitchPreference;

    const-string/jumbo v4, "videocall_speaker"

    invoke-static {v4, v3}, Lcom/android/phone/TeleServiceSystemDB;->getSettingDB(Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_a

    :goto_2
    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :cond_4
    iget-object v1, p0, Lcom/android/phone/callsettings/VideoSettingFragment;->mVZWVideoCall:Landroid/preference/SwitchPreference;

    if-eqz v1, :cond_5

    invoke-direct {p0}, Lcom/android/phone/callsettings/VideoSettingFragment;->updateVZWVideoCallSetting()V

    :cond_5
    iget-object v1, p0, Lcom/android/phone/callsettings/VideoSettingFragment;->mATTVideoCall:Landroid/preference/SwitchPreference;

    if-eqz v1, :cond_6

    invoke-direct {p0}, Lcom/android/phone/callsettings/VideoSettingFragment;->updateATTVideoCallSetting()V

    :cond_6
    iget-object v1, p0, Lcom/android/phone/callsettings/VideoSettingFragment;->mVideoCall:Landroid/preference/SwitchPreference;

    if-eqz v1, :cond_7

    invoke-direct {p0}, Lcom/android/phone/callsettings/VideoSettingFragment;->updateVideoCallSetting()V

    :cond_7
    return-void

    :cond_8
    move v1, v3

    goto :goto_0

    :cond_9
    move v1, v3

    goto :goto_1

    :cond_a
    move v2, v3

    goto :goto_2
.end method
