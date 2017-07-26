.class public Lcom/android/phone/GsmUmtsAdditionalCallOptions;
.super Lcom/android/phone/TimeConsumingPreferenceActivity;
.source "GsmUmtsAdditionalCallOptions.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/GsmUmtsAdditionalCallOptions$1;,
        Lcom/android/phone/GsmUmtsAdditionalCallOptions$2;,
        Lcom/android/phone/GsmUmtsAdditionalCallOptions$3;,
        Lcom/android/phone/GsmUmtsAdditionalCallOptions$4;,
        Lcom/android/phone/GsmUmtsAdditionalCallOptions$5;,
        Lcom/android/phone/GsmUmtsAdditionalCallOptions$EmptyView;
    }
.end annotation


# static fields
.field public static IsAdditionSetting:Z

.field public static mSimId:I

.field private static prvTtyMode:I


# instance fields
.field private final DBG:Z

.field private TtyValue:Ljava/lang/String;

.field builder:Landroid/app/AlertDialog$Builder;

.field private emptyView:Lcom/android/phone/GsmUmtsAdditionalCallOptions$EmptyView;

.field private isVoLteEnabled:Z

.field private mApplyOptionSVC:Landroid/preference/PreferenceScreen;

.field private mApplyWebsiteSVC:Landroid/preference/PreferenceScreen;

.field private mAssistedDialingSwitch:Landroid/preference/PreferenceScreen;

.field private mAutoAreaCodeButton:Landroid/preference/EditTextPreference;

.field private mAutoRedial:Landroid/preference/CheckBoxPreference;

.field mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

.field private mButtonAutoRetry:Landroid/preference/SwitchPreference;

.field private mButtonHAC:Landroid/preference/CheckBoxPreference;

.field private mButtonTTY:Lcom/android/phone/TtyListPreference;

.field private mCLIRButton:Lcom/android/phone/CLIRListPreference;

.field private mCLIRDropDown:Lcom/android/phone/CLIRDropDownPreference;

.field private mCLIRSwitch:Landroid/preference/SwitchPreference;

.field private mCLIRSwitch_SBM:Lcom/android/phone/CLIRSwitchPreference;

.field private mCWButton:Lcom/android/phone/CallWaitingCheckBoxPreference;

.field private mCWSwitch:Lcom/android/phone/CallWaitingSwitchPreference;

.field private mCallAUSVC:Landroid/preference/PreferenceScreen;

.field private mCallBarring:Landroid/preference/PreferenceScreen;

.field private mCallForwarding:Landroid/preference/PreferenceScreen;

.field private mCallTypeSelect:Landroid/preference/PreferenceScreen;

.field private mCallVoicemailForwarding:Landroid/preference/PreferenceScreen;

.field private mChangeDDSDialog:Landroid/app/AlertDialog;

.field public mChangeData:Z

.field private mChangeDataBack:Z

.field private mChangeGuideLanguae:Landroid/preference/ListPreference;

.field private mCountryCodePref:Landroid/preference/EditTextPreference;

.field private mCountryPref:Landroid/preference/SwitchPreference;

.field private mCurrentyCountry:Landroid/preference/PreferenceScreen;

.field private mDataChangedFilter:Landroid/content/IntentFilter;

.field private mDataChangedReceiver:Landroid/content/BroadcastReceiver;

.field private mDataEnabledObserver:Landroid/database/ContentObserver;

.field private mDataSlotChanged:Z

.field private mDialog:Landroid/app/AlertDialog;

.field private mDropDownTTY:Lcom/android/phone/DropDownPreference;

.field private mDropdownDTMF:Lcom/android/phone/DropDownPreference;

.field private mFdnSetting:Landroid/preference/PreferenceScreen;

.field private mForeground:Z

.field private mHotSwapFilter:Landroid/content/IntentFilter;

.field private mHotSwapReceiver:Landroid/content/BroadcastReceiver;

.field private mInitDropDown:Z

.field private mInitIndex:I

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIsAirplainModeObserverRegister:Z

.field private mIsCallForwardPreference:Z

.field private mIsChangeDataProcess:Z

.field private mIsDualSimTurnedOn:Z

.field private mIsHotSwapRegister:Z

.field private mMeterialButtonHAC:Landroid/preference/SwitchPreference;

.field mNM:Lcom/android/phone/NotificationMgr;

.field mOnKeyListener:Landroid/view/View$OnKeyListener;

.field mPhone:Lcom/android/internal/telephony/Phone;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private final mPreferences:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/preference/Preference;",
            ">;"
        }
    .end annotation
.end field

.field private mSimStatus:I

.field mStateListener:Lcom/android/phone/ia/IAInterimListener;

.field private mSubaddress:Landroid/preference/CheckBoxPreference;

.field private mSwitchData:Z

.field private mSyncCallSettings:Landroid/preference/PreferenceScreen;

.field private mTcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

.field private mTelMan:Landroid/telephony/TelephonyManager;

.field private mVoiceCallBarring:Landroid/preference/PreferenceScreen;

.field public mVoicePrivacy:Landroid/preference/Preference;


# direct methods
.method static synthetic -get0(Lcom/android/phone/GsmUmtsAdditionalCallOptions;)Landroid/preference/EditTextPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mAutoAreaCodeButton:Landroid/preference/EditTextPreference;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/phone/GsmUmtsAdditionalCallOptions;)Lcom/android/phone/TtyListPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mButtonTTY:Lcom/android/phone/TtyListPreference;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/phone/GsmUmtsAdditionalCallOptions;)Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/phone/GsmUmtsAdditionalCallOptions;)Lcom/android/phone/DropDownPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mDropDownTTY:Lcom/android/phone/DropDownPreference;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/phone/GsmUmtsAdditionalCallOptions;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mInitDropDown:Z

    return v0
.end method

.method static synthetic -get5(Lcom/android/phone/GsmUmtsAdditionalCallOptions;)Lcom/android/phone/TimeConsumingPreferenceListener;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mTcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    return-object v0
.end method

.method static synthetic -get6()I
    .locals 1

    sget v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->prvTtyMode:I

    return v0
.end method

.method static synthetic -set0(Lcom/android/phone/GsmUmtsAdditionalCallOptions;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mChangeDataBack:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/phone/GsmUmtsAdditionalCallOptions;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mDataSlotChanged:Z

    return p1
.end method

.method static synthetic -set2(Lcom/android/phone/GsmUmtsAdditionalCallOptions;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mInitDropDown:Z

    return p1
.end method

.method static synthetic -set3(Lcom/android/phone/GsmUmtsAdditionalCallOptions;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mIsChangeDataProcess:Z

    return p1
.end method

.method static synthetic -set4(Lcom/android/phone/GsmUmtsAdditionalCallOptions;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mSwitchData:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/phone/GsmUmtsAdditionalCallOptions;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/phone/GsmUmtsAdditionalCallOptions;)Landroid/content/Context;
    .locals 1

    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap10(Lcom/android/phone/GsmUmtsAdditionalCallOptions;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->updateDropDownTty()V

    return-void
.end method

.method static synthetic -wrap11(Lcom/android/phone/GsmUmtsAdditionalCallOptions;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->updateDropDownTty(I)V

    return-void
.end method

.method static synthetic -wrap12(Lcom/android/phone/GsmUmtsAdditionalCallOptions;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->updatePreferredTtyModeSummaryForVolte(I)V

    return-void
.end method

.method static synthetic -wrap13(Lcom/android/phone/GsmUmtsAdditionalCallOptions;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->updatePreferredTtyModeSummary(I)V

    return-void
.end method

.method static synthetic -wrap14(Lcom/android/phone/GsmUmtsAdditionalCallOptions;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->updateSummaryAutoAreaCode(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/phone/GsmUmtsAdditionalCallOptions;I)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getOtherSimId(I)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Lcom/android/phone/GsmUmtsAdditionalCallOptions;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->UpdateAirPlaneModeChange()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/phone/GsmUmtsAdditionalCallOptions;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->commitPrefixSettingForDCMDialer(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/phone/GsmUmtsAdditionalCallOptions;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->createDialogDropDownTty(I)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/phone/GsmUmtsAdditionalCallOptions;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->handleTTYChange(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/phone/GsmUmtsAdditionalCallOptions;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->log(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic -wrap8(Lcom/android/phone/GsmUmtsAdditionalCallOptions;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap9(Lcom/android/phone/GsmUmtsAdditionalCallOptions;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->updateAutoAreaCodeOnOff(Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mSimId:I

    sput-boolean v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->IsAdditionSetting:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/phone/TimeConsumingPreferenceActivity;-><init>()V

    iput-boolean v3, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->DBG:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mPreferences:Ljava/util/ArrayList;

    iput v1, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mInitIndex:I

    iput-object v2, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mDialog:Landroid/app/AlertDialog;

    iput-boolean v1, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->isVoLteEnabled:Z

    iput-boolean v1, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mIsDualSimTurnedOn:Z

    iput-boolean v1, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mIsCallForwardPreference:Z

    iput-boolean v1, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mSwitchData:Z

    iput-boolean v1, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mChangeDataBack:Z

    iput-boolean v1, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mIsChangeDataProcess:Z

    iput-boolean v1, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mChangeData:Z

    iput-boolean v1, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mIsAirplainModeObserverRegister:Z

    iput-boolean v1, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mIsHotSwapRegister:Z

    iput-boolean v1, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mDataSlotChanged:Z

    new-instance v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions$1;

    invoke-direct {v0, p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions$1;-><init>(Lcom/android/phone/GsmUmtsAdditionalCallOptions;)V

    iput-object v0, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mDataChangedReceiver:Landroid/content/BroadcastReceiver;

    iput-object v2, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->TtyValue:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mInitDropDown:Z

    invoke-static {}, Lcom/samsung/android/sdk/bixby/BixbyApi;->getInstance()Lcom/samsung/android/sdk/bixby/BixbyApi;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    iput-object v2, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->builder:Landroid/app/AlertDialog$Builder;

    iput-object v2, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mPhone:Lcom/android/internal/telephony/Phone;

    new-instance v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/phone/GsmUmtsAdditionalCallOptions$2;-><init>(Lcom/android/phone/GsmUmtsAdditionalCallOptions;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mDataEnabledObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions$3;

    invoke-direct {v0, p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions$3;-><init>(Lcom/android/phone/GsmUmtsAdditionalCallOptions;)V

    iput-object v0, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    new-instance v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions$4;

    invoke-direct {v0, p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions$4;-><init>(Lcom/android/phone/GsmUmtsAdditionalCallOptions;)V

    iput-object v0, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mOnKeyListener:Landroid/view/View$OnKeyListener;

    new-instance v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions$5;

    invoke-direct {v0, p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions$5;-><init>(Lcom/android/phone/GsmUmtsAdditionalCallOptions;)V

    iput-object v0, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private UpdateAirPlaneModeChange()V
    .locals 7

    const-string/jumbo v4, "GsmUmtsAdditionalCallOptions"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isAirplaneModeOn()"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct {p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->isAirplaneModeOn()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_4

    const-string/jumbo v4, "GsmUmtsAdditionalCallOptions"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Disabling pref no "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3, v1}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->isAirplaneModeOn()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {}, Lcom/android/phone/PhoneUtilsCommon;->isAvailableVoWIFI()Z

    move-result v4

    if-eqz v4, :cond_2

    const-string/jumbo v4, "enable_ss_settings_vowifi_regi"

    invoke-static {v4}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string/jumbo v4, "enable_all_setting_vowifi_regi"

    invoke-static {v4}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_0
    const-string/jumbo v4, "GsmUmtsAdditionalCallOptions"

    const-string/jumbo v5, "More setting enabled - AvailableVoWiFi"

    invoke-static {v4, v5}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->isAirplaneModeOn()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {}, Lcom/android/phone/PhoneUtilsCommon;->isAvailableMoreMenu4VoWiFi()Z

    move-result v4

    :goto_2
    invoke-virtual {v2, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v4, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mChangeDDSDialog:Landroid/app/AlertDialog;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mChangeDDSDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->dismiss()V

    goto :goto_1

    :cond_3
    const/4 v4, 0x1

    goto :goto_2

    :cond_4
    return-void
.end method

.method private changeDataServiceBackForMultisim()Z
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    const-string/jumbo v3, "GsmUmtsAdditionalCallOptions"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "changeDataServiceBackForMultisim. DefaultDataSlotId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/android/phone/PhoneUtilsMultiSIM;->getDefaultDataSlotId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", mSimId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mSimId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v8}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    iput-boolean v7, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mChangeDataBack:Z

    sget v3, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mSimId:I

    invoke-static {v3}, Lcom/android/phone/PhoneUtilsMultiSIM;->getSimName(I)Ljava/lang/String;

    move-result-object v0

    sget v3, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mSimId:I

    invoke-direct {p0, v3}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getOtherSimId(I)I

    move-result v3

    invoke-static {v3}, Lcom/android/phone/PhoneUtilsMultiSIM;->getSimName(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/android/phone/PhoneUtilsMultiSIM;->getDefaultDataSlotId()I

    move-result v3

    sget v4, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mSimId:I

    if-ne v3, v4, :cond_0

    iget-boolean v3, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mSwitchData:Z

    if-eqz v3, :cond_0

    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v2, v5, v7

    aput-object v0, v5, v8

    const v6, 0x7f0d0c45

    invoke-virtual {v4, v6, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d0c99

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/android/phone/GsmUmtsAdditionalCallOptions$28;

    invoke-direct {v4, p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions$28;-><init>(Lcom/android/phone/GsmUmtsAdditionalCallOptions;)V

    const v5, 0x7f0d032a

    invoke-virtual {v3, v5, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/android/phone/GsmUmtsAdditionalCallOptions$29;

    invoke-direct {v4, p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions$29;-><init>(Lcom/android/phone/GsmUmtsAdditionalCallOptions;)V

    const v5, 0x7f0d0327

    invoke-virtual {v3, v5, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    :goto_0
    iput-boolean v7, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mSwitchData:Z

    const-string/jumbo v3, "GsmUmtsAdditionalCallOptions"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mChangeDataBack = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mChangeDataBack:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v8}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    return v8

    :cond_0
    iput-boolean v7, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mChangeDataBack:Z

    goto :goto_0
.end method

.method private changeDataServiceForMultisim()Z
    .locals 4

    const/4 v3, 0x1

    const-string/jumbo v0, "GsmUmtsAdditionalCallOptions"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "changeDataServiceForMultisim. DefaultDataSlotId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/android/phone/PhoneUtilsMultiSIM;->getDefaultDataSlotId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", mSimId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mSimId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mChangeData:Z

    invoke-static {}, Lcom/android/phone/PhoneUtilsMultiSIM;->getDefaultDataSlotId()I

    move-result v0

    sget v1, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mSimId:I

    if-eq v0, v1, :cond_0

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0c9a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0c99

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/phone/GsmUmtsAdditionalCallOptions$26;

    invoke-direct {v1, p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions$26;-><init>(Lcom/android/phone/GsmUmtsAdditionalCallOptions;)V

    const v2, 0x7f0d032a

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/phone/GsmUmtsAdditionalCallOptions$27;

    invoke-direct {v1, p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions$27;-><init>(Lcom/android/phone/GsmUmtsAdditionalCallOptions;)V

    const v2, 0x7f0d0327

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mChangeDDSDialog:Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mChangeDDSDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    :goto_0
    const-string/jumbo v0, "GsmUmtsAdditionalCallOptions"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mChangeData = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mChangeData:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    iget-boolean v0, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mChangeData:Z

    return v0

    :cond_0
    iput-boolean v3, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mChangeData:Z

    goto :goto_0
.end method

.method private changeTtyButton(I)I
    .locals 2

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/android/phone/PhoneUtilsCommon;->isAvailablePSVT()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->builder:Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0d094c

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    :goto_0
    iget-object v0, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->builder:Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0d094f

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v0, 0x7f0d0950

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->builder:Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0d094d

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->builder:Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0d094e

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->builder:Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0d0952

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v0, 0x7f0d0951

    return v0
.end method

.method private checkAdditionalCallMenu()V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-static {}, Lcom/android/phone/TeleServiceFeature;->getOmcNwCode()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "remove_additional_call_setting"

    invoke-static {v3}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string/jumbo v3, "button_cw_key"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v2, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    iput-object v4, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCWButton:Lcom/android/phone/CallWaitingCheckBoxPreference;

    :cond_0
    const-string/jumbo v3, "button_autoredial_key"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v2, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    iput-object v4, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mAutoRedial:Landroid/preference/CheckBoxPreference;

    :cond_1
    const-string/jumbo v3, "disable_auto_area_code"

    invoke-static {v3}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string/jumbo v3, "edittext_areacode_key"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v2, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    iput-object v4, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mAutoAreaCodeButton:Landroid/preference/EditTextPreference;

    :cond_2
    invoke-static {}, Lcom/android/phone/TelephonyConfig;->isMOISIM()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCWSwitch:Lcom/android/phone/CallWaitingSwitchPreference;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCWSwitch:Lcom/android/phone/CallWaitingSwitchPreference;

    invoke-virtual {v3, v5}, Lcom/android/phone/CallWaitingSwitchPreference;->setEnabled(Z)V

    :cond_3
    const-string/jumbo v3, "button_autoredial_key"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v2, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    iput-object v4, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mAutoRedial:Landroid/preference/CheckBoxPreference;

    :cond_4
    const-string/jumbo v3, "button_cw_key"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v2, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    iput-object v4, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCWButton:Lcom/android/phone/CallWaitingCheckBoxPreference;

    :cond_5
    const-string/jumbo v3, "feature_sbm"

    invoke-static {v3}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string/jumbo v3, "meterial_button_clir_key"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v2, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    iput-object v4, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCLIRSwitch_SBM:Lcom/android/phone/CLIRSwitchPreference;

    :cond_6
    const-string/jumbo v3, "remove_additional_call_setting"

    invoke-static {v3}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    const-string/jumbo v3, "meterial_button_cw_key"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {v2, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    iput-object v4, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCWSwitch:Lcom/android/phone/CallWaitingSwitchPreference;

    :cond_7
    const-string/jumbo v3, "support_subaddress_settings"

    invoke-static {v3}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    const-string/jumbo v3, "button_subaddress_key"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-virtual {v2, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    iput-object v4, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mSubaddress:Landroid/preference/CheckBoxPreference;

    :cond_8
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_a

    const-string/jumbo v3, "VZW"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    const-string/jumbo v3, "SPR"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    const-string/jumbo v3, "XAS"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    const-string/jumbo v3, "USC"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    const-string/jumbo v3, "LRA"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    :cond_9
    iget-object v3, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCWSwitch:Lcom/android/phone/CallWaitingSwitchPreference;

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCWSwitch:Lcom/android/phone/CallWaitingSwitchPreference;

    invoke-virtual {v3, v5}, Lcom/android/phone/CallWaitingSwitchPreference;->setEnabled(Z)V

    :cond_a
    const-string/jumbo v3, "feature_ctc"

    invoke-static {v3}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    iget v3, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mSimStatus:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_e

    const-string/jumbo v3, "button_autoredial_key"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_b

    invoke-virtual {v1, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    :cond_b
    const-string/jumbo v3, "gsm_voicecall_barring_key"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_c

    invoke-virtual {v1, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    :cond_c
    const-string/jumbo v3, "button_gsm_voicecall_forwarding"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_d

    invoke-virtual {v1, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    :cond_d
    const-string/jumbo v3, "button_voicemail_category_key_duos"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_e

    invoke-virtual {v1, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    :cond_e
    return-void
.end method

.method private checkCallBarringMenu()V
    .locals 10

    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v3

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/phone/TeleServiceFeature;->getOmcNwCode()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v5, "feature_chn"

    invoke-static {v5}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string/jumbo v5, "feature_ctc"

    invoke-static {v5}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string/jumbo v5, "feature_hktw"

    invoke-static {v5}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    invoke-static {}, Lcom/android/phone/PhoneUtilsCommon;->isAvailablePSVT()Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_1
    invoke-static {}, Lcom/android/phone/PhoneUtilsMultiSIM;->getDefaultDataSlotId()I

    move-result v5

    invoke-static {v5}, Lcom/android/phone/TelephonyConfig;->isCMCCSIM(I)Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_2
    const/4 v0, 0x1

    :cond_3
    if-eq v3, v9, :cond_4

    const-string/jumbo v5, "remove_call_barring"

    invoke-static {v5}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string/jumbo v5, "cdma_additional_setting_enable"

    invoke-static {v5}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    :cond_4
    const-string/jumbo v5, "voicecall_barring_key"

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    const-string/jumbo v5, "remove_call_barring"

    invoke-static {v5}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_e

    const-string/jumbo v5, "cdma_additional_setting_enable"

    invoke-static {v5}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    :goto_0
    if-nez v5, :cond_5

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_f

    :cond_5
    if-eqz v1, :cond_6

    invoke-virtual {v4, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_6
    :goto_1
    if-eq v3, v9, :cond_12

    const-string/jumbo v5, "remove_call_barring"

    invoke-static {v5}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_12

    const-string/jumbo v5, "cdma_additional_setting_enable"

    invoke-static {v5}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_12

    const-string/jumbo v5, "video_call_not_support"

    invoke-static {v5}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_7

    iget-boolean v5, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->isVoLteEnabled:Z

    if-eqz v5, :cond_12

    invoke-static {}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->isTWTWM()Z

    move-result v5

    if-eqz v5, :cond_12

    :cond_7
    const-string/jumbo v5, "psvt_support"

    invoke-static {v5}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    if-eqz v0, :cond_11

    :cond_8
    const-string/jumbo v5, "voicecall_barring_key"

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-virtual {v4, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    const/4 v1, 0x0

    :cond_9
    const-string/jumbo v5, "gsm_voicecall_barring_key"

    invoke-virtual {p0, v5}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceScreen;

    iput-object v5, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mVoiceCallBarring:Landroid/preference/PreferenceScreen;

    :cond_a
    :goto_2
    const-string/jumbo v5, "remove_call_barring"

    invoke-static {v5}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_13

    const-string/jumbo v5, "cdma_additional_setting_enable"

    invoke-static {v5}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    :goto_3
    if-nez v5, :cond_b

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_14

    :cond_b
    :goto_4
    invoke-static {}, Lcom/android/phone/PhoneUtilsCommon;->isAvailableVoLTE()Z

    move-result v5

    if-eqz v5, :cond_d

    sget v5, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mSimId:I

    invoke-static {v5}, Lcom/android/phone/PhoneUtilsCommon;->isTWAPT(I)Z

    move-result v5

    if-eqz v5, :cond_d

    const-string/jumbo v5, "call barring removed for TW APT"

    invoke-direct {p0, v5, v6}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->log(Ljava/lang/String;Z)V

    const-string/jumbo v5, "voicecall_barring_key"

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_c

    invoke-virtual {v4, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_c
    const-string/jumbo v5, "gsm_voicecall_barring_key"

    invoke-virtual {p0, v5}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceScreen;

    iput-object v5, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mVoiceCallBarring:Landroid/preference/PreferenceScreen;

    iget-object v5, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mVoiceCallBarring:Landroid/preference/PreferenceScreen;

    if-eqz v5, :cond_d

    iget-object v5, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mVoiceCallBarring:Landroid/preference/PreferenceScreen;

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    iput-object v7, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mVoiceCallBarring:Landroid/preference/PreferenceScreen;

    :cond_d
    return-void

    :cond_e
    move v5, v6

    goto/16 :goto_0

    :cond_f
    const-string/jumbo v5, "AIO"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_10

    const-string/jumbo v5, "ATT"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_10

    const-string/jumbo v5, "VZW"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_10

    const-string/jumbo v5, "SPR"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_10

    const-string/jumbo v5, "XAS"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_10

    const-string/jumbo v5, "USC"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_10

    const-string/jumbo v5, "LRA"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    :cond_10
    if-eqz v1, :cond_6

    invoke-virtual {v1, v8}, Landroid/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_1

    :cond_11
    const-string/jumbo v5, "show_callforward_allcalls_string"

    invoke-static {v5}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_8

    :cond_12
    const-string/jumbo v5, "gsm_voicecall_barring_key"

    invoke-virtual {p0, v5}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceScreen;

    iput-object v5, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mVoiceCallBarring:Landroid/preference/PreferenceScreen;

    iget-object v5, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mVoiceCallBarring:Landroid/preference/PreferenceScreen;

    if-eqz v5, :cond_a

    iget-object v5, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mVoiceCallBarring:Landroid/preference/PreferenceScreen;

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    iput-object v7, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mVoiceCallBarring:Landroid/preference/PreferenceScreen;

    goto/16 :goto_2

    :cond_13
    move v5, v6

    goto/16 :goto_3

    :cond_14
    const-string/jumbo v5, "AIO"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_15

    const-string/jumbo v5, "ATT"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_15

    const-string/jumbo v5, "VZW"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_15

    const-string/jumbo v5, "SPR"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_15

    const-string/jumbo v5, "XAS"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_15

    const-string/jumbo v5, "USC"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_15

    const-string/jumbo v5, "LRA"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    :cond_15
    iget-object v5, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mVoiceCallBarring:Landroid/preference/PreferenceScreen;

    if-eqz v5, :cond_b

    iget-object v5, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mVoiceCallBarring:Landroid/preference/PreferenceScreen;

    invoke-virtual {v5, v8}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto/16 :goto_4
.end method

.method private checkCallForwardingMenu()V
    .locals 7

    const/4 v6, 0x2

    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-static {}, Lcom/android/phone/TeleServiceFeature;->getOmcNwCode()Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v4

    if-eq v4, v6, :cond_a

    const-string/jumbo v4, "remove_call_forwarding"

    invoke-static {v4}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_a

    const-string/jumbo v4, "global_network_cdma_gsm_enable"

    invoke-static {v4}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    :goto_0
    const-string/jumbo v4, "feature_vzw"

    invoke-static {v4}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    sget v4, Landroid/os/Build$VERSION;->SEM_PLATFORM_INT:I

    const v5, 0x138e4

    if-ge v4, v5, :cond_b

    iget-object v4, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v4

    if-eq v4, v6, :cond_b

    :cond_0
    :goto_1
    const/4 v3, 0x0

    :cond_1
    const/4 v0, 0x0

    const-string/jumbo v4, "feature_chn"

    invoke-static {v4}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string/jumbo v4, "feature_ctc"

    invoke-static {v4}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string/jumbo v4, "feature_hktw"

    invoke-static {v4}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    invoke-static {}, Lcom/android/phone/PhoneUtilsCommon;->isAvailablePSVT()Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_3
    invoke-static {}, Lcom/android/phone/PhoneUtilsMultiSIM;->getDefaultDataSlotId()I

    move-result v4

    invoke-static {v4}, Lcom/android/phone/TelephonyConfig;->isCMCCSIM(I)Z

    move-result v4

    if-eqz v4, :cond_5

    :cond_4
    const/4 v0, 0x1

    :cond_5
    if-nez v3, :cond_6

    const-string/jumbo v4, "video_call_not_support"

    invoke-static {v4}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    const-string/jumbo v4, "psvt_support"

    invoke-static {v4}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    if-nez v0, :cond_6

    const-string/jumbo v4, "show_callforward_allcalls_string"

    invoke-static {v4}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string/jumbo v4, "feature_tmo"

    invoke-static {v4}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string/jumbo v4, "feature_att"

    invoke-static {v4}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    :cond_6
    const-string/jumbo v4, "button_callType_select_key"

    invoke-virtual {v2, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceScreen;

    iput-object v4, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCallTypeSelect:Landroid/preference/PreferenceScreen;

    iget-object v4, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCallTypeSelect:Landroid/preference/PreferenceScreen;

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCallTypeSelect:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_7
    const-string/jumbo v4, "remove_call_forwarding"

    invoke-static {v4}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_8

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_c

    :cond_8
    :goto_2
    if-nez v3, :cond_f

    const-string/jumbo v4, "video_call_not_support"

    invoke-static {v4}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_f

    const-string/jumbo v4, "psvt_support"

    invoke-static {v4}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    if-eqz v0, :cond_e

    :cond_9
    :goto_3
    return-void

    :cond_a
    const/4 v3, 0x1

    goto/16 :goto_0

    :cond_b
    const-string/jumbo v4, "remove_call_forwarding"

    invoke-static {v4}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string/jumbo v4, "VZW"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string/jumbo v4, "SPR"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string/jumbo v4, "XAS"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string/jumbo v4, "USC"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string/jumbo v4, "LRA"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto/16 :goto_1

    :cond_c
    const-string/jumbo v4, "VZW"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_d

    const-string/jumbo v4, "SPR"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_d

    const-string/jumbo v4, "XAS"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_d

    const-string/jumbo v4, "USC"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_d

    const-string/jumbo v4, "LRA"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    :cond_d
    const-string/jumbo v4, "button_gsm_voicecall_forwarding"

    invoke-virtual {v2, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceScreen;

    iput-object v4, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCallForwarding:Landroid/preference/PreferenceScreen;

    iget-object v4, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCallForwarding:Landroid/preference/PreferenceScreen;

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCallForwarding:Landroid/preference/PreferenceScreen;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto/16 :goto_2

    :cond_e
    const-string/jumbo v4, "show_callforward_allcalls_string"

    invoke-static {v4}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_9

    const-string/jumbo v4, "feature_tmo"

    invoke-static {v4}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_9

    const-string/jumbo v4, "feature_att"

    invoke-static {v4}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_9

    :cond_f
    const-string/jumbo v4, "button_gsm_voicecall_forwarding"

    invoke-virtual {v2, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceScreen;

    iput-object v4, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCallForwarding:Landroid/preference/PreferenceScreen;

    iget-object v4, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCallForwarding:Landroid/preference/PreferenceScreen;

    if-eqz v4, :cond_9

    iget-object v4, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCallForwarding:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_3
.end method

.method private checkCallerIDMenu()V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-static {}, Lcom/android/phone/TeleServiceFeature;->getOmcNwCode()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "hide_caller_id"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "feature_kdi"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "feature_sbm"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    iget-object v2, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCLIRButton:Lcom/android/phone/CLIRListPreference;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCLIRButton:Lcom/android/phone/CLIRListPreference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    iput-object v3, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCLIRButton:Lcom/android/phone/CLIRListPreference;

    :cond_1
    iget-object v2, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCLIRDropDown:Lcom/android/phone/CLIRDropDownPreference;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCLIRDropDown:Lcom/android/phone/CLIRDropDownPreference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    iput-object v3, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCLIRDropDown:Lcom/android/phone/CLIRDropDownPreference;

    :cond_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string/jumbo v2, "VZW"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string/jumbo v2, "SPR"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string/jumbo v2, "XAS"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string/jumbo v2, "USC"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string/jumbo v2, "LRA"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    iget-object v2, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCLIRDropDown:Lcom/android/phone/CLIRDropDownPreference;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCLIRDropDown:Lcom/android/phone/CLIRDropDownPreference;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/phone/CLIRDropDownPreference;->setEnabled(Z)V

    iget-object v2, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCLIRDropDown:Lcom/android/phone/CLIRDropDownPreference;

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Lcom/android/phone/CLIRDropDownPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_4
    return-void
.end method

.method private checkFdnMenu()V
    .locals 10

    const/4 v9, 0x0

    const/4 v8, 0x1

    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    const-string/jumbo v6, "button_fdn_key"

    invoke-virtual {v3, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iget-object v6, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v6}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v6

    iput-object v6, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mTelMan:Landroid/telephony/TelephonyManager;

    invoke-static {}, Lcom/android/phone/TeleServiceFeature;->getOmcNwCode()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v6, "remove_fdn"

    invoke-static {v6}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string/jumbo v6, "cdma_additional_setting_enable"

    invoke-static {v6}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v3, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_1
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string/jumbo v6, "VZW"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string/jumbo v6, "SPR"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string/jumbo v6, "XAS"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string/jumbo v6, "USC"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string/jumbo v6, "LRA"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v0, v9}, Landroid/preference/Preference;->setEnabled(Z)V

    :cond_3
    return-void

    :cond_4
    const-string/jumbo v6, "feature_multisim_dsda"

    invoke-static {v6}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    const/4 v5, 0x0

    const/4 v4, 0x0

    sget v6, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mSimId:I

    if-ne v6, v8, :cond_6

    invoke-static {v8}, Lcom/android/phone/PhoneUtilsMultiSIM;->getSimState(I)I

    move-result v5

    invoke-static {v8}, Lcom/android/phone/PhoneUtilsMultiSIM;->isSimCardStatusOn(I)Z

    move-result v4

    :goto_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "fdn setEnabled : SIM_STATE = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6, v8}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->log(Ljava/lang/String;Z)V

    const/4 v6, 0x5

    if-ne v5, v6, :cond_5

    if-nez v4, :cond_1

    :cond_5
    if-eqz v0, :cond_1

    invoke-virtual {v0, v9}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    :cond_6
    invoke-static {v9}, Lcom/android/phone/PhoneUtilsMultiSIM;->getSimState(I)I

    move-result v5

    invoke-static {v9}, Lcom/android/phone/PhoneUtilsMultiSIM;->isSimCardStatusOn(I)Z

    move-result v4

    goto :goto_1

    :cond_7
    iget-object v6, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mTelMan:Landroid/telephony/TelephonyManager;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mTelMan:Landroid/telephony/TelephonyManager;

    iget-object v7, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v7}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v6

    if-eqz v6, :cond_8

    iget-object v6, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mTelMan:Landroid/telephony/TelephonyManager;

    iget-object v7, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v7}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v6

    if-ne v6, v8, :cond_9

    :cond_8
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "fdn setEnabled : getSimState = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mTelMan:Landroid/telephony/TelephonyManager;

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6, v8}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->log(Ljava/lang/String;Z)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "fdn setEnabled : getFDNavailable = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v7}, Lcom/android/internal/telephony/Phone;->getFDNavailable()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6, v8}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->log(Ljava/lang/String;Z)V

    if-eqz v0, :cond_1

    invoke-virtual {v0, v9}, Landroid/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_0

    :cond_9
    iget-object v6, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v6}, Lcom/android/internal/telephony/Phone;->getFDNavailable()Z

    move-result v6

    if-eqz v6, :cond_8

    goto/16 :goto_0
.end method

.method private checkNotSupportSSQuery()Z
    .locals 2

    const/4 v0, 0x0

    const-string/jumbo v1, "not_support_ss_query"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/phone/TelephonyConfig;->isCellCSIM()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/phone/PhoneUtilsCommon;->isAvailableVoWIFI()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private checkSimStatusForDuos()V
    .locals 3

    const/4 v2, 0x1

    sget v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mSimId:I

    if-ne v0, v2, :cond_0

    invoke-static {v2}, Lcom/android/phone/PhoneUtilsMultiSIM;->getMultiSimStatus(I)I

    move-result v0

    iput v0, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mSimStatus:I

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "checkSimStatusForDuos = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mSimStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " mSimId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mSimId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->log(Ljava/lang/String;Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsMultiSIM;->getMultiSimStatus(I)I

    move-result v0

    iput v0, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mSimStatus:I

    goto :goto_0
.end method

.method private commitPrefixSettingForDCMDialer(Ljava/lang/String;)V
    .locals 6

    const/4 v5, 0x1

    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string/jumbo v3, "network_service_settings"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v2, "prefix_setting_code1"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v2, "prefix_setting_name1"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v2, "prefix_setting_code_index"

    invoke-interface {v0, v2, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v2, "prefix_setting_name_index"

    invoke-interface {v0, v2, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private createDialogDropDownTty(I)V
    .locals 7

    sget v4, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->prvTtyMode:I

    if-ne v4, p1, :cond_0

    return-void

    :cond_0
    const-string/jumbo v4, "layout_inflater"

    invoke-virtual {p0, v4}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    const v4, 0x7f040102

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f1002c3

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->builder:Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->builder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->builder:Landroid/app/AlertDialog$Builder;

    invoke-direct {p0, p1}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->changeTtyButton(I)I

    move-result v5

    new-instance v6, Lcom/android/phone/GsmUmtsAdditionalCallOptions$24;

    invoke-direct {v6, p0, v0, v1, p1}, Lcom/android/phone/GsmUmtsAdditionalCallOptions$24;-><init>(Lcom/android/phone/GsmUmtsAdditionalCallOptions;Landroid/widget/CheckBox;Landroid/content/Context;I)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->builder:Landroid/app/AlertDialog$Builder;

    new-instance v5, Lcom/android/phone/GsmUmtsAdditionalCallOptions$25;

    invoke-direct {v5, p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions$25;-><init>(Lcom/android/phone/GsmUmtsAdditionalCallOptions;)V

    const/high16 v6, 0x1040000

    invoke-virtual {v4, v6, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->builder:Landroid/app/AlertDialog$Builder;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->builder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    invoke-static {v1}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->shouldShowTtyTips(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->builder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :goto_0
    return-void

    :cond_1
    const-string/jumbo v4, "preferred_tty_mode"

    invoke-static {v4, p1}, Lcom/android/phone/TeleServiceSystemDB;->setSecureSettingDB(Ljava/lang/String;I)V

    invoke-direct {p0, p1}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->updateDropDownTty(I)V

    invoke-virtual {p0, p1}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->sendIntent(I)V

    goto :goto_0
.end method

.method private createDialogTty(I)V
    .locals 9

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v6, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->TtyValue:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const-string/jumbo v6, "layout_inflater"

    invoke-virtual {p0, v6}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    const v6, 0x7f040102

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    const v6, 0x7f1002c3

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-direct {v6, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->builder:Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->builder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v6, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->builder:Landroid/app/AlertDialog$Builder;

    invoke-direct {p0, p1}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->changeTtyButton(I)I

    move-result v7

    new-instance v8, Lcom/android/phone/GsmUmtsAdditionalCallOptions$22;

    invoke-direct {v8, p0, v0, v1, v2}, Lcom/android/phone/GsmUmtsAdditionalCallOptions$22;-><init>(Lcom/android/phone/GsmUmtsAdditionalCallOptions;Landroid/widget/CheckBox;Landroid/content/Context;I)V

    invoke-virtual {v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->builder:Landroid/app/AlertDialog$Builder;

    new-instance v7, Lcom/android/phone/GsmUmtsAdditionalCallOptions$23;

    invoke-direct {v7, p0, v5}, Lcom/android/phone/GsmUmtsAdditionalCallOptions$23;-><init>(Lcom/android/phone/GsmUmtsAdditionalCallOptions;I)V

    const/high16 v8, 0x1040000

    invoke-virtual {v6, v8, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->builder:Landroid/app/AlertDialog$Builder;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->builder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    invoke-static {v1}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->shouldShowTtyTips(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->builder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :goto_0
    return-void

    :cond_0
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->TtyValue:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->updatePreferredTtyModeSummaryForVolte(I)V

    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "preferred_tty_mode"

    invoke-static {v6, v7, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v6, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mButtonTTY:Lcom/android/phone/TtyListPreference;

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/phone/TtyListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getOtherSimId(I)I
    .locals 2

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v1

    :cond_0
    if-ne p1, v1, :cond_1

    return v0

    :cond_1
    return v0
.end method

.method private static getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 3

    const-string/jumbo v0, "GsmUmtsAdditionalCallOptions"

    const-string/jumbo v1, "getSharedPreferences "

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static getSimId()I
    .locals 1

    sget v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mSimId:I

    return v0
.end method

.method private handleTTYChange(Ljava/lang/Object;)V
    .locals 6

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "preferred_tty_mode"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handleTTYChange: requesting set TTY mode enable (TTY) to"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->log(Ljava/lang/String;)V

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    const-string/jumbo v3, "vzw_volte_ui"

    invoke-static {v3}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-direct {p0, v0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->createDialogTty(I)V

    :goto_1
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "android.telecom.action.TTY_PREFERRED_MODE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "android.telecom.intent.extra.TTY_PREFERRED"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v3

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v3, v2, v4}, Lcom/android/phone/PhoneGlobals;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_0
    return-void

    :pswitch_0
    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "preferred_tty_mode"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mButtonTTY:Lcom/android/phone/TtyListPreference;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/phone/TtyListPreference;->setValue(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->updatePreferredTtyModeSummary(I)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private initDropdownDTMF()V
    .locals 9

    iget-object v4, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mDropdownDTMF:Lcom/android/phone/DropDownPreference;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mDropdownDTMF:Lcom/android/phone/DropDownPreference;

    invoke-virtual {v4}, Lcom/android/phone/DropDownPreference;->clearItems()V

    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0900fc

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0900fb

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v4, 0x0

    array-length v5, v1

    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v3, v1, v4

    iget-object v6, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mDropdownDTMF:Lcom/android/phone/DropDownPreference;

    aget-object v7, v0, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/phone/DropDownPreference;->addItem(Ljava/lang/String;Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mDropdownDTMF:Lcom/android/phone/DropDownPreference;

    new-instance v5, Lcom/android/phone/GsmUmtsAdditionalCallOptions$14;

    invoke-direct {v5, p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions$14;-><init>(Lcom/android/phone/GsmUmtsAdditionalCallOptions;)V

    invoke-virtual {v4, v5}, Lcom/android/phone/DropDownPreference;->setCallback(Lcom/android/phone/DropDownPreference$Callback;)V

    :cond_1
    return-void
.end method

.method private initializeOthersCallSetting(Z)V
    .locals 9

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    const-string/jumbo v3, "button_misc_category_key"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

    invoke-static {}, Lcom/android/phone/TeleServiceFeature;->getOmcNwCode()Ljava/lang/String;

    move-result-object v1

    if-eqz p1, :cond_e

    const-string/jumbo v3, "support_other_call_settings"

    invoke-static {v3}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    const-string/jumbo v3, "toggle_country_name"

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/SwitchPreference;

    iput-object v3, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCountryPref:Landroid/preference/SwitchPreference;

    const-string/jumbo v3, "country_code"

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/EditTextPreference;

    iput-object v3, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCountryCodePref:Landroid/preference/EditTextPreference;

    const-string/jumbo v3, "assisted_dialing_current_country_key"

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceScreen;

    iput-object v3, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCurrentyCountry:Landroid/preference/PreferenceScreen;

    const-string/jumbo v3, "assisted_dialing_switch"

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceScreen;

    iput-object v3, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mAssistedDialingSwitch:Landroid/preference/PreferenceScreen;

    const-string/jumbo v3, "button_auto_retry_key"

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/SwitchPreference;

    iput-object v3, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mButtonAutoRetry:Landroid/preference/SwitchPreference;

    const-string/jumbo v3, "dropdown_button_dtmf_key"

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/android/phone/DropDownPreference;

    iput-object v3, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mDropdownDTMF:Lcom/android/phone/DropDownPreference;

    const-string/jumbo v3, "button_voice_privacy_key"

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mVoicePrivacy:Landroid/preference/Preference;

    iget-object v3, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v3

    if-ne v3, v8, :cond_10

    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b000c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-nez v3, :cond_10

    const-string/jumbo v3, "voice_privacy_enable"

    invoke-static {v3}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_10

    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "AIO"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "ACG"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "ATT"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "CCT"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "LRA"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "TFN"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "TMB"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "TMK"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "USC"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "VZW"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "XAA"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "LRA"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    :cond_0
    :goto_1
    const-string/jumbo v3, "international_dialing_enable"

    invoke-static {v3}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_13

    iget-object v3, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCountryPref:Landroid/preference/SwitchPreference;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCountryPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_1
    iget-object v3, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCountryCodePref:Landroid/preference/EditTextPreference;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCountryCodePref:Landroid/preference/EditTextPreference;

    invoke-virtual {v3, p0}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_2
    :goto_2
    const-string/jumbo v3, "assisted_dialing_enable"

    invoke-static {v3}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1b

    iget-object v3, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCountryPref:Landroid/preference/SwitchPreference;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCountryPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_3
    iput-object v6, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCountryPref:Landroid/preference/SwitchPreference;

    iget-object v3, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCountryCodePref:Landroid/preference/EditTextPreference;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCountryCodePref:Landroid/preference/EditTextPreference;

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_4
    iput-object v6, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCountryCodePref:Landroid/preference/EditTextPreference;

    const-string/jumbo v3, "tablet_device"

    invoke-static {v3}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_19

    const-string/jumbo v3, "global_network_cdma_gsm_enable"

    invoke-static {v3}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_16

    :cond_5
    :goto_3
    iget-object v3, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mButtonAutoRetry:Landroid/preference/SwitchPreference;

    if-eqz v3, :cond_7

    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0009

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-nez v3, :cond_6

    const-string/jumbo v3, "auto_retry_enable"

    invoke-static {v3}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1d

    :cond_6
    iget-object v3, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mButtonAutoRetry:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_7
    :goto_4
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_8

    const-string/jumbo v3, "ACG"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    const-string/jumbo v3, "LRA"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    const-string/jumbo v3, "USC"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    const-string/jumbo v3, "VZW"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e

    :cond_8
    :goto_5
    iget-object v3, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mDropdownDTMF:Lcom/android/phone/DropDownPreference;

    if-eqz v3, :cond_a

    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0008

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-nez v3, :cond_9

    const-string/jumbo v3, "dtmf_type_enable"

    invoke-static {v3}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1f

    iget-object v3, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v3

    if-ne v3, v8, :cond_1f

    :cond_9
    invoke-direct {p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->initDropdownDTMF()V

    :cond_a
    :goto_6
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_b

    const-string/jumbo v3, "ACG"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    const-string/jumbo v3, "BST"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    const-string/jumbo v3, "CCT"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    const-string/jumbo v3, "LRA"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    const-string/jumbo v3, "SPR"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    const-string/jumbo v3, "TFN"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    const-string/jumbo v3, "USC"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    const-string/jumbo v3, "VZW"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    const-string/jumbo v3, "VMU"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    const-string/jumbo v3, "XAS"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    const-string/jumbo v3, "LRA"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20

    :cond_b
    :goto_7
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_c

    const-string/jumbo v3, "VZW"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_21

    :cond_c
    :goto_8
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_d

    const-string/jumbo v3, "BST"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    const-string/jumbo v3, "SPR"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    const-string/jumbo v3, "VMU"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    const-string/jumbo v3, "XAS"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_23

    :cond_d
    :goto_9
    return-void

    :cond_e
    if-eqz v0, :cond_f

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_f
    return-void

    :cond_10
    iget-object v3, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mVoicePrivacy:Landroid/preference/Preference;

    if-eqz v3, :cond_11

    iget-object v3, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mVoicePrivacy:Landroid/preference/Preference;

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_11
    iput-object v6, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mVoicePrivacy:Landroid/preference/Preference;

    goto/16 :goto_0

    :cond_12
    iget-object v3, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mVoicePrivacy:Landroid/preference/Preference;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mVoicePrivacy:Landroid/preference/Preference;

    invoke-virtual {v3, v7}, Landroid/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_1

    :cond_13
    iget-object v3, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCountryPref:Landroid/preference/SwitchPreference;

    if-eqz v3, :cond_14

    iget-object v3, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCountryPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_14
    iput-object v6, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCountryPref:Landroid/preference/SwitchPreference;

    iget-object v3, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCountryCodePref:Landroid/preference/EditTextPreference;

    if-eqz v3, :cond_15

    iget-object v3, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCountryCodePref:Landroid/preference/EditTextPreference;

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_15
    iput-object v6, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCountryCodePref:Landroid/preference/EditTextPreference;

    goto/16 :goto_2

    :cond_16
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_17

    const-string/jumbo v3, "VZW"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    :cond_17
    iget-object v3, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCurrentyCountry:Landroid/preference/PreferenceScreen;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCurrentyCountry:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    iput-object v6, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCurrentyCountry:Landroid/preference/PreferenceScreen;

    goto/16 :goto_3

    :cond_18
    const-string/jumbo v3, "GsmUmtsAdditionalCallOptions"

    const-string/jumbo v4, "Temp sim swap."

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    goto/16 :goto_3

    :cond_19
    iget-object v3, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCurrentyCountry:Landroid/preference/PreferenceScreen;

    if-eqz v3, :cond_1a

    iget-object v3, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCurrentyCountry:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    iput-object v6, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCurrentyCountry:Landroid/preference/PreferenceScreen;

    :cond_1a
    iget-object v3, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mAssistedDialingSwitch:Landroid/preference/PreferenceScreen;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mAssistedDialingSwitch:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    iput-object v6, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mAssistedDialingSwitch:Landroid/preference/PreferenceScreen;

    goto/16 :goto_3

    :cond_1b
    iget-object v3, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCurrentyCountry:Landroid/preference/PreferenceScreen;

    if-eqz v3, :cond_1c

    iget-object v3, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCurrentyCountry:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    iput-object v6, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCurrentyCountry:Landroid/preference/PreferenceScreen;

    :cond_1c
    iget-object v3, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mAssistedDialingSwitch:Landroid/preference/PreferenceScreen;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mAssistedDialingSwitch:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    iput-object v6, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mAssistedDialingSwitch:Landroid/preference/PreferenceScreen;

    goto/16 :goto_3

    :cond_1d
    iget-object v3, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mButtonAutoRetry:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    iput-object v6, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mButtonAutoRetry:Landroid/preference/SwitchPreference;

    goto/16 :goto_4

    :cond_1e
    iget-object v3, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mButtonAutoRetry:Landroid/preference/SwitchPreference;

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mButtonAutoRetry:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v7}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    goto/16 :goto_5

    :cond_1f
    iget-object v3, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mDropdownDTMF:Lcom/android/phone/DropDownPreference;

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    iput-object v6, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mDropdownDTMF:Lcom/android/phone/DropDownPreference;

    goto/16 :goto_6

    :cond_20
    iget-object v3, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mDropdownDTMF:Lcom/android/phone/DropDownPreference;

    if-eqz v3, :cond_b

    iget-object v3, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mDropdownDTMF:Lcom/android/phone/DropDownPreference;

    invoke-virtual {v3, v7}, Lcom/android/phone/DropDownPreference;->setEnabled(Z)V

    goto/16 :goto_7

    :cond_21
    iget-object v3, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCurrentyCountry:Landroid/preference/PreferenceScreen;

    if-eqz v3, :cond_22

    iget-object v3, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCurrentyCountry:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3, v7}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    :cond_22
    iget-object v3, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mAssistedDialingSwitch:Landroid/preference/PreferenceScreen;

    if-eqz v3, :cond_c

    iget-object v3, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mAssistedDialingSwitch:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3, v7}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto/16 :goto_8

    :cond_23
    iget-object v3, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCountryPref:Landroid/preference/SwitchPreference;

    if-eqz v3, :cond_24

    iget-object v3, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCountryPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v7}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    :cond_24
    iget-object v3, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCountryCodePref:Landroid/preference/EditTextPreference;

    if-eqz v3, :cond_d

    iget-object v3, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCountryCodePref:Landroid/preference/EditTextPreference;

    invoke-virtual {v3, v7}, Landroid/preference/EditTextPreference;->setEnabled(Z)V

    goto/16 :goto_9
.end method

.method private isAirplaneModeOn()Z
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "airplane_mode_on"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isTWTWM()Z
    .locals 5

    const/4 v4, 0x5

    const/4 v3, 0x0

    const-string/jumbo v2, "common_volte_tw"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    return v3

    :cond_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v2, v4, :cond_1

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_1
    const-string/jumbo v2, "46697"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    return v2
.end method

.method private log(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "GsmUmtsAdditionalCallOptions"

    invoke-static {v0, p1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private log(Ljava/lang/String;Z)V
    .locals 1

    const-string/jumbo v0, "GsmUmtsAdditionalCallOptions"

    invoke-static {v0, p1, p2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    return-void
.end method

.method public static neverShowTtyTipsAgain(Landroid/content/Context;)V
    .locals 3

    const-string/jumbo v0, "GsmUmtsAdditionalCallOptions"

    const-string/jumbo v1, "neverShowTtyTipsAgain "

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    invoke-static {p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "swipe_popup"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private onCreateMultiSIM()V
    .locals 5

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-string/jumbo v1, "feature_multisim"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {}, Lcom/android/phone/PhoneUtilsMultiSIM;->getInsertedSimCard()I

    move-result v1

    if-le v1, v4, :cond_0

    invoke-static {v3}, Lcom/android/phone/PhoneUtilsMultiSIM;->isSimCardStatusOn(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v4}, Lcom/android/phone/PhoneUtilsMultiSIM;->isSimCardStatusOn(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-boolean v4, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mIsDualSimTurnedOn:Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[MultiSIM] GsmUmtsmIsDualSimTurnedOn : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mIsDualSimTurnedOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->log(Ljava/lang/String;)V

    :cond_0
    iget-boolean v1, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mIsDualSimTurnedOn:Z

    if-eqz v1, :cond_6

    const-string/jumbo v1, "DUAL SIM"

    invoke-direct {p0, v1}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->log(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_5

    const-string/jumbo v1, "Bundle is not null"

    invoke-direct {p0, v1}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->log(Ljava/lang/String;)V

    const-string/jumbo v1, "CallSettingTab"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mSimId:I

    :goto_0
    const-string/jumbo v1, "feature_multisim"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "feature_ctc"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {v3}, Lcom/android/phone/PhoneUtilsMultiSIM;->getSimState(I)I

    move-result v1

    if-ne v1, v4, :cond_1

    invoke-static {v4}, Lcom/android/phone/PhoneUtilsMultiSIM;->getSimState(I)I

    move-result v1

    if-nez v1, :cond_1

    sput v4, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mSimId:I

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "CTC Feature -  mSimId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mSimId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->log(Ljava/lang/String;)V

    :cond_2
    const-string/jumbo v1, "feature_ctc"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->checkSimStatusForDuos()V

    :cond_3
    const-string/jumbo v1, "GsmUmtsAdditionalCallOptions"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mSimId : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mSimId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    :cond_4
    return-void

    :cond_5
    const-string/jumbo v1, "Bundle is null"

    invoke-direct {p0, v1}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->log(Ljava/lang/String;)V

    sput v3, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mSimId:I

    goto :goto_0

    :cond_6
    invoke-static {v4}, Lcom/android/phone/PhoneUtilsMultiSIM;->isSimCardStatusOn(I)Z

    move-result v1

    if-eqz v1, :cond_7

    sput v4, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mSimId:I

    goto :goto_0

    :cond_7
    sput v3, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mSimId:I

    goto :goto_0
.end method

.method public static setPickContactsActivityResult(IILandroid/content/Intent;)V
    .locals 2

    const-string/jumbo v0, "GsmUmtsAdditionalCallOptions"

    const-string/jumbo v1, "setPickContactsActivityResult"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static shouldShowTtyTips(Landroid/content/Context;)Z
    .locals 3

    const/4 v2, 0x1

    const-string/jumbo v0, "GsmUmtsAdditionalCallOptions"

    const-string/jumbo v1, "shouldShowTtyTips "

    invoke-static {v0, v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    invoke-static {p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "swipe_popup"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private showCallBarringandForwarding()V
    .locals 6

    const/4 v5, 0x1

    iget-object v2, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mTcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mTcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-interface {v2, v3, v5}, Lcom/android/phone/TimeConsumingPreferenceListener;->onFinished(Landroid/preference/Preference;Z)V

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mIsChangeDataProcess:Z

    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getActivity()Landroid/app/Activity;

    move-result-object v2

    if-nez v2, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    const-string/jumbo v2, "feature_chn"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v2, "feature_ctc"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v2, "feature_hktw"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    invoke-static {}, Lcom/android/phone/PhoneUtilsCommon;->isAvailablePSVT()Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    invoke-static {}, Lcom/android/phone/PhoneUtilsMultiSIM;->getDefaultDataSlotId()I

    move-result v2

    invoke-static {v2}, Lcom/android/phone/TelephonyConfig;->isCMCCSIM(I)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_4
    const/4 v0, 0x1

    :cond_5
    const-string/jumbo v2, "GsmUmtsAdditionalCallOptions"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mIsCallForwardPreference = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mIsCallForwardPreference:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v5}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    const-string/jumbo v2, "GsmUmtsAdditionalCallOptions"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mChangeDataBack = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mChangeDataBack:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v5}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    const-string/jumbo v2, "GsmUmtsAdditionalCallOptions"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mSwitchData = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mSwitchData:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v5}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    const-string/jumbo v2, "GsmUmtsAdditionalCallOptions"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "RemoveVTCallBarring = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v5}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    iget-boolean v2, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mIsCallForwardPreference:Z

    if-eqz v2, :cond_6

    iget-boolean v2, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mChangeDataBack:Z

    if-eqz v2, :cond_8

    :cond_6
    iget-boolean v2, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mIsCallForwardPreference:Z

    if-nez v2, :cond_7

    iget-boolean v2, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mChangeDataBack:Z

    if-eqz v2, :cond_9

    :cond_7
    :goto_0
    return-void

    :cond_8
    iget-boolean v2, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mSwitchData:Z

    if-eqz v2, :cond_6

    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCallForwarding:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0, v2, v3}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->onPreferenceTreeClickMultiSIM(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    if-eqz v2, :cond_7

    const-string/jumbo v2, "GsmUmtsAdditionalCallOptions"

    const-string/jumbo v3, "mCallForwarding start"

    invoke-static {v2, v3, v5}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    goto :goto_0

    :cond_9
    iget-boolean v2, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mSwitchData:Z

    if-eqz v2, :cond_7

    if-eqz v0, :cond_a

    const-string/jumbo v2, "GsmUmtsAdditionalCallOptions"

    const-string/jumbo v3, "mVoiceCallBarring start"

    invoke-static {v2, v3, v5}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/android/phone/callsettings/CallBarring;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v2, "CallSettingTab"

    sget v3, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mSimId:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_a
    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCallBarring:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0, v2, v3}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->onPreferenceTreeClickMultiSIM(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    if-eqz v2, :cond_7

    const-string/jumbo v2, "GsmUmtsAdditionalCallOptions"

    const-string/jumbo v3, "mCallBarring start"

    invoke-static {v2, v3, v5}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    goto :goto_0
.end method

.method private updateAutoAreaCodeOnOff(Ljava/lang/String;)V
    .locals 6

    const/4 v5, 0x1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    const/4 v1, 0x1

    :goto_0
    const-string/jumbo v0, "area_code_enabled"

    if-eqz v1, :cond_2

    const/4 v2, 0x1

    :goto_1
    const-string/jumbo v3, "feature_multisim"

    invoke-static {v3}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    sget v3, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mSimId:I

    if-ne v3, v5, :cond_0

    const-string/jumbo v0, "area_code_sim2_enabled"

    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v0, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateAutoAreaCodeOnOff : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, v5}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->log(Ljava/lang/String;Z)V

    return-void

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private updateDropDownTty()V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string/jumbo v2, "preferred_tty_mode"

    invoke-static {v2, v5}, Lcom/android/phone/TeleServiceSystemDB;->getSecureSettingDB(Ljava/lang/String;I)I

    move-result v1

    const-string/jumbo v2, "GsmUmtsAdditionalCallOptions"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateDropDownTty settingsTtyMode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", prvTtyMode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->prvTtyMode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v6}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    sput v1, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->prvTtyMode:I

    packed-switch v1, :pswitch_data_0

    const-string/jumbo v2, "GsmUmtsAdditionalCallOptions"

    const-string/jumbo v3, "updateDropDownTty() default"

    invoke-static {v2, v3, v6}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    iget-object v2, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mDropDownTTY:Lcom/android/phone/DropDownPreference;

    invoke-virtual {v2, v5}, Lcom/android/phone/DropDownPreference;->setSelectedItem(I)V

    const-string/jumbo v2, "vzw_volte_ui"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mDropDownTTY:Lcom/android/phone/DropDownPreference;

    invoke-virtual {v2, v5}, Lcom/android/phone/DropDownPreference;->setEnabled(Z)V

    :cond_0
    return-void

    :pswitch_0
    const-string/jumbo v2, "vzw_volte_ui"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0900f9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/android/phone/PhoneUtilsCommon;->isAvailablePSVT()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mDropDownTTY:Lcom/android/phone/DropDownPreference;

    const v3, 0x7f0d0953

    invoke-virtual {v2, v3}, Lcom/android/phone/DropDownPreference;->setSummary(I)V

    :goto_0
    iget-object v2, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mNM:Lcom/android/phone/NotificationMgr;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mNM:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v2}, Lcom/android/phone/NotificationMgr;->showVzwTtyNotification()V

    :cond_1
    :goto_1
    const-string/jumbo v2, "GsmUmtsAdditionalCallOptions"

    const-string/jumbo v3, "updateDropDownTty() change to volte summary"

    invoke-static {v2, v3, v6}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    :goto_2
    return-void

    :cond_2
    iget-object v2, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mDropDownTTY:Lcom/android/phone/DropDownPreference;

    const v3, 0x7f0d0954

    invoke-virtual {v2, v3}, Lcom/android/phone/DropDownPreference;->setSummary(I)V

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mDropDownTTY:Lcom/android/phone/DropDownPreference;

    aget-object v3, v0, v5

    invoke-virtual {v2, v3}, Lcom/android/phone/DropDownPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mNM:Lcom/android/phone/NotificationMgr;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mNM:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v2}, Lcom/android/phone/NotificationMgr;->cancelVzwTtyNotification()V

    goto :goto_1

    :cond_4
    iget-object v2, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mDropDownTTY:Lcom/android/phone/DropDownPreference;

    invoke-virtual {v2, v1}, Lcom/android/phone/DropDownPreference;->setSelectedItem(I)V

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private updateDropDownTty(I)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string/jumbo v1, "preferred_tty_mode"

    invoke-static {v1, p1}, Lcom/android/phone/TeleServiceSystemDB;->setSecureSettingDB(Ljava/lang/String;I)V

    sput p1, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->prvTtyMode:I

    const-string/jumbo v1, "GsmUmtsAdditionalCallOptions"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateDropDownTty TtyMode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v5}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    packed-switch p1, :pswitch_data_0

    const-string/jumbo v1, "GsmUmtsAdditionalCallOptions"

    const-string/jumbo v2, "updateDropDownTty(TtyMode) default"

    invoke-static {v1, v2, v5}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    iget-object v1, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mDropDownTTY:Lcom/android/phone/DropDownPreference;

    invoke-virtual {v1, v4}, Lcom/android/phone/DropDownPreference;->setSelectedItem(I)V

    const-string/jumbo v1, "vzw_volte_ui"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mDropDownTTY:Lcom/android/phone/DropDownPreference;

    invoke-virtual {v1, v4}, Lcom/android/phone/DropDownPreference;->setEnabled(Z)V

    :cond_0
    return-void

    :pswitch_0
    const-string/jumbo v1, "vzw_volte_ui"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0900f9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mDropDownTTY:Lcom/android/phone/DropDownPreference;

    invoke-virtual {v1, p1}, Lcom/android/phone/DropDownPreference;->setSelectedItem(I)V

    if-eqz p1, :cond_4

    invoke-static {}, Lcom/android/phone/PhoneUtilsCommon;->isAvailablePSVT()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mDropDownTTY:Lcom/android/phone/DropDownPreference;

    const v2, 0x7f0d0953

    invoke-virtual {v1, v2}, Lcom/android/phone/DropDownPreference;->setSummary(I)V

    :goto_0
    iget-object v1, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mNM:Lcom/android/phone/NotificationMgr;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mNM:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v1}, Lcom/android/phone/NotificationMgr;->showVzwTtyNotification()V

    :cond_1
    :goto_1
    const-string/jumbo v1, "GsmUmtsAdditionalCallOptions"

    const-string/jumbo v2, "updateDropDownTty(TtyMode) change to volte summary"

    invoke-static {v1, v2, v5}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    :cond_2
    return-void

    :cond_3
    iget-object v1, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mDropDownTTY:Lcom/android/phone/DropDownPreference;

    const v2, 0x7f0d0954

    invoke-virtual {v1, v2}, Lcom/android/phone/DropDownPreference;->setSummary(I)V

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mDropDownTTY:Lcom/android/phone/DropDownPreference;

    aget-object v2, v0, v4

    invoke-virtual {v1, v2}, Lcom/android/phone/DropDownPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mNM:Lcom/android/phone/NotificationMgr;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mNM:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v1}, Lcom/android/phone/NotificationMgr;->cancelVzwTtyNotification()V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private updateOthresCallSetting()V
    .locals 6

    const/4 v4, 0x0

    iget-object v3, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCountryCodePref:Landroid/preference/EditTextPreference;

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v5, "country_code"

    invoke-static {v3, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCountryCodePref:Landroid/preference/EditTextPreference;

    invoke-virtual {v3, v2}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    :cond_0
    iget-object v3, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mButtonAutoRetry:Landroid/preference/SwitchPreference;

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v5, "call_auto_retry"

    invoke-static {v3, v5, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v5, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mButtonAutoRetry:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_3

    const/4 v3, 0x1

    :goto_0
    invoke-virtual {v5, v3}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :cond_1
    iget-object v3, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mDropdownDTMF:Lcom/android/phone/DropDownPreference;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v5, "dtmf_tone_type"

    invoke-static {v3, v5, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iget-object v3, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mDropdownDTMF:Lcom/android/phone/DropDownPreference;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/phone/DropDownPreference;->setSelectedValue(Ljava/lang/Object;)V

    :cond_2
    return-void

    :cond_3
    move v3, v4

    goto :goto_0
.end method

.method private updatePreferredTtyModeSummary(I)V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0900f9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    packed-switch p1, :pswitch_data_0

    iget-object v1, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mButtonTTY:Lcom/android/phone/TtyListPreference;

    invoke-virtual {v1, v3}, Lcom/android/phone/TtyListPreference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mButtonTTY:Lcom/android/phone/TtyListPreference;

    aget-object v2, v0, v3

    invoke-virtual {v1, v2}, Lcom/android/phone/TtyListPreference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mButtonTTY:Lcom/android/phone/TtyListPreference;

    aget-object v2, v0, p1

    invoke-virtual {v1, v2}, Lcom/android/phone/TtyListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private updatePreferredTtyModeSummaryForVolte(I)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0900f9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    packed-switch p1, :pswitch_data_0

    invoke-static {}, Lcom/android/phone/PhoneUtilsCommon;->isAvailablePSVT()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mButtonTTY:Lcom/android/phone/TtyListPreference;

    const v2, 0x7f0d0953

    invoke-virtual {v1, v2}, Lcom/android/phone/TtyListPreference;->setSummary(I)V

    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mButtonTTY:Lcom/android/phone/TtyListPreference;

    aget-object v2, v0, p1

    invoke-virtual {v1, v2}, Lcom/android/phone/TtyListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mButtonTTY:Lcom/android/phone/TtyListPreference;

    const v2, 0x7f0d0954

    invoke-virtual {v1, v2}, Lcom/android/phone/TtyListPreference;->setSummary(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private updateSummaryAutoAreaCode(Ljava/lang/String;)V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_1

    const/4 v1, 0x1

    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateSummaryAutoAreaCode : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->log(Ljava/lang/String;)V

    if-eqz v1, :cond_2

    new-array v0, v7, [Ljava/lang/String;

    const-string/jumbo v4, "%d"

    aput-object v4, v0, v6

    new-array v2, v7, [Ljava/lang/String;

    aput-object p1, v2, v6

    const v4, 0x7f0d0600

    invoke-virtual {p0, v4}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4, v0, v2}, Landroid/text/TextUtils;->replace(Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mAutoAreaCodeButton:Landroid/preference/EditTextPreference;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mAutoAreaCodeButton:Landroid/preference/EditTextPreference;

    invoke-virtual {v4, v3}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mAutoAreaCodeButton:Landroid/preference/EditTextPreference;

    invoke-virtual {v4, p1}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mAutoAreaCodeButton:Landroid/preference/EditTextPreference;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mAutoAreaCodeButton:Landroid/preference/EditTextPreference;

    const v5, 0x7f0d0601

    invoke-virtual {v4, v5}, Landroid/preference/EditTextPreference;->setSummary(I)V

    iget-object v4, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mAutoAreaCodeButton:Landroid/preference/EditTextPreference;

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public dataConnectionStateChanged(I)V
    .locals 4

    const-string/jumbo v1, "GsmUmtsAdditionalCallOptions"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onDataConnectionStateChanged  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    move v0, p1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    iget-boolean v1, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mDataSlotChanged:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mDataSlotChanged:Z

    invoke-direct {p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->showCallBarringandForwarding()V

    :cond_0
    return-void
.end method

.method public handleIAState(Ljava/lang/String;Ljava/lang/String;)I
    .locals 13

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string/jumbo v10, "setCLIR"

    invoke-virtual {v10, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v11, "clir_preference"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    const-string/jumbo v10, "Show"

    invoke-virtual {p2, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_2

    const/4 v9, 0x2

    :cond_0
    :goto_0
    iget-object v10, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCLIRDropDown:Lcom/android/phone/CLIRDropDownPreference;

    if-eqz v10, :cond_4

    iget-object v10, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCLIRDropDown:Lcom/android/phone/CLIRDropDownPreference;

    invoke-virtual {v10}, Lcom/android/phone/CLIRDropDownPreference;->isEnabled()Z

    move-result v10

    if-eqz v10, :cond_4

    if-ne v3, v9, :cond_3

    const/4 v8, 0x2

    :goto_1
    iget-object v10, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCLIRDropDown:Lcom/android/phone/CLIRDropDownPreference;

    invoke-virtual {v10, v9}, Lcom/android/phone/CLIRDropDownPreference;->setSelectedItem(I)V

    :cond_1
    :goto_2
    return v8

    :cond_2
    const-string/jumbo v10, "Hide"

    invoke-virtual {p2, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_0

    const/4 v9, 0x1

    goto :goto_0

    :cond_3
    const/4 v8, 0x1

    goto :goto_1

    :cond_4
    const/4 v8, 0x0

    goto :goto_2

    :cond_5
    const-string/jumbo v10, "setTTY"

    invoke-virtual {v10, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b

    const-string/jumbo v10, "preferred_tty_mode"

    const/4 v11, 0x0

    invoke-static {v10, v11}, Lcom/android/phone/TeleServiceSystemDB;->getSecureSettingDB(Ljava/lang/String;I)I

    move-result v3

    const-string/jumbo v10, "FULL"

    invoke-virtual {p2, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_7

    const/4 v9, 0x1

    :cond_6
    :goto_3
    iget-object v10, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mDropDownTTY:Lcom/android/phone/DropDownPreference;

    if-eqz v10, :cond_a

    if-ne v3, v9, :cond_9

    const/4 v8, 0x2

    :goto_4
    iget-object v10, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mDropDownTTY:Lcom/android/phone/DropDownPreference;

    invoke-virtual {v10, v9}, Lcom/android/phone/DropDownPreference;->setSelectedItem(I)V

    goto :goto_2

    :cond_7
    const-string/jumbo v10, "HCO"

    invoke-virtual {p2, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_8

    const/4 v9, 0x2

    goto :goto_3

    :cond_8
    const-string/jumbo v10, "VCO"

    invoke-virtual {p2, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_6

    const/4 v9, 0x3

    goto :goto_3

    :cond_9
    const/4 v8, 0x1

    goto :goto_4

    :cond_a
    const/4 v8, 0x0

    goto :goto_2

    :cond_b
    const-string/jumbo v10, "CallWaiting"

    invoke-virtual {v10, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_11

    const-string/jumbo v10, "on"

    invoke-virtual {v10, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const-string/jumbo v10, "GsmUmtsAdditionalCallOptions"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "call waiting - "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v10, "feature_multisim"

    invoke-static {v10}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_c

    sget v10, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mSimId:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_c

    const-string/jumbo v1, "volte_call_waiting_slot2"

    :goto_5
    const/4 v10, 0x0

    invoke-static {v1, v10}, Lcom/android/phone/TeleServiceSystemDB;->getSettingDB(Ljava/lang/String;I)I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_d

    const/4 v2, 0x1

    :goto_6
    iget-object v10, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCWSwitch:Lcom/android/phone/CallWaitingSwitchPreference;

    if-eqz v10, :cond_10

    if-eq v2, v7, :cond_f

    const-string/jumbo v10, "GsmUmtsAdditionalCallOptions"

    const-string/jumbo v11, "call waiting - change value"

    invoke-static {v10, v11}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v7, :cond_e

    const/4 v10, 0x1

    :goto_7
    invoke-static {v1, v10}, Lcom/android/phone/TeleServiceSystemDB;->setSettingDB(Ljava/lang/String;I)V

    iget-object v10, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCWSwitch:Lcom/android/phone/CallWaitingSwitchPreference;

    iget-object v11, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCWSwitch:Lcom/android/phone/CallWaitingSwitchPreference;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lcom/android/phone/CallWaitingSwitchPreference;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    const/4 v8, 0x1

    goto/16 :goto_2

    :cond_c
    const-string/jumbo v1, "volte_call_waiting"

    goto :goto_5

    :cond_d
    const/4 v2, 0x0

    goto :goto_6

    :cond_e
    const/4 v10, 0x0

    goto :goto_7

    :cond_f
    const/4 v8, 0x2

    goto/16 :goto_2

    :cond_10
    const/4 v8, 0x0

    goto/16 :goto_2

    :cond_11
    const-string/jumbo v10, "setHearingAids"

    invoke-virtual {v10, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_16

    const-string/jumbo v10, "TRUE"

    invoke-virtual {v10, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v11, "hearing_aid"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_12

    const/4 v2, 0x1

    :goto_8
    const-string/jumbo v10, "GsmUmtsAdditionalCallOptions"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "set HearingAids cur val :  "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ", change to "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v10, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mMeterialButtonHAC:Landroid/preference/SwitchPreference;

    if-eqz v10, :cond_15

    if-eq v2, v6, :cond_1

    if-eqz v6, :cond_13

    const/4 v4, 0x1

    :goto_9
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v11, "hearing_aid"

    invoke-static {v10, v11, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string/jumbo v10, "audio"

    invoke-virtual {p0, v10}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    const-string/jumbo v11, "HACSetting"

    if-eqz v4, :cond_14

    const-string/jumbo v10, "ON"

    :goto_a
    invoke-virtual {v0, v11, v10}, Landroid/media/AudioManager;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mMeterialButtonHAC:Landroid/preference/SwitchPreference;

    invoke-virtual {v10, v6}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto/16 :goto_2

    :cond_12
    const/4 v2, 0x0

    goto :goto_8

    :cond_13
    const/4 v4, 0x0

    goto :goto_9

    :cond_14
    const-string/jumbo v10, "OFF"

    goto :goto_a

    :cond_15
    const/4 v8, 0x0

    goto/16 :goto_2

    :cond_16
    const-string/jumbo v10, "USdialing"

    invoke-virtual {v10, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    const-string/jumbo v10, "TRUE"

    invoke-virtual {v10, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-string/jumbo v10, "GsmUmtsAdditionalCallOptions"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "set US Dialing change to : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v10, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCountryPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v10, v5}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    if-eqz v5, :cond_1

    iget-object v10, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCountryCodePref:Landroid/preference/EditTextPreference;

    const-string/jumbo v11, "011"

    invoke-virtual {v10, v11}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v11, "country_code"

    const-string/jumbo v12, "011"

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_2
.end method

.method public initializeDropDownTTY()V
    .locals 9

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mDropDownTTY:Lcom/android/phone/DropDownPreference;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mDropDownTTY:Lcom/android/phone/DropDownPreference;

    invoke-virtual {v5}, Lcom/android/phone/DropDownPreference;->clearItems()V

    const-string/jumbo v5, "preferred_tty_mode"

    invoke-static {v5, v4}, Lcom/android/phone/TeleServiceSystemDB;->getSecureSettingDB(Ljava/lang/String;I)I

    move-result v5

    sput v5, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->prvTtyMode:I

    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0900fa

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0900f9

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    array-length v5, v1

    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v3, v1, v4

    iget-object v6, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mDropDownTTY:Lcom/android/phone/DropDownPreference;

    aget-object v7, v0, v2

    invoke-virtual {v7}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/phone/DropDownPreference;->addItem(Ljava/lang/String;Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mDropDownTTY:Lcom/android/phone/DropDownPreference;

    new-instance v5, Lcom/android/phone/GsmUmtsAdditionalCallOptions$15;

    invoke-direct {v5, p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions$15;-><init>(Lcom/android/phone/GsmUmtsAdditionalCallOptions;)V

    invoke-virtual {v4, v5}, Lcom/android/phone/DropDownPreference;->setCallback(Lcom/android/phone/DropDownPreference$Callback;)V

    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 18

    invoke-super/range {p0 .. p1}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/android/phone/TeleServiceFeature;->getOmcNwCode()Ljava/lang/String;

    move-result-object v10

    const v14, 0x7f0d024e

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getString(I)Ljava/lang/String;

    move-result-object v14

    const v15, 0x7f0d029b

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/android/phone/utils/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->onCreateMultiSIM()V

    const v14, 0x7f070030

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->addPreferencesFromResource(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v12

    const-string/jumbo v14, "button_clir_key"

    invoke-virtual {v12, v14}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    check-cast v14, Lcom/android/phone/CLIRListPreference;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCLIRButton:Lcom/android/phone/CLIRListPreference;

    const-string/jumbo v14, "button_clir_dropdown_key"

    invoke-virtual {v12, v14}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    check-cast v14, Lcom/android/phone/CLIRDropDownPreference;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCLIRDropDown:Lcom/android/phone/CLIRDropDownPreference;

    const-string/jumbo v14, "button_cw_key"

    invoke-virtual {v12, v14}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    check-cast v14, Lcom/android/phone/CallWaitingCheckBoxPreference;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCWButton:Lcom/android/phone/CallWaitingCheckBoxPreference;

    const-string/jumbo v14, "meterial_button_cw_key"

    invoke-virtual {v12, v14}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    check-cast v14, Lcom/android/phone/CallWaitingSwitchPreference;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCWSwitch:Lcom/android/phone/CallWaitingSwitchPreference;

    const-string/jumbo v14, "meterial_button_clir_key"

    invoke-virtual {v12, v14}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    check-cast v14, Lcom/android/phone/CLIRSwitchPreference;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCLIRSwitch_SBM:Lcom/android/phone/CLIRSwitchPreference;

    const-string/jumbo v14, "button_hac_key"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    check-cast v14, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mButtonHAC:Landroid/preference/CheckBoxPreference;

    const-string/jumbo v14, "meterial_button_hac_key"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    check-cast v14, Landroid/preference/SwitchPreference;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mMeterialButtonHAC:Landroid/preference/SwitchPreference;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mMeterialButtonHAC:Landroid/preference/SwitchPreference;

    if-eqz v14, :cond_0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mMeterialButtonHAC:Landroid/preference/SwitchPreference;

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_0
    const-string/jumbo v14, "button_tty_mode_key"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    check-cast v14, Lcom/android/phone/TtyListPreference;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mButtonTTY:Lcom/android/phone/TtyListPreference;

    const-string/jumbo v14, "button_tty_mode_dropdown_key"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    check-cast v14, Lcom/android/phone/DropDownPreference;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mDropDownTTY:Lcom/android/phone/DropDownPreference;

    const-string/jumbo v14, "feature_multisim"

    invoke-static {v14}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_25

    sget v14, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mSimId:I

    invoke-static {v14}, Lcom/android/phone/PhoneUtilsMultiSIM;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mPhone:Lcom/android/internal/telephony/Phone;

    :goto_0
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/phone/PhoneGlobals;->getNotificationMgr()Lcom/android/phone/NotificationMgr;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mNM:Lcom/android/phone/NotificationMgr;

    const-string/jumbo v14, "feature_multisim"

    invoke-static {v14}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_1

    const-string/jumbo v14, "button_gsm_voicecall_forwarding"

    invoke-virtual {v12, v14}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    check-cast v14, Landroid/preference/PreferenceScreen;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCallForwarding:Landroid/preference/PreferenceScreen;

    const-string/jumbo v14, "button_callType_select_key"

    invoke-virtual {v12, v14}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    check-cast v14, Landroid/preference/PreferenceScreen;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCallTypeSelect:Landroid/preference/PreferenceScreen;

    const-string/jumbo v14, "voicecall_barring_key"

    invoke-virtual {v12, v14}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    check-cast v14, Landroid/preference/PreferenceScreen;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCallBarring:Landroid/preference/PreferenceScreen;

    const-string/jumbo v14, "button_fdn_key"

    invoke-virtual {v12, v14}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    check-cast v14, Landroid/preference/PreferenceScreen;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mFdnSetting:Landroid/preference/PreferenceScreen;

    :cond_1
    const-string/jumbo v14, "call_setting_ui_kdi"

    invoke-static {v14}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_2

    const-string/jumbo v14, "button_gsm_voicecall_forwarding"

    invoke-virtual {v12, v14}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    check-cast v14, Landroid/preference/PreferenceScreen;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCallVoicemailForwarding:Landroid/preference/PreferenceScreen;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCallVoicemailForwarding:Landroid/preference/PreferenceScreen;

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f0d04bb

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/preference/PreferenceScreen;->setTitle(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCallVoicemailForwarding:Landroid/preference/PreferenceScreen;

    const-string/jumbo v15, ""

    invoke-virtual {v14, v15}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    const-string/jumbo v14, "button_sync_call_settings_key"

    invoke-virtual {v12, v14}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    check-cast v14, Landroid/preference/PreferenceScreen;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mSyncCallSettings:Landroid/preference/PreferenceScreen;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mSyncCallSettings:Landroid/preference/PreferenceScreen;

    if-eqz v14, :cond_2

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mSyncCallSettings:Landroid/preference/PreferenceScreen;

    invoke-virtual {v12, v14}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mSyncCallSettings:Landroid/preference/PreferenceScreen;

    :cond_2
    new-instance v14, Landroid/content/IntentFilter;

    invoke-direct {v14}, Landroid/content/IntentFilter;-><init>()V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mHotSwapFilter:Landroid/content/IntentFilter;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mHotSwapFilter:Landroid/content/IntentFilter;

    const-string/jumbo v15, "com.samsung.intent.action.SIMHOTSWAP"

    invoke-virtual {v14, v15}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mHotSwapFilter:Landroid/content/IntentFilter;

    const-string/jumbo v15, "com.samsung.settings.SIMCARD_MGT_ACTIVATED"

    invoke-virtual {v14, v15}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v14, Lcom/android/phone/GsmUmtsAdditionalCallOptions$6;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions$6;-><init>(Lcom/android/phone/GsmUmtsAdditionalCallOptions;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mHotSwapReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getActivity()Landroid/app/Activity;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mHotSwapReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mHotSwapFilter:Landroid/content/IntentFilter;

    move-object/from16 v16, v0

    invoke-virtual/range {v14 .. v16}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mIsHotSwapRegister:Z

    const-string/jumbo v14, "feature_chn"

    invoke-static {v14}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_3

    const-string/jumbo v14, "feature_multisim"

    invoke-static {v14}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_3

    new-instance v14, Landroid/content/IntentFilter;

    invoke-direct {v14}, Landroid/content/IntentFilter;-><init>()V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mDataChangedFilter:Landroid/content/IntentFilter;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mDataChangedFilter:Landroid/content/IntentFilter;

    const-string/jumbo v15, "com.samsung.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_FAILED"

    invoke-virtual {v14, v15}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mDataChangedFilter:Landroid/content/IntentFilter;

    const-string/jumbo v15, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    invoke-virtual {v14, v15}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getActivity()Landroid/app/Activity;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mDataChangedReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mDataChangedFilter:Landroid/content/IntentFilter;

    move-object/from16 v16, v0

    invoke-virtual/range {v14 .. v16}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getApplicationContext()Landroid/content/Context;

    move-result-object v14

    const-string/jumbo v15, "phone"

    invoke-virtual {v14, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/telephony/TelephonyManager;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v15, 0x40

    invoke-virtual {v13, v14, v15}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    :cond_3
    move-object/from16 v0, p0

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mTcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    const-string/jumbo v14, "tty_to_default_wired_headset_plugged_out"

    invoke-static {v14}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_4

    new-instance v9, Landroid/content/IntentFilter;

    invoke-direct {v9}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v14, "android.telecom.action.CURRENT_TTY_MODE_CHANGED"

    invoke-virtual {v9, v14}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getActivity()Landroid/app/Activity;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v14, v15, v9}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_4
    const-string/jumbo v14, "edittext_areacode_key"

    invoke-virtual {v12, v14}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    check-cast v14, Landroid/preference/EditTextPreference;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mAutoAreaCodeButton:Landroid/preference/EditTextPreference;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mAutoAreaCodeButton:Landroid/preference/EditTextPreference;

    if-eqz v14, :cond_5

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mAutoAreaCodeButton:Landroid/preference/EditTextPreference;

    const v15, 0x7f0400a4

    invoke-virtual {v14, v15}, Landroid/preference/EditTextPreference;->setDialogLayoutResource(I)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mAutoAreaCodeButton:Landroid/preference/EditTextPreference;

    new-instance v15, Lcom/android/phone/GsmUmtsAdditionalCallOptions$7;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions$7;-><init>(Lcom/android/phone/GsmUmtsAdditionalCallOptions;)V

    invoke-virtual {v14, v15}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mAutoAreaCodeButton:Landroid/preference/EditTextPreference;

    invoke-virtual {v14}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mOnKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v14, v15}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    const-string/jumbo v14, "feature_multisim"

    invoke-static {v14}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_5

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mAutoAreaCodeButton:Landroid/preference/EditTextPreference;

    new-instance v15, Lcom/android/phone/GsmUmtsAdditionalCallOptions$8;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions$8;-><init>(Lcom/android/phone/GsmUmtsAdditionalCallOptions;)V

    invoke-virtual {v14, v15}, Landroid/preference/EditTextPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    :cond_5
    const-string/jumbo v14, "button_autoredial_key"

    invoke-virtual {v12, v14}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    check-cast v14, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mAutoRedial:Landroid/preference/CheckBoxPreference;

    const-string/jumbo v14, "button_subaddress_key"

    invoke-virtual {v12, v14}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    check-cast v14, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mSubaddress:Landroid/preference/CheckBoxPreference;

    const-string/jumbo v14, "feature_kdi"

    invoke-static {v14}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_27

    const-string/jumbo v14, "call_setting_ui_kdi"

    invoke-static {v14}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_26

    const-string/jumbo v14, "switch_clir_key"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    check-cast v14, Landroid/preference/SwitchPreference;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCLIRSwitch:Landroid/preference/SwitchPreference;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCLIRSwitch:Landroid/preference/SwitchPreference;

    if-eqz v14, :cond_6

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCLIRSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v12, v14}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    const-string/jumbo v14, "removePreference  SWITCH_CLIR_KEY"

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->log(Ljava/lang/String;)V

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCLIRSwitch:Landroid/preference/SwitchPreference;

    :cond_6
    :goto_1
    const-string/jumbo v14, "change_guide_language_key"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    check-cast v14, Landroid/preference/ListPreference;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mChangeGuideLanguae:Landroid/preference/ListPreference;

    const/4 v14, 0x1

    new-array v4, v14, [Ljava/lang/String;

    const-string/jumbo v14, "%d"

    const/4 v15, 0x0

    aput-object v14, v4, v15

    const/4 v14, 0x1

    new-array v3, v14, [Ljava/lang/String;

    const-string/jumbo v14, "14190"

    const/4 v15, 0x0

    aput-object v14, v3, v15

    const/4 v14, 0x1

    new-array v2, v14, [Ljava/lang/String;

    const-string/jumbo v14, "14191"

    const/4 v15, 0x0

    aput-object v14, v2, v15

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0900c4

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v8

    const/4 v14, 0x2

    new-array v7, v14, [Ljava/lang/CharSequence;

    const/4 v14, 0x0

    aget-object v14, v8, v14

    invoke-static {v14, v4, v3}, Landroid/text/TextUtils;->replace(Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v14

    const/4 v15, 0x0

    aput-object v14, v7, v15

    const/4 v14, 0x1

    aget-object v14, v8, v14

    invoke-static {v14, v4, v2}, Landroid/text/TextUtils;->replace(Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v14

    const/4 v15, 0x1

    aput-object v14, v7, v15

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mChangeGuideLanguae:Landroid/preference/ListPreference;

    invoke-virtual {v14, v7}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mChangeGuideLanguae:Landroid/preference/ListPreference;

    new-instance v15, Lcom/android/phone/GsmUmtsAdditionalCallOptions$9;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions$9;-><init>(Lcom/android/phone/GsmUmtsAdditionalCallOptions;)V

    invoke-virtual {v14, v15}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string/jumbo v14, "apply_option_service_key"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    check-cast v14, Landroid/preference/PreferenceScreen;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mApplyOptionSVC:Landroid/preference/PreferenceScreen;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mApplyOptionSVC:Landroid/preference/PreferenceScreen;

    new-instance v15, Lcom/android/phone/GsmUmtsAdditionalCallOptions$10;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions$10;-><init>(Lcom/android/phone/GsmUmtsAdditionalCallOptions;)V

    invoke-virtual {v14, v15}, Landroid/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string/jumbo v14, "apply_website_service_key"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    check-cast v14, Landroid/preference/PreferenceScreen;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mApplyWebsiteSVC:Landroid/preference/PreferenceScreen;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mApplyWebsiteSVC:Landroid/preference/PreferenceScreen;

    new-instance v15, Lcom/android/phone/GsmUmtsAdditionalCallOptions$11;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions$11;-><init>(Lcom/android/phone/GsmUmtsAdditionalCallOptions;)V

    invoke-virtual {v14, v15}, Landroid/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string/jumbo v14, "call_au_service_key"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    check-cast v14, Landroid/preference/PreferenceScreen;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCallAUSVC:Landroid/preference/PreferenceScreen;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCallAUSVC:Landroid/preference/PreferenceScreen;

    new-instance v15, Lcom/android/phone/GsmUmtsAdditionalCallOptions$12;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions$12;-><init>(Lcom/android/phone/GsmUmtsAdditionalCallOptions;)V

    invoke-virtual {v14, v15}, Landroid/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    :cond_7
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0b0007

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v14

    if-nez v14, :cond_2b

    const-string/jumbo v14, "hac_enable"

    invoke-static {v14}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v14

    :goto_3
    if-nez v14, :cond_2c

    if-eqz v12, :cond_a

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mButtonHAC:Landroid/preference/CheckBoxPreference;

    if-eqz v14, :cond_8

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mButtonHAC:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v12, v14}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_8
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mMeterialButtonHAC:Landroid/preference/SwitchPreference;

    if-eqz v14, :cond_9

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mMeterialButtonHAC:Landroid/preference/SwitchPreference;

    invoke-virtual {v12, v14}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_9
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mButtonHAC:Landroid/preference/CheckBoxPreference;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mMeterialButtonHAC:Landroid/preference/SwitchPreference;

    :cond_a
    :goto_4
    if-eqz v12, :cond_b

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mButtonTTY:Lcom/android/phone/TtyListPreference;

    invoke-virtual {v12, v14}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_b
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mButtonTTY:Lcom/android/phone/TtyListPreference;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mButtonTTY:Lcom/android/phone/TtyListPreference;

    if-eqz v14, :cond_d

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0b0006

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v14

    if-nez v14, :cond_c

    const-string/jumbo v14, "tty_enable"

    invoke-static {v14}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_2e

    :cond_c
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mButtonTTY:Lcom/android/phone/TtyListPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getApplicationContext()Landroid/content/Context;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/android/phone/TtyListPreference;->init(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mButtonTTY:Lcom/android/phone/TtyListPreference;

    new-instance v15, Lcom/android/phone/GsmUmtsAdditionalCallOptions$13;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions$13;-><init>(Lcom/android/phone/GsmUmtsAdditionalCallOptions;)V

    invoke-virtual {v14, v15}, Lcom/android/phone/TtyListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_d
    :goto_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mDropDownTTY:Lcom/android/phone/DropDownPreference;

    if-eqz v14, :cond_f

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0b0006

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v14

    if-nez v14, :cond_e

    const-string/jumbo v14, "tty_enable"

    invoke-static {v14}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_30

    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->initializeDropDownTTY()V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mDropDownTTY:Lcom/android/phone/DropDownPreference;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Lcom/android/phone/DropDownPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    :cond_f
    :goto_6
    const-string/jumbo v14, "cdma_additional_setting_enable"

    invoke-static {v14}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_10

    const-string/jumbo v14, "call_setting_ui_kdi"

    invoke-static {v14}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_18

    :cond_10
    if-eqz v12, :cond_18

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCLIRButton:Lcom/android/phone/CLIRListPreference;

    if-eqz v14, :cond_11

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCLIRButton:Lcom/android/phone/CLIRListPreference;

    invoke-virtual {v12, v14}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCLIRButton:Lcom/android/phone/CLIRListPreference;

    :cond_11
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCLIRDropDown:Lcom/android/phone/CLIRDropDownPreference;

    if-eqz v14, :cond_12

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCLIRDropDown:Lcom/android/phone/CLIRDropDownPreference;

    invoke-virtual {v12, v14}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCLIRDropDown:Lcom/android/phone/CLIRDropDownPreference;

    :cond_12
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCLIRSwitch:Landroid/preference/SwitchPreference;

    if-eqz v14, :cond_13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCLIRSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v12, v14}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCLIRSwitch:Landroid/preference/SwitchPreference;

    :cond_13
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCLIRSwitch_SBM:Lcom/android/phone/CLIRSwitchPreference;

    if-eqz v14, :cond_14

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCLIRSwitch_SBM:Lcom/android/phone/CLIRSwitchPreference;

    invoke-virtual {v12, v14}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCLIRSwitch_SBM:Lcom/android/phone/CLIRSwitchPreference;

    :cond_14
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCWButton:Lcom/android/phone/CallWaitingCheckBoxPreference;

    if-eqz v14, :cond_15

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCWButton:Lcom/android/phone/CallWaitingCheckBoxPreference;

    invoke-virtual {v12, v14}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCWButton:Lcom/android/phone/CallWaitingCheckBoxPreference;

    :cond_15
    const-string/jumbo v14, "call_setting_ui_kdi"

    invoke-static {v14}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_16

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCWSwitch:Lcom/android/phone/CallWaitingSwitchPreference;

    if-eqz v14, :cond_16

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCWSwitch:Lcom/android/phone/CallWaitingSwitchPreference;

    invoke-virtual {v12, v14}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCWSwitch:Lcom/android/phone/CallWaitingSwitchPreference;

    :cond_16
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mAutoAreaCodeButton:Landroid/preference/EditTextPreference;

    if-eqz v14, :cond_17

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mAutoAreaCodeButton:Landroid/preference/EditTextPreference;

    invoke-virtual {v12, v14}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mAutoAreaCodeButton:Landroid/preference/EditTextPreference;

    :cond_17
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mAutoRedial:Landroid/preference/CheckBoxPreference;

    if-eqz v14, :cond_18

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mAutoRedial:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v12, v14}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mAutoRedial:Landroid/preference/CheckBoxPreference;

    :cond_18
    const-string/jumbo v14, "call_setting_ui_kdi"

    invoke-static {v14}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_1d

    if-eqz v12, :cond_1d

    const-string/jumbo v14, "button_au_callreject_key"

    invoke-virtual {v12, v14}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    if-eqz v11, :cond_19

    invoke-virtual {v12, v11}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_19
    const-string/jumbo v14, "button_roaming_kddi_key"

    invoke-virtual {v12, v14}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    if-eqz v11, :cond_1a

    invoke-virtual {v12, v11}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_1a
    const-string/jumbo v14, "button_sync_call_settings_key"

    invoke-virtual {v12, v14}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    if-eqz v11, :cond_1b

    invoke-virtual {v12, v11}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_1b
    const-string/jumbo v14, "feature_sbm"

    invoke-static {v14}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_1c

    const-string/jumbo v14, "meterial_button_clir_key"

    invoke-virtual {v12, v14}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    if-eqz v11, :cond_1c

    invoke-virtual {v12, v11}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCLIRSwitch_SBM:Lcom/android/phone/CLIRSwitchPreference;

    :cond_1c
    const-string/jumbo v14, "aucallsettings_category_key"

    invoke-virtual {v12, v14}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    if-eqz v11, :cond_1d

    const-string/jumbo v14, "removePreference AUCALLSETTINGS_CATEGORY: "

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->log(Ljava/lang/String;)V

    invoke-virtual {v12, v11}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_1d
    const-string/jumbo v14, "feature_multisim"

    invoke-static {v14}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_32

    const-string/jumbo v14, "feature_ctc"

    invoke-static {v14}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v14

    :goto_7
    if-nez v14, :cond_1e

    if-eqz v12, :cond_1e

    const-string/jumbo v14, "button_voicemail_category_key_duos"

    invoke-virtual {v12, v14}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    if-eqz v11, :cond_1e

    invoke-virtual {v12, v11}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_1e
    const-string/jumbo v14, "GsmUmtsAdditionalCallOptions"

    const-string/jumbo v15, "onCreate MENU SIMPLE add the CLIRDropDown"

    const/16 v16, 0x1

    invoke-static/range {v14 .. v16}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCLIRButton:Lcom/android/phone/CLIRListPreference;

    if-eqz v14, :cond_1f

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCLIRButton:Lcom/android/phone/CLIRListPreference;

    invoke-virtual {v12, v14}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCLIRButton:Lcom/android/phone/CLIRListPreference;

    :cond_1f
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCLIRDropDown:Lcom/android/phone/CLIRDropDownPreference;

    if-eqz v14, :cond_20

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mPreferences:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCLIRDropDown:Lcom/android/phone/CLIRDropDownPreference;

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_20
    const-string/jumbo v14, "remove_additional_call_setting"

    invoke-static {v14}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_22

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCWSwitch:Lcom/android/phone/CallWaitingSwitchPreference;

    if-eqz v14, :cond_21

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mPreferences:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCWSwitch:Lcom/android/phone/CallWaitingSwitchPreference;

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_21
    const-string/jumbo v14, "feature_sbm"

    invoke-static {v14}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_22

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCLIRSwitch_SBM:Lcom/android/phone/CLIRSwitchPreference;

    if-eqz v14, :cond_22

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mPreferences:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCLIRSwitch_SBM:Lcom/android/phone/CLIRSwitchPreference;

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_22
    const-string/jumbo v14, "hide_caller_id"

    invoke-static {v14}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_33

    const-string/jumbo v14, "remove_additional_call_setting"

    invoke-static {v14}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_33

    :cond_23
    :goto_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string/jumbo v15, "voicecall_type"

    const/16 v16, 0x1

    invoke-static/range {v14 .. v16}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v14

    if-nez v14, :cond_6a

    const/4 v14, 0x1

    :goto_9
    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->isVoLteEnabled:Z

    invoke-direct/range {p0 .. p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->checkCallForwardingMenu()V

    invoke-direct/range {p0 .. p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->checkCallerIDMenu()V

    invoke-direct/range {p0 .. p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->checkFdnMenu()V

    invoke-direct/range {p0 .. p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->checkCallBarringMenu()V

    invoke-direct/range {p0 .. p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->checkAdditionalCallMenu()V

    const-string/jumbo v14, "feature_usa"

    invoke-static {v14}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_6b

    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->initializeOthersCallSetting(Z)V

    :goto_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getActionBar()Landroid/app/ActionBar;

    move-result-object v5

    if-eqz v5, :cond_24

    const/4 v14, 0x1

    invoke-virtual {v5, v14}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_24
    const-string/jumbo v14, "GsmUmtsAdditionalCallOptions"

    const-string/jumbo v15, "Registering for air plane mode listener in on create"

    invoke-static {v14, v15}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getApplicationContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string/jumbo v15, "airplane_mode_on"

    invoke-static {v15}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mDataEnabledObserver:Landroid/database/ContentObserver;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v14, v15, v0, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mIsAirplainModeObserverRegister:Z

    return-void

    :cond_25
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mPhone:Lcom/android/internal/telephony/Phone;

    goto/16 :goto_0

    :cond_26
    const-string/jumbo v14, "switch_clir_key"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    check-cast v14, Landroid/preference/SwitchPreference;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCLIRSwitch:Landroid/preference/SwitchPreference;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCLIRSwitch:Landroid/preference/SwitchPreference;

    if-eqz v14, :cond_6

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCLIRSwitch:Landroid/preference/SwitchPreference;

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto/16 :goto_1

    :cond_27
    const-string/jumbo v14, "removePreference : "

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->log(Ljava/lang/String;)V

    const-string/jumbo v14, "switch_clir_key"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    check-cast v14, Landroid/preference/SwitchPreference;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCLIRSwitch:Landroid/preference/SwitchPreference;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCLIRSwitch:Landroid/preference/SwitchPreference;

    if-eqz v14, :cond_28

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCLIRSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v12, v14}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    const-string/jumbo v14, "removePreference  SWITCH_CLIR_KEY"

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->log(Ljava/lang/String;)V

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCLIRSwitch:Landroid/preference/SwitchPreference;

    :cond_28
    const-string/jumbo v14, "feature_sbm"

    invoke-static {v14}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_29

    const-string/jumbo v14, "meterial_button_clir_key"

    invoke-virtual {v12, v14}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    if-eqz v11, :cond_29

    invoke-virtual {v12, v11}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCLIRSwitch_SBM:Lcom/android/phone/CLIRSwitchPreference;

    :cond_29
    const-string/jumbo v14, "change_guide_language_key"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    check-cast v14, Landroid/preference/ListPreference;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mChangeGuideLanguae:Landroid/preference/ListPreference;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mChangeGuideLanguae:Landroid/preference/ListPreference;

    if-eqz v14, :cond_2a

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mChangeGuideLanguae:Landroid/preference/ListPreference;

    invoke-virtual {v12, v14}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    const-string/jumbo v14, "removePreference  CHANGE_GUIDE_LANGUAGE: "

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->log(Ljava/lang/String;)V

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mChangeGuideLanguae:Landroid/preference/ListPreference;

    :cond_2a
    const-string/jumbo v14, "apply_option_service_key"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    check-cast v14, Landroid/preference/PreferenceScreen;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mApplyOptionSVC:Landroid/preference/PreferenceScreen;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mApplyOptionSVC:Landroid/preference/PreferenceScreen;

    if-eqz v14, :cond_7

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mApplyOptionSVC:Landroid/preference/PreferenceScreen;

    invoke-virtual {v12, v14}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    const-string/jumbo v14, "removePreference  APPLY_OPTION_SVC: "

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->log(Ljava/lang/String;)V

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mApplyOptionSVC:Landroid/preference/PreferenceScreen;

    goto/16 :goto_2

    :cond_2b
    const/4 v14, 0x1

    goto/16 :goto_3

    :cond_2c
    if-eqz v12, :cond_2d

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mButtonHAC:Landroid/preference/CheckBoxPreference;

    if-eqz v14, :cond_2d

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mButtonHAC:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v12, v14}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_2d
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mButtonHAC:Landroid/preference/CheckBoxPreference;

    goto/16 :goto_4

    :cond_2e
    if-eqz v12, :cond_2f

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mButtonTTY:Lcom/android/phone/TtyListPreference;

    invoke-virtual {v12, v14}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_2f
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mButtonTTY:Lcom/android/phone/TtyListPreference;

    goto/16 :goto_5

    :cond_30
    if-eqz v12, :cond_31

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mDropDownTTY:Lcom/android/phone/DropDownPreference;

    invoke-virtual {v12, v14}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_31
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mDropDownTTY:Lcom/android/phone/DropDownPreference;

    goto/16 :goto_6

    :cond_32
    const/4 v14, 0x0

    goto/16 :goto_7

    :cond_33
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mIsForeground:Z

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCanShowDialog:Z

    invoke-direct/range {p0 .. p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->checkNotSupportSSQuery()Z

    move-result v14

    if-eqz v14, :cond_3b

    const-string/jumbo v14, "feature_multisim"

    invoke-static {v14}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_38

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCWSwitch:Lcom/android/phone/CallWaitingSwitchPreference;

    if-eqz v14, :cond_34

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCWSwitch:Lcom/android/phone/CallWaitingSwitchPreference;

    sget v15, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mSimId:I

    const/16 v16, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v14, v0, v1, v15}, Lcom/android/phone/CallWaitingSwitchPreference;->init(Lcom/android/phone/TimeConsumingPreferenceListener;ZI)V

    :cond_34
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCLIRButton:Lcom/android/phone/CLIRListPreference;

    if-eqz v14, :cond_35

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCLIRButton:Lcom/android/phone/CLIRListPreference;

    sget v15, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mSimId:I

    const/16 v16, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v14, v0, v1, v15}, Lcom/android/phone/CLIRListPreference;->init(Lcom/android/phone/TimeConsumingPreferenceListener;ZI)V

    :cond_35
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCLIRDropDown:Lcom/android/phone/CLIRDropDownPreference;

    if-eqz v14, :cond_36

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCLIRDropDown:Lcom/android/phone/CLIRDropDownPreference;

    sget v15, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mSimId:I

    const/16 v16, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v14, v0, v1, v15}, Lcom/android/phone/CLIRDropDownPreference;->init(Lcom/android/phone/TimeConsumingPreferenceListener;ZI)V

    :cond_36
    :goto_b
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCLIRButton:Lcom/android/phone/CLIRListPreference;

    if-eqz v14, :cond_37

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCLIRButton:Lcom/android/phone/CLIRListPreference;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Lcom/android/phone/CLIRListPreference;->setEnabled(Z)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCLIRButton:Lcom/android/phone/CLIRListPreference;

    const-string/jumbo v15, ""

    invoke-virtual {v14, v15}, Lcom/android/phone/CLIRListPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_37
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCLIRDropDown:Lcom/android/phone/CLIRDropDownPreference;

    if-eqz v14, :cond_23

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCLIRDropDown:Lcom/android/phone/CLIRDropDownPreference;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Lcom/android/phone/CLIRDropDownPreference;->setEnabled(Z)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCLIRDropDown:Lcom/android/phone/CLIRDropDownPreference;

    const-string/jumbo v15, ""

    invoke-virtual {v14, v15}, Lcom/android/phone/CLIRDropDownPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_8

    :cond_38
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCWSwitch:Lcom/android/phone/CallWaitingSwitchPreference;

    if-eqz v14, :cond_39

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCWSwitch:Lcom/android/phone/CallWaitingSwitchPreference;

    const/4 v15, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v14, v0, v15}, Lcom/android/phone/CallWaitingSwitchPreference;->init(Lcom/android/phone/TimeConsumingPreferenceListener;Z)V

    :cond_39
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCLIRButton:Lcom/android/phone/CLIRListPreference;

    if-eqz v14, :cond_3a

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCLIRButton:Lcom/android/phone/CLIRListPreference;

    const/4 v15, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v14, v0, v15}, Lcom/android/phone/CLIRListPreference;->init(Lcom/android/phone/TimeConsumingPreferenceListener;Z)V

    :cond_3a
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCLIRDropDown:Lcom/android/phone/CLIRDropDownPreference;

    if-eqz v14, :cond_36

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCLIRDropDown:Lcom/android/phone/CLIRDropDownPreference;

    const/4 v15, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v14, v0, v15}, Lcom/android/phone/CLIRDropDownPreference;->init(Lcom/android/phone/TimeConsumingPreferenceListener;Z)V

    goto :goto_b

    :cond_3b
    const-string/jumbo v14, "support_uicc_mobility"

    invoke-static {v14}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_3d

    invoke-static {}, Lcom/android/phone/PhoneUtils;->isLGTSIM()Z

    move-result v14

    if-eqz v14, :cond_3d

    const-string/jumbo v14, "GsmUmtsAdditionalCallOptions"

    const-string/jumbo v15, "USIM is LGT SIM"

    const/16 v16, 0x1

    invoke-static/range {v14 .. v16}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCLIRButton:Lcom/android/phone/CLIRListPreference;

    if-eqz v14, :cond_3c

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCLIRButton:Lcom/android/phone/CLIRListPreference;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lcom/android/phone/CLIRListPreference;->setEnabled(Z)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCLIRButton:Lcom/android/phone/CLIRListPreference;

    const-string/jumbo v15, ""

    invoke-virtual {v14, v15}, Lcom/android/phone/CLIRListPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_3c
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCLIRDropDown:Lcom/android/phone/CLIRDropDownPreference;

    if-eqz v14, :cond_23

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCLIRDropDown:Lcom/android/phone/CLIRDropDownPreference;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lcom/android/phone/CLIRDropDownPreference;->setEnabled(Z)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCLIRDropDown:Lcom/android/phone/CLIRDropDownPreference;

    const-string/jumbo v15, ""

    invoke-virtual {v14, v15}, Lcom/android/phone/CLIRDropDownPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_8

    :cond_3d
    sget v14, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mSimId:I

    invoke-static {v14}, Lcom/android/phone/TelephonyConfig;->isCMCCSIM(I)Z

    move-result v14

    if-nez v14, :cond_3e

    sget v14, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mSimId:I

    invoke-static {v14}, Lcom/android/phone/TelephonyConfig;->isCUSIM(I)Z

    move-result v14

    if-nez v14, :cond_3e

    sget v14, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mSimId:I

    invoke-static {v14}, Lcom/android/phone/TelephonyConfig;->isCTCSIM(I)Z

    move-result v14

    if-eqz v14, :cond_3f

    :cond_3e
    const-string/jumbo v14, "feature_cu"

    invoke-static {v14}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_41

    :cond_3f
    if-nez p1, :cond_50

    const-string/jumbo v14, "GsmUmtsAdditionalCallOptions"

    const-string/jumbo v15, "start to init "

    const/16 v16, 0x1

    invoke-static/range {v14 .. v16}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    const-string/jumbo v14, "feature_kdi"

    invoke-static {v14}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_48

    const-string/jumbo v14, "GsmUmtsAdditionalCallOptions"

    const-string/jumbo v15, "Do not init CLIR value when KDDI"

    const/16 v16, 0x1

    invoke-static/range {v14 .. v16}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    invoke-static {}, Lcom/android/phone/PhoneUtils;->isDataRoaming()Z

    move-result v14

    if-eqz v14, :cond_40

    invoke-static {}, Lcom/android/phone/PhoneUtilsCommon;->isAvailableVoLTE()Z

    move-result v14

    if-eqz v14, :cond_47

    :cond_40
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCWSwitch:Lcom/android/phone/CallWaitingSwitchPreference;

    if-eqz v14, :cond_23

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCWSwitch:Lcom/android/phone/CallWaitingSwitchPreference;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Lcom/android/phone/CallWaitingSwitchPreference;->setEnabled(Z)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCWSwitch:Lcom/android/phone/CallWaitingSwitchPreference;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v14, v0, v15}, Lcom/android/phone/CallWaitingSwitchPreference;->init(Lcom/android/phone/TimeConsumingPreferenceListener;Z)V

    goto/16 :goto_8

    :cond_41
    const-string/jumbo v14, "GsmUmtsAdditionalCallOptions"

    const-string/jumbo v15, "SIM is CMCC or CU or CTC SIM. Disable CLIR."

    const/16 v16, 0x1

    invoke-static/range {v14 .. v16}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCLIRButton:Lcom/android/phone/CLIRListPreference;

    if-eqz v14, :cond_42

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCLIRButton:Lcom/android/phone/CLIRListPreference;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lcom/android/phone/CLIRListPreference;->setEnabled(Z)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCLIRButton:Lcom/android/phone/CLIRListPreference;

    const-string/jumbo v15, ""

    invoke-virtual {v14, v15}, Lcom/android/phone/CLIRListPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_42
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCLIRDropDown:Lcom/android/phone/CLIRDropDownPreference;

    if-eqz v14, :cond_43

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCLIRDropDown:Lcom/android/phone/CLIRDropDownPreference;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lcom/android/phone/CLIRDropDownPreference;->setEnabled(Z)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCLIRDropDown:Lcom/android/phone/CLIRDropDownPreference;

    const-string/jumbo v15, ""

    invoke-virtual {v14, v15}, Lcom/android/phone/CLIRDropDownPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_43
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mPreferences:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mInitIndex:I

    const-string/jumbo v14, "remove_additional_call_setting"

    invoke-static {v14}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_23

    const-string/jumbo v14, "feature_multisim"

    invoke-static {v14}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_44

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCWSwitch:Lcom/android/phone/CallWaitingSwitchPreference;

    if-eqz v14, :cond_23

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCWSwitch:Lcom/android/phone/CallWaitingSwitchPreference;

    sget v15, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mSimId:I

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v14, v0, v1, v15}, Lcom/android/phone/CallWaitingSwitchPreference;->init(Lcom/android/phone/TimeConsumingPreferenceListener;ZI)V

    goto/16 :goto_8

    :cond_44
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_46

    const-string/jumbo v14, "VZW"

    invoke-virtual {v14, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_45

    const-string/jumbo v14, "SPR"

    invoke-virtual {v14, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_45

    const-string/jumbo v14, "XAS"

    invoke-virtual {v14, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_45

    const-string/jumbo v14, "USC"

    invoke-virtual {v14, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_45

    const-string/jumbo v14, "LRA"

    invoke-virtual {v14, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_46

    :cond_45
    const-string/jumbo v14, "GsmUmtsAdditionalCallOptions"

    const-string/jumbo v15, "Do not init CW value."

    const/16 v16, 0x1

    invoke-static/range {v14 .. v16}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    goto/16 :goto_8

    :cond_46
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCWSwitch:Lcom/android/phone/CallWaitingSwitchPreference;

    if-eqz v14, :cond_23

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCWSwitch:Lcom/android/phone/CallWaitingSwitchPreference;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v14, v0, v15}, Lcom/android/phone/CallWaitingSwitchPreference;->init(Lcom/android/phone/TimeConsumingPreferenceListener;Z)V

    goto/16 :goto_8

    :cond_47
    const-string/jumbo v14, "GsmUmtsAdditionalCallOptions"

    const-string/jumbo v15, "Roaming area. Disable CW menu."

    const/16 v16, 0x1

    invoke-static/range {v14 .. v16}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCWSwitch:Lcom/android/phone/CallWaitingSwitchPreference;

    if-eqz v14, :cond_23

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCWSwitch:Lcom/android/phone/CallWaitingSwitchPreference;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lcom/android/phone/CallWaitingSwitchPreference;->setEnabled(Z)V

    goto/16 :goto_8

    :cond_48
    const-string/jumbo v14, "feature_multisim"

    invoke-static {v14}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_4a

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCLIRButton:Lcom/android/phone/CLIRListPreference;

    if-eqz v14, :cond_49

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCLIRButton:Lcom/android/phone/CLIRListPreference;

    sget v15, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mSimId:I

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v14, v0, v1, v15}, Lcom/android/phone/CLIRListPreference;->init(Lcom/android/phone/TimeConsumingPreferenceListener;ZI)V

    :cond_49
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCLIRDropDown:Lcom/android/phone/CLIRDropDownPreference;

    if-eqz v14, :cond_23

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCLIRDropDown:Lcom/android/phone/CLIRDropDownPreference;

    sget v15, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mSimId:I

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v14, v0, v1, v15}, Lcom/android/phone/CLIRDropDownPreference;->init(Lcom/android/phone/TimeConsumingPreferenceListener;ZI)V

    goto/16 :goto_8

    :cond_4a
    const-string/jumbo v14, "feature_sbm"

    invoke-static {v14}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_4c

    const-string/jumbo v14, "GsmUmtsAdditionalCallOptions"

    const-string/jumbo v15, "init mCLIRSwitch_SBM and mCWSwitch"

    const/16 v16, 0x1

    invoke-static/range {v14 .. v16}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCLIRSwitch_SBM:Lcom/android/phone/CLIRSwitchPreference;

    if-eqz v14, :cond_4b

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCLIRSwitch_SBM:Lcom/android/phone/CLIRSwitchPreference;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v14, v0, v15}, Lcom/android/phone/CLIRSwitchPreference;->init(Lcom/android/phone/TimeConsumingPreferenceListener;Z)V

    :cond_4b
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCWSwitch:Lcom/android/phone/CallWaitingSwitchPreference;

    if-eqz v14, :cond_23

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCWSwitch:Lcom/android/phone/CallWaitingSwitchPreference;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v14, v0, v15}, Lcom/android/phone/CallWaitingSwitchPreference;->init(Lcom/android/phone/TimeConsumingPreferenceListener;Z)V

    goto/16 :goto_8

    :cond_4c
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_4e

    const-string/jumbo v14, "VZW"

    invoke-virtual {v14, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_4d

    const-string/jumbo v14, "SPR"

    invoke-virtual {v14, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_4d

    const-string/jumbo v14, "XAS"

    invoke-virtual {v14, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_4d

    const-string/jumbo v14, "USC"

    invoke-virtual {v14, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_4d

    const-string/jumbo v14, "LRA"

    invoke-virtual {v14, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4e

    :cond_4d
    const-string/jumbo v14, "GsmUmtsAdditionalCallOptions"

    const-string/jumbo v15, "Do not init CLIR value."

    const/16 v16, 0x1

    invoke-static/range {v14 .. v16}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    goto/16 :goto_8

    :cond_4e
    const-string/jumbo v14, "cdma_additional_setting_enable"

    invoke-static {v14}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_23

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v14}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v14

    const/4 v15, 0x2

    if-eq v14, v15, :cond_23

    const-string/jumbo v14, "GsmUmtsAdditionalCallOptions"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "mPhone.getPhoneType() = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x1

    invoke-static/range {v14 .. v16}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCLIRButton:Lcom/android/phone/CLIRListPreference;

    if-eqz v14, :cond_4f

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCLIRButton:Lcom/android/phone/CLIRListPreference;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v14, v0, v15}, Lcom/android/phone/CLIRListPreference;->init(Lcom/android/phone/TimeConsumingPreferenceListener;Z)V

    :cond_4f
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCLIRDropDown:Lcom/android/phone/CLIRDropDownPreference;

    if-eqz v14, :cond_23

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCLIRDropDown:Lcom/android/phone/CLIRDropDownPreference;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v14, v0, v15}, Lcom/android/phone/CLIRDropDownPreference;->init(Lcom/android/phone/TimeConsumingPreferenceListener;Z)V

    goto/16 :goto_8

    :cond_50
    const-string/jumbo v14, "GsmUmtsAdditionalCallOptions"

    const-string/jumbo v15, "restore stored states"

    const/16 v16, 0x1

    invoke-static/range {v14 .. v16}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mPreferences:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mInitIndex:I

    const-string/jumbo v14, "feature_kdi"

    invoke-static {v14}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_58

    const-string/jumbo v14, "GsmUmtsAdditionalCallOptions"

    const-string/jumbo v15, "Do not init CLIR value when KDDI"

    const/16 v16, 0x1

    invoke-static/range {v14 .. v16}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    :cond_51
    :goto_c
    const-string/jumbo v14, "remove_additional_call_setting"

    invoke-static {v14}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_53

    const-string/jumbo v14, "feature_kdi"

    invoke-static {v14}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_60

    invoke-static {}, Lcom/android/phone/PhoneUtils;->isDataRoaming()Z

    move-result v14

    if-eqz v14, :cond_52

    invoke-static {}, Lcom/android/phone/PhoneUtilsCommon;->isAvailableVoLTE()Z

    move-result v14

    if-eqz v14, :cond_5f

    :cond_52
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCWSwitch:Lcom/android/phone/CallWaitingSwitchPreference;

    if-eqz v14, :cond_53

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCWSwitch:Lcom/android/phone/CallWaitingSwitchPreference;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Lcom/android/phone/CallWaitingSwitchPreference;->setEnabled(Z)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCWSwitch:Lcom/android/phone/CallWaitingSwitchPreference;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v14, v0, v15}, Lcom/android/phone/CallWaitingSwitchPreference;->init(Lcom/android/phone/TimeConsumingPreferenceListener;Z)V

    :cond_53
    :goto_d
    const-string/jumbo v14, "feature_kdi"

    invoke-static {v14}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_64

    const-string/jumbo v14, "feature_sbm"

    invoke-static {v14}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_64

    sget v14, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mSimId:I

    invoke-static {v14}, Lcom/android/phone/TelephonyConfig;->isCMCCSIM(I)Z

    move-result v14

    if-nez v14, :cond_54

    sget v14, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mSimId:I

    invoke-static {v14}, Lcom/android/phone/TelephonyConfig;->isCUSIM(I)Z

    move-result v14

    if-nez v14, :cond_54

    sget v14, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mSimId:I

    invoke-static {v14}, Lcom/android/phone/TelephonyConfig;->isCTCSIM(I)Z

    move-result v14

    if-eqz v14, :cond_55

    :cond_54
    const-string/jumbo v14, "feature_cu"

    invoke-static {v14}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_64

    :cond_55
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCLIRButton:Lcom/android/phone/CLIRListPreference;

    if-eqz v14, :cond_56

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCLIRButton:Lcom/android/phone/CLIRListPreference;

    invoke-virtual {v14}, Lcom/android/phone/CLIRListPreference;->getKey()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v6

    if-eqz v6, :cond_65

    const-string/jumbo v14, "GsmUmtsAdditionalCallOptions"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "onCreate:  clirArray[0]="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const/16 v16, 0x0

    aget v16, v6, v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, ", clirArray[1]="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const/16 v16, 0x1

    aget v16, v6, v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCLIRButton:Lcom/android/phone/CLIRListPreference;

    invoke-virtual {v14, v6}, Lcom/android/phone/CLIRListPreference;->handleGetCLIRResult([I)V

    :cond_56
    :goto_e
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_67

    const-string/jumbo v14, "VZW"

    invoke-virtual {v14, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_57

    const-string/jumbo v14, "SPR"

    invoke-virtual {v14, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_57

    const-string/jumbo v14, "XAS"

    invoke-virtual {v14, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_57

    const-string/jumbo v14, "USC"

    invoke-virtual {v14, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_57

    const-string/jumbo v14, "LRA"

    invoke-virtual {v14, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_67

    :cond_57
    const-string/jumbo v14, "GsmUmtsAdditionalCallOptions"

    const-string/jumbo v15, "Do not init CLIR value."

    const/16 v16, 0x1

    invoke-static/range {v14 .. v16}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    goto/16 :goto_8

    :cond_58
    const-string/jumbo v14, "feature_multisim"

    invoke-static {v14}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_5a

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCLIRButton:Lcom/android/phone/CLIRListPreference;

    if-eqz v14, :cond_59

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCLIRButton:Lcom/android/phone/CLIRListPreference;

    sget v15, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mSimId:I

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v14, v0, v1, v15}, Lcom/android/phone/CLIRListPreference;->init(Lcom/android/phone/TimeConsumingPreferenceListener;ZI)V

    :cond_59
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCLIRDropDown:Lcom/android/phone/CLIRDropDownPreference;

    if-eqz v14, :cond_51

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCLIRDropDown:Lcom/android/phone/CLIRDropDownPreference;

    sget v15, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mSimId:I

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v14, v0, v1, v15}, Lcom/android/phone/CLIRDropDownPreference;->init(Lcom/android/phone/TimeConsumingPreferenceListener;ZI)V

    goto/16 :goto_c

    :cond_5a
    const-string/jumbo v14, "feature_sbm"

    invoke-static {v14}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_5b

    const-string/jumbo v14, "GsmUmtsAdditionalCallOptions"

    const-string/jumbo v15, "init mCLIRSwitch_SBM"

    const/16 v16, 0x1

    invoke-static/range {v14 .. v16}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCLIRSwitch_SBM:Lcom/android/phone/CLIRSwitchPreference;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v14, v0, v15}, Lcom/android/phone/CLIRSwitchPreference;->init(Lcom/android/phone/TimeConsumingPreferenceListener;Z)V

    goto/16 :goto_c

    :cond_5b
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_5d

    const-string/jumbo v14, "VZW"

    invoke-virtual {v14, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_5c

    const-string/jumbo v14, "SPR"

    invoke-virtual {v14, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_5c

    const-string/jumbo v14, "XAS"

    invoke-virtual {v14, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_5c

    const-string/jumbo v14, "USC"

    invoke-virtual {v14, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_5c

    const-string/jumbo v14, "LRA"

    invoke-virtual {v14, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_5d

    :cond_5c
    const-string/jumbo v14, "GsmUmtsAdditionalCallOptions"

    const-string/jumbo v15, "Do not init CLIR value."

    const/16 v16, 0x1

    invoke-static/range {v14 .. v16}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    goto/16 :goto_c

    :cond_5d
    const-string/jumbo v14, "cdma_additional_setting_enable"

    invoke-static {v14}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_51

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v14}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v14

    const/4 v15, 0x2

    if-eq v14, v15, :cond_51

    const-string/jumbo v14, "GsmUmtsAdditionalCallOptions"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "mPhone.getPhoneType() = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x1

    invoke-static/range {v14 .. v16}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCLIRButton:Lcom/android/phone/CLIRListPreference;

    if-eqz v14, :cond_5e

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCLIRButton:Lcom/android/phone/CLIRListPreference;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v14, v0, v15}, Lcom/android/phone/CLIRListPreference;->init(Lcom/android/phone/TimeConsumingPreferenceListener;Z)V

    :cond_5e
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCLIRDropDown:Lcom/android/phone/CLIRDropDownPreference;

    if-eqz v14, :cond_51

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCLIRDropDown:Lcom/android/phone/CLIRDropDownPreference;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v14, v0, v15}, Lcom/android/phone/CLIRDropDownPreference;->init(Lcom/android/phone/TimeConsumingPreferenceListener;Z)V

    goto/16 :goto_c

    :cond_5f
    const-string/jumbo v14, "GsmUmtsAdditionalCallOptions"

    const-string/jumbo v15, "Roaming area. Disable CW menu."

    const/16 v16, 0x1

    invoke-static/range {v14 .. v16}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCWSwitch:Lcom/android/phone/CallWaitingSwitchPreference;

    if-eqz v14, :cond_53

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCWSwitch:Lcom/android/phone/CallWaitingSwitchPreference;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lcom/android/phone/CallWaitingSwitchPreference;->setEnabled(Z)V

    goto/16 :goto_d

    :cond_60
    const-string/jumbo v14, "feature_multisim"

    invoke-static {v14}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_61

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCWSwitch:Lcom/android/phone/CallWaitingSwitchPreference;

    if-eqz v14, :cond_53

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCWSwitch:Lcom/android/phone/CallWaitingSwitchPreference;

    sget v15, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mSimId:I

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v14, v0, v1, v15}, Lcom/android/phone/CallWaitingSwitchPreference;->init(Lcom/android/phone/TimeConsumingPreferenceListener;ZI)V

    goto/16 :goto_d

    :cond_61
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_63

    const-string/jumbo v14, "VZW"

    invoke-virtual {v14, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_62

    const-string/jumbo v14, "SPR"

    invoke-virtual {v14, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_62

    const-string/jumbo v14, "XAS"

    invoke-virtual {v14, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_62

    const-string/jumbo v14, "USC"

    invoke-virtual {v14, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_62

    const-string/jumbo v14, "LRA"

    invoke-virtual {v14, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_63

    :cond_62
    const-string/jumbo v14, "GsmUmtsAdditionalCallOptions"

    const-string/jumbo v15, "Do not init CW value."

    const/16 v16, 0x1

    invoke-static/range {v14 .. v16}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    goto/16 :goto_d

    :cond_63
    const-string/jumbo v14, "cdma_additional_setting_enable"

    invoke-static {v14}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_53

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCWSwitch:Lcom/android/phone/CallWaitingSwitchPreference;

    if-eqz v14, :cond_53

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCWSwitch:Lcom/android/phone/CallWaitingSwitchPreference;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v14, v0, v15}, Lcom/android/phone/CallWaitingSwitchPreference;->init(Lcom/android/phone/TimeConsumingPreferenceListener;Z)V

    goto/16 :goto_d

    :cond_64
    const-string/jumbo v14, "GsmUmtsAdditionalCallOptions"

    const-string/jumbo v15, "Do not get CLIR value."

    const/16 v16, 0x1

    invoke-static/range {v14 .. v16}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    goto/16 :goto_8

    :cond_65
    const-string/jumbo v14, "feature_multisim"

    invoke-static {v14}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_66

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCLIRButton:Lcom/android/phone/CLIRListPreference;

    sget v15, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mSimId:I

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v14, v0, v1, v15}, Lcom/android/phone/CLIRListPreference;->init(Lcom/android/phone/TimeConsumingPreferenceListener;ZI)V

    goto/16 :goto_e

    :cond_66
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCLIRButton:Lcom/android/phone/CLIRListPreference;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v14, v0, v15}, Lcom/android/phone/CLIRListPreference;->init(Lcom/android/phone/TimeConsumingPreferenceListener;Z)V

    goto/16 :goto_e

    :cond_67
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCLIRDropDown:Lcom/android/phone/CLIRDropDownPreference;

    if-eqz v14, :cond_23

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCLIRDropDown:Lcom/android/phone/CLIRDropDownPreference;

    invoke-virtual {v14}, Lcom/android/phone/CLIRDropDownPreference;->getKey()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v6

    if-eqz v6, :cond_68

    const-string/jumbo v14, "GsmUmtsAdditionalCallOptions"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "onCreate:  clirArray[0]="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const/16 v16, 0x0

    aget v16, v6, v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, ", clirArray[1]="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const/16 v16, 0x1

    aget v16, v6, v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCLIRDropDown:Lcom/android/phone/CLIRDropDownPreference;

    invoke-virtual {v14, v6}, Lcom/android/phone/CLIRDropDownPreference;->handleGetCLIRResult([I)V

    goto/16 :goto_8

    :cond_68
    const-string/jumbo v14, "feature_multisim"

    invoke-static {v14}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_69

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCLIRDropDown:Lcom/android/phone/CLIRDropDownPreference;

    sget v15, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mSimId:I

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v14, v0, v1, v15}, Lcom/android/phone/CLIRDropDownPreference;->init(Lcom/android/phone/TimeConsumingPreferenceListener;ZI)V

    goto/16 :goto_8

    :cond_69
    const-string/jumbo v14, "cdma_additional_setting_enable"

    invoke-static {v14}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_23

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v14}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v14

    const/4 v15, 0x2

    if-eq v14, v15, :cond_23

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCLIRDropDown:Lcom/android/phone/CLIRDropDownPreference;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v14, v0, v15}, Lcom/android/phone/CLIRDropDownPreference;->init(Lcom/android/phone/TimeConsumingPreferenceListener;Z)V

    goto/16 :goto_8

    :cond_6a
    const/4 v14, 0x0

    goto/16 :goto_9

    :cond_6b
    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->initializeOthersCallSetting(Z)V

    goto/16 :goto_a
.end method

.method public onDestroy()V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x0

    invoke-super {p0}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onDestroy()V

    const-string/jumbo v2, "tty_to_default_wired_headset_plugged_out"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    const-string/jumbo v2, "GsmUmtsAdditionalCallOptions"

    const-string/jumbo v3, "Unregister for air plane mode listener in"

    invoke-static {v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v2, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mIsAirplainModeObserverRegister:Z

    if-eqz v2, :cond_1

    iput-boolean v6, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mIsAirplainModeObserverRegister:Z

    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mDataEnabledObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_1
    iget-boolean v2, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mIsHotSwapRegister:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mHotSwapReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v2, :cond_2

    :try_start_0
    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mHotSwapReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iput-boolean v6, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mIsHotSwapRegister:Z

    :cond_2
    iput-object v5, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mChangeDDSDialog:Landroid/app/AlertDialog;

    const-string/jumbo v2, "feature_chn"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string/jumbo v2, "feature_multisim"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mDataChangedReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v2, :cond_3

    :try_start_1
    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mDataChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v1, v2, v6}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    :cond_4
    iput-object v5, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mTcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    iput-object v5, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mOnKeyListener:Landroid/view/View$OnKeyListener;

    iput-object v5, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v2, "GsmUmtsAdditionalCallOptions"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "IllegalArgumentException"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v0

    const-string/jumbo v2, "GsmUmtsAdditionalCallOptions"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "IllegalArgumentException"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public onFinished(Landroid/preference/Preference;Z)V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x1

    const-string/jumbo v2, "GsmUmtsAdditionalCallOptions"

    const-string/jumbo v3, "onFinished"

    invoke-static {v2, v3, v5}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    iget-boolean v2, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mIsForeground:Z

    if-nez v2, :cond_0

    const-string/jumbo v2, "GsmUmtsAdditionalCallOptions"

    const-string/jumbo v3, "requesting discarded"

    invoke-static {v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string/jumbo v2, "GsmUmtsAdditionalCallOptions"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mInitIndex : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mInitIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v5}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    iget v2, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mInitIndex:I

    iget-object v3, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mPreferences:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_1

    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->isRemoving()Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_1
    iget v2, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mInitIndex:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mInitIndex:I

    :cond_2
    :goto_0
    const-string/jumbo v2, "support_bixby"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget v2, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mInitIndex:I

    iget-object v3, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mPreferences:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v2, v3, :cond_4

    invoke-static {}, Lcom/android/phone/ia/IAUtil;->isIAExecutingState()Z

    move-result v2

    if-eqz v2, :cond_4

    const-string/jumbo v2, "MoreSettings"

    invoke-static {}, Lcom/android/phone/ia/IAUtil;->getIAExecutingStateId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {}, Lcom/android/phone/ia/IAUtil;->isIAExecutingLastState()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string/jumbo v2, "MoreSettings"

    invoke-static {v2}, Lcom/android/phone/ia/IAUtil;->requestNLG(Ljava/lang/String;)V

    :cond_3
    sget-object v2, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-static {v2}, Lcom/android/phone/ia/IAUtil;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    :cond_4
    invoke-super {p0, p1, p2}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onFinished(Landroid/preference/Preference;Z)V

    return-void

    :cond_5
    iget v2, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mInitIndex:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mInitIndex:I

    iget-object v2, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mPreferences:Ljava/util/ArrayList;

    iget v3, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mInitIndex:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/preference/Preference;

    invoke-static {}, Lcom/android/phone/TeleServiceFeature;->getOmcNwCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string/jumbo v2, "VZW"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string/jumbo v2, "SPR"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string/jumbo v2, "XAS"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string/jumbo v2, "USC"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string/jumbo v2, "LRA"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_6
    const-string/jumbo v2, "GsmUmtsAdditionalCallOptions"

    const-string/jumbo v3, "Do not init CW value."

    invoke-static {v2, v3, v5}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    goto/16 :goto_0

    :cond_7
    instance-of v2, v1, Lcom/android/phone/CallWaitingSwitchPreference;

    if-eqz v2, :cond_2

    const-string/jumbo v2, "feature_multisim"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    check-cast v1, Lcom/android/phone/CallWaitingSwitchPreference;

    sget v2, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mSimId:I

    invoke-virtual {v1, p0, v6, v2}, Lcom/android/phone/CallWaitingSwitchPreference;->init(Lcom/android/phone/TimeConsumingPreferenceListener;ZI)V

    goto/16 :goto_0

    :cond_8
    const-string/jumbo v2, "feature_sbm"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_9

    const-string/jumbo v2, "feature_kdi"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_9

    const-string/jumbo v2, "cdma_additional_setting_enable"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    :cond_9
    const-string/jumbo v2, "GsmUmtsAdditionalCallOptions"

    const-string/jumbo v3, "onFinished. Do not init CallWaitingSwitchPreference"

    invoke-static {v2, v3, v5}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    check-cast v1, Lcom/android/phone/CallWaitingSwitchPreference;

    invoke-virtual {v1, p0, v5}, Lcom/android/phone/CallWaitingSwitchPreference;->init(Lcom/android/phone/TimeConsumingPreferenceListener;Z)V

    goto/16 :goto_0

    :cond_a
    const-string/jumbo v2, "cdma_additional_setting_enable"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    check-cast v1, Lcom/android/phone/CallWaitingSwitchPreference;

    invoke-virtual {v1, p0, v6}, Lcom/android/phone/CallWaitingSwitchPreference;->init(Lcom/android/phone/TimeConsumingPreferenceListener;Z)V

    goto/16 :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    :pswitch_0
    const-string/jumbo v0, "video_call_not_support"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "feature_multisim"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->IsAdditionSetting:Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onPause()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mForeground:Z

    const-string/jumbo v0, "support_bixby"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/bixby/BixbyApi;->clearInterimStateListener()V

    iget-object v0, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    const-string/jumbo v1, "MoreSettings"

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/bixby/BixbyApi;->logExitState(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mStateListener:Lcom/android/phone/ia/IAInterimListener;

    invoke-interface {v0}, Lcom/android/phone/ia/IAInterimListener;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mStateListener:Lcom/android/phone/ia/IAInterimListener;

    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 12

    iget-object v5, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mMeterialButtonHAC:Landroid/preference/SwitchPreference;

    if-ne p1, v5, :cond_2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v1, 0x1

    :goto_0
    const v5, 0x7f0d0259

    invoke-virtual {p0, v5}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getString(I)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f0d02bb

    invoke-virtual {p0, v6}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "hearing_aid"

    int-to-long v8, v1

    invoke-static {v5, v6, v7, v8, v9}, Lcom/android/phone/utils/SALogging;->sendSAEventSettingLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "hearing_aid"

    invoke-static {v5, v6, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string/jumbo v5, "audio"

    invoke-virtual {p0, v5}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    const-string/jumbo v6, "HACSetting"

    if-eqz v1, :cond_1

    const-string/jumbo v5, "ON"

    :goto_1
    invoke-virtual {v0, v6, v5}, Landroid/media/AudioManager;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x1

    return v5

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const-string/jumbo v5, "OFF"

    goto :goto_1

    :cond_2
    iget-object v5, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCLIRSwitch:Landroid/preference/SwitchPreference;

    if-ne p1, v5, :cond_4

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v2, 0x1

    :goto_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "button_clir_key put value: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-direct {p0, v5, v6}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->log(Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "button_clir_key"

    invoke-static {v5, v6, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/4 v5, 0x1

    return v5

    :cond_3
    const/4 v2, 0x0

    goto :goto_2

    :cond_4
    iget-object v5, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCountryCodePref:Landroid/preference/EditTextPreference;

    if-ne p1, v5, :cond_6

    const-string/jumbo v5, "GsmUmtsAdditionalCallOptions"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Previous Country Code Value: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "country_code"

    invoke-static {v7, v8}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCountryCodePref:Landroid/preference/EditTextPreference;

    invoke-virtual {v5, v4}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "country_code"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    const-string/jumbo v5, "GsmUmtsAdditionalCallOptions"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "New Country Code Value: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "country_code"

    invoke-static {v7, v8}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_3
    const/4 v5, 0x1

    return v5

    :cond_6
    iget-object v5, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCountryPref:Landroid/preference/SwitchPreference;

    if-ne p1, v5, :cond_a

    move-object v3, p2

    check-cast v3, Ljava/lang/Boolean;

    const v5, 0x7f0d0259

    invoke-virtual {p0, v5}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getString(I)Ljava/lang/String;

    move-result-object v6

    const v5, 0x7f0d02ff

    invoke-virtual {p0, v5}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_8

    const/4 v5, 0x1

    :goto_4
    int-to-long v8, v5

    invoke-static {v6, v7, v8, v9}, Lcom/android/phone/utils/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;J)V

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_7

    const-string/jumbo v5, "country_code"

    const-string/jumbo v6, "011"

    invoke-static {v5, v6}, Lcom/android/phone/utils/SALogging;->sendSASettingLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    iget-object v5, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCountryPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-virtual {v5, v6}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_9

    const-string/jumbo v5, "GsmUmtsAdditionalCallOptions"

    const-string/jumbo v6, "Checked US/Canada"

    invoke-static {v5, v6}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v5, "GsmUmtsAdditionalCallOptions"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Previous Country Code Value: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "country_code"

    invoke-static {v7, v8}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCountryCodePref:Landroid/preference/EditTextPreference;

    const-string/jumbo v6, "011"

    invoke-virtual {v5, v6}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "country_code"

    const-string/jumbo v7, "011"

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    const-string/jumbo v5, "GsmUmtsAdditionalCallOptions"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "New Country Code Value: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "country_code"

    invoke-static {v7, v8}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_8
    const/4 v5, 0x0

    goto/16 :goto_4

    :cond_9
    const-string/jumbo v5, "GsmUmtsAdditionalCallOptions"

    const-string/jumbo v6, "Unchecked US/Canada"

    invoke-static {v5, v6}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_a
    iget-object v5, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mButtonAutoRetry:Landroid/preference/SwitchPreference;

    if-ne p1, v5, :cond_5

    move-object v3, p2

    check-cast v3, Ljava/lang/Boolean;

    const v5, 0x7f0d0259

    invoke-virtual {p0, v5}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getString(I)Ljava/lang/String;

    move-result-object v6

    const v5, 0x7f0d0303

    invoke-virtual {p0, v5}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "autoredial_mode"

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_b

    const/4 v5, 0x1

    :goto_5
    int-to-long v10, v5

    invoke-static {v6, v7, v8, v10, v11}, Lcom/android/phone/utils/SALogging;->sendSAEventSettingLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    const-string/jumbo v6, "call_auto_retry"

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_c

    const/4 v5, 0x1

    :goto_6
    int-to-float v5, v5

    invoke-static {v6, v5}, Lcom/android/phone/utils/SALogging;->sendSASettingLog(Ljava/lang/String;F)V

    iget-object v5, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "call_auto_retry"

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_d

    const/4 v5, 0x1

    :goto_7
    invoke-static {v6, v7, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "autoredial_mode"

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_e

    const/4 v5, 0x1

    :goto_8
    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/4 v5, 0x1

    return v5

    :cond_b
    const/4 v5, 0x0

    goto :goto_5

    :cond_c
    const/4 v5, 0x0

    goto :goto_6

    :cond_d
    const/4 v5, 0x0

    goto :goto_7

    :cond_e
    const/4 v5, 0x0

    goto :goto_8
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 13

    iget-object v10, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mAutoRedial:Landroid/preference/CheckBoxPreference;

    if-ne p2, v10, :cond_5

    iget-object v10, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mAutoRedial:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v10}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v10

    if-eqz v10, :cond_1

    const/4 v1, 0x1

    :goto_0
    iget-object v10, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mAutoRedial:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v10}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v11

    const/4 v10, 0x1

    if-ne v1, v10, :cond_2

    const/4 v10, 0x1

    :goto_1
    if-eq v11, v10, :cond_0

    iget-object v11, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mAutoRedial:Landroid/preference/CheckBoxPreference;

    const/4 v10, 0x1

    if-ne v1, v10, :cond_3

    const/4 v10, 0x1

    :goto_2
    invoke-virtual {v11, v10}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    :cond_0
    const-string/jumbo v10, "feature_multisim"

    invoke-static {v10}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    sget v10, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mSimId:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_4

    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v11, "autoredial_mode_sim2"

    invoke-static {v10, v11, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_3
    const/4 v10, 0x1

    return v10

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    const/4 v10, 0x0

    goto :goto_1

    :cond_3
    const/4 v10, 0x0

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v11, "autoredial_mode"

    invoke-static {v10, v11, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_3

    :cond_5
    iget-object v10, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mButtonHAC:Landroid/preference/CheckBoxPreference;

    if-ne p2, v10, :cond_8

    iget-object v10, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mButtonHAC:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v10}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v10

    if-eqz v10, :cond_6

    const/4 v5, 0x1

    :goto_4
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v11, "hearing_aid"

    invoke-static {v10, v11, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string/jumbo v10, "audio"

    invoke-virtual {p0, v10}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    const-string/jumbo v11, "HACSetting"

    if-eqz v5, :cond_7

    const-string/jumbo v10, "ON"

    :goto_5
    invoke-virtual {v0, v11, v10}, Landroid/media/AudioManager;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v10, 0x1

    return v10

    :cond_6
    const/4 v5, 0x0

    goto :goto_4

    :cond_7
    const-string/jumbo v10, "OFF"

    goto :goto_5

    :cond_8
    iget-object v10, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mSubaddress:Landroid/preference/CheckBoxPreference;

    if-ne p2, v10, :cond_c

    iget-object v10, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mSubaddress:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v10}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v10

    if-eqz v10, :cond_b

    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v11, "subaddress_mode"

    const/4 v12, 0x1

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_9
    :goto_6
    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v10

    const-string/jumbo v11, "button_callType_select_key"

    invoke-virtual {v10, v11}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/PreferenceScreen;

    if-eq p2, v10, :cond_a

    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v10

    const-string/jumbo v11, "button_gsm_voicecall_forwarding"

    invoke-virtual {v10, v11}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/PreferenceScreen;

    if-ne p2, v10, :cond_17

    :cond_a
    const v10, 0x7f0d0259

    invoke-virtual {p0, v10}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getString(I)Ljava/lang/String;

    move-result-object v10

    const v11, 0x7f0d02b9

    invoke-virtual {p0, v11}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/phone/utils/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->checkNotSupportSSQuery()Z

    move-result v10

    if-eqz v10, :cond_14

    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0d0329

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    invoke-static {v10, v11, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    const/4 v10, 0x1

    return v10

    :cond_b
    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v11, "subaddress_mode"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_6

    :cond_c
    iget-object v10, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCountryCodePref:Landroid/preference/EditTextPreference;

    if-ne p2, v10, :cond_d

    const v10, 0x7f0d0259

    invoke-virtual {p0, v10}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getString(I)Ljava/lang/String;

    move-result-object v10

    const v11, 0x7f0d0300

    invoke-virtual {p0, v11}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/phone/utils/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    const v10, 0x7f0d026e

    invoke-virtual {p0, v10}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/phone/utils/SALogging;->sendSAViewFlowLog(Ljava/lang/String;)V

    const v10, 0x7f0d026e

    invoke-virtual {p0, v10}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getString(I)Ljava/lang/String;

    move-result-object v10

    const v11, 0x7f0d0287

    invoke-virtual {p0, v11}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getString(I)Ljava/lang/String;

    move-result-object v11

    iget-object v12, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCountryCodePref:Landroid/preference/EditTextPreference;

    invoke-virtual {v12}, Landroid/preference/EditTextPreference;->getDialogTitle()Ljava/lang/CharSequence;

    move-result-object v12

    invoke-interface {v12}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v11, v12}, Lcom/android/phone/utils/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_d
    iget-object v10, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCurrentyCountry:Landroid/preference/PreferenceScreen;

    if-ne p2, v10, :cond_e

    const v10, 0x7f0d0259

    invoke-virtual {p0, v10}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getString(I)Ljava/lang/String;

    move-result-object v10

    const v11, 0x7f0d0301

    invoke-virtual {p0, v11}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/phone/utils/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_e
    iget-object v10, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mAssistedDialingSwitch:Landroid/preference/PreferenceScreen;

    if-ne p2, v10, :cond_f

    const v10, 0x7f0d0259

    invoke-virtual {p0, v10}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getString(I)Ljava/lang/String;

    move-result-object v10

    const v11, 0x7f0d0306

    invoke-virtual {p0, v11}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/phone/utils/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_f
    iget-object v10, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mSyncCallSettings:Landroid/preference/PreferenceScreen;

    if-ne p2, v10, :cond_10

    new-instance v6, Landroid/content/Intent;

    const-string/jumbo v10, "com.kddi.agent.action.SETTING"

    invoke-direct {v6, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v10}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_6

    :cond_10
    iget-object v10, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mButtonTTY:Lcom/android/phone/TtyListPreference;

    if-ne p2, v10, :cond_11

    iget-object v10, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mButtonTTY:Lcom/android/phone/TtyListPreference;

    invoke-virtual {v10}, Lcom/android/phone/TtyListPreference;->getValue()Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->TtyValue:Ljava/lang/String;

    const/4 v10, 0x1

    return v10

    :cond_11
    iget-object v10, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mAutoAreaCodeButton:Landroid/preference/EditTextPreference;

    if-ne p2, v10, :cond_9

    instance-of v10, p2, Landroid/preference/EditTextPreference;

    if-eqz v10, :cond_12

    move-object v10, p2

    check-cast v10, Landroid/preference/EditTextPreference;

    invoke-virtual {v10}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v4

    check-cast p2, Landroid/preference/EditTextPreference;

    invoke-virtual {p2}, Landroid/preference/EditTextPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v10

    check-cast v10, Landroid/app/AlertDialog;

    iput-object v10, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mDialog:Landroid/app/AlertDialog;

    iget-object v10, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mDialog:Landroid/app/AlertDialog;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    iget-object v10, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mDialog:Landroid/app/AlertDialog;

    new-instance v11, Lcom/android/phone/GsmUmtsAdditionalCallOptions$16;

    invoke-direct {v11, p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions$16;-><init>(Lcom/android/phone/GsmUmtsAdditionalCallOptions;)V

    invoke-virtual {v10, v11}, Landroid/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    if-eqz v4, :cond_12

    invoke-virtual {v4}, Landroid/widget/EditText;->length()I

    move-result v7

    iget-object v10, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mDialog:Landroid/app/AlertDialog;

    const/4 v11, -0x1

    invoke-virtual {v10, v11}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v11

    if-lez v7, :cond_13

    const/4 v10, 0x1

    :goto_7
    invoke-virtual {v11, v10}, Landroid/widget/Button;->setEnabled(Z)V

    new-instance v10, Lcom/android/phone/GsmUmtsAdditionalCallOptions$17;

    invoke-direct {v10, p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions$17;-><init>(Lcom/android/phone/GsmUmtsAdditionalCallOptions;)V

    invoke-virtual {v4, v10}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_12
    const/4 v10, 0x1

    return v10

    :cond_13
    const/4 v10, 0x0

    goto :goto_7

    :cond_14
    const-string/jumbo v10, "enabled"

    invoke-static {v10}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1d

    sget v10, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mSimId:I

    invoke-static {v10}, Lcom/android/phone/TelephonyConfig;->isCMCCSIM(I)Z

    move-result v10

    if-eqz v10, :cond_1d

    const-string/jumbo v10, "connectivity"

    invoke-virtual {p0, v10}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v10

    iget-object v8, v10, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "when call forward, mIsDualSimTurnedOn = : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mIsDualSimTurnedOn:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    invoke-direct {p0, v10, v11}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->log(Ljava/lang/String;Z)V

    iget-boolean v10, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mIsDualSimTurnedOn:Z

    if-eqz v10, :cond_15

    invoke-virtual {v8}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v10

    sget-object v11, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v10, v11, :cond_15

    const-string/jumbo v10, "feature_multisim"

    invoke-static {v10}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_15

    const-string/jumbo v10, "GsmUmtsAdditionalCallOptions"

    const-string/jumbo v11, "Phone State is Not IDLE!"

    const/4 v12, 0x1

    invoke-static {v10, v11, v12}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0d06b0

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    invoke-static {v10, v11, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    const/4 v10, 0x1

    return v10

    :cond_15
    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v10

    if-nez v10, :cond_16

    new-instance v10, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-direct {v10, v11}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0d0c98

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0d0c97

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    new-instance v11, Lcom/android/phone/GsmUmtsAdditionalCallOptions$18;

    invoke-direct {v11, p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions$18;-><init>(Lcom/android/phone/GsmUmtsAdditionalCallOptions;)V

    const v12, 0x7f0d032a

    invoke-virtual {v10, v12, v11}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    new-instance v11, Lcom/android/phone/GsmUmtsAdditionalCallOptions$19;

    invoke-direct {v11, p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions$19;-><init>(Lcom/android/phone/GsmUmtsAdditionalCallOptions;)V

    const v12, 0x7f0d0327

    invoke-virtual {v10, v12, v11}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    const/4 v10, 0x1

    return v10

    :cond_16
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mIsCallForwardPreference:Z

    invoke-direct {p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->changeDataServiceForMultisim()Z

    move-result v10

    if-nez v10, :cond_1d

    const/4 v10, 0x1

    return v10

    :cond_17
    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v10

    const-string/jumbo v11, "voicecall_barring_key"

    invoke-virtual {v10, v11}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/PreferenceScreen;

    if-eq p2, v10, :cond_18

    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v10

    const-string/jumbo v11, "gsm_voicecall_barring_key"

    invoke-virtual {v10, v11}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/PreferenceScreen;

    if-ne p2, v10, :cond_1c

    :cond_18
    const v10, 0x7f0d0259

    invoke-virtual {p0, v10}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getString(I)Ljava/lang/String;

    move-result-object v10

    const v11, 0x7f0d02ba

    invoke-virtual {p0, v11}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/phone/utils/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->checkNotSupportSSQuery()Z

    move-result v10

    if-eqz v10, :cond_19

    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0d0329

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    invoke-static {v10, v11, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    const/4 v10, 0x1

    return v10

    :cond_19
    const-string/jumbo v10, "enabled"

    invoke-static {v10}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1d

    sget v10, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mSimId:I

    invoke-static {v10}, Lcom/android/phone/TelephonyConfig;->isCMCCSIM(I)Z

    move-result v10

    if-eqz v10, :cond_1d

    const-string/jumbo v10, "connectivity"

    invoke-virtual {p0, v10}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v10

    iget-object v8, v10, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "when call barring, mIsDualSimTurnedOn = : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mIsDualSimTurnedOn:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    invoke-direct {p0, v10, v11}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->log(Ljava/lang/String;Z)V

    iget-boolean v10, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mIsDualSimTurnedOn:Z

    if-eqz v10, :cond_1a

    invoke-virtual {v8}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v10

    sget-object v11, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v10, v11, :cond_1a

    const-string/jumbo v10, "feature_multisim"

    invoke-static {v10}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1a

    const-string/jumbo v10, "GsmUmtsAdditionalCallOptions"

    const-string/jumbo v11, "Phone State is Not IDLE!"

    const/4 v12, 0x1

    invoke-static {v10, v11, v12}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0d06b1

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    invoke-static {v10, v11, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    const/4 v10, 0x1

    return v10

    :cond_1a
    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v10

    if-nez v10, :cond_1b

    new-instance v10, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-direct {v10, v11}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0d0c98

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0d0c97

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    new-instance v11, Lcom/android/phone/GsmUmtsAdditionalCallOptions$20;

    invoke-direct {v11, p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions$20;-><init>(Lcom/android/phone/GsmUmtsAdditionalCallOptions;)V

    const v12, 0x7f0d032a

    invoke-virtual {v10, v12, v11}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    new-instance v11, Lcom/android/phone/GsmUmtsAdditionalCallOptions$21;

    invoke-direct {v11, p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions$21;-><init>(Lcom/android/phone/GsmUmtsAdditionalCallOptions;)V

    const v12, 0x7f0d0327

    invoke-virtual {v10, v12, v11}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    const/4 v10, 0x1

    return v10

    :cond_1b
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mIsCallForwardPreference:Z

    invoke-direct {p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->changeDataServiceForMultisim()Z

    move-result v10

    if-nez v10, :cond_1d

    const/4 v10, 0x1

    return v10

    :cond_1c
    iget-object v10, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mFdnSetting:Landroid/preference/PreferenceScreen;

    if-ne p2, v10, :cond_1d

    const v10, 0x7f0d0259

    invoke-virtual {p0, v10}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getString(I)Ljava/lang/String;

    move-result-object v10

    const v11, 0x7f0d02bc

    invoke-virtual {p0, v11}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/phone/utils/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1d
    invoke-virtual {p0, p1, p2}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->onPreferenceTreeClickMultiSIM(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v10

    if-eqz v10, :cond_1e

    const/4 v10, 0x1

    return v10

    :cond_1e
    invoke-super {p0, p1, p2}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v10

    return v10
.end method

.method public onPreferenceTreeClickMultiSIM(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-string/jumbo v2, "feature_multisim"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getActivity()Landroid/app/Activity;

    move-result-object v2

    if-nez v2, :cond_0

    return v3

    :cond_0
    iget-object v2, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCallTypeSelect:Landroid/preference/PreferenceScreen;

    if-ne p2, v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onPreferenceTreeClick - mCallTypeSelect SIM"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mSimId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->log(Ljava/lang/String;)V

    const-string/jumbo v2, "video_call_not_support"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo v2, "psvt_support"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v2, "show_callforward_allcalls_string"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/android/phone/GsmUmtsCallForwardOptions;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    :goto_0
    const-string/jumbo v2, "CallSettingTab"

    sget v3, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mSimId:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->startActivity(Landroid/content/Intent;)V

    return v4

    :cond_2
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/android/phone/callsettings/CallTypeSelectForForwarding;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCallForwarding:Landroid/preference/PreferenceScreen;

    if-ne p2, v2, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onPreferenceTreeClick - mCallForwarding SIM"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mSimId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->log(Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/android/phone/GsmUmtsCallForwardOptions;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v2, "CallSettingTab"

    sget v3, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mSimId:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->startActivity(Landroid/content/Intent;)V

    return v4

    :cond_4
    iget-object v2, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCallBarring:Landroid/preference/PreferenceScreen;

    if-ne p2, v2, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onPreferenceTreeClick - mCallBarring SIM"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mSimId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->log(Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/android/phone/callsettings/CallTypeSelectForBarring;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v2, "CallSettingTab"

    sget v3, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mSimId:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->startActivity(Landroid/content/Intent;)V

    return v4

    :cond_5
    iget-object v2, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mFdnSetting:Landroid/preference/PreferenceScreen;

    if-ne p2, v2, :cond_6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onPreferenceTreeClick - mFdnSetting SIM"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mSimId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->log(Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/android/phone/FdnSetting;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v2, "CallSettingTab"

    sget v3, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mSimId:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->startActivity(Landroid/content/Intent;)V

    return v4

    :cond_6
    return v3
.end method

.method public onResume()V
    .locals 19

    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mForeground:Z

    const v15, 0x7f0d0259

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/android/phone/utils/SALogging;->sendSAViewFlowLog(Ljava/lang/String;)V

    const-string/jumbo v15, "feature_multisim"

    invoke-static {v15}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_2

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mIsDualSimTurnedOn:Z

    if-nez v15, :cond_0

    invoke-static {}, Lcom/android/phone/PhoneUtilsMultiSIM;->getInsertedSimCard()I

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-le v15, v0, :cond_0

    const/4 v15, 0x0

    invoke-static {v15}, Lcom/android/phone/PhoneUtilsMultiSIM;->isSimCardStatusOn(I)Z

    move-result v15

    if-eqz v15, :cond_0

    const/4 v15, 0x1

    invoke-static {v15}, Lcom/android/phone/PhoneUtilsMultiSIM;->isSimCardStatusOn(I)Z

    move-result v15

    if-eqz v15, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->finish()V

    :cond_0
    const-string/jumbo v15, "video_call_not_support"

    invoke-static {v15}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_1

    const/4 v15, 0x1

    sput-boolean v15, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->IsAdditionSetting:Z

    :cond_1
    const-string/jumbo v15, "onResume()"

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->log(Ljava/lang/String;)V

    sget v15, Lcom/android/phone/callsettings/CallSettingsTabFragment;->mTabCount:I

    if-lez v15, :cond_2

    invoke-static {}, Lcom/android/phone/PhoneUtilsMultiSIM;->getActivatedSimNum()I

    move-result v15

    if-lez v15, :cond_2

    sget-object v15, Lcom/android/phone/callsettings/CallSettingsTabFragment;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v15}, Landroid/widget/TabHost;->getCurrentTab()I

    move-result v15

    if-nez v15, :cond_18

    const/4 v15, 0x0

    invoke-static {v15}, Lcom/android/phone/PhoneUtilsMultiSIM;->isSimCardStatusOn(I)Z

    move-result v15

    if-eqz v15, :cond_18

    const/4 v15, 0x0

    sput v15, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mSimId:I

    :cond_2
    :goto_0
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "mSimId : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    sget v16, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mSimId:I

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->log(Ljava/lang/String;)V

    const/4 v5, 0x0

    const-string/jumbo v15, "feature_multisim"

    invoke-static {v15}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_1b

    sget v15, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mSimId:I

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_1b

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    const-string/jumbo v16, "area_code_sim2_value"

    invoke-static/range {v15 .. v16}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mAutoRedial:Landroid/preference/CheckBoxPreference;

    if-eqz v15, :cond_3

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mAutoRedial:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v15}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v16

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    const-string/jumbo v17, "autoredial_mode_sim2"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v15, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v15

    if-lez v15, :cond_19

    const/4 v15, 0x1

    :goto_1
    move/from16 v0, v16

    if-eq v0, v15, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mAutoRedial:Landroid/preference/CheckBoxPreference;

    move-object/from16 v16, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    const-string/jumbo v17, "autoredial_mode_sim2"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v15, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v15

    if-lez v15, :cond_1a

    const/4 v15, 0x1

    :goto_2
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    :cond_3
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    const-string/jumbo v16, "hearing_aid"

    const/16 v17, 0x0

    invoke-static/range {v15 .. v17}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mButtonHAC:Landroid/preference/CheckBoxPreference;

    if-eqz v15, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mButtonHAC:Landroid/preference/CheckBoxPreference;

    move-object/from16 v16, v0

    if-eqz v7, :cond_1e

    const/4 v15, 0x1

    :goto_4
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    :cond_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mMeterialButtonHAC:Landroid/preference/SwitchPreference;

    if-eqz v15, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mMeterialButtonHAC:Landroid/preference/SwitchPreference;

    move-object/from16 v16, v0

    if-eqz v7, :cond_1f

    const/4 v15, 0x1

    :goto_5
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :cond_5
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mButtonTTY:Lcom/android/phone/TtyListPreference;

    if-eqz v15, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    const-string/jumbo v16, "preferred_tty_mode"

    const/16 v17, 0x0

    invoke-static/range {v15 .. v17}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mButtonTTY:Lcom/android/phone/TtyListPreference;

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Lcom/android/phone/TtyListPreference;->setValue(Ljava/lang/String;)V

    const-string/jumbo v15, "vzw_volte_ui"

    invoke-static {v15}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_20

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->updatePreferredTtyModeSummaryForVolte(I)V

    :goto_6
    const-string/jumbo v15, "vzw_volte_ui"

    invoke-static {v15}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_7

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v15

    iget-object v4, v15, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v6

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-static {v4}, Lcom/android/phone/PhoneUtilsCommon;->isOnVoLTEVideoCall(Lcom/android/internal/telephony/CallManager;)Z

    move-result v15

    if-eqz v15, :cond_21

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v15

    sget-object v16, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    move-object/from16 v0, v16

    if-eq v15, v0, :cond_21

    const/4 v15, 0x1

    :goto_7
    if-nez v15, :cond_6

    invoke-static {}, Lcom/android/phone/PhoneUtils;->getHasVzwVideoCall()Z

    move-result v15

    if-eqz v15, :cond_22

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v15

    sget-object v16, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    move-object/from16 v0, v16

    if-eq v15, v0, :cond_22

    :cond_6
    const/4 v2, 0x0

    :goto_8
    const-string/jumbo v15, "GsmUmtsAdditionalCallOptions"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "ttymode enable : "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, ", isOnVoLTEVideoCall = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-static {v4}, Lcom/android/phone/PhoneUtilsCommon;->isOnVoLTEVideoCall(Lcom/android/internal/telephony/CallManager;)Z

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, ", getHasVzwVideoCall = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-static {}, Lcom/android/phone/PhoneUtils;->getHasVzwVideoCall()Z

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, ", isConferenceCall(fgCall) = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-static {v6}, Lcom/android/phone/PhoneUtils;->isConferenceCall(Lcom/android/internal/telephony/Call;)Z

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, ", isConferenceCall(bgCall) = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->isConferenceCall(Lcom/android/internal/telephony/Call;)Z

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mButtonTTY:Lcom/android/phone/TtyListPreference;

    invoke-virtual {v15, v2}, Lcom/android/phone/TtyListPreference;->setEnabled(Z)V

    :cond_7
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mDropDownTTY:Lcom/android/phone/DropDownPreference;

    if-eqz v15, :cond_9

    const-string/jumbo v15, "GsmUmtsAdditionalCallOptions"

    const-string/jumbo v16, "onResume mDropDownTTY"

    const/16 v17, 0x1

    invoke-static/range {v15 .. v17}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    invoke-direct/range {p0 .. p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->updateDropDownTty()V

    const-string/jumbo v15, "vzw_volte_ui"

    invoke-static {v15}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_9

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v15

    iget-object v4, v15, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v6

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-static {v4}, Lcom/android/phone/PhoneUtilsCommon;->isOnVoLTEVideoCall(Lcom/android/internal/telephony/CallManager;)Z

    move-result v15

    if-eqz v15, :cond_25

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v15

    sget-object v16, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    move-object/from16 v0, v16

    if-eq v15, v0, :cond_25

    const/4 v15, 0x1

    :goto_9
    if-nez v15, :cond_8

    invoke-static {}, Lcom/android/phone/PhoneUtils;->getHasVzwVideoCall()Z

    move-result v15

    if-eqz v15, :cond_26

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v15

    sget-object v16, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    move-object/from16 v0, v16

    if-eq v15, v0, :cond_26

    :cond_8
    const/4 v2, 0x0

    :goto_a
    const-string/jumbo v15, "GsmUmtsAdditionalCallOptions"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "mDropDownTTY enable : "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, ", isOnVoLTEVideoCall = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-static {v4}, Lcom/android/phone/PhoneUtilsCommon;->isOnVoLTEVideoCall(Lcom/android/internal/telephony/CallManager;)Z

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, ", getHasVzwVideoCall = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-static {}, Lcom/android/phone/PhoneUtils;->getHasVzwVideoCall()Z

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, ", isConferenceCall(fgCall) = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-static {v6}, Lcom/android/phone/PhoneUtils;->isConferenceCall(Lcom/android/internal/telephony/Call;)Z

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, ", isConferenceCall(bgCall) = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->isConferenceCall(Lcom/android/internal/telephony/Call;)Z

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mDropDownTTY:Lcom/android/phone/DropDownPreference;

    invoke-virtual {v15, v2}, Lcom/android/phone/DropDownPreference;->setEnabled(Z)V

    :cond_9
    const-string/jumbo v15, "cdma_additional_setting_enable"

    invoke-static {v15}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_a

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->updateSummaryAutoAreaCode(Ljava/lang/String;)V

    :cond_a
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mSubaddress:Landroid/preference/CheckBoxPreference;

    if-eqz v15, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mSubaddress:Landroid/preference/CheckBoxPreference;

    move-object/from16 v16, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    const-string/jumbo v17, "subaddress_mode"

    const/16 v18, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v15, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v15

    if-lez v15, :cond_29

    const/4 v15, 0x1

    :goto_b
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    :cond_b
    sget v15, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mSimId:I

    invoke-static {v15}, Lcom/android/phone/TelephonyConfig;->isCMCCSIM(I)Z

    move-result v15

    if-nez v15, :cond_c

    sget v15, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mSimId:I

    invoke-static {v15}, Lcom/android/phone/TelephonyConfig;->isCUSIM(I)Z

    move-result v15

    if-nez v15, :cond_c

    sget v15, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mSimId:I

    invoke-static {v15}, Lcom/android/phone/TelephonyConfig;->isCTCSIM(I)Z

    move-result v15

    if-eqz v15, :cond_d

    :cond_c
    const-string/jumbo v15, "feature_cu"

    invoke-static {v15}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_2a

    :cond_d
    :goto_c
    const-string/jumbo v15, "feature_multisim"

    invoke-static {v15}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_f

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getApplicationContext()Landroid/content/Context;

    move-result-object v15

    const-string/jumbo v16, "SelectSimStatus"

    const/16 v17, 0x0

    invoke-virtual/range {v15 .. v17}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v11

    const-string/jumbo v15, "SimStatus"

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-interface {v11, v15, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v13

    invoke-static {}, Lcom/android/phone/PhoneUtilsMultiSIM;->getActivatedSimNum()I

    move-result v15

    const/16 v16, 0x2

    move/from16 v0, v16

    if-lt v15, v0, :cond_f

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    const-string/jumbo v16, "dsa_is_activate"

    const/16 v17, 0x0

    invoke-static/range {v15 .. v17}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_f

    const/4 v15, 0x1

    if-ne v13, v15, :cond_2c

    sget v15, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mSimId:I

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_2c

    :cond_e
    :goto_d
    const-string/jumbo v15, "GsmUmtsAdditionalCallOptions"

    const-string/jumbo v16, "DSA_IS_ACTIVATE"

    invoke-static/range {v15 .. v16}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCWSwitch:Lcom/android/phone/CallWaitingSwitchPreference;

    if-eqz v15, :cond_f

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCWSwitch:Lcom/android/phone/CallWaitingSwitchPreference;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Lcom/android/phone/CallWaitingSwitchPreference;->setEnabled(Z)V

    :cond_f
    const-string/jumbo v15, "support_softphone"

    invoke-static {v15}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_11

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v10

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getActivity()Landroid/app/Activity;

    move-result-object v15

    invoke-static {v15}, Lcom/android/phone/PhoneUtilsCommon;->isAvailableSoftphone(Landroid/content/Context;)Z

    move-result v8

    const-string/jumbo v15, "meterial_button_cw_key"

    invoke-virtual {v10, v15}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    if-eqz v9, :cond_10

    invoke-virtual {v9, v8}, Landroid/preference/Preference;->setEnabled(Z)V

    :cond_10
    const-string/jumbo v15, "button_gsm_voicecall_forwarding"

    invoke-virtual {v10, v15}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    if-eqz v9, :cond_11

    invoke-virtual {v9, v8}, Landroid/preference/Preference;->setEnabled(Z)V

    :cond_11
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCLIRSwitch:Landroid/preference/SwitchPreference;

    if-eqz v15, :cond_12

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    const-string/jumbo v16, "button_clir_key"

    const/16 v17, 0x1

    invoke-static/range {v15 .. v17}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCLIRSwitch:Landroid/preference/SwitchPreference;

    move-object/from16 v16, v0

    if-eqz v14, :cond_2e

    const/4 v15, 0x1

    :goto_e
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :cond_12
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->updateOthresCallSetting()V

    const-string/jumbo v15, "GsmUmtsAdditionalCallOptions"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, " mSwitchData = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mSwitchData:Z

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x1

    invoke-static/range {v15 .. v17}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    const-string/jumbo v15, "GsmUmtsAdditionalCallOptions"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, " mIsChangeDataProcess = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mIsChangeDataProcess:Z

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x1

    invoke-static/range {v15 .. v17}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mSwitchData:Z

    if-eqz v15, :cond_13

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mChangeDataBack:Z

    if-eqz v15, :cond_2f

    :cond_13
    :goto_f
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->isAirplaneModeOn()Z

    move-result v15

    if-eqz v15, :cond_14

    invoke-static {}, Lcom/android/phone/PhoneUtilsCommon;->isAvailableMoreMenu4VoWiFi()Z

    move-result v15

    if-eqz v15, :cond_30

    :cond_14
    :goto_10
    const-string/jumbo v15, "GsmUmtsAdditionalCallOptions"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "mPreference.size : "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mPreferences:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, ", mInitIndex : "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mInitIndex:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x1

    invoke-static/range {v15 .. v17}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    const-string/jumbo v15, "support_bixby"

    invoke-static {v15}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_17

    new-instance v15, Lcom/android/phone/ia/GsmUmtsAdditionalCallOptionsStateListener;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/android/phone/ia/GsmUmtsAdditionalCallOptionsStateListener;-><init>(Lcom/android/phone/GsmUmtsAdditionalCallOptions;)V

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mStateListener:Lcom/android/phone/ia/IAInterimListener;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mStateListener:Lcom/android/phone/ia/IAInterimListener;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Lcom/samsung/android/sdk/bixby/BixbyApi;->setInterimStateListener(Lcom/samsung/android/sdk/bixby/BixbyApi$InterimStateListener;)V

    const-string/jumbo v15, "GsmUmtsAdditionalCallOptions"

    const-string/jumbo v16, "set state listener"

    const/16 v17, 0x1

    invoke-static/range {v15 .. v17}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    const-string/jumbo v15, "support_bixby"

    invoke-static {v15}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_16

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mPreferences:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-nez v15, :cond_16

    invoke-static {}, Lcom/android/phone/ia/IAUtil;->isIAExecutingState()Z

    move-result v15

    if-eqz v15, :cond_16

    const-string/jumbo v15, "MoreSettings"

    invoke-static {}, Lcom/android/phone/ia/IAUtil;->getIAExecutingStateId()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_16

    invoke-static {}, Lcom/android/phone/ia/IAUtil;->isIAExecutingLastState()Z

    move-result v15

    if-eqz v15, :cond_15

    const-string/jumbo v15, "MoreSettings"

    invoke-static {v15}, Lcom/android/phone/ia/IAUtil;->requestNLG(Ljava/lang/String;)V

    :cond_15
    sget-object v15, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-static {v15}, Lcom/android/phone/ia/IAUtil;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    :cond_16
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    const-string/jumbo v16, "MoreSettings"

    invoke-virtual/range {v15 .. v16}, Lcom/samsung/android/sdk/bixby/BixbyApi;->logEnterState(Ljava/lang/String;)V

    :cond_17
    invoke-super/range {p0 .. p0}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onResume()V

    return-void

    :cond_18
    const/4 v15, 0x1

    sput v15, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mSimId:I

    goto/16 :goto_0

    :cond_19
    const/4 v15, 0x0

    goto/16 :goto_1

    :cond_1a
    const/4 v15, 0x0

    goto/16 :goto_2

    :cond_1b
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    const-string/jumbo v16, "area_code_value"

    invoke-static/range {v15 .. v16}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mAutoRedial:Landroid/preference/CheckBoxPreference;

    if-eqz v15, :cond_3

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mAutoRedial:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v15}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v16

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    const-string/jumbo v17, "autoredial_mode"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v15, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v15

    if-lez v15, :cond_1c

    const/4 v15, 0x1

    :goto_11
    move/from16 v0, v16

    if-eq v0, v15, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mAutoRedial:Landroid/preference/CheckBoxPreference;

    move-object/from16 v16, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    const-string/jumbo v17, "autoredial_mode"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v15, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v15

    if-lez v15, :cond_1d

    const/4 v15, 0x1

    :goto_12
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_3

    :cond_1c
    const/4 v15, 0x0

    goto :goto_11

    :cond_1d
    const/4 v15, 0x0

    goto :goto_12

    :cond_1e
    const/4 v15, 0x0

    goto/16 :goto_4

    :cond_1f
    const/4 v15, 0x0

    goto/16 :goto_5

    :cond_20
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->updatePreferredTtyModeSummary(I)V

    goto/16 :goto_6

    :cond_21
    const/4 v15, 0x0

    goto/16 :goto_7

    :cond_22
    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v15

    sget-object v16, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    move-object/from16 v0, v16

    if-eq v15, v0, :cond_24

    invoke-static {v6}, Lcom/android/phone/PhoneUtils;->isConferenceCall(Lcom/android/internal/telephony/Call;)Z

    move-result v15

    if-nez v15, :cond_23

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->isConferenceCall(Lcom/android/internal/telephony/Call;)Z

    move-result v15

    if-eqz v15, :cond_24

    :cond_23
    const/4 v2, 0x0

    goto/16 :goto_8

    :cond_24
    const/4 v2, 0x1

    goto/16 :goto_8

    :cond_25
    const/4 v15, 0x0

    goto/16 :goto_9

    :cond_26
    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v15

    sget-object v16, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    move-object/from16 v0, v16

    if-eq v15, v0, :cond_28

    invoke-static {v6}, Lcom/android/phone/PhoneUtils;->isConferenceCall(Lcom/android/internal/telephony/Call;)Z

    move-result v15

    if-nez v15, :cond_27

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->isConferenceCall(Lcom/android/internal/telephony/Call;)Z

    move-result v15

    if-eqz v15, :cond_28

    :cond_27
    const/4 v2, 0x0

    goto/16 :goto_a

    :cond_28
    const/4 v2, 0x1

    goto/16 :goto_a

    :cond_29
    const/4 v15, 0x0

    goto/16 :goto_b

    :cond_2a
    const-string/jumbo v15, "GsmUmtsAdditionalCallOptions"

    const-string/jumbo v16, "SIM is CMCC or CU or CTC SIM. Disable CLIR."

    const/16 v17, 0x1

    invoke-static/range {v15 .. v17}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCLIRButton:Lcom/android/phone/CLIRListPreference;

    if-eqz v15, :cond_2b

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCLIRButton:Lcom/android/phone/CLIRListPreference;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Lcom/android/phone/CLIRListPreference;->setEnabled(Z)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCLIRButton:Lcom/android/phone/CLIRListPreference;

    const-string/jumbo v16, ""

    invoke-virtual/range {v15 .. v16}, Lcom/android/phone/CLIRListPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_2b
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCLIRDropDown:Lcom/android/phone/CLIRDropDownPreference;

    if-eqz v15, :cond_d

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCLIRDropDown:Lcom/android/phone/CLIRDropDownPreference;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Lcom/android/phone/CLIRDropDownPreference;->setEnabled(Z)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCLIRDropDown:Lcom/android/phone/CLIRDropDownPreference;

    const-string/jumbo v16, ""

    invoke-virtual/range {v15 .. v16}, Lcom/android/phone/CLIRDropDownPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_c

    :cond_2c
    const/4 v15, 0x2

    if-ne v13, v15, :cond_2d

    sget v15, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mSimId:I

    if-eqz v15, :cond_e

    :cond_2d
    if-nez v13, :cond_f

    goto/16 :goto_d

    :cond_2e
    const/4 v15, 0x0

    goto/16 :goto_e

    :cond_2f
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mIsChangeDataProcess:Z

    if-nez v15, :cond_13

    invoke-direct/range {p0 .. p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->changeDataServiceBackForMultisim()Z

    move-result v15

    if-eqz v15, :cond_13

    goto/16 :goto_f

    :cond_30
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->UpdateAirPlaneModeChange()V

    goto/16 :goto_10
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCLIRButton:Lcom/android/phone/CLIRListPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCLIRButton:Lcom/android/phone/CLIRListPreference;

    iget-object v0, v0, Lcom/android/phone/CLIRListPreference;->clirArray:[I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCLIRButton:Lcom/android/phone/CLIRListPreference;

    invoke-virtual {v0}, Lcom/android/phone/CLIRListPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCLIRButton:Lcom/android/phone/CLIRListPreference;

    iget-object v1, v1, Lcom/android/phone/CLIRListPreference;->clirArray:[I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    :cond_0
    iget-object v0, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCLIRDropDown:Lcom/android/phone/CLIRDropDownPreference;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCLIRDropDown:Lcom/android/phone/CLIRDropDownPreference;

    iget-object v0, v0, Lcom/android/phone/CLIRDropDownPreference;->clirArray:[I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCLIRDropDown:Lcom/android/phone/CLIRDropDownPreference;

    invoke-virtual {v0}, Lcom/android/phone/CLIRDropDownPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCLIRDropDown:Lcom/android/phone/CLIRDropDownPreference;

    iget-object v1, v1, Lcom/android/phone/CLIRDropDownPreference;->clirArray:[I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    :cond_1
    return-void
.end method

.method public onStart()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-super {p0}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onStart()V

    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->emptyView:Lcom/android/phone/GsmUmtsAdditionalCallOptions$EmptyView;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/phone/GsmUmtsAdditionalCallOptions$EmptyView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/phone/GsmUmtsAdditionalCallOptions$EmptyView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->emptyView:Lcom/android/phone/GsmUmtsAdditionalCallOptions$EmptyView;

    :goto_0
    iget-object v1, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->emptyView:Lcom/android/phone/GsmUmtsAdditionalCallOptions$EmptyView;

    invoke-virtual {v0, v1, v4, v3}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setHeaderDividersEnabled(Z)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->emptyView:Lcom/android/phone/GsmUmtsAdditionalCallOptions$EmptyView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->removeHeaderView(Landroid/view/View;)Z

    goto :goto_0
.end method

.method public sendIntent(I)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.telecom.action.TTY_PREFERRED_MODE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "android.telecom.intent.extra.TTY_PREFERRED"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Lcom/android/phone/PhoneGlobals;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method
