.class public Lcom/android/phone/VzwAdvancedCalling;
.super Landroid/preference/PreferenceActivity;
.source "VzwAdvancedCalling.java"


# instance fields
.field mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

.field private mContext:Landroid/content/Context;

.field private mPhoneContext:Landroid/content/Context;

.field mStateListener:Lcom/samsung/android/sdk/bixby/BixbyApi$InterimStateListener;

.field private mTelephonyMgr:Landroid/telephony/TelephonyManager;

.field private mVzwActivateAdvCall:Landroid/preference/Preference;

.field private mVzwAdvCallSetting:Landroid/preference/Preference;

.field private mVzwVowifiCallSettingPref:Landroid/preference/Preference;


# direct methods
.method static synthetic -get0(Lcom/android/phone/VzwAdvancedCalling;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/VzwAdvancedCalling;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/phone/VzwAdvancedCalling;)Landroid/preference/Preference;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/VzwAdvancedCalling;->mVzwVowifiCallSettingPref:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/phone/VzwAdvancedCalling;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/phone/VzwAdvancedCalling;->checkVoWiFiMdn()Z

    move-result v0

    return v0
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    invoke-static {}, Lcom/samsung/android/sdk/bixby/BixbyApi;->getInstance()Lcom/samsung/android/sdk/bixby/BixbyApi;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/VzwAdvancedCalling;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

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

    invoke-virtual {p0}, Lcom/android/phone/VzwAdvancedCalling;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v1, v1, 0x400

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-virtual {p0}, Lcom/android/phone/VzwAdvancedCalling;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/VzwAdvancedCalling;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v1, v1, -0x401

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-virtual {p0}, Lcom/android/phone/VzwAdvancedCalling;->getWindow()Landroid/view/Window;

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

    new-instance v0, Lcom/android/phone/VzwAdvancedCallingStateListener;

    iget-object v1, p0, Lcom/android/phone/VzwAdvancedCalling;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/phone/VzwAdvancedCallingStateListener;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/phone/VzwAdvancedCalling;->mStateListener:Lcom/samsung/android/sdk/bixby/BixbyApi$InterimStateListener;

    iget-object v0, p0, Lcom/android/phone/VzwAdvancedCalling;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    iget-object v1, p0, Lcom/android/phone/VzwAdvancedCalling;->mStateListener:Lcom/samsung/android/sdk/bixby/BixbyApi$InterimStateListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/bixby/BixbyApi;->setInterimStateListener(Lcom/samsung/android/sdk/bixby/BixbyApi$InterimStateListener;)V

    invoke-static {}, Lcom/android/phone/ia/IAUtil;->isIAExecutingState()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "AdvancedCalling"

    invoke-static {}, Lcom/android/phone/ia/IAUtil;->getIAExecutingStateId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/phone/ia/IAUtil;->isIAExecutingLastState()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "AdvancedCalling"

    invoke-static {v0}, Lcom/android/phone/ia/IAUtil;->requestNLG(Ljava/lang/String;)V

    :cond_0
    sget-object v0, Lcom/android/phone/ia/IAConstants;->RESPONSE_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-static {v0}, Lcom/android/phone/ia/IAUtil;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    :cond_1
    iget-object v0, p0, Lcom/android/phone/VzwAdvancedCalling;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    const-string/jumbo v1, "AdvancedCalling"

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/bixby/BixbyApi;->logEnterState(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method private checkVoWiFiMdn()Z
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/phone/VzwAdvancedCalling;->mTelephonyMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/VzwAdvancedCalling;->mTelephonyMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/VzwAdvancedCalling;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "vowifi_mdn"

    const-string/jumbo v4, "0"

    invoke-static {v2, v3, v4}, Lcom/android/phone/VoWifiSettingsDataBaseManager;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "VzwAdvancedCalling"

    const-string/jumbo v2, "checkVoWiFiMdn: SIM MDN and saved MDN is same"

    invoke-static {v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string/jumbo v1, "VzwAdvancedCalling"

    const-string/jumbo v2, "checkVoWiFiMdn: SIM MDN and saved MDN is not same"

    invoke-static {v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private disableActivateAdvCall()V
    .locals 2

    const-string/jumbo v0, "VzwAdvancedCalling"

    const-string/jumbo v1, "disableActivateAdvCall"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/VzwAdvancedCalling;->mVzwActivateAdvCall:Landroid/preference/Preference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setShouldDisableView(Z)V

    iget-object v0, p0, Lcom/android/phone/VzwAdvancedCalling;->mVzwActivateAdvCall:Landroid/preference/Preference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    return-void
.end method

.method private disableAdvancedCallSetting()V
    .locals 2

    iget-object v0, p0, Lcom/android/phone/VzwAdvancedCalling;->mVzwAdvCallSetting:Landroid/preference/Preference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setShouldDisableView(Z)V

    iget-object v0, p0, Lcom/android/phone/VzwAdvancedCalling;->mVzwAdvCallSetting:Landroid/preference/Preference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    return-void
.end method

.method private enableAdvCallSetting()V
    .locals 6

    const-string/jumbo v3, "connectivity"

    invoke-virtual {p0, v3}, Lcom/android/phone/VzwAdvancedCalling;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v3

    iget-object v0, v3, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {}, Lcom/android/phone/PhoneUtilsIMS;->isVoLTEMenuShow()Z

    move-result v2

    const-string/jumbo v3, "VzwAdvancedCalling"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isVoLTEMenuShow: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v2, :cond_0

    const-string/jumbo v3, "VzwAdvancedCalling"

    const-string/jumbo v4, "Remove Advanced Calling Setting."

    invoke-static {v3, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/phone/VzwAdvancedCalling;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/VzwAdvancedCalling;->mVzwAdvCallSetting:Landroid/preference/Preference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    iget-object v3, p0, Lcom/android/phone/VzwAdvancedCalling;->mVzwActivateAdvCall:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/phone/VzwAdvancedCalling;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d0d63

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v3, "VzwAdvancedCalling"

    const-string/jumbo v4, "Adding Advanced Calling Setting."

    invoke-static {v3, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/phone/VzwAdvancedCalling;->mVzwActivateAdvCall:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/phone/VzwAdvancedCalling;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d0d65

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/android/phone/VzwAdvancedCalling;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/VzwAdvancedCalling;->mVzwAdvCallSetting:Landroid/preference/Preference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    iget-object v4, p0, Lcom/android/phone/VzwAdvancedCalling;->mVzwAdvCallSetting:Landroid/preference/Preference;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v3

    sget-object v5, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v3, v5, :cond_1

    const/4 v3, 0x1

    :goto_1
    invoke-virtual {v4, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v3, p0, Lcom/android/phone/VzwAdvancedCalling;->mVzwAdvCallSetting:Landroid/preference/Preference;

    new-instance v4, Lcom/android/phone/VzwAdvancedCalling$2;

    invoke-direct {v4, p0}, Lcom/android/phone/VzwAdvancedCalling$2;-><init>(Lcom/android/phone/VzwAdvancedCalling;)V

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private removeAdvCallSetting()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/phone/VzwAdvancedCalling;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/VzwAdvancedCalling;->mVzwAdvCallSetting:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    return-void
.end method

.method private removeVoWiFiCallSetting()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/phone/VzwAdvancedCalling;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/VzwAdvancedCalling;->mVzwVowifiCallSettingPref:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    return-void
.end method

.method private sendWifiEnableBroadcast(Z)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "action_wifi_call_enable_broadcast"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "wifi_call_enable"

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/phone/VzwAdvancedCalling;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private showActivateAdvCall(Z)V
    .locals 5

    const-string/jumbo v2, "VzwAdvancedCalling"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "showActivateAdvCall: show["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/android/phone/VzwAdvancedCallingUtils;->isGCF()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/android/phone/VzwAdvancedCalling;->disableActivateAdvCall()V

    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/android/phone/PhoneUtilsIMS;->isVoLTEMenuShow()Z

    move-result v1

    invoke-static {}, Lcom/android/phone/VzwAdvancedCallingUtils;->isInboundByod()Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz v1, :cond_3

    :cond_2
    iget-object v2, p0, Lcom/android/phone/VzwAdvancedCalling;->mVzwActivateAdvCall:Landroid/preference/Preference;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setShouldDisableView(Z)V

    iget-object v2, p0, Lcom/android/phone/VzwAdvancedCalling;->mVzwActivateAdvCall:Landroid/preference/Preference;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v2, p0, Lcom/android/phone/VzwAdvancedCalling;->mVzwActivateAdvCall:Landroid/preference/Preference;

    new-instance v3, Lcom/android/phone/VzwAdvancedCalling$1;

    invoke-direct {v3, p0}, Lcom/android/phone/VzwAdvancedCalling$1;-><init>(Lcom/android/phone/VzwAdvancedCalling;)V

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/android/phone/VzwAdvancedCalling;->disableActivateAdvCall()V

    goto :goto_0
.end method

.method private updateUxInEmergencyMode()V
    .locals 2

    invoke-static {}, Lcom/android/phone/TeleServiceSystemDB;->isEmergencyMode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/phone/TeleServiceSystemDB;->isUltraPowerSavingMode()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string/jumbo v0, "VzwAdvancedCalling"

    const-string/jumbo v1, "updateUxInEmergencyMode: disable mVzwAdvCallSetting preference"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/phone/VzwAdvancedCalling;->disableAdvancedCallSetting()V

    :cond_1
    return-void
.end method

.method private updateVowifiCallSetting()V
    .locals 5

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    iget-object v0, v2, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-direct {p0}, Lcom/android/phone/VzwAdvancedCalling;->checkVoWiFiMdn()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/phone/VzwAdvancedCalling;->mVzwVowifiCallSettingPref:Landroid/preference/Preference;

    const v3, 0x7f0d0a24

    invoke-virtual {p0, v3}, Lcom/android/phone/VzwAdvancedCalling;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    :goto_0
    invoke-static {}, Lcom/android/phone/VzwAdvancedCallingUtils;->isGCF()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/android/phone/VzwAdvancedCallingUtils;->isInboundByod()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p0}, Lcom/android/phone/VzwAdvancedCalling;->isVoWifiProvisioned()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_0
    const-string/jumbo v2, "VzwAdvancedCalling"

    const-string/jumbo v3, "updateVowifiCallSetting: adding VoWiFi Call setting"

    invoke-static {v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/phone/VzwAdvancedCalling;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/VzwAdvancedCalling;->mVzwVowifiCallSettingPref:Landroid/preference/Preference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    invoke-static {}, Lcom/android/phone/PhoneUtilsIMS;->isVoLTEMenuShow()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/phone/VzwAdvancedCalling;->mVzwVowifiCallSettingPref:Landroid/preference/Preference;

    const v3, 0x7f0d0d71

    invoke-virtual {p0, v3}, Lcom/android/phone/VzwAdvancedCalling;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_1
    iget-object v2, p0, Lcom/android/phone/VzwAdvancedCalling;->mVzwVowifiCallSettingPref:Landroid/preference/Preference;

    invoke-static {}, Lcom/android/phone/PhoneUtilsIMS;->isVoLTEMenuShow()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v3, v4, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-virtual {v2, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/phone/VzwAdvancedCalling;->mVzwVowifiCallSettingPref:Landroid/preference/Preference;

    new-instance v2, Lcom/android/phone/VzwAdvancedCalling$3;

    invoke-direct {v2, p0}, Lcom/android/phone/VzwAdvancedCalling$3;-><init>(Lcom/android/phone/VzwAdvancedCalling;)V

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    :goto_2
    return-void

    :cond_2
    iget-object v2, p0, Lcom/android/phone/VzwAdvancedCalling;->mVzwVowifiCallSettingPref:Landroid/preference/Preference;

    const v3, 0x7f0d0d6e

    invoke-virtual {p0, v3}, Lcom/android/phone/VzwAdvancedCalling;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    const-string/jumbo v1, "VzwAdvancedCalling"

    const-string/jumbo v2, "updateVowifiCallSetting: remove VoWiFi call setting"

    invoke-static {v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/phone/VzwAdvancedCalling;->removeVoWiFiCallSetting()V

    goto :goto_2

    :cond_4
    iget-object v2, p0, Lcom/android/phone/VzwAdvancedCalling;->mVzwVowifiCallSettingPref:Landroid/preference/Preference;

    const v3, 0x7f0d0d72

    invoke-virtual {p0, v3}, Lcom/android/phone/VzwAdvancedCalling;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method


# virtual methods
.method public isVoWifiProvisioned()Z
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v1, v3, [Ljava/lang/String;

    const-string/jumbo v3, "133"

    const/4 v4, 0x0

    aput-object v3, v1, v4

    invoke-static {v1}, Lcom/android/phone/PhoneUtilsIMS;->getIMSSettingValues([Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v4, "1"

    const-string/jumbo v3, "133"

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    :cond_0
    const-string/jumbo v3, "VzwAdvancedCalling"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isVoWifiProvisioned : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-super {p0, p1, p2, p3}, Landroid/preference/PreferenceActivity;->onActivityResult(IILandroid/content/Intent;)V

    const-string/jumbo v0, "VzwAdvancedCalling"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onActivityResult: requestCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " resultCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0xa

    if-ne p1, v0, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    const-string/jumbo v0, "VzwAdvancedCalling"

    const-string/jumbo v1, "set wifi call enable to 1"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/VzwAdvancedCalling;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "wifi_call_enable"

    invoke-static {v0, v1, v4}, Lcom/android/phone/VoWifiSettingsDataBaseManager;->setInt(Landroid/content/Context;Ljava/lang/String;I)V

    invoke-direct {p0, v4}, Lcom/android/phone/VzwAdvancedCalling;->sendWifiEnableBroadcast(Z)V

    iget-object v0, p0, Lcom/android/phone/VzwAdvancedCalling;->mContext:Landroid/content/Context;

    const v1, 0x7f0d0d6f

    invoke-virtual {p0, v1}, Lcom/android/phone/VzwAdvancedCalling;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "VzwAdvancedCalling"

    const-string/jumbo v1, "set wifi call enable to 0"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/VzwAdvancedCalling;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "wifi_call_enable"

    invoke-static {v0, v1, v3}, Lcom/android/phone/VoWifiSettingsDataBaseManager;->setInt(Landroid/content/Context;Ljava/lang/String;I)V

    invoke-direct {p0, v3}, Lcom/android/phone/VzwAdvancedCalling;->sendWifiEnableBroadcast(Z)V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-direct {p0, p1}, Lcom/android/phone/VzwAdvancedCalling;->applyFullScreenInLandscape(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    const/4 v4, -0x1

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    const-string/jumbo v2, "VzwAdvancedCalling"

    const-string/jumbo v3, "onCreate()"

    invoke-static {v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/phone/VzwAdvancedCallingUtils;->isAdvCallSupported()Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "VzwAdvancedCalling"

    const-string/jumbo v3, "onCreate: advanced calling is not supported"

    invoke-static {v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/phone/VzwAdvancedCalling;->finish()V

    return-void

    :cond_0
    const v2, 0x7f070003

    invoke-virtual {p0, v2}, Lcom/android/phone/VzwAdvancedCalling;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/android/phone/VzwAdvancedCalling;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_1
    const-string/jumbo v2, "vzw_activate_volte_call"

    invoke-virtual {p0, v2}, Lcom/android/phone/VzwAdvancedCalling;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/VzwAdvancedCalling;->mVzwActivateAdvCall:Landroid/preference/Preference;

    const-string/jumbo v2, "vzw_advanced_calling"

    invoke-virtual {p0, v2}, Lcom/android/phone/VzwAdvancedCalling;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/VzwAdvancedCalling;->mVzwAdvCallSetting:Landroid/preference/Preference;

    const-string/jumbo v2, "vzw_vowifi_calling"

    invoke-virtual {p0, v2}, Lcom/android/phone/VzwAdvancedCalling;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/VzwAdvancedCalling;->mVzwVowifiCallSettingPref:Landroid/preference/Preference;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/VzwAdvancedCalling;->mPhoneContext:Landroid/content/Context;

    iput-object p0, p0, Lcom/android/phone/VzwAdvancedCalling;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/phone/VzwAdvancedCalling;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    iput-object v2, p0, Lcom/android/phone/VzwAdvancedCalling;->mTelephonyMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Lcom/android/phone/VzwAdvancedCalling;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "allow_volte_provisioning"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v4, :cond_2

    invoke-virtual {p0}, Lcom/android/phone/VzwAdvancedCalling;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "allow_volte_provisioning"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/4 v1, 0x0

    :cond_2
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/VzwAdvancedCalling;->finish()V

    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method protected onPause()V
    .locals 2

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    const-string/jumbo v0, "support_bixby"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/VzwAdvancedCalling;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/bixby/BixbyApi;->clearInterimStateListener()V

    iget-object v0, p0, Lcom/android/phone/VzwAdvancedCalling;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    const-string/jumbo v1, "AdvancedCalling"

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/bixby/BixbyApi;->logExitState(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/VzwAdvancedCalling;->mStateListener:Lcom/samsung/android/sdk/bixby/BixbyApi$InterimStateListener;

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 5

    const/4 v4, 0x0

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    invoke-static {}, Lcom/android/phone/VzwAdvancedCallingUtils;->isAdvCallSupported()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/VzwAdvancedCalling;->finish()V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/VzwAdvancedCalling;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "allow_volte_provisioning"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const-string/jumbo v1, "VzwAdvancedCalling"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "allow_volte_provisioning = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_1

    const-string/jumbo v1, "VzwAdvancedCalling"

    const-string/jumbo v2, "allow_volte_provisioning is 0"

    invoke-static {v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/phone/VzwAdvancedCalling;->showActivateAdvCall(Z)V

    invoke-direct {p0}, Lcom/android/phone/VzwAdvancedCalling;->removeAdvCallSetting()V

    :goto_0
    invoke-direct {p0}, Lcom/android/phone/VzwAdvancedCalling;->updateVowifiCallSetting()V

    invoke-direct {p0}, Lcom/android/phone/VzwAdvancedCalling;->updateUxInEmergencyMode()V

    invoke-direct {p0}, Lcom/android/phone/VzwAdvancedCalling;->checkBixbySupport()V

    iget-object v1, p0, Lcom/android/phone/VzwAdvancedCalling;->mPhoneContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/VzwAdvancedCalling;->applyFullScreenInLandscape(Landroid/content/res/Configuration;)V

    return-void

    :cond_1
    const-string/jumbo v1, "VzwAdvancedCalling"

    const-string/jumbo v2, "allow_volte_provisioning is 1"

    invoke-static {v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v4}, Lcom/android/phone/VzwAdvancedCalling;->showActivateAdvCall(Z)V

    invoke-direct {p0}, Lcom/android/phone/VzwAdvancedCalling;->enableAdvCallSetting()V

    goto :goto_0
.end method
