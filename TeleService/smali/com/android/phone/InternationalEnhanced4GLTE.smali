.class public Lcom/android/phone/InternationalEnhanced4GLTE;
.super Landroid/preference/PreferenceActivity;
.source "InternationalEnhanced4GLTE.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/InternationalEnhanced4GLTE$1;,
        Lcom/android/phone/InternationalEnhanced4GLTE$2;
    }
.end annotation


# instance fields
.field private mAirPlaneObserverRegister:Z

.field private mAirplainModeEnabledObserver:Landroid/database/ContentObserver;

.field private mAlertDialog:Landroid/app/AlertDialog$Builder;

.field private mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

.field private mInternationalData:Landroid/preference/CheckBoxPreference;

.field mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mWarnDialog:Landroid/app/AlertDialog;


# direct methods
.method static synthetic -get0(Lcom/android/phone/InternationalEnhanced4GLTE;)Landroid/preference/CheckBoxPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/InternationalEnhanced4GLTE;->mInternationalData:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/phone/InternationalEnhanced4GLTE;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/InternationalEnhanced4GLTE;->checkEDMRoaming()V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    iput-object v1, p0, Lcom/android/phone/InternationalEnhanced4GLTE;->mWarnDialog:Landroid/app/AlertDialog;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/InternationalEnhanced4GLTE;->mAirPlaneObserverRegister:Z

    iput-object v1, p0, Lcom/android/phone/InternationalEnhanced4GLTE;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    new-instance v0, Lcom/android/phone/InternationalEnhanced4GLTE$1;

    invoke-direct {v0, p0}, Lcom/android/phone/InternationalEnhanced4GLTE$1;-><init>(Lcom/android/phone/InternationalEnhanced4GLTE;)V

    iput-object v0, p0, Lcom/android/phone/InternationalEnhanced4GLTE;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    new-instance v0, Lcom/android/phone/InternationalEnhanced4GLTE$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/phone/InternationalEnhanced4GLTE$2;-><init>(Lcom/android/phone/InternationalEnhanced4GLTE;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/phone/InternationalEnhanced4GLTE;->mAirplainModeEnabledObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method private checkEDMRoaming()V
    .locals 3

    iget-object v1, p0, Lcom/android/phone/InternationalEnhanced4GLTE;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/InternationalEnhanced4GLTE;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "enterprise_policy_new"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/knox/EnterpriseDeviceManager;

    iput-object v1, p0, Lcom/android/phone/InternationalEnhanced4GLTE;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    :cond_0
    iget-object v1, p0, Lcom/android/phone/InternationalEnhanced4GLTE;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/InternationalEnhanced4GLTE;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    invoke-virtual {v1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getRoamingPolicy()Lcom/samsung/android/knox/restriction/RoamingPolicy;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/phone/InternationalEnhanced4GLTE;->mInternationalData:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/InternationalEnhanced4GLTE;->mInternationalData:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Lcom/samsung/android/knox/restriction/RoamingPolicy;->isRoamingDataEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    invoke-virtual {v0}, Lcom/samsung/android/knox/restriction/RoamingPolicy;->isRoamingDataEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/InternationalEnhanced4GLTE;->mInternationalData:Landroid/preference/CheckBoxPreference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    :cond_1
    return-void
.end method

.method private onInternationalDataClicked()V
    .locals 12

    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v9, 0x0

    const-string/jumbo v7, "InternationalEnhanced4GLTE"

    const-string/jumbo v8, "onInternationalDataClicked"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/android/phone/InternationalEnhanced4GLTE;->mInternationalData:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-static {v11}, Lcom/android/phone/mobilenetworks/boundary/PhoneProxy;->setDataRoamingEnabled(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v7, "donot_show_again_international_enhanced4g"

    invoke-virtual {p0, v7, v9}, Lcom/android/phone/InternationalEnhanced4GLTE;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    const-string/jumbo v7, "skipMessage"

    invoke-interface {v5, v7, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string/jumbo v7, "InternationalEnhanced4GLTE"

    const-string/jumbo v8, "onStandardDataClicked: skipMesssage !!!"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v9}, Lcom/android/phone/mobilenetworks/boundary/PhoneProxy;->setDataRoamingEnabled(Z)V

    iget-object v7, p0, Lcom/android/phone/InternationalEnhanced4GLTE;->mInternationalData:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7, v9}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/phone/InternationalEnhanced4GLTE;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0d0d18

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v7, "layout_inflater"

    invoke-virtual {p0, v7}, Lcom/android/phone/InternationalEnhanced4GLTE;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    const v7, 0x7f04008c

    invoke-virtual {v2, v7, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v7, 0x7f10019b

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    const v7, 0x7f10012d

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v1, v9}, Landroid/widget/CheckBox;->setVisibility(I)V

    const/16 v7, 0x8

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    const-string/jumbo v7, "support_enhanced_4glte_setting_video_call"

    invoke-static {v7}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {p0}, Lcom/android/phone/InternationalEnhanced4GLTE;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0d0d19

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    :cond_3
    iget-object v7, p0, Lcom/android/phone/InternationalEnhanced4GLTE;->mInternationalData:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7, v11}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v7, p0, Lcom/android/phone/InternationalEnhanced4GLTE;->mWarnDialog:Landroid/app/AlertDialog;

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/android/phone/InternationalEnhanced4GLTE;->mWarnDialog:Landroid/app/AlertDialog;

    invoke-virtual {v7}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v7

    if-nez v7, :cond_0

    :cond_4
    new-instance v7, Landroid/app/AlertDialog$Builder;

    invoke-direct {v7, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const v8, 0x7f0d08d1

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    new-instance v8, Lcom/android/phone/InternationalEnhanced4GLTE$3;

    invoke-direct {v8, p0, v1}, Lcom/android/phone/InternationalEnhanced4GLTE$3;-><init>(Lcom/android/phone/InternationalEnhanced4GLTE;Landroid/widget/CheckBox;)V

    const v9, 0x1040013

    invoke-virtual {v7, v9, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const/high16 v8, 0x1040000

    invoke-virtual {v7, v8, v10}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    iput-object v7, p0, Lcom/android/phone/InternationalEnhanced4GLTE;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    iget-object v7, p0, Lcom/android/phone/InternationalEnhanced4GLTE;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v7

    iput-object v7, p0, Lcom/android/phone/InternationalEnhanced4GLTE;->mWarnDialog:Landroid/app/AlertDialog;

    goto/16 :goto_0
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

    invoke-virtual {p0}, Lcom/android/phone/InternationalEnhanced4GLTE;->finish()V

    return-void

    :cond_0
    const v2, 0x7f070039

    invoke-virtual {p0, v2}, Lcom/android/phone/InternationalEnhanced4GLTE;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/android/phone/InternationalEnhanced4GLTE;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    const-string/jumbo v2, "international_data_key"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/phone/InternationalEnhanced4GLTE;->mInternationalData:Landroid/preference/CheckBoxPreference;

    const-string/jumbo v2, "airplane_mode_on"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/InternationalEnhanced4GLTE;->mAirplainModeEnabledObserver:Landroid/database/ContentObserver;

    invoke-static {v2, v4, v3}, Lcom/android/phone/mobilenetworks/boundary/SettingProxy;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iput-boolean v4, p0, Lcom/android/phone/InternationalEnhanced4GLTE;->mAirPlaneObserverRegister:Z

    invoke-virtual {p0}, Lcom/android/phone/InternationalEnhanced4GLTE;->getActionBar()Landroid/app/ActionBar;

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

    const-string/jumbo v0, "InternationalEnhanced4GLTE"

    const-string/jumbo v1, "onDestroy..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/phone/InternationalEnhanced4GLTE;->mAirPlaneObserverRegister:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/InternationalEnhanced4GLTE;->mAirplainModeEnabledObserver:Landroid/database/ContentObserver;

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

    invoke-virtual {p0}, Lcom/android/phone/InternationalEnhanced4GLTE;->finish()V

    const/4 v1, 0x1

    return v1

    :cond_0
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    return v1
.end method

.method protected onPause()V
    .locals 2

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    iget-object v0, p0, Lcom/android/phone/InternationalEnhanced4GLTE;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/phone/mobilenetworks/boundary/NetworkProxy;->listen(Landroid/telephony/PhoneStateListener;I)V

    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 3

    const-string/jumbo v0, "InternationalEnhanced4GLTE"

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

    iget-object v0, p0, Lcom/android/phone/InternationalEnhanced4GLTE;->mInternationalData:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_0

    invoke-direct {p0}, Lcom/android/phone/InternationalEnhanced4GLTE;->onInternationalDataClicked()V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected onResume()V
    .locals 5

    const/4 v4, 0x1

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    const-string/jumbo v2, "InternationalEnhanced4GLTE"

    const-string/jumbo v3, "onResume..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/android/phone/mobilenetworks/MobileNetworkUtils;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    const v3, 0x7f0d0c55

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Lcom/android/phone/InternationalEnhanced4GLTE;->finish()V

    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/phone/InternationalEnhanced4GLTE;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v3, 0x20

    invoke-static {v2, v3}, Lcom/android/phone/mobilenetworks/boundary/NetworkProxy;->listen(Landroid/telephony/PhoneStateListener;I)V

    iget-object v2, p0, Lcom/android/phone/InternationalEnhanced4GLTE;->mInternationalData:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/android/phone/mobilenetworks/boundary/PhoneProxy;->getDataRoamingEnabled()Z

    move-result v0

    iget-object v2, p0, Lcom/android/phone/InternationalEnhanced4GLTE;->mInternationalData:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v3, p0, Lcom/android/phone/InternationalEnhanced4GLTE;->mInternationalData:Landroid/preference/CheckBoxPreference;

    invoke-static {}, Lcom/android/phone/mobilenetworks/MobileNetworkUtils;->isEnhancedVideoCallSupported()Z

    move-result v2

    if-eqz v2, :cond_3

    const v2, 0x7f0d037c

    :goto_0
    invoke-virtual {v3, v2}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    :cond_1
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    iget-object v2, v2, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v2}, Lcom/android/phone/PhoneUtilsCommon;->isOnVoLTECall(Lcom/android/internal/telephony/CallManager;)Z

    move-result v1

    invoke-static {}, Lcom/android/phone/mobilenetworks/boundary/PhoneProxy;->getState()Lcom/android/phone/mobilenetworks/boundary/PhoneProxy$State;

    move-result-object v2

    sget-object v3, Lcom/android/phone/mobilenetworks/boundary/PhoneProxy$State;->IDLE:Lcom/android/phone/mobilenetworks/boundary/PhoneProxy$State;

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/android/phone/InternationalEnhanced4GLTE;->mInternationalData:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_2

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/android/phone/InternationalEnhanced4GLTE;->mInternationalData:Landroid/preference/CheckBoxPreference;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/android/phone/InternationalEnhanced4GLTE;->checkEDMRoaming()V

    return-void

    :cond_3
    const v2, 0x7f0d037d

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/android/phone/InternationalEnhanced4GLTE;->mInternationalData:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/phone/InternationalEnhanced4GLTE;->mInternationalData:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_1
.end method
