.class public Lcom/android/phone/VzwVoWiFiCallSettings;
.super Landroid/preference/PreferenceActivity;
.source "VzwVoWiFiCallSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/VzwVoWiFiCallSettings$1;,
        Lcom/android/phone/VzwVoWiFiCallSettings$WifiCallingSettingsStateListener;
    }
.end annotation


# instance fields
.field private mAlertDialog:Landroid/app/AlertDialog;

.field mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

.field private final mBixbyHandler:Landroid/os/Handler;

.field private mContext:Landroid/content/Context;

.field mStateListener:Lcom/samsung/android/sdk/bixby/BixbyApi$InterimStateListener;

.field private mSubAppBarSwitchText:Landroid/widget/TextView;

.field private mUpdateEmergencyLocationInfoPref:Landroid/preference/Preference;

.field private mUpdateRoamingSettingPref:Landroid/preference/Preference;

.field private mVowifiCallSwitch:Landroid/widget/Switch;


# direct methods
.method static synthetic -get0(Lcom/android/phone/VzwVoWiFiCallSettings;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/VzwVoWiFiCallSettings;->mBixbyHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/phone/VzwVoWiFiCallSettings;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/VzwVoWiFiCallSettings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/phone/VzwVoWiFiCallSettings;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/VzwVoWiFiCallSettings;->mSubAppBarSwitchText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/phone/VzwVoWiFiCallSettings;)Landroid/preference/Preference;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/VzwVoWiFiCallSettings;->mUpdateEmergencyLocationInfoPref:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/phone/VzwVoWiFiCallSettings;)Landroid/preference/Preference;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/VzwVoWiFiCallSettings;->mUpdateRoamingSettingPref:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/phone/VzwVoWiFiCallSettings;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/VzwVoWiFiCallSettings;->sendWifiEnableBroadcast(Z)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/phone/VzwVoWiFiCallSettings;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/phone/VzwVoWiFiCallSettings;->setVowifiPreferenceStatus(ZZ)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/phone/VzwVoWiFiCallSettings;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/phone/VzwVoWiFiCallSettings;->setVowifiUISetting(ZZ)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/phone/VzwVoWiFiCallSettings;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/phone/VzwVoWiFiCallSettings;->setWifiCallGlobalSetting(ZZ)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    new-instance v0, Lcom/android/phone/VzwVoWiFiCallSettings$1;

    invoke-direct {v0, p0}, Lcom/android/phone/VzwVoWiFiCallSettings$1;-><init>(Lcom/android/phone/VzwVoWiFiCallSettings;)V

    iput-object v0, p0, Lcom/android/phone/VzwVoWiFiCallSettings;->mBixbyHandler:Landroid/os/Handler;

    invoke-static {}, Lcom/samsung/android/sdk/bixby/BixbyApi;->getInstance()Lcom/samsung/android/sdk/bixby/BixbyApi;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/VzwVoWiFiCallSettings;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    return-void
.end method

.method private checkBixbySupport()V
    .locals 2

    const-string/jumbo v0, "support_bixby"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/android/phone/VzwVoWiFiCallSettings$WifiCallingSettingsStateListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/phone/VzwVoWiFiCallSettings$WifiCallingSettingsStateListener;-><init>(Lcom/android/phone/VzwVoWiFiCallSettings;Lcom/android/phone/VzwVoWiFiCallSettings$WifiCallingSettingsStateListener;)V

    iput-object v0, p0, Lcom/android/phone/VzwVoWiFiCallSettings;->mStateListener:Lcom/samsung/android/sdk/bixby/BixbyApi$InterimStateListener;

    iget-object v0, p0, Lcom/android/phone/VzwVoWiFiCallSettings;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    iget-object v1, p0, Lcom/android/phone/VzwVoWiFiCallSettings;->mStateListener:Lcom/samsung/android/sdk/bixby/BixbyApi$InterimStateListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/bixby/BixbyApi;->setInterimStateListener(Lcom/samsung/android/sdk/bixby/BixbyApi$InterimStateListener;)V

    invoke-static {}, Lcom/android/phone/ia/IAUtil;->isIAExecutingState()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "WiFiCalling"

    invoke-static {}, Lcom/android/phone/ia/IAUtil;->getIAExecutingStateId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/phone/ia/IAUtil;->isIAExecutingLastState()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "WiFiCalling"

    invoke-static {v0}, Lcom/android/phone/ia/IAUtil;->requestNLG(Ljava/lang/String;)V

    :cond_0
    sget-object v0, Lcom/android/phone/ia/IAConstants;->RESPONSE_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-static {v0}, Lcom/android/phone/ia/IAUtil;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    :cond_1
    iget-object v0, p0, Lcom/android/phone/VzwVoWiFiCallSettings;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    const-string/jumbo v1, "WiFiCalling"

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/bixby/BixbyApi;->logEnterState(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method private enableRoamingSetting()V
    .locals 2

    const-string/jumbo v0, "VzwVoWiFiCallSettings"

    const-string/jumbo v1, "Adding roaming setting."

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/phone/VzwVoWiFiCallSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/VzwVoWiFiCallSettings;->mUpdateRoamingSettingPref:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    iget-object v0, p0, Lcom/android/phone/VzwVoWiFiCallSettings;->mUpdateRoamingSettingPref:Landroid/preference/Preference;

    new-instance v1, Lcom/android/phone/VzwVoWiFiCallSettings$4;

    invoke-direct {v1, p0}, Lcom/android/phone/VzwVoWiFiCallSettings$4;-><init>(Lcom/android/phone/VzwVoWiFiCallSettings;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    return-void
.end method

.method private enableUpdateAddressSetting()V
    .locals 2

    const-string/jumbo v0, "VzwVoWiFiCallSettings"

    const-string/jumbo v1, "Adding update address setting."

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/phone/VzwVoWiFiCallSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/VzwVoWiFiCallSettings;->mUpdateEmergencyLocationInfoPref:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    iget-object v0, p0, Lcom/android/phone/VzwVoWiFiCallSettings;->mUpdateEmergencyLocationInfoPref:Landroid/preference/Preference;

    new-instance v1, Lcom/android/phone/VzwVoWiFiCallSettings$3;

    invoke-direct {v1, p0}, Lcom/android/phone/VzwVoWiFiCallSettings$3;-><init>(Lcom/android/phone/VzwVoWiFiCallSettings;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

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

    iget-object v1, p0, Lcom/android/phone/VzwVoWiFiCallSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private setVowifiPreferenceStatus(ZZ)V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x1

    const-string/jumbo v2, "VzwVoWiFiCallSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setVowifiPreferenceStatus: isChecked: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " showDialog: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/phone/VzwVoWiFiCallSettings;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "wifi_call_enable"

    invoke-static {v2, v3, v6}, Lcom/android/phone/VoWifiSettingsDataBaseManager;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v5, :cond_0

    const/4 v1, 0x1

    :goto_0
    if-eqz p1, :cond_1

    iget-object v2, p0, Lcom/android/phone/VzwVoWiFiCallSettings;->mSubAppBarSwitchText:Landroid/widget/TextView;

    const v3, 0x7f0d0c3a

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    invoke-direct {p0}, Lcom/android/phone/VzwVoWiFiCallSettings;->enableUpdateAddressSetting()V

    invoke-direct {p0}, Lcom/android/phone/VzwVoWiFiCallSettings;->enableRoamingSetting()V

    invoke-direct {p0, v5, v5}, Lcom/android/phone/VzwVoWiFiCallSettings;->setVowifiUISetting(ZZ)V

    iget-object v2, p0, Lcom/android/phone/VzwVoWiFiCallSettings;->mUpdateEmergencyLocationInfoPref:Landroid/preference/Preference;

    invoke-virtual {v2, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v2, p0, Lcom/android/phone/VzwVoWiFiCallSettings;->mUpdateRoamingSettingPref:Landroid/preference/Preference;

    invoke-virtual {v2, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    invoke-direct {p0, p1, v1}, Lcom/android/phone/VzwVoWiFiCallSettings;->setWifiCallGlobalSetting(ZZ)V

    :goto_1
    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/phone/VzwVoWiFiCallSettings;->mSubAppBarSwitchText:Landroid/widget/TextView;

    const v3, 0x7f0d0c3b

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    if-eqz p2, :cond_2

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/phone/VzwVoWiFiCallSettings;->mContext:Landroid/content/Context;

    const/4 v3, 0x5

    invoke-direct {v0, v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v2, 0x7f0d0def

    invoke-virtual {p0, v2}, Lcom/android/phone/VzwVoWiFiCallSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    const v2, 0x7f0d09d7

    invoke-virtual {p0, v2}, Lcom/android/phone/VzwVoWiFiCallSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/android/phone/VzwVoWiFiCallSettings$5;

    invoke-direct {v3, p0}, Lcom/android/phone/VzwVoWiFiCallSettings$5;-><init>(Lcom/android/phone/VzwVoWiFiCallSettings;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v2, 0x7f0d0df0

    invoke-virtual {p0, v2}, Lcom/android/phone/VzwVoWiFiCallSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/android/phone/VzwVoWiFiCallSettings$6;

    invoke-direct {v3, p0, p1, v1}, Lcom/android/phone/VzwVoWiFiCallSettings$6;-><init>(Lcom/android/phone/VzwVoWiFiCallSettings;ZZ)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/VzwVoWiFiCallSettings;->mAlertDialog:Landroid/app/AlertDialog;

    iget-object v2, p0, Lcom/android/phone/VzwVoWiFiCallSettings;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    goto :goto_1

    :cond_2
    invoke-direct {p0, v5, v6}, Lcom/android/phone/VzwVoWiFiCallSettings;->setVowifiUISetting(ZZ)V

    iget-object v2, p0, Lcom/android/phone/VzwVoWiFiCallSettings;->mUpdateEmergencyLocationInfoPref:Landroid/preference/Preference;

    invoke-virtual {v2, v6}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v2, p0, Lcom/android/phone/VzwVoWiFiCallSettings;->mUpdateRoamingSettingPref:Landroid/preference/Preference;

    invoke-virtual {v2, v6}, Landroid/preference/Preference;->setEnabled(Z)V

    invoke-direct {p0, p1, v1}, Lcom/android/phone/VzwVoWiFiCallSettings;->setWifiCallGlobalSetting(ZZ)V

    goto :goto_1
.end method

.method private setVowifiUISetting(ZZ)V
    .locals 3

    const-string/jumbo v0, "VzwVoWiFiCallSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setVowifiCallSetting(): enabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " checked: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/VzwVoWiFiCallSettings;->mVowifiCallSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p1}, Landroid/widget/Switch;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/phone/VzwVoWiFiCallSettings;->mVowifiCallSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p2}, Landroid/widget/Switch;->setChecked(Z)V

    return-void
.end method

.method private setWifiCallGlobalSetting(ZZ)V
    .locals 4

    const-string/jumbo v1, "VzwVoWiFiCallSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setWifiCallGlobalSetting: isChecked: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " wifi_call_status: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ne p1, p2, :cond_0

    const-string/jumbo v1, "VzwVoWiFiCallSettings"

    const-string/jumbo v2, "No need to change the setting"

    invoke-static {v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_1
    iget-object v1, p0, Lcom/android/phone/VzwVoWiFiCallSettings;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "wifi_call_enable"

    invoke-static {v1, v2, v0}, Lcom/android/phone/VoWifiSettingsDataBaseManager;->setInt(Landroid/content/Context;Ljava/lang/String;I)V

    invoke-direct {p0, p1}, Lcom/android/phone/VzwVoWiFiCallSettings;->sendWifiEnableBroadcast(Z)V

    const-string/jumbo v1, "VzwVoWiFiCallSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setWifiCallGlobalSetting: wifi enable global setting is set to: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public bixbyEnableWifiCall(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/phone/VzwVoWiFiCallSettings;->mVowifiCallSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p1}, Landroid/widget/Switch;->setChecked(Z)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    invoke-super {p0, p1, p2, p3}, Landroid/preference/PreferenceActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0xa

    if-ne p1, v0, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    const v0, 0x7f0d0de6

    invoke-virtual {p0, v0}, Lcom/android/phone/VzwVoWiFiCallSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v1

    const-string/jumbo v2, "CscFeature_Common_SupportHuxAdvancedCalling"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/VzwVoWiFiCallSettings;->finish()V

    return-void

    :cond_0
    const-string/jumbo v1, "VzwVoWiFiCallSettings"

    const-string/jumbo v2, "Inside VzwVoWiFiCallSettings onCreate"

    invoke-static {v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v1, 0x7f07006e

    invoke-virtual {p0, v1}, Lcom/android/phone/VzwVoWiFiCallSettings;->addPreferencesFromResource(I)V

    const v1, 0x7f040105

    invoke-virtual {p0, v1}, Lcom/android/phone/VzwVoWiFiCallSettings;->setContentView(I)V

    const-string/jumbo v1, "view_update_emergency_location_information"

    invoke-virtual {p0, v1}, Lcom/android/phone/VzwVoWiFiCallSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/VzwVoWiFiCallSettings;->mUpdateEmergencyLocationInfoPref:Landroid/preference/Preference;

    const-string/jumbo v1, "view_update_roaming_setting"

    invoke-virtual {p0, v1}, Lcom/android/phone/VzwVoWiFiCallSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/VzwVoWiFiCallSettings;->mUpdateRoamingSettingPref:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/phone/VzwVoWiFiCallSettings;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_1

    const v1, 0x7f0d0a8b

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    :cond_1
    const v1, 0x7f1002c6

    invoke-virtual {p0, v1}, Lcom/android/phone/VzwVoWiFiCallSettings;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Switch;

    iput-object v1, p0, Lcom/android/phone/VzwVoWiFiCallSettings;->mVowifiCallSwitch:Landroid/widget/Switch;

    const v1, 0x7f1002c5

    invoke-virtual {p0, v1}, Lcom/android/phone/VzwVoWiFiCallSettings;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/phone/VzwVoWiFiCallSettings;->mSubAppBarSwitchText:Landroid/widget/TextView;

    iput-object p0, p0, Lcom/android/phone/VzwVoWiFiCallSettings;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/phone/VzwVoWiFiCallSettings;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "wifi_call_enable"

    invoke-static {v1, v2, v3}, Lcom/android/phone/VoWifiSettingsDataBaseManager;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v4, :cond_2

    const-string/jumbo v1, "VzwVoWiFiCallSettings"

    const-string/jumbo v2, "wifi calling is enabled"

    invoke-static {v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v4, v3}, Lcom/android/phone/VzwVoWiFiCallSettings;->setVowifiPreferenceStatus(ZZ)V

    :goto_0
    iget-object v1, p0, Lcom/android/phone/VzwVoWiFiCallSettings;->mVowifiCallSwitch:Landroid/widget/Switch;

    new-instance v2, Lcom/android/phone/VzwVoWiFiCallSettings$2;

    invoke-direct {v2, p0}, Lcom/android/phone/VzwVoWiFiCallSettings$2;-><init>(Lcom/android/phone/VzwVoWiFiCallSettings;)V

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void

    :cond_2
    const-string/jumbo v1, "VzwVoWiFiCallSettings"

    const-string/jumbo v2, "wifi calling is disabled"

    invoke-static {v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v3, v3}, Lcom/android/phone/VzwVoWiFiCallSettings;->setVowifiPreferenceStatus(ZZ)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/android/phone/VzwVoWiFiCallSettings;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/VzwVoWiFiCallSettings;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/VzwVoWiFiCallSettings;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/VzwVoWiFiCallSettings;->finish()V

    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onPause()V
    .locals 2

    const-string/jumbo v0, "VzwVoWiFiCallSettings"

    const-string/jumbo v1, "onPause()"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    const-string/jumbo v0, "support_bixby"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/VzwVoWiFiCallSettings;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/bixby/BixbyApi;->clearInterimStateListener()V

    iget-object v0, p0, Lcom/android/phone/VzwVoWiFiCallSettings;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    const-string/jumbo v1, "AdvancedCalling"

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/bixby/BixbyApi;->logExitState(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/VzwVoWiFiCallSettings;->mStateListener:Lcom/samsung/android/sdk/bixby/BixbyApi$InterimStateListener;

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string/jumbo v1, "CscFeature_Common_SupportHuxAdvancedCalling"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/VzwVoWiFiCallSettings;->finish()V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/phone/VzwVoWiFiCallSettings;->checkBixbySupport()V

    const-string/jumbo v0, "VzwVoWiFiCallSettings"

    const-string/jumbo v1, "onResume"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
