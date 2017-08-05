.class public Lcom/android/phone/Enhanced4GLTE;
.super Landroid/preference/PreferenceActivity;
.source "Enhanced4GLTE.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/Enhanced4GLTE$1;,
        Lcom/android/phone/Enhanced4GLTE$2;,
        Lcom/android/phone/Enhanced4GLTE$3;
    }
.end annotation


# instance fields
.field private mAirPlaneObserverRegister:Z

.field private mAirplainModeEnabledObserver:Landroid/database/ContentObserver;

.field mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

.field private mDataEnabledObserver:Landroid/database/ContentObserver;

.field private mDataWarningDialog:Landroid/app/AlertDialog$Builder;

.field mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mStandardData:Landroid/preference/CheckBoxPreference;

.field mStateListener:Lcom/android/phone/ia/IAInterimListener;

.field private mWarnDialog:Landroid/app/AlertDialog;


# direct methods
.method static synthetic -get0(Lcom/android/phone/Enhanced4GLTE;)Landroid/preference/CheckBoxPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/Enhanced4GLTE;->mStandardData:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/phone/Enhanced4GLTE;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/phone/Enhanced4GLTE;->getMobileDataEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/phone/Enhanced4GLTE;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/Enhanced4GLTE;->setMobileDataEnabled(Z)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/Enhanced4GLTE;->mWarnDialog:Landroid/app/AlertDialog;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/Enhanced4GLTE;->mAirPlaneObserverRegister:Z

    new-instance v0, Lcom/android/phone/Enhanced4GLTE$1;

    invoke-direct {v0, p0}, Lcom/android/phone/Enhanced4GLTE$1;-><init>(Lcom/android/phone/Enhanced4GLTE;)V

    iput-object v0, p0, Lcom/android/phone/Enhanced4GLTE;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    new-instance v0, Lcom/android/phone/Enhanced4GLTE$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/phone/Enhanced4GLTE$2;-><init>(Lcom/android/phone/Enhanced4GLTE;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/phone/Enhanced4GLTE;->mAirplainModeEnabledObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/android/phone/Enhanced4GLTE$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/phone/Enhanced4GLTE$3;-><init>(Lcom/android/phone/Enhanced4GLTE;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/phone/Enhanced4GLTE;->mDataEnabledObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method private getMobileDataEnabled()Z
    .locals 2

    const-string/jumbo v0, "Enhanced4GLTE"

    const-string/jumbo v1, "getMobileDataEnabled: "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/phone/mobilenetworks/boundary/NetworkProxy;->getMobileDataEnabled()Z

    move-result v0

    return v0
.end method

.method private onStandardDataClicked()V
    .locals 13

    const/4 v12, 0x1

    const/4 v11, 0x0

    const/4 v10, 0x0

    iget-object v8, p0, Lcom/android/phone/Enhanced4GLTE;->mStandardData:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v8}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-direct {p0, v12}, Lcom/android/phone/Enhanced4GLTE;->setMobileDataEnabled(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v8, "donot_show_again_enhanced4glte"

    invoke-virtual {p0, v8, v10}, Lcom/android/phone/Enhanced4GLTE;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    const-string/jumbo v8, "skipMessage"

    invoke-interface {v6, v8, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_2

    const-string/jumbo v8, "Enhanced4GLTE"

    const-string/jumbo v9, "onStandardDataClicked: skipMesssage !!!"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v10}, Lcom/android/phone/Enhanced4GLTE;->setMobileDataEnabled(Z)V

    iget-object v8, p0, Lcom/android/phone/Enhanced4GLTE;->mStandardData:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v8, v10}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/phone/Enhanced4GLTE;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0d0d87

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/phone/Enhanced4GLTE;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0d0d86

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v8, "layout_inflater"

    invoke-virtual {p0, v8}, Lcom/android/phone/Enhanced4GLTE;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    const v8, 0x7f04008c

    invoke-virtual {v3, v8, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v8, 0x7f10019b

    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    const v8, 0x7f10012d

    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v2, v10}, Landroid/widget/CheckBox;->setVisibility(I)V

    const/16 v8, 0x8

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    const-string/jumbo v8, "support_enhanced_4glte_setting_video_call"

    invoke-static {v8}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {p0}, Lcom/android/phone/Enhanced4GLTE;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0d0d88

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    :cond_3
    iget-object v8, p0, Lcom/android/phone/Enhanced4GLTE;->mStandardData:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v8, v12}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v8, p0, Lcom/android/phone/Enhanced4GLTE;->mWarnDialog:Landroid/app/AlertDialog;

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/android/phone/Enhanced4GLTE;->mWarnDialog:Landroid/app/AlertDialog;

    invoke-virtual {v8}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v8

    if-nez v8, :cond_0

    :cond_4
    new-instance v8, Landroid/app/AlertDialog$Builder;

    invoke-direct {v8, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v8, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    const v9, 0x7f0d0773

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    new-instance v9, Lcom/android/phone/Enhanced4GLTE$4;

    invoke-direct {v9, p0, v2}, Lcom/android/phone/Enhanced4GLTE$4;-><init>(Lcom/android/phone/Enhanced4GLTE;Landroid/widget/CheckBox;)V

    const v10, 0x104000a

    invoke-virtual {v8, v10, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    const/high16 v9, 0x1040000

    invoke-virtual {v8, v9, v11}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    iput-object v8, p0, Lcom/android/phone/Enhanced4GLTE;->mDataWarningDialog:Landroid/app/AlertDialog$Builder;

    iget-object v8, p0, Lcom/android/phone/Enhanced4GLTE;->mDataWarningDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v8

    iput-object v8, p0, Lcom/android/phone/Enhanced4GLTE;->mWarnDialog:Landroid/app/AlertDialog;

    goto/16 :goto_0
.end method

.method private setMobileDataEnabled(Z)V
    .locals 3

    const-string/jumbo v0, "Enhanced4GLTE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setMobileDataEnabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/android/phone/mobilenetworks/boundary/NetworkProxy;->setMobileDataEnable(Z)V

    return-void
.end method

.method private updateStandardData()V
    .locals 3

    iget-object v0, p0, Lcom/android/phone/Enhanced4GLTE;->mStandardData:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "Enhanced4GLTE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getMobileDataEnabled() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/phone/Enhanced4GLTE;->getMobileDataEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/Enhanced4GLTE;->mStandardData:Landroid/preference/CheckBoxPreference;

    invoke-direct {p0}, Lcom/android/phone/Enhanced4GLTE;->getMobileDataEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/android/phone/Enhanced4GLTE;->mStandardData:Landroid/preference/CheckBoxPreference;

    invoke-static {}, Lcom/android/phone/mobilenetworks/MobileNetworkUtils;->isEnhancedVideoCallSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f0d03da

    :goto_0
    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    :cond_0
    return-void

    :cond_1
    const v0, 0x7f0d03db

    goto :goto_0
.end method


# virtual methods
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
    .locals 5

    const/4 v4, 0x1

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/android/phone/mobilenetworks/MobileNetworkUtils;->isGuestMode()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/Enhanced4GLTE;->finish()V

    return-void

    :cond_0
    const v2, 0x7f07002c

    invoke-virtual {p0, v2}, Lcom/android/phone/Enhanced4GLTE;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/android/phone/Enhanced4GLTE;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    const-string/jumbo v2, "standard_data_key"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/phone/Enhanced4GLTE;->mStandardData:Landroid/preference/CheckBoxPreference;

    const-string/jumbo v2, "airplane_mode_on"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/Enhanced4GLTE;->mAirplainModeEnabledObserver:Landroid/database/ContentObserver;

    invoke-static {v2, v4, v3}, Lcom/android/phone/mobilenetworks/boundary/SettingProxy;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iput-boolean v4, p0, Lcom/android/phone/Enhanced4GLTE;->mAirPlaneObserverRegister:Z

    invoke-virtual {p0}, Lcom/android/phone/Enhanced4GLTE;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_1
    const-string/jumbo v2, "config_hide_status_bar"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {p0}, Lcom/android/phone/PhoneUtilsCommon;->setHideLandscapeIndicatorBar(Landroid/app/Activity;)V

    :cond_2
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    const-string/jumbo v0, "Enhanced4GLTE"

    const-string/jumbo v1, "onDestroy..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/phone/Enhanced4GLTE;->mAirPlaneObserverRegister:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/Enhanced4GLTE;->mAirplainModeEnabledObserver:Landroid/database/ContentObserver;

    invoke-static {v0}, Lcom/android/phone/mobilenetworks/boundary/SettingProxy;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/Enhanced4GLTE;->finish()V

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

    iget-object v0, p0, Lcom/android/phone/Enhanced4GLTE;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/phone/mobilenetworks/boundary/NetworkProxy;->listen(Landroid/telephony/PhoneStateListener;I)V

    iget-object v0, p0, Lcom/android/phone/Enhanced4GLTE;->mDataEnabledObserver:Landroid/database/ContentObserver;

    invoke-static {v0}, Lcom/android/phone/mobilenetworks/boundary/SettingProxy;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const-string/jumbo v0, "support_bixby"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/Enhanced4GLTE;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/Enhanced4GLTE;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/bixby/BixbyApi;->clearInterimStateListener()V

    iget-object v0, p0, Lcom/android/phone/Enhanced4GLTE;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    const-string/jumbo v1, "MobileData"

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/bixby/BixbyApi;->logExitState(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/android/phone/Enhanced4GLTE;->mStateListener:Lcom/android/phone/ia/IAInterimListener;

    invoke-interface {v0}, Lcom/android/phone/ia/IAInterimListener;->clear()V

    iput-object v2, p0, Lcom/android/phone/Enhanced4GLTE;->mStateListener:Lcom/android/phone/ia/IAInterimListener;

    :cond_1
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 3

    const-string/jumbo v0, "Enhanced4GLTE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onPreferenceTreeClick..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/Enhanced4GLTE;->mStandardData:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_0

    invoke-direct {p0}, Lcom/android/phone/Enhanced4GLTE;->onStandardDataClicked()V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected onResume()V
    .locals 7

    const/4 v6, 0x1

    const/4 v3, 0x0

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    const-string/jumbo v4, "Enhanced4GLTE"

    const-string/jumbo v5, "onResume..."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/android/phone/mobilenetworks/MobileNetworkUtils;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v3

    const v4, 0x7f0d0cc6

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Lcom/android/phone/Enhanced4GLTE;->finish()V

    return-void

    :cond_0
    iget-object v4, p0, Lcom/android/phone/Enhanced4GLTE;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v5, 0x20

    invoke-static {v4, v5}, Lcom/android/phone/mobilenetworks/boundary/NetworkProxy;->listen(Landroid/telephony/PhoneStateListener;I)V

    const-string/jumbo v4, "mobile_data"

    invoke-static {v4}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/Enhanced4GLTE;->mDataEnabledObserver:Landroid/database/ContentObserver;

    invoke-static {v4, v6, v5}, Lcom/android/phone/mobilenetworks/boundary/SettingProxy;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-direct {p0}, Lcom/android/phone/Enhanced4GLTE;->updateStandardData()V

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v4

    iget-object v4, v4, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v4}, Lcom/android/phone/PhoneUtilsCommon;->isOnVoLTECall(Lcom/android/internal/telephony/CallManager;)Z

    move-result v1

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v4

    iget-object v0, v4, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v4, v5, :cond_7

    iget-object v4, p0, Lcom/android/phone/Enhanced4GLTE;->mStandardData:Landroid/preference/CheckBoxPreference;

    if-eqz v4, :cond_1

    if-eqz v1, :cond_1

    iget-object v4, p0, Lcom/android/phone/Enhanced4GLTE;->mStandardData:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    :cond_1
    :goto_0
    invoke-static {}, Lcom/android/phone/PhoneUtilsCommon;->isIMSRegistered()Z

    move-result v4

    if-eqz v4, :cond_8

    const-string/jumbo v4, "GATE"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "<GATE-M>IMS_STATUS_ENABLED_PS_IND_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "ril.ims.ltevoicesupport"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "</GATE-M>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    const-string/jumbo v4, "enterprise_policy_new"

    invoke-virtual {p0, v4}, Lcom/android/phone/Enhanced4GLTE;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/knox/EnterpriseDeviceManager;

    if-eqz v2, :cond_3

    iget-object v4, p0, Lcom/android/phone/Enhanced4GLTE;->mStandardData:Landroid/preference/CheckBoxPreference;

    if-eqz v4, :cond_3

    const-string/jumbo v4, "Enhanced4GLTE"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "EDM isCellularDataAllowed : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getRestrictionPolicy()Lcom/samsung/android/knox/restriction/RestrictionPolicy;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->isCellularDataAllowed()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", checkEnableUseOfPacketData : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getPhoneRestrictionPolicy()Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->checkEnableUseOfPacketData(Z)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/phone/Enhanced4GLTE;->mStandardData:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getRestrictionPolicy()Lcom/samsung/android/knox/restriction/RestrictionPolicy;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->isCellularDataAllowed()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v2}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getPhoneRestrictionPolicy()Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->checkEnableUseOfPacketData(Z)Z

    move-result v3

    :cond_2
    invoke-virtual {v4, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    :cond_3
    const-string/jumbo v3, "support_bixby"

    invoke-static {v3}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-static {}, Lcom/samsung/android/sdk/bixby/BixbyApi;->getInstance()Lcom/samsung/android/sdk/bixby/BixbyApi;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/Enhanced4GLTE;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    new-instance v3, Lcom/android/phone/ia/Enhanced4gLTEStateListener;

    invoke-direct {v3, p0}, Lcom/android/phone/ia/Enhanced4gLTEStateListener;-><init>(Landroid/preference/PreferenceActivity;)V

    iput-object v3, p0, Lcom/android/phone/Enhanced4GLTE;->mStateListener:Lcom/android/phone/ia/IAInterimListener;

    iget-object v3, p0, Lcom/android/phone/Enhanced4GLTE;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/phone/Enhanced4GLTE;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    iget-object v4, p0, Lcom/android/phone/Enhanced4GLTE;->mStateListener:Lcom/android/phone/ia/IAInterimListener;

    invoke-virtual {v3, v4}, Lcom/samsung/android/sdk/bixby/BixbyApi;->setInterimStateListener(Lcom/samsung/android/sdk/bixby/BixbyApi$InterimStateListener;)V

    invoke-static {}, Lcom/android/phone/ia/IAUtil;->isIAExecutingState()Z

    move-result v3

    if-eqz v3, :cond_5

    const-string/jumbo v3, "MobileData"

    invoke-static {}, Lcom/android/phone/ia/IAUtil;->getIAExecutingStateId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-static {}, Lcom/android/phone/ia/IAUtil;->isIAExecutingLastState()Z

    move-result v3

    if-eqz v3, :cond_4

    const-string/jumbo v3, "MobileData"

    invoke-static {v3}, Lcom/android/phone/ia/IAUtil;->requestNLG(Ljava/lang/String;)V

    :cond_4
    sget-object v3, Lcom/android/phone/ia/IAConstants;->RESPONSE_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-static {v3}, Lcom/android/phone/ia/IAUtil;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    :cond_5
    iget-object v3, p0, Lcom/android/phone/Enhanced4GLTE;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    const-string/jumbo v4, "MobileData"

    invoke-virtual {v3, v4}, Lcom/samsung/android/sdk/bixby/BixbyApi;->logEnterState(Ljava/lang/String;)V

    :cond_6
    return-void

    :cond_7
    iget-object v4, p0, Lcom/android/phone/Enhanced4GLTE;->mStandardData:Landroid/preference/CheckBoxPreference;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/phone/Enhanced4GLTE;->mStandardData:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v6}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto/16 :goto_0

    :cond_8
    const-string/jumbo v4, "GATE"

    const-string/jumbo v5, "<GATE-M>IMS_STATUS_DISABLED</GATE-M>"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method
