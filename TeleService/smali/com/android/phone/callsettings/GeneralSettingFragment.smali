.class public Lcom/android/phone/callsettings/GeneralSettingFragment;
.super Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;
.source "GeneralSettingFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/callsettings/GeneralSettingFragment$1;,
        Lcom/android/phone/callsettings/GeneralSettingFragment$2;,
        Lcom/android/phone/callsettings/GeneralSettingFragment$3;,
        Lcom/android/phone/callsettings/GeneralSettingFragment$4;,
        Lcom/android/phone/callsettings/GeneralSettingFragment$5;
    }
.end annotation


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mAnsweringCall:Landroid/preference/PreferenceScreen;

.field private mAnsweringMemo:Landroid/preference/PreferenceScreen;

.field private mAutoArea:Landroid/preference/EditTextPreference;

.field private mBlockNumber:Landroid/preference/PreferenceScreen;

.field private mBoolCheckBroadcast:Z

.field private mButtonPopupWindow:Landroid/preference/SwitchPreference;

.field private mCallBlock:Landroid/preference/PreferenceScreen;

.field private mCallerId:Landroid/preference/SwitchPreference;

.field private mCallerInfo:Landroid/preference/SwitchPreference;

.field private mDialog:Landroid/app/AlertDialog;

.field private mHoldRecord:Landroid/preference/SwitchPreference;

.field private final mImsUtHandler:Landroid/os/Handler;

.field private mImsUtdialog:Landroid/app/ProgressDialog;

.field private mInstantLetter:Landroid/preference/PreferenceScreen;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIsDualSimTurnedOn:Z

.field private mKTAdditionalSvc:Landroid/preference/PreferenceScreen;

.field private mKTHDVoice:Landroid/preference/PreferenceScreen;

.field private mKTOneLine:Landroid/preference/ListPreference;

.field private mMcidSetting:Landroid/preference/PreferenceScreen;

.field public mMoreSetting:Landroid/preference/PreferenceScreen;

.field private mMuteFirstRing:Landroid/preference/SwitchPreference;

.field mOnKeyListener:Landroid/view/View$OnKeyListener;

.field private mPersonalSound:Landroid/preference/SwitchPreference;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPhoneAppMode:Lcom/android/phone/DropDownPreference;

.field private mPhoneNumberLocator:Landroid/preference/PreferenceScreen;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPrefCategory:Landroid/preference/PreferenceCategory;

.field private mRecordSetting:Landroid/preference/PreferenceScreen;

.field private mRoamingAssistance:Landroid/preference/PreferenceScreen;

.field private mSKTHDVoice:Landroid/preference/PreferenceScreen;

.field private mSmartCall:Landroid/preference/PreferenceScreen;

.field private mTMOVoLTESetting:Landroid/preference/SwitchPreference;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mVisualCallCenter:Landroid/preference/PreferenceScreen;

.field private mVoLTENoti:Landroid/preference/SwitchPreference;

.field private mVoLTESetting:Landroid/preference/ListPreference;

.field private mVoiceProtect:Landroid/preference/SwitchPreference;

.field private mWFCEnableObserver:Landroid/database/ContentObserver;

.field private mWFCSettingHolder:Landroid/preference/Preference;

.field private mWFCSwitchHolder:Lcom/samsung/tmowfc/wfcutils/WfcSwitchPreference;

.field private phoneAppModeEntry:[Ljava/lang/String;

.field private wfcPref:Landroid/preference/PreferenceScreen;


# direct methods
.method static synthetic -get0(Lcom/android/phone/callsettings/GeneralSettingFragment;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/phone/callsettings/GeneralSettingFragment;)Landroid/preference/EditTextPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mAutoArea:Landroid/preference/EditTextPreference;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/phone/callsettings/GeneralSettingFragment;)Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/phone/callsettings/GeneralSettingFragment;)Landroid/app/ProgressDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mImsUtdialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/phone/callsettings/GeneralSettingFragment;)Landroid/preference/SwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mPersonalSound:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/phone/callsettings/GeneralSettingFragment;)Lcom/android/internal/telephony/Phone;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/phone/callsettings/GeneralSettingFragment;)Lcom/android/phone/DropDownPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mPhoneAppMode:Lcom/android/phone/DropDownPreference;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/phone/callsettings/GeneralSettingFragment;)Landroid/preference/PreferenceScreen;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mSmartCall:Landroid/preference/PreferenceScreen;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/phone/callsettings/GeneralSettingFragment;)Landroid/preference/ListPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mVoLTESetting:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/phone/callsettings/GeneralSettingFragment;)Lcom/samsung/tmowfc/wfcutils/WfcSwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mWFCSwitchHolder:Lcom/samsung/tmowfc/wfcutils/WfcSwitchPreference;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/phone/callsettings/GeneralSettingFragment;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0

    iput-object p1, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mImsUtdialog:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/phone/callsettings/GeneralSettingFragment;I)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/phone/callsettings/GeneralSettingFragment;->checkCallSettingsByCarrier(I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/phone/callsettings/GeneralSettingFragment;)I
    .locals 1

    invoke-direct {p0}, Lcom/android/phone/callsettings/GeneralSettingFragment;->startImsUtMobileConnection()I

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/android/phone/callsettings/GeneralSettingFragment;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/callsettings/GeneralSettingFragment;->commitPrefixSettingForDCMDialer(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/phone/callsettings/GeneralSettingFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/callsettings/GeneralSettingFragment;->goAdditionalCallOptions()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/phone/callsettings/GeneralSettingFragment;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/callsettings/GeneralSettingFragment;->updateAutoAreaCodeOnOff(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/phone/callsettings/GeneralSettingFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/callsettings/GeneralSettingFragment;->updateSmartCall()V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/phone/callsettings/GeneralSettingFragment;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/callsettings/GeneralSettingFragment;->updateSummaryAutoAreaCode(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/phone/callsettings/GeneralSettingFragment;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/callsettings/GeneralSettingFragment;->updateVoiceCallTypeForJansky(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/android/internal/telephony/Phone;Landroid/preference/PreferenceCategory;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;-><init>()V

    iput-boolean v0, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mIsDualSimTurnedOn:Z

    iput-boolean v0, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mBoolCheckBroadcast:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mDialog:Landroid/app/AlertDialog;

    new-instance v0, Lcom/android/phone/callsettings/GeneralSettingFragment$1;

    invoke-direct {v0, p0}, Lcom/android/phone/callsettings/GeneralSettingFragment$1;-><init>(Lcom/android/phone/callsettings/GeneralSettingFragment;)V

    iput-object v0, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mImsUtHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/phone/callsettings/GeneralSettingFragment$2;

    invoke-direct {v0, p0}, Lcom/android/phone/callsettings/GeneralSettingFragment$2;-><init>(Lcom/android/phone/callsettings/GeneralSettingFragment;)V

    iput-object v0, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/phone/callsettings/GeneralSettingFragment$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/phone/callsettings/GeneralSettingFragment$3;-><init>(Lcom/android/phone/callsettings/GeneralSettingFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mWFCEnableObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/android/phone/callsettings/GeneralSettingFragment$4;

    invoke-direct {v0, p0}, Lcom/android/phone/callsettings/GeneralSettingFragment$4;-><init>(Lcom/android/phone/callsettings/GeneralSettingFragment;)V

    iput-object v0, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    new-instance v0, Lcom/android/phone/callsettings/GeneralSettingFragment$5;

    invoke-direct {v0, p0}, Lcom/android/phone/callsettings/GeneralSettingFragment$5;-><init>(Lcom/android/phone/callsettings/GeneralSettingFragment;)V

    iput-object v0, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mOnKeyListener:Landroid/view/View$OnKeyListener;

    iput-object p3, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mPrefCategory:Landroid/preference/PreferenceCategory;

    iput-object p1, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mActivity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v0, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-static {}, Lcom/android/phone/callsettings/GeneralSettingManager;->getInstance()Lcom/android/phone/callsettings/GeneralSettingManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mPrefCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Lcom/android/phone/callsettings/GeneralSettingManager;->removePreferences(Landroid/preference/PreferenceCategory;)V

    invoke-virtual {p0}, Lcom/android/phone/callsettings/GeneralSettingFragment;->initializeCallSetting()V

    return-void
.end method

.method private checkCallSettingsByCarrier(I)Z
    .locals 12

    const/4 v11, 0x1

    const/4 v10, 0x0

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v7

    iget-object v7, v7, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v7}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v4

    invoke-static {}, Lcom/android/phone/TeleServiceSystemDB;->isTPhoneEnabled()Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v3, 0x1

    :goto_0
    const-string/jumbo v7, "GeneralSettingFragment"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "checkCallSettingsByCarrier value = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", phoneMode = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-lez p1, :cond_2

    if-nez v3, :cond_2

    iget-object v7, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v7}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0d09b2

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v7, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v7}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0d09b3

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v7}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v6, v8, v10

    aput-object v5, v8, v11

    const v9, 0x7f0d09b4

    invoke-virtual {v7, v9, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v7, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    new-instance v8, Lcom/android/phone/callsettings/GeneralSettingFragment$8;

    invoke-direct {v8, p0}, Lcom/android/phone/callsettings/GeneralSettingFragment$8;-><init>(Lcom/android/phone/callsettings/GeneralSettingFragment;)V

    const v9, 0x7f0d032a

    invoke-virtual {v7, v9, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    new-instance v8, Lcom/android/phone/callsettings/GeneralSettingFragment$9;

    invoke-direct {v8, p0}, Lcom/android/phone/callsettings/GeneralSettingFragment$9;-><init>(Lcom/android/phone/callsettings/GeneralSettingFragment;)V

    const v9, 0x7f0d0327

    invoke-virtual {v7, v9, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    new-instance v8, Lcom/android/phone/callsettings/GeneralSettingFragment$10;

    invoke-direct {v8, p0}, Lcom/android/phone/callsettings/GeneralSettingFragment$10;-><init>(Lcom/android/phone/callsettings/GeneralSettingFragment;)V

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :cond_0
    :goto_1
    return v11

    :cond_1
    const/4 v3, 0x0

    goto/16 :goto_0

    :cond_2
    if-nez p1, :cond_0

    const-string/jumbo v7, "support_tphone"

    invoke-static {v7}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-static {v10}, Lcom/android/phone/TeleServiceSystemDB;->setTPhoneEnabled(I)V

    invoke-direct {p0, v10}, Lcom/android/phone/callsettings/GeneralSettingFragment;->updateCallSettingsByCarrier(I)V

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v7, "com.skt.prod.dialer.CHANGE_TPHONE_MODE_SETTING"

    invoke-direct {v1, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v7}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1
.end method

.method private commitPrefixSettingForDCMDialer(Ljava/lang/String;)V
    .locals 6

    const/4 v5, 0x1

    iget-object v2, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "network_service_settings"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

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

.method private goAdditionalCallOptions()V
    .locals 5

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "com.android.phone"

    const-string/jumbo v3, "com.android.phone.GsmUmtsAdditionalCallOptions"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    iget-object v2, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v2, "GeneralSettingFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startActivityForResult() failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private initDropDownPhoneAppMode()V
    .locals 8

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mPhoneAppMode:Lcom/android/phone/DropDownPreference;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mPhoneAppMode:Lcom/android/phone/DropDownPreference;

    invoke-virtual {v4}, Lcom/android/phone/DropDownPreference;->clearItems()V

    iget-object v4, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0900a6

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0900a5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->phoneAppModeEntry:[Ljava/lang/String;

    const-string/jumbo v4, "support_safetycare"

    invoke-static {v4}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/android/phone/TeleServiceSystemDB;->isEmergencyMode()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mPhoneAppMode:Lcom/android/phone/DropDownPreference;

    invoke-virtual {v4, v3}, Lcom/android/phone/DropDownPreference;->setEnabled(Z)V

    :cond_0
    const/4 v0, 0x0

    array-length v4, v1

    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v2, v1, v3

    iget-object v5, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mPhoneAppMode:Lcom/android/phone/DropDownPreference;

    iget-object v6, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->phoneAppModeEntry:[Ljava/lang/String;

    aget-object v6, v6, v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/android/phone/DropDownPreference;->addItem(Ljava/lang/String;Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mPhoneAppMode:Lcom/android/phone/DropDownPreference;

    new-instance v4, Lcom/android/phone/callsettings/GeneralSettingFragment$7;

    invoke-direct {v4, p0}, Lcom/android/phone/callsettings/GeneralSettingFragment$7;-><init>(Lcom/android/phone/callsettings/GeneralSettingFragment;)V

    invoke-virtual {v3, v4}, Lcom/android/phone/DropDownPreference;->setCallback(Lcom/android/phone/DropDownPreference$Callback;)V

    :cond_2
    return-void
.end method

.method private setImsUtDialogFinishTimer()V
    .locals 4

    iget-object v0, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mImsUtHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x2710

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private setSKTHDVoiceEnable()V
    .locals 2

    invoke-static {}, Lcom/android/phone/PhoneUtils;->isRoamingArea()Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "support_uicc_mobility"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/phone/PhoneUtils;->isLGTSIM()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/phone/PhoneUtils;->isKTSIM()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mSKTHDVoice:Landroid/preference/PreferenceScreen;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    :cond_1
    return-void
.end method

.method private startImsUtMobileConnection()I
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "connectivity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    :try_start_0
    const-string/jumbo v3, "enableIMSUT"

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v3}, Landroid/net/ConnectivityManager;->startUsingNetworkFeature(ILjava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :goto_0
    const-string/jumbo v3, "GeneralSettingFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "startUsingNetworkFeature result:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v6}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;Z)I

    packed-switch v2, :pswitch_data_0

    iget-object v3, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mActivity:Landroid/app/Activity;

    const v4, 0x7f0d07d4

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    invoke-direct {p0}, Lcom/android/phone/callsettings/GeneralSettingFragment;->goAdditionalCallOptions()V

    const-string/jumbo v3, "GeneralSettingFragment"

    const-string/jumbo v4, "startUsingNetworkFeature fail new"

    invoke-static {v3, v4, v6}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    :goto_1
    return v2

    :catch_0
    move-exception v0

    const-string/jumbo v3, "GeneralSettingFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "connection exception :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v6}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    goto :goto_0

    :pswitch_0
    invoke-direct {p0}, Lcom/android/phone/callsettings/GeneralSettingFragment;->goAdditionalCallOptions()V

    goto :goto_1

    :pswitch_1
    new-instance v3, Landroid/app/ProgressDialog;

    iget-object v4, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v3, v4}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mImsUtdialog:Landroid/app/ProgressDialog;

    iget-object v3, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mImsUtdialog:Landroid/app/ProgressDialog;

    const v4, 0x7f0d038c

    invoke-virtual {p0, v4}, Lcom/android/phone/callsettings/GeneralSettingFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mImsUtdialog:Landroid/app/ProgressDialog;

    invoke-virtual {v3, v6}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    iget-object v3, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mImsUtdialog:Landroid/app/ProgressDialog;

    invoke-virtual {v3, v7}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    iget-object v3, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mImsUtdialog:Landroid/app/ProgressDialog;

    const v4, 0x7f0d038f

    invoke-virtual {p0, v4}, Lcom/android/phone/callsettings/GeneralSettingFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/android/phone/callsettings/GeneralSettingFragment;->setImsUtDialogFinishTimer()V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateAutoAreaCodeOnOff(Ljava/lang/String;)V
    .locals 7

    const/4 v3, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_1

    const/4 v1, 0x1

    :goto_0
    const-string/jumbo v0, "area_code_enabled"

    if-eqz v1, :cond_0

    move v2, v3

    :cond_0
    invoke-static {v0, v2}, Lcom/android/phone/TeleServiceSystemDB;->setSettingDB(Ljava/lang/String;I)V

    const-string/jumbo v4, "GeneralSettingFragment"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateAutoAreaCodeOnOff : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    return-void

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private updateCHNSetting()V
    .locals 9

    const/4 v4, 0x0

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mHoldRecord:Landroid/preference/SwitchPreference;

    if-eqz v6, :cond_0

    const-string/jumbo v6, "hold_key_record_calls_enable_sharedpref"

    invoke-static {v6, v4}, Lcom/android/phone/TeleServiceSystemDB;->getSettingDB(Ljava/lang/String;I)I

    move-result v6

    if-nez v6, :cond_4

    const/4 v0, 0x0

    :goto_0
    const-string/jumbo v6, "GeneralSettingFragment"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "updateHoldKeyRecordCalls : isOn - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v5}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    iget-object v6, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mHoldRecord:Landroid/preference/SwitchPreference;

    invoke-virtual {v6, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :cond_0
    iget-object v6, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mPhoneNumberLocator:Landroid/preference/PreferenceScreen;

    if-eqz v6, :cond_1

    const-string/jumbo v6, "number_region_activation_preference"

    const-string/jumbo v7, "phone_number_locator_tencent"

    invoke-static {v7}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    :goto_1
    invoke-static {v6, v4}, Lcom/android/phone/TeleServiceSystemDB;->getSettingDB(Ljava/lang/String;I)I

    move-result v1

    const-string/jumbo v4, "GeneralSettingFragment"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "PNL : numberRegionActivited - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6, v5}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    iget-object v6, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mPhoneNumberLocator:Landroid/preference/PreferenceScreen;

    if-ne v1, v5, :cond_6

    iget-object v4, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v7, 0x7f0d0c3a

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    :goto_2
    invoke-virtual {v6, v4}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mPhoneNumberLocator:Landroid/preference/PreferenceScreen;

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    :cond_1
    iget-object v4, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mVisualCallCenter:Landroid/preference/PreferenceScreen;

    if-eqz v4, :cond_2

    const-string/jumbo v4, "visual_call_status"

    invoke-static {v4, v5}, Lcom/android/phone/TeleServiceSystemDB;->getSettingDB(Ljava/lang/String;I)I

    move-result v3

    iget-object v6, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mVisualCallCenter:Landroid/preference/PreferenceScreen;

    if-ne v3, v5, :cond_7

    iget-object v4, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v7, 0x7f0d0c8a

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    :goto_3
    invoke-virtual {v6, v4}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mVisualCallCenter:Landroid/preference/PreferenceScreen;

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    :cond_2
    iget-object v4, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mMuteFirstRing:Landroid/preference/SwitchPreference;

    if-eqz v4, :cond_3

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v6, "spam_call_mute_first_ring"

    invoke-static {v4, v6, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v5, :cond_8

    const/4 v2, 0x1

    :goto_4
    const-string/jumbo v4, "GeneralSettingFragment"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "updateMuteFirstRing : updateValue - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6, v5}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    iget-object v4, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mMuteFirstRing:Landroid/preference/SwitchPreference;

    invoke-virtual {v4, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :cond_3
    return-void

    :cond_4
    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_5
    move v4, v5

    goto/16 :goto_1

    :cond_6
    iget-object v4, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v7, 0x7f0d0c3b

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_7
    iget-object v4, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v7, 0x7f0d0c8b

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    :cond_8
    const/4 v2, 0x0

    goto :goto_4
.end method

.method private updateCallPopupSetting()V
    .locals 5

    const/4 v4, 0x1

    iget-object v1, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "call_popup"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v4, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string/jumbo v1, "GeneralSettingFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updatePhoneSetting callPopup - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    iget-object v1, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mButtonPopupWindow:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateCallSettingsByCarrier(I)V
    .locals 9

    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string/jumbo v4, "GeneralSettingFragment"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "updateCallSettingsByCarrier :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-lez p1, :cond_8

    const/4 v1, 0x1

    :goto_0
    iget-object v4, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mCallBlock:Landroid/preference/PreferenceScreen;

    if-eqz v4, :cond_1

    iget-object v7, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mCallBlock:Landroid/preference/PreferenceScreen;

    invoke-static {}, Lcom/android/phone/PhoneUtils;->isAirplaneModeOn()Z

    move-result v4

    if-nez v4, :cond_0

    if-eqz v1, :cond_9

    :cond_0
    move v4, v5

    :goto_1
    invoke-virtual {v7, v4}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    :cond_1
    iget-object v4, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mBlockNumber:Landroid/preference/PreferenceScreen;

    if-eqz v4, :cond_3

    iget-object v7, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mBlockNumber:Landroid/preference/PreferenceScreen;

    invoke-static {}, Lcom/android/phone/PhoneUtils;->isAirplaneModeOn()Z

    move-result v4

    if-nez v4, :cond_2

    if-eqz v1, :cond_a

    :cond_2
    move v4, v5

    :goto_2
    invoke-virtual {v7, v4}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    :cond_3
    iget-object v4, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mRecordSetting:Landroid/preference/PreferenceScreen;

    if-eqz v4, :cond_5

    iget-object v7, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mRecordSetting:Landroid/preference/PreferenceScreen;

    invoke-static {}, Lcom/android/phone/PhoneUtils;->isAirplaneModeOn()Z

    move-result v4

    if-nez v4, :cond_4

    if-eqz v1, :cond_b

    :cond_4
    move v4, v5

    :goto_3
    invoke-virtual {v7, v4}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    :cond_5
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v4

    iget-object v4, v4, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v3, v4, :cond_c

    const/4 v0, 0x1

    :goto_4
    invoke-static {}, Lcom/android/phone/PhoneUtils;->isRoamingArea()Z

    move-result v2

    const-string/jumbo v4, "GeneralSettingFragment"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Phone isCalling : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " isRoaming :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mPhoneAppMode:Lcom/android/phone/DropDownPreference;

    if-eqz v4, :cond_7

    const-string/jumbo v4, "support_safetycare"

    invoke-static {v4}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-static {}, Lcom/android/phone/TeleServiceSystemDB;->isEmergencyMode()Z

    move-result v4

    if-eqz v4, :cond_d

    iget-object v4, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mPhoneAppMode:Lcom/android/phone/DropDownPreference;

    invoke-virtual {v4, v5}, Lcom/android/phone/DropDownPreference;->setEnabled(Z)V

    :cond_6
    :goto_5
    iget-object v4, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mPhoneAppMode:Lcom/android/phone/DropDownPreference;

    iget-object v5, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->phoneAppModeEntry:[Ljava/lang/String;

    aget-object v5, v5, p1

    invoke-virtual {v4, v5}, Lcom/android/phone/DropDownPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mPhoneAppMode:Lcom/android/phone/DropDownPreference;

    invoke-virtual {v4, v6}, Lcom/android/phone/DropDownPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    :cond_7
    return-void

    :cond_8
    const/4 v1, 0x0

    goto/16 :goto_0

    :cond_9
    move v4, v6

    goto/16 :goto_1

    :cond_a
    move v4, v6

    goto :goto_2

    :cond_b
    move v4, v6

    goto :goto_3

    :cond_c
    const/4 v0, 0x0

    goto :goto_4

    :cond_d
    invoke-static {}, Lcom/android/phone/PhoneUtils;->isAirplaneModeOn()Z

    move-result v4

    if-eqz v4, :cond_e

    iget-object v4, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mPhoneAppMode:Lcom/android/phone/DropDownPreference;

    invoke-virtual {v4, v5}, Lcom/android/phone/DropDownPreference;->setEnabled(Z)V

    goto :goto_5

    :cond_e
    const-string/jumbo v4, "support_tphone"

    invoke-static {v4}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mPhoneAppMode:Lcom/android/phone/DropDownPreference;

    if-eqz v0, :cond_f

    :goto_6
    invoke-virtual {v4, v5}, Lcom/android/phone/DropDownPreference;->setEnabled(Z)V

    goto :goto_5

    :cond_f
    move v5, v6

    goto :goto_6
.end method

.method private updateCommonSetting()V
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mVoLTESetting:Landroid/preference/ListPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v3, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mVoLTESetting:Landroid/preference/ListPreference;

    invoke-static {v0, v3}, Lcom/android/phone/utils/GeneralSettingUtils;->updateVoLTESetting(Landroid/content/Context;Landroid/preference/ListPreference;)V

    :cond_0
    iget-object v0, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mVoLTENoti:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mVoLTENoti:Landroid/preference/SwitchPreference;

    const-string/jumbo v0, "volte_noti_settings"

    invoke-static {v0, v2}, Lcom/android/phone/TeleServiceSystemDB;->getSettingDB(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_9

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :cond_1
    iget-object v0, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mCallerInfo:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/phone/PhoneUtils;->isAirplaneModeOn()Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mVoiceProtect:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mVoiceProtect:Landroid/preference/SwitchPreference;

    const-string/jumbo v3, "enable_call_protect_when_calling"

    invoke-static {v3, v1}, Lcom/android/phone/TeleServiceSystemDB;->getSettingDB(Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_b

    :goto_2
    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :cond_3
    iget-object v0, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mSmartCall:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/android/phone/callsettings/GeneralSettingFragment;->updateSmartCall()V

    :cond_4
    iget-object v0, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mRecordSetting:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lcom/android/phone/callsettings/GeneralSettingFragment;->updateRecordSetting()V

    :cond_5
    iget-object v0, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mMoreSetting:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_6

    invoke-direct {p0}, Lcom/android/phone/callsettings/GeneralSettingFragment;->updateMoreSetting()V

    :cond_6
    iget-object v0, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mRoamingAssistance:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_7

    invoke-direct {p0}, Lcom/android/phone/callsettings/GeneralSettingFragment;->updateRoamingAssistanceSetting()V

    :cond_7
    iget-object v0, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mButtonPopupWindow:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_8

    invoke-direct {p0}, Lcom/android/phone/callsettings/GeneralSettingFragment;->updateCallPopupSetting()V

    :cond_8
    return-void

    :cond_9
    move v0, v2

    goto :goto_0

    :cond_a
    iget-object v0, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mCallerInfo:Landroid/preference/SwitchPreference;

    invoke-static {}, Lcom/android/phone/TeleServiceSystemDB;->isCallerInfoCardMode()Z

    move-result v3

    invoke-virtual {v0, v3}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_1

    :cond_b
    move v1, v2

    goto :goto_2
.end method

.method private updateJPNSetting()V
    .locals 5

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-object v3, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mAnsweringMemo:Landroid/preference/PreferenceScreen;

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/android/phone/TeleServiceSystemDB;->isEmergencyMode()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mAnsweringMemo:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3, v2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    :cond_0
    iget-object v3, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mCallerId:Landroid/preference/SwitchPreference;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mCallerId:Landroid/preference/SwitchPreference;

    const-string/jumbo v4, "button_clir_key"

    invoke-static {v4, v1}, Lcom/android/phone/TeleServiceSystemDB;->getSettingDB(Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v1, :cond_3

    :goto_0
    invoke-virtual {v3, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :cond_1
    iget-object v1, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mAutoArea:Landroid/preference/EditTextPreference;

    if-eqz v1, :cond_2

    const/4 v0, 0x0

    const-string/jumbo v1, "area_code_value"

    invoke-static {v1}, Lcom/android/phone/TeleServiceSystemDB;->getSettingDB(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/callsettings/GeneralSettingFragment;->updateSummaryAutoAreaCode(Ljava/lang/String;)V

    :cond_2
    return-void

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method private updateKORSetting()V
    .locals 10

    const/4 v5, 0x0

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mPhoneAppMode:Lcom/android/phone/DropDownPreference;

    if-eqz v7, :cond_0

    invoke-static {}, Lcom/android/phone/TeleServiceSystemDB;->isTPhoneEnabled()Z

    move-result v7

    if-eqz v7, :cond_5

    const/4 v3, 0x1

    :goto_0
    iget-object v7, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mPhoneAppMode:Lcom/android/phone/DropDownPreference;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/phone/DropDownPreference;->setSelectedValue(Ljava/lang/Object;)V

    invoke-direct {p0, v3}, Lcom/android/phone/callsettings/GeneralSettingFragment;->updateCallSettingsByCarrier(I)V

    :cond_0
    iget-object v7, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mInstantLetter:Landroid/preference/PreferenceScreen;

    if-eqz v7, :cond_1

    invoke-static {}, Lcom/android/phone/PhoneUtils;->isAirplaneModeOn()Z

    move-result v7

    if-eqz v7, :cond_6

    :cond_1
    :goto_1
    iget-object v7, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mKTOneLine:Landroid/preference/ListPreference;

    if-eqz v7, :cond_2

    const-string/jumbo v7, "oneline_greeting"

    invoke-static {v7, v6}, Lcom/android/phone/TeleServiceSystemDB;->getSettingDB(Ljava/lang/String;I)I

    move-result v2

    const-string/jumbo v7, "GeneralSettingFragment"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "KT oneline_greeting : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mKTOneLine:Landroid/preference/ListPreference;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    :cond_2
    iget-object v7, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mPersonalSound:Landroid/preference/SwitchPreference;

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v7}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "personalise_call_sound_soft"

    invoke-static {v7, v8, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v6, :cond_8

    const/4 v1, 0x1

    :goto_2
    iget-object v7, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mPersonalSound:Landroid/preference/SwitchPreference;

    invoke-virtual {v7, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :cond_3
    iget-object v7, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mKTAdditionalSvc:Landroid/preference/PreferenceScreen;

    if-eqz v7, :cond_4

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v7

    iget-object v7, v7, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v7}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v4

    sget-object v7, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v4, v7, :cond_9

    const/4 v0, 0x1

    :goto_3
    const-string/jumbo v7, "GeneralSettingFragment"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "mKTAdditionalSvc isCalling :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mKTAdditionalSvc:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_a

    :goto_4
    invoke-virtual {v7, v5}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    :cond_4
    return-void

    :cond_5
    const/4 v3, 0x0

    goto/16 :goto_0

    :cond_6
    invoke-static {}, Lcom/android/phone/utils/GeneralSettingUtils;->getVoiceCallTypeValue()I

    move-result v7

    if-ne v7, v6, :cond_7

    iget-object v7, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mInstantLetter:Landroid/preference/PreferenceScreen;

    invoke-virtual {v7, v5}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto/16 :goto_1

    :cond_7
    iget-object v7, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mInstantLetter:Landroid/preference/PreferenceScreen;

    invoke-virtual {v7, v6}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto/16 :goto_1

    :cond_8
    const/4 v1, 0x0

    goto :goto_2

    :cond_9
    const/4 v0, 0x0

    goto :goto_3

    :cond_a
    move v5, v6

    goto :goto_4
.end method

.method private updateMoreSetting()V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {}, Lcom/android/phone/PhoneUtilsCommon;->isSupportVoLTE()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "vzw_volte_ui"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "att_volte_ui"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mMoreSetting:Landroid/preference/PreferenceScreen;

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/phone/PhoneUtils;->isAirplaneModeOn()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/android/phone/PhoneUtils;->isIdleSecIms()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mMoreSetting:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    :goto_1
    const-string/jumbo v2, "tmo_volte_ui"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v2, "mpcs_volte_ui"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v2, "canada_volte_ui"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    const-string/jumbo v2, "GeneralSettingFragment"

    const-string/jumbo v3, "check VoLTE call to enable/disable additional setting"

    invoke-static {v2, v3, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    iget-object v2, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mMoreSetting:Landroid/preference/PreferenceScreen;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v3

    iget-object v3, v3, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v3}, Lcom/android/phone/PhoneUtilsCommon;->isOnVoLTECall(Lcom/android/internal/telephony/CallManager;)Z

    move-result v3

    if-eqz v3, :cond_4

    :goto_2
    invoke-virtual {v2, v0}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mMoreSetting:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_2
.end method

.method private updateRecordSetting()V
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mRecordSetting:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "record_calls_automatically_on_off"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/phone/TeleServiceSystemDB;->getSettingDB(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mRecordSetting:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0c85

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v0, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mRecordSetting:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mRecordSetting:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0c86

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updateRoamingAssistanceSetting()V
    .locals 5

    const-string/jumbo v2, "roaming_assistance_setting"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/phone/TeleServiceSystemDB;->getSettingDB(Ljava/lang/String;I)I

    move-result v1

    const v2, 0x7f0d0668

    const v3, 0x7f0d066a

    const v4, 0x7f0d066b

    filled-new-array {v2, v3, v4}, [I

    move-result-object v0

    iget-object v2, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mRoamingAssistance:Landroid/preference/PreferenceScreen;

    aget v3, v0, v1

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    iget-object v2, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mRoamingAssistance:Landroid/preference/PreferenceScreen;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    return-void
.end method

.method private updateSmartCall()V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string/jumbo v3, "GeneralSettingFragment"

    const-string/jumbo v4, "updateSmartCall"

    invoke-static {v3, v4, v6}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    const-string/jumbo v3, "support_smart_call"

    invoke-static {v3}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->isAbsentSimState(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "spam_call_enable"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v3, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mSmartCall:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3, v5}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "spam_call_enable"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const-string/jumbo v3, "GeneralSettingFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "SmartCallSettings : smartCallEnabled - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v6}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    iget-object v4, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mSmartCall:Landroid/preference/PreferenceScreen;

    if-ne v2, v6, :cond_5

    iget-object v3, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f0d0c3a

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-virtual {v4, v3}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mSmartCall:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3, v6}, Landroid/preference/PreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    return-void

    :cond_1
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "smart_call_roaming_backup"

    invoke-static {v3, v5}, Lcom/android/phone/TeleServiceSystemDB;->getSettingDB(Ljava/lang/String;I)I

    move-result v0

    iget-object v3, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "spam_call_enable"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const-string/jumbo v3, "support_smart_call_mcc"

    invoke-static {v3}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {}, Lcom/android/phone/PhoneUtilsCommon;->isSupportMccSmartCall()Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_2
    if-eq v0, v1, :cond_3

    iget-object v3, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "spam_call_enable"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_3
    iget-object v3, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mSmartCall:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3, v6}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto/16 :goto_0

    :cond_4
    iget-object v3, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "spam_call_enable"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v3, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mSmartCall:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3, v5}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto/16 :goto_0

    :cond_5
    iget-object v3, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f0d0c3b

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1
.end method

.method private updateSummaryAutoAreaCode(Ljava/lang/String;)V
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_1

    const/4 v1, 0x1

    :goto_0
    const-string/jumbo v4, "GeneralSettingFragment"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateSummaryAutoAreaCode : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v8}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    if-eqz v1, :cond_2

    new-array v0, v8, [Ljava/lang/String;

    const-string/jumbo v4, "%d"

    aput-object v4, v0, v7

    new-array v2, v8, [Ljava/lang/String;

    aput-object p1, v2, v7

    iget-object v4, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d0600

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4, v0, v2}, Landroid/text/TextUtils;->replace(Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mAutoArea:Landroid/preference/EditTextPreference;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mAutoArea:Landroid/preference/EditTextPreference;

    invoke-virtual {v4, v3}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mAutoArea:Landroid/preference/EditTextPreference;

    invoke-virtual {v4, p1}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mAutoArea:Landroid/preference/EditTextPreference;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mAutoArea:Landroid/preference/EditTextPreference;

    const v5, 0x7f0d0601

    invoke-virtual {v4, v5}, Landroid/preference/EditTextPreference;->setSummary(I)V

    iget-object v4, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mAutoArea:Landroid/preference/EditTextPreference;

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private updateUSASetting()V
    .locals 4

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mTMOVoLTESetting:Landroid/preference/SwitchPreference;

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/android/phone/PhoneUtilsCommon;->isSupportVoLTE()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mTMOVoLTESetting:Landroid/preference/SwitchPreference;

    invoke-static {}, Lcom/android/phone/utils/GeneralSettingUtils;->getVoiceCallTypeValue()I

    move-result v3

    if-nez v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-virtual {v2, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v1}, Lcom/android/phone/PhoneUtilsCommon;->isOnVoLTECall(Lcom/android/internal/telephony/CallManager;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneUtilsCommon;->isEPSonly(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mTMOVoLTESetting:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v0}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    :cond_1
    iget-object v1, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mWFCSwitchHolder:Lcom/samsung/tmowfc/wfcutils/WfcSwitchPreference;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mWFCSwitchHolder:Lcom/samsung/tmowfc/wfcutils/WfcSwitchPreference;

    invoke-virtual {v1}, Lcom/samsung/tmowfc/wfcutils/WfcSwitchPreference;->onResume()V

    :cond_2
    return-void

    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateVoiceCallTypeForJansky(Z)V
    .locals 5

    const/4 v1, 0x0

    const-string/jumbo v2, "GeneralSettingFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateVoiceCallTypeForJansky : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mTMOVoLTESetting:Landroid/preference/SwitchPreference;

    if-eqz v2, :cond_0

    if-eqz p1, :cond_1

    const-string/jumbo v1, "GeneralSettingFragment"

    const-string/jumbo v2, "updateVoiceCallTypeForJansky - remove"

    invoke-static {v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mPrefCategory:Landroid/preference/PreferenceCategory;

    iget-object v2, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mTMOVoLTESetting:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v2, "GeneralSettingFragment"

    const-string/jumbo v3, "updateVoiceCallTypeForJansky - add"

    invoke-static {v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mPrefCategory:Landroid/preference/PreferenceCategory;

    iget-object v3, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mTMOVoLTESetting:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    iget-object v2, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mTMOVoLTESetting:Landroid/preference/SwitchPreference;

    invoke-static {}, Lcom/android/phone/utils/GeneralSettingUtils;->getVoiceCallTypeValue()I

    move-result v3

    if-nez v3, :cond_2

    const/4 v1, 0x1

    :cond_2
    invoke-virtual {v2, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v1}, Lcom/android/phone/PhoneUtilsCommon;->isOnVoLTECall(Lcom/android/internal/telephony/CallManager;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneUtilsCommon;->isEPSonly(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mTMOVoLTESetting:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v0}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method protected initCHNSetting()V
    .locals 4

    const/4 v3, 0x0

    invoke-static {}, Lcom/android/phone/callsettings/GeneralSettingManager;->getInstance()Lcom/android/phone/callsettings/GeneralSettingManager;

    iget-object v0, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mPrefCategory:Landroid/preference/PreferenceCategory;

    const-string/jumbo v1, "button_hold_key_record_calls_key"

    sget-object v2, Lcom/android/phone/callsettings/CallsettingsConstants;->SwitchPreference:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/android/phone/callsettings/GeneralSettingManager;->findPreference(Landroid/preference/PreferenceCategory;Ljava/lang/String;Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mHoldRecord:Landroid/preference/SwitchPreference;

    iget-object v0, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mHoldRecord:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mHoldRecord:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_0
    invoke-static {}, Lcom/android/phone/callsettings/GeneralSettingManager;->getInstance()Lcom/android/phone/callsettings/GeneralSettingManager;

    iget-object v0, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mPrefCategory:Landroid/preference/PreferenceCategory;

    const-string/jumbo v1, "numberregion_list_preference"

    invoke-static {v0, v1, v3}, Lcom/android/phone/callsettings/GeneralSettingManager;->findPreference(Landroid/preference/PreferenceCategory;Ljava/lang/String;Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mPhoneNumberLocator:Landroid/preference/PreferenceScreen;

    invoke-static {}, Lcom/android/phone/callsettings/GeneralSettingManager;->getInstance()Lcom/android/phone/callsettings/GeneralSettingManager;

    iget-object v0, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mPrefCategory:Landroid/preference/PreferenceCategory;

    const-string/jumbo v1, "visual_call_callsetting"

    invoke-static {v0, v1, v3}, Lcom/android/phone/callsettings/GeneralSettingManager;->findPreference(Landroid/preference/PreferenceCategory;Ljava/lang/String;Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mVisualCallCenter:Landroid/preference/PreferenceScreen;

    iget-object v0, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mVisualCallCenter:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_1

    const-string/jumbo v0, "smart_ivr_callerid_info"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mVisualCallCenter:Landroid/preference/PreferenceScreen;

    const v1, 0x7f0d0cf8

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setTitle(I)V

    :cond_1
    invoke-static {}, Lcom/android/phone/callsettings/GeneralSettingManager;->getInstance()Lcom/android/phone/callsettings/GeneralSettingManager;

    iget-object v0, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mPrefCategory:Landroid/preference/PreferenceCategory;

    const-string/jumbo v1, "button_mute_first_ring"

    sget-object v2, Lcom/android/phone/callsettings/CallsettingsConstants;->SwitchPreference:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/android/phone/callsettings/GeneralSettingManager;->findPreference(Landroid/preference/PreferenceCategory;Ljava/lang/String;Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mMuteFirstRing:Landroid/preference/SwitchPreference;

    iget-object v0, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mMuteFirstRing:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mMuteFirstRing:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_2
    return-void
.end method

.method protected initCommonSetting()V
    .locals 4

    const/4 v3, 0x0

    invoke-static {}, Lcom/android/phone/callsettings/GeneralSettingManager;->getInstance()Lcom/android/phone/callsettings/GeneralSettingManager;

    iget-object v0, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mPrefCategory:Landroid/preference/PreferenceCategory;

    const-string/jumbo v1, "button_call_rejection_key"

    invoke-static {v0, v1, v3}, Lcom/android/phone/callsettings/GeneralSettingManager;->findPreference(Landroid/preference/PreferenceCategory;Ljava/lang/String;Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mCallBlock:Landroid/preference/PreferenceScreen;

    invoke-static {}, Lcom/android/phone/callsettings/GeneralSettingManager;->getInstance()Lcom/android/phone/callsettings/GeneralSettingManager;

    iget-object v0, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mPrefCategory:Landroid/preference/PreferenceCategory;

    const-string/jumbo v1, "black_list_preference"

    invoke-static {v0, v1, v3}, Lcom/android/phone/callsettings/GeneralSettingManager;->findPreference(Landroid/preference/PreferenceCategory;Ljava/lang/String;Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mBlockNumber:Landroid/preference/PreferenceScreen;

    invoke-static {}, Lcom/android/phone/callsettings/GeneralSettingManager;->getInstance()Lcom/android/phone/callsettings/GeneralSettingManager;

    iget-object v0, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mPrefCategory:Landroid/preference/PreferenceCategory;

    const-string/jumbo v1, "voicecall_type"

    sget-object v2, Lcom/android/phone/callsettings/CallsettingsConstants;->ListPreference:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/android/phone/callsettings/GeneralSettingManager;->findPreference(Landroid/preference/PreferenceCategory;Ljava/lang/String;Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mVoLTESetting:Landroid/preference/ListPreference;

    iget-object v0, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mVoLTESetting:Landroid/preference/ListPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mVoLTESetting:Landroid/preference/ListPreference;

    invoke-static {v0, v1}, Lcom/android/phone/utils/GeneralSettingUtils;->initVoLTESetting(Landroid/content/Context;Landroid/preference/ListPreference;)V

    iget-object v0, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mVoLTESetting:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_0
    invoke-static {}, Lcom/android/phone/callsettings/GeneralSettingManager;->getInstance()Lcom/android/phone/callsettings/GeneralSettingManager;

    iget-object v0, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mPrefCategory:Landroid/preference/PreferenceCategory;

    const-string/jumbo v1, "meterial_volte_noti_preference"

    sget-object v2, Lcom/android/phone/callsettings/CallsettingsConstants;->SwitchPreference:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/android/phone/callsettings/GeneralSettingManager;->findPreference(Landroid/preference/PreferenceCategory;Ljava/lang/String;Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mVoLTENoti:Landroid/preference/SwitchPreference;

    iget-object v0, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mVoLTENoti:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mVoLTENoti:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v1, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mVoLTENoti:Landroid/preference/SwitchPreference;

    invoke-static {}, Lcom/android/phone/TelephonyConfig;->isSKTSIM()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    :cond_1
    invoke-static {}, Lcom/android/phone/callsettings/GeneralSettingManager;->getInstance()Lcom/android/phone/callsettings/GeneralSettingManager;

    iget-object v0, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mPrefCategory:Landroid/preference/PreferenceCategory;

    const-string/jumbo v1, "call_answer_preference"

    invoke-static {v0, v1, v3}, Lcom/android/phone/callsettings/GeneralSettingManager;->findPreference(Landroid/preference/PreferenceCategory;Ljava/lang/String;Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mAnsweringCall:Landroid/preference/PreferenceScreen;

    iget-object v0, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mAnsweringCall:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_3

    const-string/jumbo v0, "hold_key_call_recording"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "support_folder_hardkey"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mAnsweringCall:Landroid/preference/PreferenceScreen;

    const v1, 0x7f0d05cb

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setTitle(I)V

    :cond_3
    invoke-static {}, Lcom/android/phone/callsettings/GeneralSettingManager;->getInstance()Lcom/android/phone/callsettings/GeneralSettingManager;

    iget-object v0, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mPrefCategory:Landroid/preference/PreferenceCategory;

    const-string/jumbo v1, "material_caller_info_card_preference_key"

    sget-object v2, Lcom/android/phone/callsettings/CallsettingsConstants;->SwitchPreference:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/android/phone/callsettings/GeneralSettingManager;->findPreference(Landroid/preference/PreferenceCategory;Ljava/lang/String;Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mCallerInfo:Landroid/preference/SwitchPreference;

    iget-object v0, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mCallerInfo:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mCallerInfo:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_4
    invoke-static {}, Lcom/android/phone/callsettings/GeneralSettingManager;->getInstance()Lcom/android/phone/callsettings/GeneralSettingManager;

    iget-object v0, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mPrefCategory:Landroid/preference/PreferenceCategory;

    const-string/jumbo v1, "meterial_voicecall_protection_preference"

    sget-object v2, Lcom/android/phone/callsettings/CallsettingsConstants;->SwitchPreference:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/android/phone/callsettings/GeneralSettingManager;->findPreference(Landroid/preference/PreferenceCategory;Ljava/lang/String;Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mVoiceProtect:Landroid/preference/SwitchPreference;

    iget-object v0, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mVoiceProtect:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mVoiceProtect:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_5
    invoke-static {}, Lcom/android/phone/callsettings/GeneralSettingManager;->getInstance()Lcom/android/phone/callsettings/GeneralSettingManager;

    iget-object v0, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mPrefCategory:Landroid/preference/PreferenceCategory;

    const-string/jumbo v1, "spam_call_setting"

    invoke-static {v0, v1, v3}, Lcom/android/phone/callsettings/GeneralSettingManager;->findPreference(Landroid/preference/PreferenceCategory;Ljava/lang/String;Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mSmartCall:Landroid/preference/PreferenceScreen;

    invoke-static {}, Lcom/android/phone/callsettings/GeneralSettingManager;->getInstance()Lcom/android/phone/callsettings/GeneralSettingManager;

    iget-object v0, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mPrefCategory:Landroid/preference/PreferenceCategory;

    const-string/jumbo v1, "record_calls_menu_key"

    invoke-static {v0, v1, v3}, Lcom/android/phone/callsettings/GeneralSettingManager;->findPreference(Landroid/preference/PreferenceCategory;Ljava/lang/String;Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mRecordSetting:Landroid/preference/PreferenceScreen;

    iget-object v0, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mRecordSetting:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mRecordSetting:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, p0}, Landroid/preference/PreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_6
    invoke-static {}, Lcom/android/phone/callsettings/GeneralSettingManager;->getInstance()Lcom/android/phone/callsettings/GeneralSettingManager;

    iget-object v0, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mPrefCategory:Landroid/preference/PreferenceCategory;

    const-string/jumbo v1, "button_more_expand_key"

    invoke-static {v0, v1, v3}, Lcom/android/phone/callsettings/GeneralSettingManager;->findPreference(Landroid/preference/PreferenceCategory;Ljava/lang/String;Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mMoreSetting:Landroid/preference/PreferenceScreen;

    invoke-static {}, Lcom/android/phone/callsettings/GeneralSettingManager;->getInstance()Lcom/android/phone/callsettings/GeneralSettingManager;

    iget-object v0, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mPrefCategory:Landroid/preference/PreferenceCategory;

    const-string/jumbo v1, "roaming_assistance_setting_key"

    invoke-static {v0, v1, v3}, Lcom/android/phone/callsettings/GeneralSettingManager;->findPreference(Landroid/preference/PreferenceCategory;Ljava/lang/String;Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mRoamingAssistance:Landroid/preference/PreferenceScreen;

    invoke-static {}, Lcom/android/phone/callsettings/GeneralSettingManager;->getInstance()Lcom/android/phone/callsettings/GeneralSettingManager;

    iget-object v0, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mPrefCategory:Landroid/preference/PreferenceCategory;

    const-string/jumbo v1, "button_call_popup_key"

    sget-object v2, Lcom/android/phone/callsettings/CallsettingsConstants;->SwitchPreference:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/android/phone/callsettings/GeneralSettingManager;->findPreference(Landroid/preference/PreferenceCategory;Ljava/lang/String;Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mButtonPopupWindow:Landroid/preference/SwitchPreference;

    iget-object v0, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mButtonPopupWindow:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mButtonPopupWindow:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_7
    return-void

    :cond_8
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method protected initJPNSetting()V
    .locals 3

    const/4 v2, 0x0

    invoke-static {}, Lcom/android/phone/callsettings/GeneralSettingManager;->getInstance()Lcom/android/phone/callsettings/GeneralSettingManager;

    iget-object v0, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mPrefCategory:Landroid/preference/PreferenceCategory;

    const-string/jumbo v1, "button_ans_memo_key"

    invoke-static {v0, v1, v2}, Lcom/android/phone/callsettings/GeneralSettingManager;->findPreference(Landroid/preference/PreferenceCategory;Ljava/lang/String;Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mAnsweringMemo:Landroid/preference/PreferenceScreen;

    invoke-static {}, Lcom/android/phone/callsettings/GeneralSettingManager;->getInstance()Lcom/android/phone/callsettings/GeneralSettingManager;

    iget-object v0, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mPrefCategory:Landroid/preference/PreferenceCategory;

    const-string/jumbo v1, "switch_clir_key"

    sget-object v2, Lcom/android/phone/callsettings/CallsettingsConstants;->SwitchPreference:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/android/phone/callsettings/GeneralSettingManager;->findPreference(Landroid/preference/PreferenceCategory;Ljava/lang/String;Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mCallerId:Landroid/preference/SwitchPreference;

    iget-object v0, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mCallerId:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mCallerId:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_0
    invoke-static {}, Lcom/android/phone/callsettings/GeneralSettingManager;->getInstance()Lcom/android/phone/callsettings/GeneralSettingManager;

    iget-object v0, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mPrefCategory:Landroid/preference/PreferenceCategory;

    const-string/jumbo v1, "button_autoarea_key"

    sget-object v2, Lcom/android/phone/callsettings/CallsettingsConstants;->EditTextPreference:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/android/phone/callsettings/GeneralSettingManager;->findPreference(Landroid/preference/PreferenceCategory;Ljava/lang/String;Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/EditTextPreference;

    iput-object v0, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mAutoArea:Landroid/preference/EditTextPreference;

    iget-object v0, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mAutoArea:Landroid/preference/EditTextPreference;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mAutoArea:Landroid/preference/EditTextPreference;

    const v1, 0x7f0400a4

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setDialogLayoutResource(I)V

    iget-object v0, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mAutoArea:Landroid/preference/EditTextPreference;

    new-instance v1, Lcom/android/phone/callsettings/GeneralSettingFragment$6;

    invoke-direct {v1, p0}, Lcom/android/phone/callsettings/GeneralSettingFragment$6;-><init>(Lcom/android/phone/callsettings/GeneralSettingFragment;)V

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mAutoArea:Landroid/preference/EditTextPreference;

    invoke-virtual {v0}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mOnKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    :cond_1
    return-void
.end method

.method protected initKORSetting()V
    .locals 4

    const/4 v3, 0x0

    invoke-static {}, Lcom/android/phone/callsettings/GeneralSettingManager;->getInstance()Lcom/android/phone/callsettings/GeneralSettingManager;

    iget-object v0, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mPrefCategory:Landroid/preference/PreferenceCategory;

    const-string/jumbo v1, "meterial_phone_app_mode"

    sget-object v2, Lcom/android/phone/callsettings/CallsettingsConstants;->DropDownPreference:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/android/phone/callsettings/GeneralSettingManager;->findPreference(Landroid/preference/PreferenceCategory;Ljava/lang/String;Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/phone/DropDownPreference;

    iput-object v0, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mPhoneAppMode:Lcom/android/phone/DropDownPreference;

    iget-object v0, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mPhoneAppMode:Lcom/android/phone/DropDownPreference;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/phone/callsettings/GeneralSettingFragment;->initDropDownPhoneAppMode()V

    :cond_0
    invoke-static {}, Lcom/android/phone/callsettings/GeneralSettingManager;->getInstance()Lcom/android/phone/callsettings/GeneralSettingManager;

    iget-object v0, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mPrefCategory:Landroid/preference/PreferenceCategory;

    const-string/jumbo v1, "skt_hd_voice_setting_preference"

    invoke-static {v0, v1, v3}, Lcom/android/phone/callsettings/GeneralSettingManager;->findPreference(Landroid/preference/PreferenceCategory;Ljava/lang/String;Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mSKTHDVoice:Landroid/preference/PreferenceScreen;

    iget-object v0, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mSKTHDVoice:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/phone/callsettings/GeneralSettingFragment;->setSKTHDVoiceEnable()V

    :cond_1
    invoke-static {}, Lcom/android/phone/callsettings/GeneralSettingManager;->getInstance()Lcom/android/phone/callsettings/GeneralSettingManager;

    iget-object v0, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mPrefCategory:Landroid/preference/PreferenceCategory;

    const-string/jumbo v1, "kt_hd_voice_setting_preference"

    invoke-static {v0, v1, v3}, Lcom/android/phone/callsettings/GeneralSettingManager;->findPreference(Landroid/preference/PreferenceCategory;Ljava/lang/String;Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mKTHDVoice:Landroid/preference/PreferenceScreen;

    iget-object v0, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mKTHDVoice:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/phone/PhoneUtils;->isRoamingArea()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mKTHDVoice:Landroid/preference/PreferenceScreen;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    :cond_2
    invoke-static {}, Lcom/android/phone/callsettings/GeneralSettingManager;->getInstance()Lcom/android/phone/callsettings/GeneralSettingManager;

    iget-object v0, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mPrefCategory:Landroid/preference/PreferenceCategory;

    const-string/jumbo v1, "volte_instant_lettering_preference"

    invoke-static {v0, v1, v3}, Lcom/android/phone/callsettings/GeneralSettingManager;->findPreference(Landroid/preference/PreferenceCategory;Ljava/lang/String;Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mInstantLetter:Landroid/preference/PreferenceScreen;

    invoke-static {}, Lcom/android/phone/callsettings/GeneralSettingManager;->getInstance()Lcom/android/phone/callsettings/GeneralSettingManager;

    iget-object v0, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mPrefCategory:Landroid/preference/PreferenceCategory;

    const-string/jumbo v1, "kt_oneline_greeting"

    sget-object v2, Lcom/android/phone/callsettings/CallsettingsConstants;->ListPreference:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/android/phone/callsettings/GeneralSettingManager;->findPreference(Landroid/preference/PreferenceCategory;Ljava/lang/String;Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mKTOneLine:Landroid/preference/ListPreference;

    iget-object v0, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mKTOneLine:Landroid/preference/ListPreference;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mKTOneLine:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_3
    invoke-static {}, Lcom/android/phone/callsettings/GeneralSettingManager;->getInstance()Lcom/android/phone/callsettings/GeneralSettingManager;

    iget-object v0, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mPrefCategory:Landroid/preference/PreferenceCategory;

    const-string/jumbo v1, "personalise_call_sound_key"

    sget-object v2, Lcom/android/phone/callsettings/CallsettingsConstants;->SwitchPreference:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/android/phone/callsettings/GeneralSettingManager;->findPreference(Landroid/preference/PreferenceCategory;Ljava/lang/String;Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mPersonalSound:Landroid/preference/SwitchPreference;

    iget-object v0, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mPersonalSound:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mPersonalSound:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_4
    invoke-static {}, Lcom/android/phone/callsettings/GeneralSettingManager;->getInstance()Lcom/android/phone/callsettings/GeneralSettingManager;

    iget-object v0, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mPrefCategory:Landroid/preference/PreferenceCategory;

    const-string/jumbo v1, "button_kt_additional_service"

    invoke-static {v0, v1, v3}, Lcom/android/phone/callsettings/GeneralSettingManager;->findPreference(Landroid/preference/PreferenceCategory;Ljava/lang/String;Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mKTAdditionalSvc:Landroid/preference/PreferenceScreen;

    invoke-static {}, Lcom/android/phone/callsettings/GeneralSettingManager;->getInstance()Lcom/android/phone/callsettings/GeneralSettingManager;

    iget-object v0, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mPrefCategory:Landroid/preference/PreferenceCategory;

    const-string/jumbo v1, "photoring_setting_preference"

    invoke-static {v0, v1, v3}, Lcom/android/phone/callsettings/GeneralSettingManager;->findPreference(Landroid/preference/PreferenceCategory;Ljava/lang/String;Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mMcidSetting:Landroid/preference/PreferenceScreen;

    iget-object v0, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mMcidSetting:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mMcidSetting:Landroid/preference/PreferenceScreen;

    invoke-static {v0, v1}, Lcom/android/phone/utils/GeneralSettingUtils;->initMcidSetting(Landroid/content/Context;Landroid/preference/PreferenceScreen;)V

    :cond_5
    return-void
.end method

.method protected initUSASetting()V
    .locals 6

    const/4 v5, 0x0

    invoke-static {}, Lcom/android/phone/callsettings/GeneralSettingManager;->getInstance()Lcom/android/phone/callsettings/GeneralSettingManager;

    iget-object v1, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mPrefCategory:Landroid/preference/PreferenceCategory;

    const-string/jumbo v2, "volte_preference_tmo"

    sget-object v3, Lcom/android/phone/callsettings/CallsettingsConstants;->SwitchPreference:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/android/phone/callsettings/GeneralSettingManager;->findPreference(Landroid/preference/PreferenceCategory;Ljava/lang/String;Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreference;

    iput-object v1, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mTMOVoLTESetting:Landroid/preference/SwitchPreference;

    iget-object v1, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mTMOVoLTESetting:Landroid/preference/SwitchPreference;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mTMOVoLTESetting:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_0
    invoke-static {}, Lcom/android/phone/callsettings/GeneralSettingManager;->getInstance()Lcom/android/phone/callsettings/GeneralSettingManager;

    iget-object v1, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mPrefCategory:Landroid/preference/PreferenceCategory;

    const-string/jumbo v2, "wfc_settings_holder_key"

    invoke-static {v1, v2, v5}, Lcom/android/phone/callsettings/GeneralSettingManager;->findPreference(Landroid/preference/PreferenceCategory;Ljava/lang/String;Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mWFCSettingHolder:Landroid/preference/Preference;

    iget-object v1, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mWFCSettingHolder:Landroid/preference/Preference;

    if-eqz v1, :cond_2

    :try_start_0
    iget-object v1, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->wfcPref:Landroid/preference/PreferenceScreen;

    if-nez v1, :cond_1

    invoke-static {}, Lcom/android/phone/CallFeaturesSetting;->getPreferenceMgr()Landroid/preference/PreferenceManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mActivity:Landroid/app/Activity;

    const v3, 0x7f07006f

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/preference/PreferenceManager;->inflateFromResource(Landroid/content/Context;ILandroid/preference/PreferenceScreen;)Landroid/preference/PreferenceScreen;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->wfcPref:Landroid/preference/PreferenceScreen;

    :cond_1
    iget-object v1, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->wfcPref:Landroid/preference/PreferenceScreen;

    const-string/jumbo v2, "wfc_settings_key"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/samsung/tmowfc/wfcutils/WfcSwitchPreference;

    iput-object v1, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mWFCSwitchHolder:Lcom/samsung/tmowfc/wfcutils/WfcSwitchPreference;

    iget-object v1, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mWFCSwitchHolder:Lcom/samsung/tmowfc/wfcutils/WfcSwitchPreference;

    iget-object v2, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mWFCSettingHolder:Landroid/preference/Preference;

    invoke-virtual {v2}, Landroid/preference/Preference;->getOrder()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/tmowfc/wfcutils/WfcSwitchPreference;->setOrder(I)V

    iget-object v1, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mWFCSwitchHolder:Lcom/samsung/tmowfc/wfcutils/WfcSwitchPreference;

    const-class v2, Lcom/android/phone/CallFeaturesSetting;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/tmowfc/wfcutils/WfcSwitchPreference;->setParentClassName(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mPrefCategory:Landroid/preference/PreferenceCategory;

    iget-object v2, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mWFCSwitchHolder:Lcom/samsung/tmowfc/wfcutils/WfcSwitchPreference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v1, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mPrefCategory:Landroid/preference/PreferenceCategory;

    iget-object v2, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mWFCSettingHolder:Landroid/preference/Preference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    iput-object v5, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mWFCSettingHolder:Landroid/preference/Preference;

    :cond_2
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "GeneralSettingFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "cannot add WfcSwitchPreference"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected initializeCallSetting()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/phone/callsettings/GeneralSettingFragment;->initCommonSetting()V

    invoke-virtual {p0}, Lcom/android/phone/callsettings/GeneralSettingFragment;->initJPNSetting()V

    invoke-virtual {p0}, Lcom/android/phone/callsettings/GeneralSettingFragment;->initKORSetting()V

    invoke-virtual {p0}, Lcom/android/phone/callsettings/GeneralSettingFragment;->initUSASetting()V

    invoke-virtual {p0}, Lcom/android/phone/callsettings/GeneralSettingFragment;->initCHNSetting()V

    return-void
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onPause()V

    invoke-virtual {p0}, Lcom/android/phone/callsettings/GeneralSettingFragment;->unregisterAllReceiver()V

    const-string/jumbo v0, "support_sec_wfc"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mWFCSwitchHolder:Lcom/samsung/tmowfc/wfcutils/WfcSwitchPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mWFCSwitchHolder:Lcom/samsung/tmowfc/wfcutils/WfcSwitchPreference;

    invoke-virtual {v0}, Lcom/samsung/tmowfc/wfcutils/WfcSwitchPreference;->onPause()V

    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 26

    const-string/jumbo v20, "GeneralSettingFragment"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "onPreferenceChange: \""

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, "\" changed to \""

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, "\""

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mVoLTENoti:Landroid/preference/SwitchPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v20

    if-eqz v20, :cond_1

    const/16 v18, 0x1

    :goto_0
    const-string/jumbo v20, "volte_noti_settings"

    move-object/from16 v0, v20

    move/from16 v1, v18

    invoke-static {v0, v1}, Lcom/android/phone/TeleServiceSystemDB;->setSettingDB(Ljava/lang/String;I)V

    :cond_0
    :goto_1
    const/16 v20, 0x1

    return v20

    :cond_1
    const/16 v18, 0x0

    goto :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mVoiceProtect:Landroid/preference/SwitchPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_4

    move-object/from16 v19, p2

    check-cast v19, Ljava/lang/Boolean;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v6

    new-instance v10, Landroid/content/Intent;

    const-string/jumbo v20, "com.skt.CALL_PROTECTION_STATUS_CHANGED"

    move-object/from16 v0, v20

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v20

    if-eqz v20, :cond_3

    const-string/jumbo v20, "enable_call_protect_when_calling"

    const/16 v21, 0x1

    invoke-static/range {v20 .. v21}, Lcom/android/phone/TeleServiceSystemDB;->setSettingDB(Ljava/lang/String;I)V

    const-string/jumbo v20, "on off"

    const/16 v21, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :goto_2
    invoke-static {}, Lcom/android/phone/operator/kor/PhoneUtilsKOR;->notifyCallProtectionValue()V

    invoke-virtual {v6, v10}, Lcom/android/phone/PhoneGlobals;->sendBroadcast(Landroid/content/Intent;)V

    const-string/jumbo v20, "GeneralSettingFragment"

    const-string/jumbo v21, "Send broadcast - call protection status changed"

    invoke-static/range {v20 .. v21}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    const-string/jumbo v20, "enable_call_protect_when_calling"

    const/16 v21, 0x0

    invoke-static/range {v20 .. v21}, Lcom/android/phone/TeleServiceSystemDB;->setSettingDB(Ljava/lang/String;I)V

    const-string/jumbo v20, "on off"

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_2

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mCallerId:Landroid/preference/SwitchPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_6

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v20

    if-eqz v20, :cond_5

    const/16 v18, 0x1

    :goto_3
    const-string/jumbo v20, "button_clir_key"

    move-object/from16 v0, v20

    move/from16 v1, v18

    invoke-static {v0, v1}, Lcom/android/phone/TeleServiceSystemDB;->setSettingDB(Ljava/lang/String;I)V

    goto/16 :goto_1

    :cond_5
    const/16 v18, 0x0

    goto :goto_3

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mAutoArea:Landroid/preference/EditTextPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_8

    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/preference/EditTextPreference;

    move/from16 v20, v0

    if-eqz v20, :cond_0

    move-object/from16 v20, p1

    check-cast v20, Landroid/preference/EditTextPreference;

    invoke-virtual/range {v20 .. v20}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v8

    check-cast p1, Landroid/preference/EditTextPreference;

    invoke-virtual/range {p1 .. p1}, Landroid/preference/EditTextPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v20

    check-cast v20, Landroid/app/AlertDialog;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/callsettings/GeneralSettingFragment;->mDialog:Landroid/app/AlertDialog;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mDialog:Landroid/app/AlertDialog;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mDialog:Landroid/app/AlertDialog;

    move-object/from16 v20, v0

    new-instance v21, Lcom/android/phone/callsettings/GeneralSettingFragment$14;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/phone/callsettings/GeneralSettingFragment$14;-><init>(Lcom/android/phone/callsettings/GeneralSettingFragment;)V

    invoke-virtual/range {v20 .. v21}, Landroid/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    if-eqz v8, :cond_0

    invoke-virtual {v8}, Landroid/widget/EditText;->length()I

    move-result v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mDialog:Landroid/app/AlertDialog;

    move-object/from16 v20, v0

    const/16 v21, -0x1

    invoke-virtual/range {v20 .. v21}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v21

    if-lez v14, :cond_7

    const/16 v20, 0x1

    :goto_4
    move-object/from16 v0, v21

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    new-instance v20, Lcom/android/phone/callsettings/GeneralSettingFragment$15;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/phone/callsettings/GeneralSettingFragment$15;-><init>(Lcom/android/phone/callsettings/GeneralSettingFragment;)V

    move-object/from16 v0, v20

    invoke-virtual {v8, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    goto/16 :goto_1

    :cond_7
    const/16 v20, 0x0

    goto :goto_4

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mVoLTESetting:Landroid/preference/ListPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_1a

    invoke-static {}, Lcom/android/phone/PhoneUtilsCommon;->isSupportVoLTE()Z

    move-result v20

    if-eqz v20, :cond_0

    check-cast p2, Ljava/lang/String;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    invoke-static {}, Lcom/android/phone/PhoneUtilsIMS;->isRegistered()Z

    move-result v11

    const-string/jumbo v20, "GeneralSettingFragment"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "setVoLTESetting Value of isImsRegistered = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v20, "feature_dcm"

    invoke-static/range {v20 .. v20}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_9

    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/CallManager;->getServiceState()I

    move-result v16

    const-string/jumbo v20, "GeneralSettingFragment"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "setVoLTESetting radioState : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v16, :cond_9

    const v20, 0x7f0d0915

    invoke-static/range {v20 .. v20}, Lcom/android/phone/PhoneUtils;->displayToast(I)V

    const/16 v20, 0x0

    return v20

    :cond_9
    :try_start_0
    const-string/jumbo v20, "voicecall_type"

    move-object/from16 v0, v20

    move/from16 v1, v18

    invoke-static {v0, v1}, Lcom/android/phone/TeleServiceSystemDB;->setSettingDB(Ljava/lang/String;I)V

    const-string/jumbo v20, "feature_skt"

    invoke-static/range {v20 .. v20}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_10

    if-nez v18, :cond_10

    const/4 v12, 0x0

    invoke-static {}, Lcom/android/phone/PhoneUtilsCommon;->isSupportVoLTE()Z

    move-result v20

    if-eqz v20, :cond_a

    invoke-static {}, Lcom/android/phone/PhoneUtilsIMS;->isRegistered()Z

    move-result v12

    :cond_a
    const-string/jumbo v20, "GeneralSettingFragment"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "setVoLTESetting isVolteServiceOn = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x1

    invoke-static/range {v20 .. v22}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    if-nez v12, :cond_c

    const-string/jumbo v20, "voicecall_type"

    const/16 v21, 0x1

    invoke-static/range {v20 .. v21}, Lcom/android/phone/TeleServiceSystemDB;->setSettingDB(Ljava/lang/String;I)V

    const-string/jumbo v20, "ims_call_message"

    invoke-static/range {v20 .. v20}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_b

    const-string/jumbo v20, "feature_skt"

    invoke-static/range {v20 .. v20}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mInstantLetter:Landroid/preference/PreferenceScreen;

    move-object/from16 v20, v0

    if-eqz v20, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mInstantLetter:Landroid/preference/PreferenceScreen;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mVoLTESetting:Landroid/preference/ListPreference;

    move-object/from16 v20, v0

    invoke-static {}, Lcom/android/phone/utils/GeneralSettingUtils;->getVoiceCallTypeValue()I

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v20

    const v21, 0x7f0d090f

    const/16 v22, 0x1

    invoke-static/range {v20 .. v22}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/widget/Toast;->show()V

    const/16 v20, 0x0

    return v20

    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mActivity:Landroid/app/Activity;

    move-object/from16 v20, v0

    const v21, 0x7f0d090d

    const/16 v22, 0x1

    invoke-static/range {v20 .. v22}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/widget/Toast;->show()V

    :cond_d
    :goto_5
    const-string/jumbo v20, "feature_skt"

    invoke-static/range {v20 .. v20}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_e

    const-string/jumbo v20, "feature_jpn"

    invoke-static/range {v20 .. v20}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_16

    :cond_e
    :goto_6
    const-string/jumbo v20, "ims_call_message"

    invoke-static/range {v20 .. v20}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_f

    const-string/jumbo v20, "feature_skt"

    invoke-static/range {v20 .. v20}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mInstantLetter:Landroid/preference/PreferenceScreen;

    move-object/from16 v20, v0

    if-eqz v20, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mInstantLetter:Landroid/preference/PreferenceScreen;

    move-object/from16 v21, v0

    if-nez v18, :cond_17

    const/16 v20, 0x1

    :goto_7
    move-object/from16 v0, v21

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    :cond_f
    const-string/jumbo v20, "interworking_hd_voice_by_intent"

    invoke-static/range {v20 .. v20}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_0

    const-string/jumbo v20, "voicecall_type"

    const/16 v21, 0x1

    invoke-static/range {v20 .. v21}, Lcom/android/phone/TeleServiceSystemDB;->getSettingDB(Ljava/lang/String;I)I

    move-result v17

    new-instance v10, Landroid/content/Intent;

    const-string/jumbo v20, "android.intent.action.HD_VOICE_CHANGED"

    move-object/from16 v0, v20

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v21, "enable"

    if-nez v17, :cond_18

    const/16 v20, 0x1

    :goto_8
    move-object/from16 v0, v21

    move/from16 v1, v20

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v20

    sget-object v21, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v10, v1}, Lcom/android/phone/PhoneGlobals;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    const-string/jumbo v21, "GeneralSettingFragment"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "setVoLTESetting sendBroadcast HD_VOICE_CHANGED - "

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    if-nez v17, :cond_19

    const/16 v20, 0x1

    :goto_9
    move-object/from16 v0, v22

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    const/16 v22, 0x1

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    move/from16 v2, v22

    invoke-static {v0, v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v7

    const-string/jumbo v20, "GeneralSettingFragment"

    const-string/jumbo v21, "could not persist voice call type setting"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v7}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    :cond_10
    :try_start_1
    const-string/jumbo v20, "feature_ktt"

    invoke-static/range {v20 .. v20}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_11

    if-nez v18, :cond_11

    const-string/jumbo v20, "support_uicc_mobility"

    invoke-static/range {v20 .. v20}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_13

    :cond_11
    const-string/jumbo v20, "feature_dcm"

    invoke-static/range {v20 .. v20}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_12

    const-string/jumbo v20, "feature_sbm"

    invoke-static/range {v20 .. v20}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_d

    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mVoLTESetting:Landroid/preference/ListPreference;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/preference/ListPreference;->setEnabled(Z)V

    new-instance v20, Landroid/os/Handler;

    invoke-direct/range {v20 .. v20}, Landroid/os/Handler;-><init>()V

    new-instance v21, Lcom/android/phone/callsettings/GeneralSettingFragment$16;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/phone/callsettings/GeneralSettingFragment$16;-><init>(Lcom/android/phone/callsettings/GeneralSettingFragment;)V

    const-wide/16 v22, 0x3e8

    invoke-virtual/range {v20 .. v23}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_5

    :cond_13
    const/4 v13, 0x0

    invoke-static {}, Lcom/android/phone/PhoneUtilsCommon;->isSupportVoLTE()Z

    move-result v20

    if-eqz v20, :cond_14

    invoke-static {}, Lcom/android/phone/PhoneUtilsIMS;->isRegistered()Z

    move-result v13

    :cond_14
    const-string/jumbo v20, "GeneralSettingFragment"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "setVoLTESetting isVolteSupported = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v13, :cond_15

    const-string/jumbo v20, "voicecall_type"

    const/16 v21, 0x1

    invoke-static/range {v20 .. v21}, Lcom/android/phone/TeleServiceSystemDB;->setSettingDB(Ljava/lang/String;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mVoLTESetting:Landroid/preference/ListPreference;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    const/16 v20, 0x0

    return v20

    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mActivity:Landroid/app/Activity;

    move-object/from16 v20, v0

    const v21, 0x7f0d090e

    const/16 v22, 0x1

    invoke-static/range {v20 .. v22}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/widget/Toast;->show()V

    goto/16 :goto_5

    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mVoLTESetting:Landroid/preference/ListPreference;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mVoLTESetting:Landroid/preference/ListPreference;

    move-object/from16 v20, v0

    aget-object v21, v9, v18

    invoke-interface/range {v21 .. v21}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_6

    :cond_17
    const/16 v20, 0x0

    goto/16 :goto_7

    :cond_18
    const/16 v20, 0x0

    goto/16 :goto_8

    :cond_19
    const/16 v20, 0x0

    goto/16 :goto_9

    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mKTOneLine:Landroid/preference/ListPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_1b

    check-cast p2, Ljava/lang/String;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    const-string/jumbo v20, "oneline_greeting"

    move-object/from16 v0, v20

    move/from16 v1, v18

    invoke-static {v0, v1}, Lcom/android/phone/TeleServiceSystemDB;->setSettingDB(Ljava/lang/String;I)V

    goto/16 :goto_1

    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mPersonalSound:Landroid/preference/SwitchPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_1d

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v20

    if-eqz v20, :cond_1c

    const/16 v18, 0x1

    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const-string/jumbo v21, "personalise_call_sound_soft"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move/from16 v2, v18

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v10, Landroid/content/Intent;

    const-string/jumbo v20, "com.android.phone.action.PERSONALISE_CALL_SOUND_CHANGED"

    move-object/from16 v0, v20

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v20, "value"

    move-object/from16 v0, v20

    move/from16 v1, v18

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_1

    :cond_1c
    const/16 v18, 0x0

    goto :goto_a

    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mTMOVoLTESetting:Landroid/preference/SwitchPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_1f

    invoke-static {}, Lcom/android/phone/PhoneUtilsCommon;->isSupportVoLTE()Z

    move-result v20

    if-eqz v20, :cond_0

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v15

    const-string/jumbo v21, "voicecall_type"

    if-eqz v15, :cond_1e

    const/16 v20, 0x0

    :goto_b
    move-object/from16 v0, v21

    move/from16 v1, v20

    invoke-static {v0, v1}, Lcom/android/phone/TeleServiceSystemDB;->setSettingDB(Ljava/lang/String;I)V

    goto/16 :goto_1

    :cond_1e
    const/16 v20, 0x1

    goto :goto_b

    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mCallerInfo:Landroid/preference/SwitchPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_21

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v20

    if-eqz v20, :cond_20

    const/16 v18, 0x1

    :goto_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0d024e

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f0d0310

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v21

    const-string/jumbo v22, "display_caller_info_card"

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v24, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    move-wide/from16 v3, v24

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/phone/utils/SALogging;->sendSAEventSettingLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    invoke-static/range {v18 .. v18}, Lcom/android/phone/TeleServiceSystemDB;->setCallerInfoCardMode(I)V

    goto/16 :goto_1

    :cond_20
    const/16 v18, 0x0

    goto :goto_c

    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mHoldRecord:Landroid/preference/SwitchPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_23

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v20

    if-eqz v20, :cond_22

    const/16 v18, 0x1

    :goto_d
    const-string/jumbo v20, "hold_key_record_calls_enable_sharedpref"

    move-object/from16 v0, v20

    move/from16 v1, v18

    invoke-static {v0, v1}, Lcom/android/phone/TeleServiceSystemDB;->setSettingDB(Ljava/lang/String;I)V

    goto/16 :goto_1

    :cond_22
    const/16 v18, 0x0

    goto :goto_d

    :cond_23
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mMuteFirstRing:Landroid/preference/SwitchPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_25

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v20

    if-eqz v20, :cond_24

    const/16 v18, 0x1

    :goto_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const-string/jumbo v21, "spam_call_mute_first_ring"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move/from16 v2, v18

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    :cond_24
    const/16 v18, 0x0

    goto :goto_e

    :cond_25
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mButtonPopupWindow:Landroid/preference/SwitchPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_0

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v20

    if-eqz v20, :cond_26

    const/16 v18, 0x1

    :goto_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0d024e

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f0d028c

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v21

    const-string/jumbo v22, "call_popup"

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v24, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    move-wide/from16 v3, v24

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/phone/utils/SALogging;->sendSAEventSettingLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const-string/jumbo v21, "call_popup"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move/from16 v2, v18

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    :cond_26
    const/16 v18, 0x0

    goto :goto_f
.end method

.method protected registerAllReceiver()V
    .locals 5

    const/4 v3, 0x0

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "support_smart_call_mcc"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_0
    const-string/jumbo v1, "jansky_info_for_tmo"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "com.samsung.nsds.action.DEVICE_CONFIG_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_1
    iget-object v1, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    const-string/jumbo v1, "support_sec_wfc"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "vowifi_menu_enable"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mWFCEnableObserver:Landroid/database/ContentObserver;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_2
    iget-object v1, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v3, 0x21

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    return-void
.end method

.method public setMenuEnabledDuringAirplaneMode(Z)V
    .locals 7

    const/4 v4, 0x1

    iget-object v3, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mPrefCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v3}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_9

    iget-object v3, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mPrefCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v3, v1}, Landroid/preference/PreferenceCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mWFCSwitchHolder:Lcom/samsung/tmowfc/wfcutils/WfcSwitchPreference;

    if-ne v2, v3, :cond_0

    invoke-virtual {v2, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/android/phone/PhoneUtilsIMS;->isAvailableVoWIFI()Z

    move-result v3

    if-eqz v3, :cond_8

    const-string/jumbo v3, "enable_call_setting_vowifi_regi"

    invoke-static {v3}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string/jumbo v3, "GeneralSettingFragment"

    const-string/jumbo v5, "ENABLE_CALL_SETTING_VOWIFI_REGI - AvailableVoWiFi"

    invoke-static {v3, v5}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mMoreSetting:Landroid/preference/PreferenceScreen;

    if-eq v2, v3, :cond_1

    move v3, v4

    :goto_2
    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_1

    :cond_1
    move v3, p1

    goto :goto_2

    :cond_2
    const-string/jumbo v3, "enable_ss_settings_vowifi_regi"

    invoke-static {v3}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string/jumbo v3, "GeneralSettingFragment"

    const-string/jumbo v5, "ENABLE_SS_SETTINGS_VOWIFI_REGI - AvailableVoWiFi"

    invoke-static {v3, v5}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mMoreSetting:Landroid/preference/PreferenceScreen;

    if-ne v2, v3, :cond_3

    move v3, v4

    :goto_3
    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_1

    :cond_3
    move v3, p1

    goto :goto_3

    :cond_4
    const-string/jumbo v3, "not_support_ss_query"

    invoke-static {v3}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-static {}, Lcom/android/phone/TelephonyConfig;->isCellCSIM()Z

    move-result v3

    if-nez v3, :cond_6

    :cond_5
    const-string/jumbo v3, "enable_all_setting_vowifi_regi"

    invoke-static {v3}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    :cond_6
    const-string/jumbo v3, "GeneralSettingFragment"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "ENABLE_ALL_SETTING_VOWIFI_REGI - AvailableVoWiFi : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_1

    :cond_7
    invoke-virtual {v2, p1}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_1

    :cond_8
    invoke-virtual {v2, p1}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_1

    :cond_9
    return-void
.end method

.method public showDataEnableDialog()V
    .locals 4

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0766

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0d0763

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0395

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/android/phone/callsettings/GeneralSettingFragment$11;

    invoke-direct {v3, p0}, Lcom/android/phone/callsettings/GeneralSettingFragment$11;-><init>(Lcom/android/phone/callsettings/GeneralSettingFragment;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/phone/callsettings/GeneralSettingFragment$12;

    invoke-direct {v2, p0}, Lcom/android/phone/callsettings/GeneralSettingFragment$12;-><init>(Lcom/android/phone/callsettings/GeneralSettingFragment;)V

    const/high16 v3, 0x1040000

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/phone/callsettings/GeneralSettingFragment$13;

    invoke-direct {v2, p0}, Lcom/android/phone/callsettings/GeneralSettingFragment$13;-><init>(Lcom/android/phone/callsettings/GeneralSettingFragment;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method protected unregisterAllReceiver()V
    .locals 3

    iget-object v0, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const-string/jumbo v0, "support_sec_wfc"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mWFCEnableObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_0
    iget-object v0, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/phone/callsettings/GeneralSettingFragment;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    return-void
.end method

.method public updateCallSetting()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/phone/callsettings/GeneralSettingFragment;->registerAllReceiver()V

    invoke-direct {p0}, Lcom/android/phone/callsettings/GeneralSettingFragment;->updateCommonSetting()V

    invoke-direct {p0}, Lcom/android/phone/callsettings/GeneralSettingFragment;->updateJPNSetting()V

    invoke-direct {p0}, Lcom/android/phone/callsettings/GeneralSettingFragment;->updateKORSetting()V

    invoke-direct {p0}, Lcom/android/phone/callsettings/GeneralSettingFragment;->updateUSASetting()V

    invoke-direct {p0}, Lcom/android/phone/callsettings/GeneralSettingFragment;->updateCHNSetting()V

    return-void
.end method
