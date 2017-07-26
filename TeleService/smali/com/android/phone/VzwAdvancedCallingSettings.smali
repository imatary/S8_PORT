.class public Lcom/android/phone/VzwAdvancedCallingSettings;
.super Landroid/app/ListActivity;
.source "VzwAdvancedCallingSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/VzwAdvancedCallingSettings$1;,
        Lcom/android/phone/VzwAdvancedCallingSettings$2;,
        Lcom/android/phone/VzwAdvancedCallingSettings$3;,
        Lcom/android/phone/VzwAdvancedCallingSettings$4;,
        Lcom/android/phone/VzwAdvancedCallingSettings$5;,
        Lcom/android/phone/VzwAdvancedCallingSettings$AdvancedCallingSettingsStateListener;,
        Lcom/android/phone/VzwAdvancedCallingSettings$customAdapter;
    }
.end annotation


# instance fields
.field adv_call_settings_list:Landroid/widget/ListView;

.field items:[I

.field private mAdvCallSwitch:Landroid/widget/Switch;

.field mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

.field private final mBixbyHandler:Landroid/os/Handler;

.field private mCallManager:Lcom/android/internal/telephony/CallManager;

.field private mCheckedChangedListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private mConnManager:Landroid/net/ConnectivityManager;

.field private mContext:Landroid/content/Context;

.field private mCurrentOperation:I

.field private mDataEnabledObserver:Landroid/database/ContentObserver;

.field public mHDVoiceOnlyView:Landroid/widget/CheckedTextView;

.field public mHDVoiceVideoView:Landroid/widget/CheckedTextView;

.field private final mHandler:Landroid/os/Handler;

.field private mPhoneContext:Landroid/content/Context;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mRegistrationListener:Lcom/sec/ims/IImsRegistrationListener;

.field private mSharedPref:Landroid/content/SharedPreferences;

.field mStateListener:Lcom/samsung/android/sdk/bixby/BixbyApi$InterimStateListener;

.field private mSubAppBarSwitchText:Landroid/widget/TextView;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static synthetic -get0(Lcom/android/phone/VzwAdvancedCallingSettings;)Landroid/widget/Switch;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/VzwAdvancedCallingSettings;->mAdvCallSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/phone/VzwAdvancedCallingSettings;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/VzwAdvancedCallingSettings;->mBixbyHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/phone/VzwAdvancedCallingSettings;)Landroid/net/ConnectivityManager;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/VzwAdvancedCallingSettings;->mConnManager:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/phone/VzwAdvancedCallingSettings;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/VzwAdvancedCallingSettings;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/phone/VzwAdvancedCallingSettings;)Landroid/content/SharedPreferences;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/VzwAdvancedCallingSettings;->mSharedPref:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/phone/VzwAdvancedCallingSettings;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/VzwAdvancedCallingSettings;->mSubAppBarSwitchText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/phone/VzwAdvancedCallingSettings;I)I
    .locals 0

    iput p1, p0, Lcom/android/phone/VzwAdvancedCallingSettings;->mCurrentOperation:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/phone/VzwAdvancedCallingSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/VzwAdvancedCallingSettings;->disableHDVoice()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/phone/VzwAdvancedCallingSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/VzwAdvancedCallingSettings;->disableVideoCalling()V

    return-void
.end method

.method static synthetic -wrap10(Lcom/android/phone/VzwAdvancedCallingSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/VzwAdvancedCallingSettings;->showAdvCallDisableWarningDialog()V

    return-void
.end method

.method static synthetic -wrap11(Lcom/android/phone/VzwAdvancedCallingSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/VzwAdvancedCallingSettings;->showAdvCallEnableMessageDialog()V

    return-void
.end method

.method static synthetic -wrap12(Lcom/android/phone/VzwAdvancedCallingSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/VzwAdvancedCallingSettings;->showNoVideoServiceDialog()V

    return-void
.end method

.method static synthetic -wrap13(Lcom/android/phone/VzwAdvancedCallingSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/VzwAdvancedCallingSettings;->showTTYOnDialog()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/phone/VzwAdvancedCallingSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/VzwAdvancedCallingSettings;->displayDontRemindMeDialog()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/phone/VzwAdvancedCallingSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/VzwAdvancedCallingSettings;->displayMobileDataOffDialog()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/phone/VzwAdvancedCallingSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/VzwAdvancedCallingSettings;->enableAdvCallUI()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/phone/VzwAdvancedCallingSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/VzwAdvancedCallingSettings;->enableHDVoice()V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/phone/VzwAdvancedCallingSettings;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/VzwAdvancedCallingSettings;->enableSettingsUI(Z)V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/phone/VzwAdvancedCallingSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/VzwAdvancedCallingSettings;->enableVideoCalling()V

    return-void
.end method

.method static synthetic -wrap8(Lcom/android/phone/VzwAdvancedCallingSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/VzwAdvancedCallingSettings;->handleRegFailed()V

    return-void
.end method

.method static synthetic -wrap9(Lcom/android/phone/VzwAdvancedCallingSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/VzwAdvancedCallingSettings;->handleRegSuccess()V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    iput-object v0, p0, Lcom/android/phone/VzwAdvancedCallingSettings;->mHDVoiceVideoView:Landroid/widget/CheckedTextView;

    iput-object v0, p0, Lcom/android/phone/VzwAdvancedCallingSettings;->mHDVoiceOnlyView:Landroid/widget/CheckedTextView;

    iput-object v0, p0, Lcom/android/phone/VzwAdvancedCallingSettings;->mCheckedChangedListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    const v0, 0x7f0d0dd8

    const v1, 0x7f0d0dd7

    filled-new-array {v0, v1}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/VzwAdvancedCallingSettings;->items:[I

    new-instance v0, Lcom/android/phone/VzwAdvancedCallingSettings$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/phone/VzwAdvancedCallingSettings$1;-><init>(Lcom/android/phone/VzwAdvancedCallingSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/phone/VzwAdvancedCallingSettings;->mDataEnabledObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/android/phone/VzwAdvancedCallingSettings$2;

    invoke-direct {v0, p0}, Lcom/android/phone/VzwAdvancedCallingSettings$2;-><init>(Lcom/android/phone/VzwAdvancedCallingSettings;)V

    iput-object v0, p0, Lcom/android/phone/VzwAdvancedCallingSettings;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    new-instance v0, Lcom/android/phone/VzwAdvancedCallingSettings$3;

    invoke-direct {v0, p0}, Lcom/android/phone/VzwAdvancedCallingSettings$3;-><init>(Lcom/android/phone/VzwAdvancedCallingSettings;)V

    iput-object v0, p0, Lcom/android/phone/VzwAdvancedCallingSettings;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/phone/VzwAdvancedCallingSettings$4;

    invoke-direct {v0, p0}, Lcom/android/phone/VzwAdvancedCallingSettings$4;-><init>(Lcom/android/phone/VzwAdvancedCallingSettings;)V

    iput-object v0, p0, Lcom/android/phone/VzwAdvancedCallingSettings;->mRegistrationListener:Lcom/sec/ims/IImsRegistrationListener;

    new-instance v0, Lcom/android/phone/VzwAdvancedCallingSettings$5;

    invoke-direct {v0, p0}, Lcom/android/phone/VzwAdvancedCallingSettings$5;-><init>(Lcom/android/phone/VzwAdvancedCallingSettings;)V

    iput-object v0, p0, Lcom/android/phone/VzwAdvancedCallingSettings;->mBixbyHandler:Landroid/os/Handler;

    invoke-static {}, Lcom/samsung/android/sdk/bixby/BixbyApi;->getInstance()Lcom/samsung/android/sdk/bixby/BixbyApi;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/VzwAdvancedCallingSettings;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    return-void
.end method

.method private applyFullScreenInLandscape(Landroid/content/res/Configuration;)V
    .locals 4

    const-string/jumbo v1, "LAND"

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v2

    const-string/jumbo v3, "SEC_FLOATING_FEATURE_COMMON_CONFIG_HIDE_STATUS_BAR"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    invoke-virtual {p0}, Lcom/android/phone/VzwAdvancedCallingSettings;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v1, v1, 0x400

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    invoke-virtual {p0}, Lcom/android/phone/VzwAdvancedCallingSettings;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/VzwAdvancedCallingSettings;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v1, v1, -0x401

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    and-int/lit8 v1, v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    invoke-virtual {p0}, Lcom/android/phone/VzwAdvancedCallingSettings;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_0
.end method

.method private checkBixbySupport()V
    .locals 2

    const-string/jumbo v0, "support_bixby"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/android/phone/VzwAdvancedCallingSettings$AdvancedCallingSettingsStateListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/phone/VzwAdvancedCallingSettings$AdvancedCallingSettingsStateListener;-><init>(Lcom/android/phone/VzwAdvancedCallingSettings;Lcom/android/phone/VzwAdvancedCallingSettings$AdvancedCallingSettingsStateListener;)V

    iput-object v0, p0, Lcom/android/phone/VzwAdvancedCallingSettings;->mStateListener:Lcom/samsung/android/sdk/bixby/BixbyApi$InterimStateListener;

    iget-object v0, p0, Lcom/android/phone/VzwAdvancedCallingSettings;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    iget-object v1, p0, Lcom/android/phone/VzwAdvancedCallingSettings;->mStateListener:Lcom/samsung/android/sdk/bixby/BixbyApi$InterimStateListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/bixby/BixbyApi;->setInterimStateListener(Lcom/samsung/android/sdk/bixby/BixbyApi$InterimStateListener;)V

    invoke-static {}, Lcom/android/phone/ia/IAUtil;->isIAExecutingState()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "ShowAdvancedCalling"

    invoke-static {}, Lcom/android/phone/ia/IAUtil;->getIAExecutingStateId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/phone/ia/IAUtil;->isIAExecutingLastState()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "ShowAdvancedCalling"

    invoke-static {v0}, Lcom/android/phone/ia/IAUtil;->requestNLG(Ljava/lang/String;)V

    :cond_0
    sget-object v0, Lcom/android/phone/ia/IAConstants;->RESPONSE_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-static {v0}, Lcom/android/phone/ia/IAUtil;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    :cond_1
    iget-object v0, p0, Lcom/android/phone/VzwAdvancedCallingSettings;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    const-string/jumbo v1, "ShowAdvancedCalling"

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/bixby/BixbyApi;->logEnterState(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method private deRegisterForIMSCallback()V
    .locals 2

    invoke-static {}, Lcom/android/phone/PhoneUtilsIMS;->getImsManager()Lcom/sec/ims/ImsManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/phone/PhoneUtilsIMS;->getImsManager()Lcom/sec/ims/ImsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/VzwAdvancedCallingSettings;->mRegistrationListener:Lcom/sec/ims/IImsRegistrationListener;

    invoke-virtual {v0, v1}, Lcom/sec/ims/ImsManager;->unregisterImsRegistrationListener(Lcom/sec/ims/IImsRegistrationListener;)V

    :cond_0
    return-void
.end method

.method private disableHDVoice()V
    .locals 5

    const/4 v4, 0x0

    const-string/jumbo v0, "VzwAdvancedCallingSettings"

    const-string/jumbo v1, "disableHDVoice"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/phone/PhoneUtilsIMS;->setVoLTEFeatureDisable()V

    iget-object v0, p0, Lcom/android/phone/VzwAdvancedCallingSettings;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1770

    const/16 v1, 0x66

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    invoke-static {}, Lcom/android/phone/PhoneUtilsIMS;->isLTEVideoCallMenuShow()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/phone/PhoneUtilsIMS;->isLTEVideoCallEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/VzwAdvancedCallingSettings;->mSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "vzw_adv_call_sp_hd_voice_video"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-static {}, Lcom/android/phone/PhoneUtilsIMS;->setLTEVideoCallDisable()V

    :cond_0
    :goto_0
    invoke-direct {p0, v4}, Lcom/android/phone/VzwAdvancedCallingSettings;->setAdvCallSwitchEnabled(Z)V

    invoke-direct {p0}, Lcom/android/phone/VzwAdvancedCallingSettings;->disableUI()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/phone/VzwAdvancedCallingSettings;->mSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "vzw_adv_call_sp_hd_voice_video"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0
.end method

.method private disableUI()V
    .locals 3

    const/4 v2, 0x0

    const-string/jumbo v0, "VzwAdvancedCallingSettings"

    const-string/jumbo v1, "disableUI"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/VzwAdvancedCallingSettings;->mAdvCallSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/phone/VzwAdvancedCallingSettings;->mHDVoiceVideoView:Landroid/widget/CheckedTextView;

    invoke-virtual {v0, v2}, Landroid/widget/CheckedTextView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/phone/VzwAdvancedCallingSettings;->mHDVoiceOnlyView:Landroid/widget/CheckedTextView;

    invoke-virtual {v0, v2}, Landroid/widget/CheckedTextView;->setEnabled(Z)V

    return-void
.end method

.method private disableVideoCalling()V
    .locals 4

    const-string/jumbo v0, "VzwAdvancedCallingSettings"

    const-string/jumbo v1, "disableVideoCalling"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/phone/PhoneUtilsIMS;->setLTEVideoCallDisable()V

    invoke-static {}, Lcom/android/phone/PhoneUtilsIMS;->setVolteVTDisable()V

    iget-object v0, p0, Lcom/android/phone/VzwAdvancedCallingSettings;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1770

    const/16 v1, 0x66

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    invoke-direct {p0}, Lcom/android/phone/VzwAdvancedCallingSettings;->disableUI()V

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/phone/VzwAdvancedCallingSettings;->mCurrentOperation:I

    return-void
.end method

.method private displayDontRemindMeDialog()V
    .locals 9

    iget-object v6, p0, Lcom/android/phone/VzwAdvancedCallingSettings;->mSharedPref:Landroid/content/SharedPreferences;

    const-string/jumbo v7, "vzw_adv_call_sp_lvc_dialog"

    const/4 v8, 0x0

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    return-void

    :cond_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/android/phone/VzwAdvancedCallingSettings;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/android/phone/VzwAdvancedCallingSettings;->getEmergencyThemeID()I

    move-result v7

    invoke-direct {v1, v6, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string/jumbo v7, "layout_inflater"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    const v6, 0x7f040003

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v6, 0x7f100021

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    const v6, 0x7f100020

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v6, 0x7f0d0dd6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    new-instance v7, Lcom/android/phone/VzwAdvancedCallingSettings$15;

    invoke-direct {v7, p0, v0}, Lcom/android/phone/VzwAdvancedCallingSettings$15;-><init>(Lcom/android/phone/VzwAdvancedCallingSettings;Landroid/widget/CheckBox;)V

    const v8, 0x104000a

    invoke-virtual {v6, v8, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private displayMobileDataOffDialog()V
    .locals 4

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/phone/VzwAdvancedCallingSettings;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/android/phone/VzwAdvancedCallingSettings;->getEmergencyThemeID()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v1, 0x7f0d0a8e

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0d0ddc

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/phone/VzwAdvancedCallingSettings$8;

    invoke-direct {v2, p0}, Lcom/android/phone/VzwAdvancedCallingSettings$8;-><init>(Lcom/android/phone/VzwAdvancedCallingSettings;)V

    const v3, 0x7f0d0dde

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/phone/VzwAdvancedCallingSettings$9;

    invoke-direct {v2, p0}, Lcom/android/phone/VzwAdvancedCallingSettings$9;-><init>(Lcom/android/phone/VzwAdvancedCallingSettings;)V

    const/high16 v3, 0x1040000

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private enableAdvCallUI()V
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    const-string/jumbo v4, "VzwAdvancedCallingSettings"

    const-string/jumbo v5, "enableAdvCallUI"

    invoke-static {v4, v5}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/phone/VzwAdvancedCallingSettings;->mAdvCallSwitch:Landroid/widget/Switch;

    invoke-virtual {v4, v8}, Landroid/widget/Switch;->setEnabled(Z)V

    invoke-direct {p0}, Lcom/android/phone/VzwAdvancedCallingSettings;->isNoSIMState()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string/jumbo v4, "VzwAdvancedCallingSettings"

    const-string/jumbo v5, "enableAdvCallUI: no SIM detected, disabling UI"

    invoke-static {v4, v5}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/phone/VzwAdvancedCallingSettings;->disableUI()V

    return-void

    :cond_0
    invoke-static {}, Lcom/android/phone/PhoneUtilsIMS;->isVoLTEMenuShow()Z

    move-result v3

    invoke-static {}, Lcom/android/phone/PhoneUtilsIMS;->isLTEVideoCallMenuShow()Z

    move-result v1

    invoke-static {}, Lcom/android/phone/PhoneUtilsIMS;->isVoLTEFeatureEnabled()Z

    move-result v2

    invoke-static {}, Lcom/android/phone/PhoneUtilsIMS;->isLTEVideoCallEnabled()Z

    move-result v0

    const-string/jumbo v4, "VzwAdvancedCallingSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "enableAdvCallUI: isVoLTEMenuShow["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v4, "VzwAdvancedCallingSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "enableAdvCallUI: isLTEVideoCallMenuShow["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v4, "VzwAdvancedCallingSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "enableAdvCallUI: isVoLTEFeatureEnabled["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v4, "VzwAdvancedCallingSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "enableAdvCallUI: isLTEVideoCallEnabled["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v3, :cond_8

    iget-object v4, p0, Lcom/android/phone/VzwAdvancedCallingSettings;->mCallManager:Lcom/android/internal/telephony/CallManager;

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/android/phone/VzwAdvancedCallingSettings;->mCallManager:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v4, v5, :cond_8

    if-eqz v2, :cond_6

    invoke-direct {p0, v8}, Lcom/android/phone/VzwAdvancedCallingSettings;->setAdvCallSwitchEnabled(Z)V

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/phone/VzwAdvancedCallingUtils;->isInboundByod()Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_1
    const-string/jumbo v4, "VzwAdvancedCallingSettings"

    const-string/jumbo v5, "enableAdvCallUI: disabling video calling"

    invoke-static {v4, v5}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/phone/VzwAdvancedCallingSettings;->mHDVoiceVideoView:Landroid/widget/CheckedTextView;

    invoke-virtual {v4, v7}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    iget-object v4, p0, Lcom/android/phone/VzwAdvancedCallingSettings;->mHDVoiceVideoView:Landroid/widget/CheckedTextView;

    invoke-virtual {v4, v7}, Landroid/widget/CheckedTextView;->setEnabled(Z)V

    iget-object v4, p0, Lcom/android/phone/VzwAdvancedCallingSettings;->mHDVoiceOnlyView:Landroid/widget/CheckedTextView;

    invoke-virtual {v4, v8}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    :goto_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getDataNetworkType()I

    move-result v4

    const/16 v5, 0xd

    if-ne v4, v5, :cond_2

    invoke-direct {p0}, Lcom/android/phone/VzwAdvancedCallingSettings;->isImsVOPSOff()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {}, Lcom/android/phone/PhoneUtilsCommon;->isAvailablePSVT()Z

    move-result v4

    if-eqz v4, :cond_7

    :cond_2
    :goto_1
    return-void

    :cond_3
    invoke-static {}, Lcom/android/phone/VzwAdvancedCallingUtils;->isEmergencyMode()Z

    move-result v4

    if-nez v4, :cond_1

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/android/phone/VzwAdvancedCallingSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "preferred_tty_mode"

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_5

    iget-object v4, p0, Lcom/android/phone/VzwAdvancedCallingSettings;->mConnManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v4}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v4

    if-nez v4, :cond_4

    invoke-static {}, Lcom/android/phone/PhoneUtilsCommon;->isAvailablePSVT()Z

    move-result v4

    if-eqz v4, :cond_5

    :cond_4
    const-string/jumbo v4, "VzwAdvancedCallingSettings"

    const-string/jumbo v5, "enableAdvCallUI: mHDVoiceVideoView"

    invoke-static {v4, v5}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/phone/VzwAdvancedCallingSettings;->mHDVoiceVideoView:Landroid/widget/CheckedTextView;

    invoke-virtual {v4, v8}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    invoke-static {}, Lcom/android/phone/PhoneUtilsIMS;->setLTEVideoCallEnable()V

    iget-object v4, p0, Lcom/android/phone/VzwAdvancedCallingSettings;->mHDVoiceOnlyView:Landroid/widget/CheckedTextView;

    invoke-virtual {v4, v7}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    :goto_2
    iget-object v4, p0, Lcom/android/phone/VzwAdvancedCallingSettings;->mHDVoiceVideoView:Landroid/widget/CheckedTextView;

    invoke-virtual {v4, v8}, Landroid/widget/CheckedTextView;->setEnabled(Z)V

    iget-object v4, p0, Lcom/android/phone/VzwAdvancedCallingSettings;->mHDVoiceOnlyView:Landroid/widget/CheckedTextView;

    invoke-virtual {v4, v8}, Landroid/widget/CheckedTextView;->setEnabled(Z)V

    goto :goto_0

    :cond_5
    const-string/jumbo v4, "VzwAdvancedCallingSettings"

    const-string/jumbo v5, "enableAdvCallUI: mHDVoiceOnlyView"

    invoke-static {v4, v5}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/phone/VzwAdvancedCallingSettings;->mHDVoiceOnlyView:Landroid/widget/CheckedTextView;

    invoke-virtual {v4, v8}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    iget-object v4, p0, Lcom/android/phone/VzwAdvancedCallingSettings;->mHDVoiceVideoView:Landroid/widget/CheckedTextView;

    invoke-virtual {v4, v7}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    goto :goto_2

    :cond_6
    invoke-direct {p0, v7}, Lcom/android/phone/VzwAdvancedCallingSettings;->setAdvCallSwitchEnabled(Z)V

    goto :goto_0

    :cond_7
    const-string/jumbo v4, "VzwAdvancedCallingSettings"

    const-string/jumbo v5, "enableAdvCallUI: vops off and PSVT off => disable all UI"

    invoke-static {v4, v5}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/phone/VzwAdvancedCallingSettings;->disableUI()V

    goto :goto_1

    :cond_8
    invoke-virtual {p0}, Lcom/android/phone/VzwAdvancedCallingSettings;->finish()V

    goto :goto_1
.end method

.method private enableHDVoice()V
    .locals 5

    const/4 v4, 0x1

    const/4 v2, 0x0

    const-string/jumbo v0, "VzwAdvancedCallingSettings"

    const-string/jumbo v1, "enableHDVoice"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/phone/PhoneUtilsIMS;->isLTEVideoCallMenuShow()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/phone/VzwAdvancedCallingSettings;->mSharedPref:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "vzw_adv_call_sp_hd_voice_video"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/android/phone/VzwAdvancedCallingSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "preferred_tty_mode"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/VzwAdvancedCallingSettings;->mConnManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/phone/PhoneUtilsCommon;->isAvailablePSVT()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {}, Lcom/android/phone/VzwAdvancedCallingUtils;->isInboundByod()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    const-string/jumbo v0, "VzwAdvancedCallingSettings"

    const-string/jumbo v1, "enableHDVoice: mHDVoiceOnlyView"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/VzwAdvancedCallingSettings;->mHDVoiceVideoView:Landroid/widget/CheckedTextView;

    invoke-virtual {v0, v2}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/phone/VzwAdvancedCallingSettings;->mHDVoiceOnlyView:Landroid/widget/CheckedTextView;

    invoke-virtual {v0, v4}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    invoke-static {}, Lcom/android/phone/VzwAdvancedCallingUtils;->isInboundByod()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/phone/VzwAdvancedCallingUtils;->isEmergencyMode()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/VzwAdvancedCallingSettings;->mHDVoiceVideoView:Landroid/widget/CheckedTextView;

    invoke-virtual {v0, v2}, Landroid/widget/CheckedTextView;->setEnabled(Z)V

    :cond_2
    :goto_0
    invoke-static {}, Lcom/android/phone/PhoneUtilsIMS;->setVoLTEFeatureEnable()V

    iget-object v0, p0, Lcom/android/phone/VzwAdvancedCallingSettings;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1770

    const/16 v1, 0x66

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    invoke-direct {p0, v4}, Lcom/android/phone/VzwAdvancedCallingSettings;->setAdvCallSwitchEnabled(Z)V

    invoke-direct {p0}, Lcom/android/phone/VzwAdvancedCallingSettings;->disableUI()V

    return-void

    :cond_3
    invoke-static {}, Lcom/android/phone/VzwAdvancedCallingUtils;->isEmergencyMode()Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "VzwAdvancedCallingSettings"

    const-string/jumbo v1, "enableHDVoice: mHDVoiceVideoView"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/VzwAdvancedCallingSettings;->mHDVoiceVideoView:Landroid/widget/CheckedTextView;

    invoke-virtual {v0, v4}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    invoke-static {}, Lcom/android/phone/PhoneUtilsIMS;->setLTEVideoCallEnable()V

    iget-object v0, p0, Lcom/android/phone/VzwAdvancedCallingSettings;->mHDVoiceOnlyView:Landroid/widget/CheckedTextView;

    invoke-virtual {v0, v2}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/phone/VzwAdvancedCallingSettings;->mHDVoiceOnlyView:Landroid/widget/CheckedTextView;

    invoke-virtual {v0, v4}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    goto :goto_0
.end method

.method private enableSettingsUI(Z)V
    .locals 3

    const-string/jumbo v0, "VzwAdvancedCallingSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "enableSettingsUI: enable["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/phone/VzwAdvancedCallingSettings;->mAdvCallSwitch:Landroid/widget/Switch;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    invoke-direct {p0}, Lcom/android/phone/VzwAdvancedCallingSettings;->enableAdvCallUI()V

    invoke-direct {p0}, Lcom/android/phone/VzwAdvancedCallingSettings;->registerForIMSCallback()V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/phone/VzwAdvancedCallingSettings;->disableUI()V

    invoke-direct {p0}, Lcom/android/phone/VzwAdvancedCallingSettings;->deRegisterForIMSCallback()V

    goto :goto_0
.end method

.method private enableVideoCalling()V
    .locals 4

    const-string/jumbo v0, "VzwAdvancedCallingSettings"

    const-string/jumbo v1, "enableVideoCalling"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/phone/PhoneUtilsIMS;->setLTEVideoCallEnable()V

    invoke-static {}, Lcom/android/phone/PhoneUtilsIMS;->setVolteVTEnable()V

    iget-object v0, p0, Lcom/android/phone/VzwAdvancedCallingSettings;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1770

    const/16 v1, 0x66

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    invoke-direct {p0}, Lcom/android/phone/VzwAdvancedCallingSettings;->disableUI()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/phone/VzwAdvancedCallingSettings;->mCurrentOperation:I

    return-void
.end method

.method private getEmergencyThemeID()I
    .locals 1

    invoke-static {}, Lcom/android/phone/VzwAdvancedCallingUtils;->isEmrOrUpsmMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0e0091

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private handleRegFailed()V
    .locals 2

    const-string/jumbo v0, "VzwAdvancedCallingSettings"

    const-string/jumbo v1, "handleRegFailed"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/phone/VzwAdvancedCallingSettings;->enableAdvCallUI()V

    return-void
.end method

.method private handleRegSuccess()V
    .locals 4

    const/4 v3, 0x1

    const-string/jumbo v0, "VzwAdvancedCallingSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleRegSuccess: mCurrentOperation["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/VzwAdvancedCallingSettings;->mCurrentOperation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/phone/VzwAdvancedCallingSettings;->mCurrentOperation:I

    packed-switch v0, :pswitch_data_0

    const-string/jumbo v0, "VzwAdvancedCallingSettings"

    const-string/jumbo v1, "handleRegSuccess: ignore rogue call back"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/phone/VzwAdvancedCallingSettings;->mCurrentOperation:I

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/VzwAdvancedCallingSettings;->mAdvCallSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v3}, Landroid/widget/Switch;->setEnabled(Z)V

    invoke-direct {p0, v3}, Lcom/android/phone/VzwAdvancedCallingSettings;->setAdvCallSwitchEnabled(Z)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/phone/VzwAdvancedCallingSettings;->mAdvCallSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v3}, Landroid/widget/Switch;->setEnabled(Z)V

    goto :goto_0

    :pswitch_2
    invoke-static {}, Lcom/android/phone/PhoneUtilsIMS;->isLTEVideoCallMenuShow()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/VzwAdvancedCallingSettings;->mAdvCallSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v3}, Landroid/widget/Switch;->setEnabled(Z)V

    invoke-direct {p0, v3}, Lcom/android/phone/VzwAdvancedCallingSettings;->setAdvCallSwitchEnabled(Z)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/android/phone/VzwAdvancedCallingSettings;->mAdvCallSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v3}, Landroid/widget/Switch;->setEnabled(Z)V

    invoke-direct {p0, v3}, Lcom/android/phone/VzwAdvancedCallingSettings;->setAdvCallSwitchEnabled(Z)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private isImsVOPSOff()Z
    .locals 3

    const/4 v2, 0x1

    const-string/jumbo v0, "ril.ims.ltevoicesupport"

    const-string/jumbo v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v2, :cond_0

    return v2

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private isNoSIMState()Z
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/phone/VzwAdvancedCallingSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/VzwAdvancedCallingSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    return v0
.end method

.method private registerForIMSCallback()V
    .locals 2

    invoke-static {}, Lcom/android/phone/PhoneUtilsIMS;->getImsManager()Lcom/sec/ims/ImsManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/phone/PhoneUtilsIMS;->getImsManager()Lcom/sec/ims/ImsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/VzwAdvancedCallingSettings;->mRegistrationListener:Lcom/sec/ims/IImsRegistrationListener;

    invoke-virtual {v0, v1}, Lcom/sec/ims/ImsManager;->registerImsRegistrationListener(Lcom/sec/ims/IImsRegistrationListener;)V

    :cond_0
    return-void
.end method

.method private setAdvCallSwitchEnabled(Z)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string/jumbo v0, "VzwAdvancedCallingSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setAdvCallSwitchEnabled: enabled["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/VzwAdvancedCallingSettings;->mAdvCallSwitch:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/android/phone/VzwAdvancedCallingSettings;->mAdvCallSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p1}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/phone/VzwAdvancedCallingSettings;->mAdvCallSwitch:Landroid/widget/Switch;

    iget-object v1, p0, Lcom/android/phone/VzwAdvancedCallingSettings;->mCheckedChangedListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/android/phone/VzwAdvancedCallingSettings;->mSubAppBarSwitchText:Landroid/widget/TextView;

    const v1, 0x7f0d0c3a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/android/phone/VzwAdvancedCallingSettings;->mHDVoiceOnlyView:Landroid/widget/CheckedTextView;

    invoke-virtual {v0, v4}, Landroid/widget/CheckedTextView;->setEnabled(Z)V

    invoke-static {}, Lcom/android/phone/PhoneUtilsIMS;->isLTEVideoCallMenuShow()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/phone/VzwAdvancedCallingUtils;->isInboundByod()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/android/phone/VzwAdvancedCallingUtils;->isEmergencyMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/VzwAdvancedCallingSettings;->mHDVoiceVideoView:Landroid/widget/CheckedTextView;

    invoke-virtual {v0, v4}, Landroid/widget/CheckedTextView;->setEnabled(Z)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/phone/VzwAdvancedCallingSettings;->mSubAppBarSwitchText:Landroid/widget/TextView;

    const v1, 0x7f0d0c3b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/android/phone/VzwAdvancedCallingSettings;->mHDVoiceVideoView:Landroid/widget/CheckedTextView;

    invoke-virtual {v0, v3}, Landroid/widget/CheckedTextView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/phone/VzwAdvancedCallingSettings;->mHDVoiceVideoView:Landroid/widget/CheckedTextView;

    invoke-virtual {v0, v3}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/phone/VzwAdvancedCallingSettings;->mHDVoiceOnlyView:Landroid/widget/CheckedTextView;

    invoke-virtual {v0, v3}, Landroid/widget/CheckedTextView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/phone/VzwAdvancedCallingSettings;->mHDVoiceOnlyView:Landroid/widget/CheckedTextView;

    invoke-virtual {v0, v3}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    goto :goto_0
.end method

.method private showAdvCallDisableWarningDialog()V
    .locals 9

    iget-object v6, p0, Lcom/android/phone/VzwAdvancedCallingSettings;->mSharedPref:Landroid/content/SharedPreferences;

    const-string/jumbo v7, "vzw_adv_call_sp_adv_call_disable_dialog"

    const/4 v8, 0x0

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    return-void

    :cond_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/android/phone/VzwAdvancedCallingSettings;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/android/phone/VzwAdvancedCallingSettings;->getEmergencyThemeID()I

    move-result v7

    invoke-direct {v1, v6, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string/jumbo v7, "layout_inflater"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    const v6, 0x7f040003

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v6, 0x7f100021

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    const v6, 0x7f100020

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v6, 0x7f0d0dd5

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    new-instance v7, Lcom/android/phone/VzwAdvancedCallingSettings$11;

    invoke-direct {v7, p0, v0}, Lcom/android/phone/VzwAdvancedCallingSettings$11;-><init>(Lcom/android/phone/VzwAdvancedCallingSettings;Landroid/widget/CheckBox;)V

    const v8, 0x104000a

    invoke-virtual {v6, v8, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private showAdvCallEnableMessageDialog()V
    .locals 9

    iget-object v6, p0, Lcom/android/phone/VzwAdvancedCallingSettings;->mSharedPref:Landroid/content/SharedPreferences;

    const-string/jumbo v7, "vzw_adv_call_sp_adv_call_enable_dialog"

    const/4 v8, 0x0

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    return-void

    :cond_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/android/phone/VzwAdvancedCallingSettings;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/android/phone/VzwAdvancedCallingSettings;->getEmergencyThemeID()I

    move-result v7

    invoke-direct {v1, v6, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string/jumbo v7, "layout_inflater"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    const v6, 0x7f040003

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v6, 0x7f100021

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    const v6, 0x7f100020

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v6, 0x7f0d0942

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    new-instance v7, Lcom/android/phone/VzwAdvancedCallingSettings$12;

    invoke-direct {v7, p0, v0}, Lcom/android/phone/VzwAdvancedCallingSettings$12;-><init>(Lcom/android/phone/VzwAdvancedCallingSettings;Landroid/widget/CheckBox;)V

    const v8, 0x104000a

    invoke-virtual {v6, v8, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private showNoVideoServiceDialog()V
    .locals 4

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/phone/VzwAdvancedCallingSettings;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/android/phone/VzwAdvancedCallingSettings;->getEmergencyThemeID()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v1, 0x7f0d0a90

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/phone/VzwAdvancedCallingSettings$13;

    invoke-direct {v2, p0}, Lcom/android/phone/VzwAdvancedCallingSettings$13;-><init>(Lcom/android/phone/VzwAdvancedCallingSettings;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/phone/VzwAdvancedCallingSettings$14;

    invoke-direct {v2, p0}, Lcom/android/phone/VzwAdvancedCallingSettings$14;-><init>(Lcom/android/phone/VzwAdvancedCallingSettings;)V

    const v3, 0x104000a

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private showTTYOnDialog()V
    .locals 4

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/phone/VzwAdvancedCallingSettings;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/android/phone/VzwAdvancedCallingSettings;->getEmergencyThemeID()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v1, 0x7f0d0ddf

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/phone/VzwAdvancedCallingSettings$10;

    invoke-direct {v2, p0}, Lcom/android/phone/VzwAdvancedCallingSettings$10;-><init>(Lcom/android/phone/VzwAdvancedCallingSettings;)V

    const v3, 0x104000a

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method


# virtual methods
.method public bixbyEnableAdvCall(Z)V
    .locals 1

    invoke-static {}, Lcom/android/phone/PhoneUtilsIMS;->isLTEVideoCallEnabled()Z

    move-result v0

    invoke-direct {p0, p1}, Lcom/android/phone/VzwAdvancedCallingSettings;->setAdvCallSwitchEnabled(Z)V

    return-void
.end method

.method public initializeAdvCallSettingsUI()V
    .locals 4

    const-string/jumbo v0, "VzwAdvancedCallingSettings"

    const-string/jumbo v1, "initializeAdvCallSettingsUI"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "connectivity"

    invoke-virtual {p0, v0}, Lcom/android/phone/VzwAdvancedCallingSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/phone/VzwAdvancedCallingSettings;->mConnManager:Landroid/net/ConnectivityManager;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    iput-object v0, p0, Lcom/android/phone/VzwAdvancedCallingSettings;->mCallManager:Lcom/android/internal/telephony/CallManager;

    invoke-direct {p0}, Lcom/android/phone/VzwAdvancedCallingSettings;->enableAdvCallUI()V

    invoke-virtual {p0}, Lcom/android/phone/VzwAdvancedCallingSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "mobile_data"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/VzwAdvancedCallingSettings;->mDataEnabledObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-direct {p0}, Lcom/android/phone/VzwAdvancedCallingSettings;->registerForIMSCallback()V

    iget-object v0, p0, Lcom/android/phone/VzwAdvancedCallingSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/VzwAdvancedCallingSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/phone/VzwAdvancedCallingSettings;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    :cond_0
    iget-object v0, p0, Lcom/android/phone/VzwAdvancedCallingSettings;->mAdvCallSwitch:Landroid/widget/Switch;

    iget-object v1, p0, Lcom/android/phone/VzwAdvancedCallingSettings;->mCheckedChangedListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/ListActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-direct {p0, p1}, Lcom/android/phone/VzwAdvancedCallingSettings;->applyFullScreenInLandscape(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/android/phone/VzwAdvancedCallingUtils;->isAdvCallSupported()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/VzwAdvancedCallingSettings;->finish()V

    return-void

    :cond_0
    const-string/jumbo v2, "VzwAdvancedCallingSettings"

    const-string/jumbo v3, "onCreate()"

    invoke-static {v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v2, 0x7f040004

    invoke-virtual {p0, v2}, Lcom/android/phone/VzwAdvancedCallingSettings;->setContentView(I)V

    const v2, 0x102000a

    invoke-virtual {p0, v2}, Lcom/android/phone/VzwAdvancedCallingSettings;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/android/phone/VzwAdvancedCallingSettings;->adv_call_settings_list:Landroid/widget/ListView;

    new-instance v1, Lcom/android/phone/VzwAdvancedCallingSettings$customAdapter;

    iget-object v2, p0, Lcom/android/phone/VzwAdvancedCallingSettings;->items:[I

    invoke-direct {v1, p0, v2}, Lcom/android/phone/VzwAdvancedCallingSettings$customAdapter;-><init>(Lcom/android/phone/VzwAdvancedCallingSettings;[I)V

    iget-object v2, p0, Lcom/android/phone/VzwAdvancedCallingSettings;->adv_call_settings_list:Landroid/widget/ListView;

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-virtual {p0}, Lcom/android/phone/VzwAdvancedCallingSettings;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_1

    const v2, 0x7f0d0a88

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setTitle(I)V

    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/VzwAdvancedCallingSettings;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getStatusBarColor()I

    move-result v2

    const v3, -0x50506

    if-ne v2, v3, :cond_2

    const-string/jumbo v2, "VzwAdvancedCallingSettings"

    const-string/jumbo v3, "onCreate: set light status bar theme"

    invoke-static {v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/phone/VzwAdvancedCallingSettings;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/phone/VzwAdvancedCallingSettings;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v3

    or-int/lit16 v3, v3, 0x2000

    invoke-virtual {v2, v3}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_2
    iput-object p0, p0, Lcom/android/phone/VzwAdvancedCallingSettings;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/phone/VzwAdvancedCallingSettings;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/VzwAdvancedCallingSettings;->mSharedPref:Landroid/content/SharedPreferences;

    const v2, 0x7f100023

    invoke-virtual {p0, v2}, Lcom/android/phone/VzwAdvancedCallingSettings;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Switch;

    iput-object v2, p0, Lcom/android/phone/VzwAdvancedCallingSettings;->mAdvCallSwitch:Landroid/widget/Switch;

    const v2, 0x7f100022

    invoke-virtual {p0, v2}, Lcom/android/phone/VzwAdvancedCallingSettings;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/phone/VzwAdvancedCallingSettings;->mSubAppBarSwitchText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/phone/VzwAdvancedCallingSettings;->adv_call_settings_list:Landroid/widget/ListView;

    new-instance v3, Lcom/android/phone/VzwAdvancedCallingSettings$6;

    invoke-direct {v3, p0}, Lcom/android/phone/VzwAdvancedCallingSettings$6;-><init>(Lcom/android/phone/VzwAdvancedCallingSettings;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/VzwAdvancedCallingSettings;->mPhoneContext:Landroid/content/Context;

    const-string/jumbo v2, "phone"

    invoke-virtual {p0, v2}, Lcom/android/phone/VzwAdvancedCallingSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    iput-object v2, p0, Lcom/android/phone/VzwAdvancedCallingSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    new-instance v2, Lcom/android/phone/VzwAdvancedCallingSettings$7;

    invoke-direct {v2, p0}, Lcom/android/phone/VzwAdvancedCallingSettings$7;-><init>(Lcom/android/phone/VzwAdvancedCallingSettings;)V

    iput-object v2, p0, Lcom/android/phone/VzwAdvancedCallingSettings;->mCheckedChangedListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    iget-object v2, p0, Lcom/android/phone/VzwAdvancedCallingSettings;->mAdvCallSwitch:Landroid/widget/Switch;

    invoke-static {}, Lcom/android/phone/PhoneUtilsIMS;->isVoLTEFeatureEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/Switch;->setChecked(Z)V

    const/4 v2, -0x1

    iput v2, p0, Lcom/android/phone/VzwAdvancedCallingSettings;->mCurrentOperation:I

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/VzwAdvancedCallingSettings;->finish()V

    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onPause()V
    .locals 4

    const/4 v3, 0x0

    const-string/jumbo v0, "VzwAdvancedCallingSettings"

    const-string/jumbo v1, "onPause()"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/ListActivity;->onPause()V

    invoke-virtual {p0}, Lcom/android/phone/VzwAdvancedCallingSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/VzwAdvancedCallingSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/VzwAdvancedCallingSettings;->mDataEnabledObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_0
    invoke-direct {p0}, Lcom/android/phone/VzwAdvancedCallingSettings;->deRegisterForIMSCallback()V

    iget-object v0, p0, Lcom/android/phone/VzwAdvancedCallingSettings;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/phone/VzwAdvancedCallingSettings;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/VzwAdvancedCallingSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/VzwAdvancedCallingSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/phone/VzwAdvancedCallingSettings;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    :cond_1
    const-string/jumbo v0, "support_bixby"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/VzwAdvancedCallingSettings;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/bixby/BixbyApi;->clearInterimStateListener()V

    iget-object v0, p0, Lcom/android/phone/VzwAdvancedCallingSettings;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    const-string/jumbo v1, "AdvancedCalling"

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/bixby/BixbyApi;->logExitState(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/phone/VzwAdvancedCallingSettings;->mStateListener:Lcom/samsung/android/sdk/bixby/BixbyApi$InterimStateListener;

    :cond_2
    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    invoke-static {}, Lcom/android/phone/VzwAdvancedCallingUtils;->isAdvCallSupported()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/VzwAdvancedCallingSettings;->finish()V

    return-void

    :cond_0
    const-string/jumbo v0, "VzwAdvancedCallingSettings"

    const-string/jumbo v1, "onResume()"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/VzwAdvancedCallingSettings;->mHDVoiceOnlyView:Landroid/widget/CheckedTextView;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/phone/VzwAdvancedCallingSettings;->initializeAdvCallSettingsUI()V

    :cond_1
    invoke-direct {p0}, Lcom/android/phone/VzwAdvancedCallingSettings;->checkBixbySupport()V

    iget-object v0, p0, Lcom/android/phone/VzwAdvancedCallingSettings;->mPhoneContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/VzwAdvancedCallingSettings;->applyFullScreenInLandscape(Landroid/content/res/Configuration;)V

    return-void
.end method
