.class public Lcom/android/phone/callsettings/WifiSettingFragment;
.super Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;
.source "WifiSettingFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/callsettings/WifiSettingFragment$1;,
        Lcom/android/phone/callsettings/WifiSettingFragment$2;,
        Lcom/android/phone/callsettings/WifiSettingFragment$3;,
        Lcom/android/phone/callsettings/WifiSettingFragment$4;,
        Lcom/android/phone/callsettings/WifiSettingFragment$WfcEnableTask;
    }
.end annotation


# static fields
.field private static final WFC_STATE_CONTENT_URI_FOR_SPR:Landroid/net/Uri;


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mHandler:Landroid/os/Handler;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPrefCategory:Landroid/preference/PreferenceCategory;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mWFCEnableObserver:Landroid/database/ContentObserver;

.field private mWFCSettingObserver:Landroid/database/ContentObserver;

.field private mWifiPref:Landroid/preference/PreferenceScreen;

.field private mWifiSwitch:Landroid/preference/SwitchPreference;

.field private mWifiSwitchPref:Landroid/preference/SemSwitchPreferenceScreen;

.field private progressDialog:Landroid/app/ProgressDialog;

.field private sim_provisioned:Z


# direct methods
.method static synthetic -get0(Lcom/android/phone/callsettings/WifiSettingFragment;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/callsettings/WifiSettingFragment;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/phone/callsettings/WifiSettingFragment;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/callsettings/WifiSettingFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/phone/callsettings/WifiSettingFragment;)Lcom/android/internal/telephony/Phone;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/callsettings/WifiSettingFragment;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/phone/callsettings/WifiSettingFragment;)Landroid/preference/SwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/callsettings/WifiSettingFragment;->mWifiSwitch:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/phone/callsettings/WifiSettingFragment;)Landroid/preference/SemSwitchPreferenceScreen;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/callsettings/WifiSettingFragment;->mWifiSwitchPref:Landroid/preference/SemSwitchPreferenceScreen;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/phone/callsettings/WifiSettingFragment;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/phone/callsettings/WifiSettingFragment;->sim_provisioned:Z

    return v0
.end method

.method static synthetic -set0(Lcom/android/phone/callsettings/WifiSettingFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/phone/callsettings/WifiSettingFragment;->sim_provisioned:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/phone/callsettings/WifiSettingFragment;)I
    .locals 1

    invoke-direct {p0}, Lcom/android/phone/callsettings/WifiSettingFragment;->queryWfcState()I

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/phone/callsettings/WifiSettingFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/callsettings/WifiSettingFragment;->dismissDialog()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/phone/callsettings/WifiSettingFragment;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/callsettings/WifiSettingFragment;->setMenuEnabled(Z)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/phone/callsettings/WifiSettingFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/callsettings/WifiSettingFragment;->showProgressDialogForRogers()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/phone/callsettings/WifiSettingFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/callsettings/WifiSettingFragment;->updateWifiCalling()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "content://com.sec.sprint.wfc.provider/wfc_state"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/phone/callsettings/WifiSettingFragment;->WFC_STATE_CONTENT_URI_FOR_SPR:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/android/internal/telephony/Phone;Landroid/preference/PreferenceCategory;)V
    .locals 2

    invoke-direct {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/callsettings/WifiSettingFragment;->sim_provisioned:Z

    new-instance v0, Lcom/android/phone/callsettings/WifiSettingFragment$1;

    invoke-direct {v0, p0}, Lcom/android/phone/callsettings/WifiSettingFragment$1;-><init>(Lcom/android/phone/callsettings/WifiSettingFragment;)V

    iput-object v0, p0, Lcom/android/phone/callsettings/WifiSettingFragment;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/phone/callsettings/WifiSettingFragment$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/phone/callsettings/WifiSettingFragment$2;-><init>(Lcom/android/phone/callsettings/WifiSettingFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/phone/callsettings/WifiSettingFragment;->mWFCEnableObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/android/phone/callsettings/WifiSettingFragment$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/phone/callsettings/WifiSettingFragment$3;-><init>(Lcom/android/phone/callsettings/WifiSettingFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/phone/callsettings/WifiSettingFragment;->mWFCSettingObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/android/phone/callsettings/WifiSettingFragment$4;

    invoke-direct {v0, p0}, Lcom/android/phone/callsettings/WifiSettingFragment$4;-><init>(Lcom/android/phone/callsettings/WifiSettingFragment;)V

    iput-object v0, p0, Lcom/android/phone/callsettings/WifiSettingFragment;->mHandler:Landroid/os/Handler;

    iput-object p3, p0, Lcom/android/phone/callsettings/WifiSettingFragment;->mPrefCategory:Landroid/preference/PreferenceCategory;

    iput-object p2, p0, Lcom/android/phone/callsettings/WifiSettingFragment;->mPhone:Lcom/android/internal/telephony/Phone;

    iput-object p1, p0, Lcom/android/phone/callsettings/WifiSettingFragment;->mActivity:Landroid/app/Activity;

    iget-object v0, p0, Lcom/android/phone/callsettings/WifiSettingFragment;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/phone/callsettings/WifiSettingFragment;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-static {}, Lcom/android/phone/callsettings/WifiSettingManager;->getInstance()Lcom/android/phone/callsettings/WifiSettingManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/callsettings/WifiSettingFragment;->mPrefCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Lcom/android/phone/callsettings/WifiSettingManager;->removePreferences(Landroid/preference/PreferenceCategory;)V

    invoke-virtual {p0}, Lcom/android/phone/callsettings/WifiSettingFragment;->initializeWifiSetting()V

    return-void
.end method

.method private dismissDialog()V
    .locals 5

    const/4 v4, 0x0

    const-string/jumbo v1, "WifiSettingFragment"

    const-string/jumbo v2, "dismiss ProgressDialog"

    invoke-static {v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/phone/callsettings/WifiSettingFragment;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/callsettings/WifiSettingFragment;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/phone/callsettings/WifiSettingFragment;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iput-object v4, p0, Lcom/android/phone/callsettings/WifiSettingFragment;->progressDialog:Landroid/app/ProgressDialog;

    :cond_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "WifiSettingFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed to Dismiss progressDlg "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private handleWiFiCall()V
    .locals 8

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v6, p0, Lcom/android/phone/callsettings/WifiSettingFragment;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v6}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string/jumbo v7, "wifi_call_enable"

    invoke-static {v6, v7, v4}, Lcom/android/phone/VoWifiSettingsDataBaseManager;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v5, :cond_2

    move v2, v4

    :goto_0
    if-ne v2, v5, :cond_0

    iget-object v6, p0, Lcom/android/phone/callsettings/WifiSettingFragment;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v6}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "wfc_dialog_show_never_again"

    invoke-static {v6, v7, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v6, p0, Lcom/android/phone/callsettings/WifiSettingFragment;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v6}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "wfc_do_not_show_again_opl_dialog"

    invoke-static {v6, v7, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const-string/jumbo v4, "show_wfc_emergency_call_dialog"

    invoke-static {v4}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/android/phone/callsettings/WifiSettingFragment;->showEmergencyCallDialog()V

    :cond_0
    :goto_1
    iget-object v4, p0, Lcom/android/phone/callsettings/WifiSettingFragment;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string/jumbo v6, "wifi_call_enable"

    invoke-static {v4, v6, v2}, Lcom/android/phone/VoWifiSettingsDataBaseManager;->setInt(Landroid/content/Context;Ljava/lang/String;I)V

    const-string/jumbo v4, "vowifi_in_can"

    invoke-static {v4}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    if-ne v2, v5, :cond_1

    iget-boolean v4, p0, Lcom/android/phone/callsettings/WifiSettingFragment;->sim_provisioned:Z

    if-eqz v4, :cond_8

    :cond_1
    :goto_2
    return-void

    :cond_2
    move v2, v5

    goto :goto_0

    :cond_3
    const-string/jumbo v4, "show_wfc_information_dialog_latin"

    invoke-static {v4}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    if-nez v0, :cond_4

    invoke-direct {p0}, Lcom/android/phone/callsettings/WifiSettingFragment;->showWfcInfoDialogForLatin()V

    goto :goto_1

    :cond_4
    const-string/jumbo v4, "support_wfc_opl"

    invoke-static {v4}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    if-nez v1, :cond_5

    invoke-direct {p0}, Lcom/android/phone/callsettings/WifiSettingFragment;->showWfcOPLDialog()V

    return-void

    :cond_5
    const-string/jumbo v4, "vowifi_in_can"

    invoke-static {v4}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/phone/callsettings/WifiSettingFragment;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/phone/utils/WifiSettingUtils;->isWiFiNetworkConnected(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_7

    :cond_6
    iget-object v4, p0, Lcom/android/phone/callsettings/WifiSettingFragment;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/phone/PhoneUtilsIMS;->isLocationMenuNeed(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/phone/callsettings/WifiSettingFragment;->showLocationInfoDialog()V

    return-void

    :cond_7
    invoke-direct {p0}, Lcom/android/phone/callsettings/WifiSettingFragment;->showWfcRogersWifiDialog()V

    return-void

    :cond_8
    invoke-direct {p0}, Lcom/android/phone/callsettings/WifiSettingFragment;->showProgressDialogForRogers()V

    goto :goto_2
.end method

.method private queryWfcState()I
    .locals 9

    const/4 v2, 0x0

    const/4 v8, 0x0

    iget-object v0, p0, Lcom/android/phone/callsettings/WifiSettingFragment;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/phone/callsettings/WifiSettingFragment;->WFC_STATE_CONTENT_URI_FOR_SPR:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_1

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    :goto_0
    return v8

    :catch_0
    move-exception v7

    :try_start_1
    const-string/jumbo v0, "WifiSettingFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "queryWfcState failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;Z)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private setMenuEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/phone/callsettings/WifiSettingFragment;->mWifiPref:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/callsettings/WifiSettingFragment;->mWifiPref:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/phone/callsettings/WifiSettingFragment;->mWifiSwitch:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/callsettings/WifiSettingFragment;->mWifiSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p1}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    :cond_1
    iget-object v0, p0, Lcom/android/phone/callsettings/WifiSettingFragment;->mWifiSwitchPref:Landroid/preference/SemSwitchPreferenceScreen;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/callsettings/WifiSettingFragment;->mWifiSwitchPref:Landroid/preference/SemSwitchPreferenceScreen;

    invoke-virtual {v0, p1}, Landroid/preference/SemSwitchPreferenceScreen;->setEnabled(Z)V

    :cond_2
    return-void
.end method

.method private showEmergencyCallDialog()V
    .locals 7

    iget-object v4, p0, Lcom/android/phone/callsettings/WifiSettingFragment;->mActivity:Landroid/app/Activity;

    const-string/jumbo v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    const v4, 0x7f04010a

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f10009a

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    new-instance v4, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/android/phone/callsettings/WifiSettingFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f0d0cf1

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/android/phone/callsettings/WifiSettingFragment$5;

    invoke-direct {v5, p0, v0}, Lcom/android/phone/callsettings/WifiSettingFragment$5;-><init>(Lcom/android/phone/callsettings/WifiSettingFragment;Landroid/widget/CheckBox;)V

    const v6, 0x7f0d02ca

    invoke-virtual {v4, v6, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private showLocationInfoDialog()V
    .locals 9

    const/4 v8, 0x0

    iget-object v6, p0, Lcom/android/phone/callsettings/WifiSettingFragment;->mActivity:Landroid/app/Activity;

    const-string/jumbo v7, "layout_inflater"

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    const v6, 0x7f04010a

    invoke-virtual {v3, v6, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    const v6, 0x7f10009a

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    const v6, 0x7f1002da

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    const-string/jumbo v6, "support_wfc_ftm"

    invoke-static {v6}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    const v5, 0x7f0d0cf4

    :goto_0
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    new-instance v6, Landroid/app/AlertDialog$Builder;

    iget-object v7, p0, Lcom/android/phone/callsettings/WifiSettingFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v6, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v7, Lcom/android/phone/callsettings/WifiSettingFragment$9;

    invoke-direct {v7, p0, v1}, Lcom/android/phone/callsettings/WifiSettingFragment$9;-><init>(Lcom/android/phone/callsettings/WifiSettingFragment;Landroid/widget/CheckBox;)V

    const v8, 0x7f0d02ca

    invoke-virtual {v6, v8, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    new-instance v7, Lcom/android/phone/callsettings/WifiSettingFragment$10;

    invoke-direct {v7, p0}, Lcom/android/phone/callsettings/WifiSettingFragment$10;-><init>(Lcom/android/phone/callsettings/WifiSettingFragment;)V

    const v8, 0x7f0d02c7

    invoke-virtual {v6, v8, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    new-instance v6, Lcom/android/phone/callsettings/WifiSettingFragment$11;

    invoke-direct {v6, p0}, Lcom/android/phone/callsettings/WifiSettingFragment$11;-><init>(Lcom/android/phone/callsettings/WifiSettingFragment;)V

    invoke-virtual {v2, v6}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    return-void

    :cond_1
    const v5, 0x7f0d0cf3

    goto :goto_0
.end method

.method private showProgressDialogForRogers()V
    .locals 5

    const/4 v4, 0x0

    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/phone/callsettings/WifiSettingFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/phone/callsettings/WifiSettingFragment;->progressDialog:Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/android/phone/callsettings/WifiSettingFragment;->progressDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/phone/callsettings/WifiSettingFragment;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0c91

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/phone/callsettings/WifiSettingFragment;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    iget-object v0, p0, Lcom/android/phone/callsettings/WifiSettingFragment;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/android/phone/callsettings/WifiSettingFragment;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    iget-object v0, p0, Lcom/android/phone/callsettings/WifiSettingFragment;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private showWfcInfoDialogForLatin()V
    .locals 8

    const/4 v7, 0x0

    iget-object v5, p0, Lcom/android/phone/callsettings/WifiSettingFragment;->mActivity:Landroid/app/Activity;

    const-string/jumbo v6, "layout_inflater"

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    const v5, 0x7f04010a

    invoke-virtual {v3, v5, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    const v5, 0x7f10009a

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    const v5, 0x7f1002da

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    const v5, 0x7f0d0cf5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(I)V

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    :cond_0
    new-instance v5, Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/android/phone/callsettings/WifiSettingFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v6, Lcom/android/phone/callsettings/WifiSettingFragment$6;

    invoke-direct {v6, p0, v1}, Lcom/android/phone/callsettings/WifiSettingFragment$6;-><init>(Lcom/android/phone/callsettings/WifiSettingFragment;Landroid/widget/CheckBox;)V

    const v7, 0x7f0d02ca

    invoke-virtual {v5, v7, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private showWfcOPLDialog()V
    .locals 6

    iget-object v3, p0, Lcom/android/phone/callsettings/WifiSettingFragment;->mActivity:Landroid/app/Activity;

    const-string/jumbo v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    const v3, 0x7f04010b

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/android/phone/callsettings/WifiSettingFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0d0cf7

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/android/phone/callsettings/WifiSettingFragment$7;

    invoke-direct {v4, p0}, Lcom/android/phone/callsettings/WifiSettingFragment$7;-><init>(Lcom/android/phone/callsettings/WifiSettingFragment;)V

    const v5, 0x7f0d0cfe

    invoke-virtual {v3, v5, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    new-instance v3, Lcom/android/phone/callsettings/WifiSettingFragment$8;

    invoke-direct {v3, p0}, Lcom/android/phone/callsettings/WifiSettingFragment$8;-><init>(Lcom/android/phone/callsettings/WifiSettingFragment;)V

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    return-void
.end method

.method private showWfcRogersWifiDialog()V
    .locals 4

    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/phone/callsettings/WifiSettingFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0d0c8e

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0d0c92

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/phone/callsettings/WifiSettingFragment$12;

    invoke-direct {v2, p0}, Lcom/android/phone/callsettings/WifiSettingFragment$12;-><init>(Lcom/android/phone/callsettings/WifiSettingFragment;)V

    const v3, 0x7f0d02ca

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    return-void
.end method

.method private updateWifiCalling()V
    .locals 5

    const/4 v4, 0x1

    iget-object v1, p0, Lcom/android/phone/callsettings/WifiSettingFragment;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "wifi_call_enable"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/phone/VoWifiSettingsDataBaseManager;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v4, :cond_3

    const/4 v0, 0x1

    :goto_0
    const-string/jumbo v1, "WifiSettingFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "wifiCallState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    iget-object v1, p0, Lcom/android/phone/callsettings/WifiSettingFragment;->mWifiSwitch:Landroid/preference/SwitchPreference;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/callsettings/WifiSettingFragment;->mWifiSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/android/phone/callsettings/WifiSettingFragment;->mWifiSwitch:Landroid/preference/SwitchPreference;

    iget-object v2, p0, Lcom/android/phone/callsettings/WifiSettingFragment;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/android/phone/utils/WifiSettingUtils;->getWiFiCallingSummaryText(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v1, p0, Lcom/android/phone/callsettings/WifiSettingFragment;->mWifiSwitchPref:Landroid/preference/SemSwitchPreferenceScreen;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/callsettings/WifiSettingFragment;->mWifiSwitchPref:Landroid/preference/SemSwitchPreferenceScreen;

    invoke-virtual {v1, v0}, Landroid/preference/SemSwitchPreferenceScreen;->setChecked(Z)V

    iget-object v1, p0, Lcom/android/phone/callsettings/WifiSettingFragment;->mWifiSwitchPref:Landroid/preference/SemSwitchPreferenceScreen;

    iget-object v2, p0, Lcom/android/phone/callsettings/WifiSettingFragment;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/android/phone/utils/WifiSettingUtils;->getWiFiCallingSummaryText(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/SemSwitchPreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/phone/callsettings/WifiSettingFragment;->mWifiSwitchPref:Landroid/preference/SemSwitchPreferenceScreen;

    invoke-virtual {v1, v4}, Landroid/preference/SemSwitchPreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    :cond_1
    iget-object v1, p0, Lcom/android/phone/callsettings/WifiSettingFragment;->mWifiPref:Landroid/preference/PreferenceScreen;

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/android/phone/callsettings/WifiSettingFragment;->mWifiPref:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/android/phone/callsettings/WifiSettingFragment;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0d04ad

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v2, v1}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/phone/callsettings/WifiSettingFragment;->mWifiPref:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    :cond_2
    return-void

    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/android/phone/callsettings/WifiSettingFragment;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0d04ae

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method private updateWificallingForSPR()V
    .locals 3

    const-string/jumbo v0, "WifiSettingFragment"

    const-string/jumbo v1, "updateWificallingForSPR"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    iget-object v0, p0, Lcom/android/phone/callsettings/WifiSettingFragment;->mWifiPref:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/phone/callsettings/WifiSettingFragment$WfcEnableTask;

    iget-object v1, p0, Lcom/android/phone/callsettings/WifiSettingFragment;->mWifiPref:Landroid/preference/PreferenceScreen;

    invoke-direct {v0, p0, v1}, Lcom/android/phone/callsettings/WifiSettingFragment$WfcEnableTask;-><init>(Lcom/android/phone/callsettings/WifiSettingFragment;Landroid/preference/PreferenceScreen;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/phone/callsettings/WifiSettingFragment$WfcEnableTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    return-void
.end method


# virtual methods
.method protected initializeWifiSetting()V
    .locals 7

    invoke-static {}, Lcom/android/phone/utils/WifiSettingUtils;->isUnifiedDevice()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-static {}, Lcom/android/phone/callsettings/WifiSettingManager;->getInstance()Lcom/android/phone/callsettings/WifiSettingManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/callsettings/WifiSettingFragment;->mPrefCategory:Landroid/preference/PreferenceCategory;

    const-string/jumbo v5, "button_wifi_call_preference_unified"

    sget-object v6, Lcom/android/phone/callsettings/CallsettingsConstants;->PreferenceScreen:Ljava/lang/String;

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/phone/callsettings/WifiSettingManager;->findPreference(Landroid/preference/PreferenceCategory;Ljava/lang/String;Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceScreen;

    iput-object v3, p0, Lcom/android/phone/callsettings/WifiSettingFragment;->mWifiPref:Landroid/preference/PreferenceScreen;

    :cond_0
    :goto_0
    invoke-static {}, Lcom/android/phone/utils/WifiSettingUtils;->getWiFiCallingTitle()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/phone/callsettings/WifiSettingFragment;->mPrefCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v3, v2}, Landroid/preference/PreferenceCategory;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/android/phone/callsettings/WifiSettingFragment;->mWifiSwitch:Landroid/preference/SwitchPreference;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/phone/callsettings/WifiSettingFragment;->mWifiSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v2}, Landroid/preference/SwitchPreference;->setTitle(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v3, p0, Lcom/android/phone/callsettings/WifiSettingFragment;->mWifiSwitchPref:Landroid/preference/SemSwitchPreferenceScreen;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/phone/callsettings/WifiSettingFragment;->mWifiSwitchPref:Landroid/preference/SemSwitchPreferenceScreen;

    invoke-virtual {v3, v2}, Landroid/preference/SemSwitchPreferenceScreen;->setTitle(Ljava/lang/CharSequence;)V

    :cond_2
    const-string/jumbo v3, "vowifi_in_can"

    invoke-static {v3}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/phone/callsettings/WifiSettingFragment;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/android/phone/callsettings/WifiSettingFragment;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "wifi_calling_rogers_imsi"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v1, :cond_3

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    :cond_3
    :goto_1
    return-void

    :cond_4
    const-string/jumbo v3, "support_vowifi_spr"

    invoke-static {v3}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-static {}, Lcom/android/phone/callsettings/WifiSettingManager;->getInstance()Lcom/android/phone/callsettings/WifiSettingManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/callsettings/WifiSettingFragment;->mPrefCategory:Landroid/preference/PreferenceCategory;

    const-string/jumbo v5, "button_wifi_call_preference_spr"

    sget-object v6, Lcom/android/phone/callsettings/CallsettingsConstants;->PreferenceScreen:Ljava/lang/String;

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/phone/callsettings/WifiSettingManager;->findPreference(Landroid/preference/PreferenceCategory;Ljava/lang/String;Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceScreen;

    iput-object v3, p0, Lcom/android/phone/callsettings/WifiSettingFragment;->mWifiPref:Landroid/preference/PreferenceScreen;

    goto :goto_0

    :cond_5
    const-string/jumbo v3, "support_vowifi_att_wave2"

    invoke-static {v3}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-static {}, Lcom/android/phone/callsettings/WifiSettingManager;->getInstance()Lcom/android/phone/callsettings/WifiSettingManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/callsettings/WifiSettingFragment;->mPrefCategory:Landroid/preference/PreferenceCategory;

    const-string/jumbo v5, "button_wifi_call_preference_att"

    sget-object v6, Lcom/android/phone/callsettings/CallsettingsConstants;->PreferenceScreen:Ljava/lang/String;

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/phone/callsettings/WifiSettingManager;->findPreference(Landroid/preference/PreferenceCategory;Ljava/lang/String;Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceScreen;

    iput-object v3, p0, Lcom/android/phone/callsettings/WifiSettingFragment;->mWifiPref:Landroid/preference/PreferenceScreen;

    goto/16 :goto_0

    :cond_6
    invoke-static {}, Lcom/android/phone/utils/WifiSettingUtils;->showWifiPreference()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-static {}, Lcom/android/phone/callsettings/WifiSettingManager;->getInstance()Lcom/android/phone/callsettings/WifiSettingManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/callsettings/WifiSettingFragment;->mPrefCategory:Landroid/preference/PreferenceCategory;

    const-string/jumbo v5, "button_wifi_call_preference"

    sget-object v6, Lcom/android/phone/callsettings/CallsettingsConstants;->SemSwitchPreferenceScreen:Ljava/lang/String;

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/phone/callsettings/WifiSettingManager;->findPreference(Landroid/preference/PreferenceCategory;Ljava/lang/String;Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/SemSwitchPreferenceScreen;

    iput-object v3, p0, Lcom/android/phone/callsettings/WifiSettingFragment;->mWifiSwitchPref:Landroid/preference/SemSwitchPreferenceScreen;

    iget-object v3, p0, Lcom/android/phone/callsettings/WifiSettingFragment;->mWifiSwitchPref:Landroid/preference/SemSwitchPreferenceScreen;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/phone/callsettings/WifiSettingFragment;->mWifiSwitchPref:Landroid/preference/SemSwitchPreferenceScreen;

    invoke-virtual {v3, p0}, Landroid/preference/SemSwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto/16 :goto_0

    :cond_7
    invoke-static {}, Lcom/android/phone/callsettings/WifiSettingManager;->getInstance()Lcom/android/phone/callsettings/WifiSettingManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/callsettings/WifiSettingFragment;->mPrefCategory:Landroid/preference/PreferenceCategory;

    const-string/jumbo v5, "button_meterial_wifi_calling"

    sget-object v6, Lcom/android/phone/callsettings/CallsettingsConstants;->SwitchPreference:Ljava/lang/String;

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/phone/callsettings/WifiSettingManager;->findPreference(Landroid/preference/PreferenceCategory;Ljava/lang/String;Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/SwitchPreference;

    iput-object v3, p0, Lcom/android/phone/callsettings/WifiSettingFragment;->mWifiSwitch:Landroid/preference/SwitchPreference;

    iget-object v3, p0, Lcom/android/phone/callsettings/WifiSettingFragment;->mWifiSwitch:Landroid/preference/SwitchPreference;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/phone/callsettings/WifiSettingFragment;->mWifiSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto/16 :goto_0

    :cond_8
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/phone/callsettings/WifiSettingFragment;->sim_provisioned:Z

    goto/16 :goto_1
.end method

.method public onPause()V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onPause()V

    const-string/jumbo v0, "WifiSettingFragment"

    const-string/jumbo v1, "onPause()"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    invoke-virtual {p0}, Lcom/android/phone/callsettings/WifiSettingFragment;->unregisterAllReceiver()V

    const-string/jumbo v0, "vowifi_in_can"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/callsettings/WifiSettingFragment;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/callsettings/WifiSettingFragment;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/callsettings/WifiSettingFragment;->mWifiSwitchPref:Landroid/preference/SemSwitchPreferenceScreen;

    invoke-virtual {v0, v3}, Landroid/preference/SemSwitchPreferenceScreen;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/phone/callsettings/WifiSettingFragment;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "wifi_call_enable"

    invoke-static {v0, v1, v3}, Lcom/android/phone/VoWifiSettingsDataBaseManager;->setInt(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_0
    invoke-direct {p0}, Lcom/android/phone/callsettings/WifiSettingFragment;->dismissDialog()V

    iget-object v0, p0, Lcom/android/phone/callsettings/WifiSettingFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 8

    const/4 v1, 0x1

    const-string/jumbo v0, "WifiSettingFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onPreferenceChange: \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\" changed to \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/callsettings/WifiSettingFragment;->mWifiSwitch:Landroid/preference/SwitchPreference;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/callsettings/WifiSettingFragment;->mWifiSwitchPref:Landroid/preference/SemSwitchPreferenceScreen;

    if-ne p1, v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/android/phone/callsettings/WifiSettingFragment;->handleWiFiCall()V

    iget-object v0, p0, Lcom/android/phone/callsettings/WifiSettingFragment;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0d01f1

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/android/phone/callsettings/WifiSettingFragment;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0d0244

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "wifi_call_enable"

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    int-to-long v6, v0

    invoke-static {v2, v3, v4, v6, v7}, Lcom/android/phone/utils/SALogging;->sendSAEventSettingLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    :cond_1
    return v1

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/phone/callsettings/WifiSettingFragment;->mWifiSwitchPref:Landroid/preference/SemSwitchPreferenceScreen;

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/callsettings/WifiSettingFragment;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d01f1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/callsettings/WifiSettingFragment;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0243

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/utils/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method protected registerAllReceiver()V
    .locals 5

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string/jumbo v1, "vowifi_in_can"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "com.sec.epdgservice.IPSEC_CONNECTION_EVENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/phone/callsettings/WifiSettingFragment;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/callsettings/WifiSettingFragment;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    :cond_0
    iget-object v1, p0, Lcom/android/phone/callsettings/WifiSettingFragment;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "vowifi_menu_enable"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/callsettings/WifiSettingFragment;->mWFCEnableObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v1, p0, Lcom/android/phone/callsettings/WifiSettingFragment;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/phone/VoWifiSettingsDataBaseManager;->CONTENT_URI_VOWIFISETTING_TABLE:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/phone/callsettings/WifiSettingFragment;->mWFCSettingObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method protected unregisterAllReceiver()V
    .locals 2

    const-string/jumbo v0, "vowifi_in_can"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/callsettings/WifiSettingFragment;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/callsettings/WifiSettingFragment;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    iget-object v0, p0, Lcom/android/phone/callsettings/WifiSettingFragment;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/callsettings/WifiSettingFragment;->mWFCEnableObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/android/phone/callsettings/WifiSettingFragment;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/callsettings/WifiSettingFragment;->mWFCSettingObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public updateWifiSetting()V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/phone/callsettings/WifiSettingFragment;->registerAllReceiver()V

    const-string/jumbo v2, "support_vowifi_spr"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/android/phone/callsettings/WifiSettingFragment;->updateWificallingForSPR()V

    :goto_0
    const-string/jumbo v2, "vowifi_menu_enable"

    invoke-static {v2, v1}, Lcom/android/phone/TeleServiceSystemDB;->getSettingDB(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_1

    :goto_1
    invoke-direct {p0, v0}, Lcom/android/phone/callsettings/WifiSettingFragment;->setMenuEnabled(Z)V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/phone/callsettings/WifiSettingFragment;->updateWifiCalling()V

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method
