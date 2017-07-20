.class public Lcom/android/phone/operator/jpn/kddi/RoamingSettings;
.super Landroid/preference/PreferenceActivity;
.source "RoamingSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/operator/jpn/kddi/RoamingSettings$1;,
        Lcom/android/phone/operator/jpn/kddi/RoamingSettings$2;,
        Lcom/android/phone/operator/jpn/kddi/RoamingSettings$MyHandler;
    }
.end annotation


# instance fields
.field private m4gSettingKey:Landroid/preference/SwitchPreference;

.field private mAirplainModeEnabledObserver:Landroid/database/ContentObserver;

.field private mButtonDataRoam:Lcom/android/phone/RestrictedSwitchPreference;

.field private mDataRoamEnabledObserver:Landroid/database/ContentObserver;

.field private mHandler:Lcom/android/phone/operator/jpn/kddi/RoamingSettings$MyHandler;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mRoamingCarrierSelKey:Landroid/preference/PreferenceScreen;

.field private mRoamingNetworkMode:Landroid/preference/ListPreference;

.field private prefs:Landroid/content/SharedPreferences;


# direct methods
.method static synthetic -get0(Lcom/android/phone/operator/jpn/kddi/RoamingSettings;)Lcom/android/phone/RestrictedSwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/operator/jpn/kddi/RoamingSettings;->mButtonDataRoam:Lcom/android/phone/RestrictedSwitchPreference;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/phone/operator/jpn/kddi/RoamingSettings;)Lcom/android/internal/telephony/Phone;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/operator/jpn/kddi/RoamingSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/phone/operator/jpn/kddi/RoamingSettings;)Landroid/preference/ListPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/operator/jpn/kddi/RoamingSettings;->mRoamingNetworkMode:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/phone/operator/jpn/kddi/RoamingSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/operator/jpn/kddi/RoamingSettings;->checkAndSetEnabledFor4gSetting()V

    return-void
.end method

.method static synthetic -wrap1(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/android/phone/operator/jpn/kddi/RoamingSettings;->log(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    new-instance v0, Lcom/android/phone/operator/jpn/kddi/RoamingSettings$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/phone/operator/jpn/kddi/RoamingSettings$1;-><init>(Lcom/android/phone/operator/jpn/kddi/RoamingSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/phone/operator/jpn/kddi/RoamingSettings;->mDataRoamEnabledObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/android/phone/operator/jpn/kddi/RoamingSettings$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/phone/operator/jpn/kddi/RoamingSettings$2;-><init>(Lcom/android/phone/operator/jpn/kddi/RoamingSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/phone/operator/jpn/kddi/RoamingSettings;->mAirplainModeEnabledObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method private checkAndSetEnabledFor4gSetting()V
    .locals 3

    invoke-static {}, Lcom/android/phone/mobilenetworks/boundary/SettingProxy;->getPreferredNetworkMode()I

    move-result v0

    iget-object v2, p0, Lcom/android/phone/operator/jpn/kddi/RoamingSettings;->m4gSettingKey:Landroid/preference/SwitchPreference;

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v2, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "RoamingSettings_kdi"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private registerContentObservers()V
    .locals 3

    const/4 v2, 0x1

    const-string/jumbo v0, "data_roaming"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/operator/jpn/kddi/RoamingSettings;->mDataRoamEnabledObserver:Landroid/database/ContentObserver;

    invoke-static {v0, v2, v1}, Lcom/android/phone/mobilenetworks/boundary/SettingProxy;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string/jumbo v0, "airplane_mode_on"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/operator/jpn/kddi/RoamingSettings;->mAirplainModeEnabledObserver:Landroid/database/ContentObserver;

    invoke-static {v0, v2, v1}, Lcom/android/phone/mobilenetworks/boundary/SettingProxy;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method private unregisterContentObservers()V
    .locals 1

    iget-object v0, p0, Lcom/android/phone/operator/jpn/kddi/RoamingSettings;->mDataRoamEnabledObserver:Landroid/database/ContentObserver;

    invoke-static {v0}, Lcom/android/phone/mobilenetworks/boundary/SettingProxy;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/android/phone/operator/jpn/kddi/RoamingSettings;->mAirplainModeEnabledObserver:Landroid/database/ContentObserver;

    invoke-static {v0}, Lcom/android/phone/mobilenetworks/boundary/SettingProxy;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/phone/operator/jpn/kddi/RoamingSettings;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v2, v2}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    :cond_0
    const v2, 0x7f070057

    invoke-virtual {p0, v2}, Lcom/android/phone/operator/jpn/kddi/RoamingSettings;->addPreferencesFromResource(I)V

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/operator/jpn/kddi/RoamingSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    new-instance v2, Lcom/android/phone/operator/jpn/kddi/RoamingSettings$MyHandler;

    invoke-direct {v2, p0, v3}, Lcom/android/phone/operator/jpn/kddi/RoamingSettings$MyHandler;-><init>(Lcom/android/phone/operator/jpn/kddi/RoamingSettings;Lcom/android/phone/operator/jpn/kddi/RoamingSettings$MyHandler;)V

    iput-object v2, p0, Lcom/android/phone/operator/jpn/kddi/RoamingSettings;->mHandler:Lcom/android/phone/operator/jpn/kddi/RoamingSettings$MyHandler;

    invoke-virtual {p0}, Lcom/android/phone/operator/jpn/kddi/RoamingSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    const-string/jumbo v2, "button_roaming_key"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/phone/RestrictedSwitchPreference;

    iput-object v2, p0, Lcom/android/phone/operator/jpn/kddi/RoamingSettings;->mButtonDataRoam:Lcom/android/phone/RestrictedSwitchPreference;

    iget-object v2, p0, Lcom/android/phone/operator/jpn/kddi/RoamingSettings;->mButtonDataRoam:Lcom/android/phone/RestrictedSwitchPreference;

    invoke-virtual {v2, p0}, Lcom/android/phone/RestrictedSwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string/jumbo v2, "world_system_select_key"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/ListPreference;

    iput-object v2, p0, Lcom/android/phone/operator/jpn/kddi/RoamingSettings;->mRoamingNetworkMode:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/android/phone/operator/jpn/kddi/RoamingSettings;->mRoamingNetworkMode:Landroid/preference/ListPreference;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/phone/operator/jpn/kddi/RoamingSettings;->mRoamingNetworkMode:Landroid/preference/ListPreference;

    const v3, 0x7f0900c8

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setEntries(I)V

    iget-object v2, p0, Lcom/android/phone/operator/jpn/kddi/RoamingSettings;->mRoamingNetworkMode:Landroid/preference/ListPreference;

    const v3, 0x7f0900c9

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setEntryValues(I)V

    iget-object v2, p0, Lcom/android/phone/operator/jpn/kddi/RoamingSettings;->mRoamingNetworkMode:Landroid/preference/ListPreference;

    invoke-virtual {v2, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v2, p0, Lcom/android/phone/operator/jpn/kddi/RoamingSettings;->mRoamingNetworkMode:Landroid/preference/ListPreference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_1
    const-string/jumbo v2, "4g_setting_key"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/SwitchPreference;

    iput-object v2, p0, Lcom/android/phone/operator/jpn/kddi/RoamingSettings;->m4gSettingKey:Landroid/preference/SwitchPreference;

    iget-object v2, p0, Lcom/android/phone/operator/jpn/kddi/RoamingSettings;->m4gSettingKey:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string/jumbo v2, "button_carrier_sel_key"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceScreen;

    iput-object v2, p0, Lcom/android/phone/operator/jpn/kddi/RoamingSettings;->mRoamingCarrierSelKey:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/android/phone/operator/jpn/kddi/RoamingSettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/operator/jpn/kddi/RoamingSettings;->prefs:Landroid/content/SharedPreferences;

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    :pswitch_0
    invoke-virtual {p0}, Lcom/android/phone/operator/jpn/kddi/RoamingSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/operator/jpn/kddi/RoamingSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->popBackStack()V

    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/operator/jpn/kddi/RoamingSettings;->finish()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 0

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    invoke-direct {p0}, Lcom/android/phone/operator/jpn/kddi/RoamingSettings;->unregisterContentObservers()V

    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 10

    const/16 v1, 0x9

    const/4 v9, 0x1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onPreferenceChange: preference = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/phone/operator/jpn/kddi/RoamingSettings;->log(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/phone/operator/jpn/kddi/RoamingSettings;->mRoamingNetworkMode:Landroid/preference/ListPreference;

    if-ne p1, v6, :cond_2

    iget-object v6, p0, Lcom/android/phone/operator/jpn/kddi/RoamingSettings;->prefs:Landroid/content/SharedPreferences;

    const-string/jumbo v7, "japan_system_select_key"

    const/4 v8, 0x0

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onPreferenceChange: buttonNetworkMode = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/phone/operator/jpn/kddi/RoamingSettings;->log(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/phone/operator/jpn/kddi/RoamingSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v6}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "preferred_network_mode"

    invoke-static {v6, v7, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onPreferenceChange: settingsNetworkMode = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/phone/operator/jpn/kddi/RoamingSettings;->log(Ljava/lang/String;)V

    if-eq v0, v5, :cond_1

    move v3, v0

    invoke-virtual {p0}, Lcom/android/phone/operator/jpn/kddi/RoamingSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "preferred_network_mode"

    invoke-static {v6, v7, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string/jumbo v6, "preferred_change_by_mobile_data_exceptional_case"

    invoke-static {v6}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string/jumbo v6, "persist.radio.setnwkmode"

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v6, p0, Lcom/android/phone/operator/jpn/kddi/RoamingSettings;->mHandler:Lcom/android/phone/operator/jpn/kddi/RoamingSettings$MyHandler;

    invoke-virtual {v6, v9}, Lcom/android/phone/operator/jpn/kddi/RoamingSettings$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/android/phone/mobilenetworks/boundary/PhoneProxy;->setPreferredNetworkType(ILandroid/os/Message;)V

    :cond_1
    :goto_0
    return v9

    :cond_2
    iget-object v6, p0, Lcom/android/phone/operator/jpn/kddi/RoamingSettings;->m4gSettingKey:Landroid/preference/SwitchPreference;

    if-ne p1, v6, :cond_4

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const-string/jumbo v6, "RoamingSettings_kdi"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onPreferenceChange: m4gSettingKey mValue = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_3

    :goto_1
    invoke-static {v1}, Lcom/android/phone/mobilenetworks/boundary/SettingProxy;->setPreferredNetworkMode(I)V

    iget-object v6, p0, Lcom/android/phone/operator/jpn/kddi/RoamingSettings;->mHandler:Lcom/android/phone/operator/jpn/kddi/RoamingSettings$MyHandler;

    invoke-virtual {v6, v9}, Lcom/android/phone/operator/jpn/kddi/RoamingSettings$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/android/phone/mobilenetworks/boundary/PhoneProxy;->setPreferredNetworkType(ILandroid/os/Message;)V

    invoke-direct {p0}, Lcom/android/phone/operator/jpn/kddi/RoamingSettings;->checkAndSetEnabledFor4gSetting()V

    goto :goto_0

    :cond_3
    const/4 v1, 0x3

    goto :goto_1

    :cond_4
    iget-object v6, p0, Lcom/android/phone/operator/jpn/kddi/RoamingSettings;->mButtonDataRoam:Lcom/android/phone/RestrictedSwitchPreference;

    if-ne p1, v6, :cond_1

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-static {v6}, Lcom/android/phone/mobilenetworks/boundary/PhoneProxy;->setDataRoamingEnabled(Z)V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 4

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    invoke-virtual {p0}, Lcom/android/phone/operator/jpn/kddi/RoamingSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    invoke-direct {p0}, Lcom/android/phone/operator/jpn/kddi/RoamingSettings;->registerContentObservers()V

    iget-object v1, p0, Lcom/android/phone/operator/jpn/kddi/RoamingSettings;->mButtonDataRoam:Lcom/android/phone/RestrictedSwitchPreference;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/operator/jpn/kddi/RoamingSettings;->mButtonDataRoam:Lcom/android/phone/RestrictedSwitchPreference;

    invoke-static {}, Lcom/android/phone/mobilenetworks/boundary/SettingProxy;->getDataRoamingEnable()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/phone/RestrictedSwitchPreference;->setChecked(Z)V

    :cond_0
    iget-object v1, p0, Lcom/android/phone/operator/jpn/kddi/RoamingSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "preferred_network_mode"

    const/16 v3, 0x9

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Lcom/android/phone/operator/jpn/kddi/RoamingSettings;->mRoamingNetworkMode:Landroid/preference/ListPreference;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/operator/jpn/kddi/RoamingSettings;->mRoamingNetworkMode:Landroid/preference/ListPreference;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    :cond_1
    iget-object v1, p0, Lcom/android/phone/operator/jpn/kddi/RoamingSettings;->mHandler:Lcom/android/phone/operator/jpn/kddi/RoamingSettings$MyHandler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/phone/operator/jpn/kddi/RoamingSettings$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/mobilenetworks/boundary/PhoneProxy;->getPreferredNetworkType(Landroid/os/Message;)V

    invoke-direct {p0}, Lcom/android/phone/operator/jpn/kddi/RoamingSettings;->checkAndSetEnabledFor4gSetting()V

    return-void
.end method
