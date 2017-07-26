.class public Lcom/android/phone/operator/usa/TelephonyExtension;
.super Ljava/lang/Object;
.source "TelephonyExtension.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/operator/usa/TelephonyExtension$1;
    }
.end annotation


# static fields
.field private static VISUAL_VOICEMAIL_PACKAGE:Ljava/lang/String;

.field private static isWifiDisabledByECM:Z

.field private static final mHandler:Landroid/os/Handler;

.field private static mLowBatteryMediaPlayer:Landroid/media/MediaPlayer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string/jumbo v0, "com.coremobility.app.vnotes"

    sput-object v0, Lcom/android/phone/operator/usa/TelephonyExtension;->VISUAL_VOICEMAIL_PACKAGE:Ljava/lang/String;

    new-instance v0, Lcom/android/phone/operator/usa/TelephonyExtension$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/phone/operator/usa/TelephonyExtension$1;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/android/phone/operator/usa/TelephonyExtension;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cancelAllowDataAccess(Landroid/app/NotificationManager;I)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/app/NotificationManager;->cancel(I)V

    return-void
.end method

.method public static cancelEmegencyCallbackMode(Landroid/app/NotificationManager;I)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/app/NotificationManager;->cancel(I)V

    return-void
.end method

.method public static disableWifiInEmergencyCall(Landroid/content/Context;)V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string/jumbo v1, "wifi"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_3

    const-string/jumbo v1, "TelephonyExtension"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "disableWifiInEmergencyCall, WifiState : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v5}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    :cond_0
    invoke-virtual {v0, v4}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    sput-boolean v5, Lcom/android/phone/operator/usa/TelephonyExtension;->isWifiDisabledByECM:Z

    :cond_1
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v1

    const/16 v2, 0xd

    if-eq v1, v2, :cond_2

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v1

    const/16 v2, 0xc

    if-ne v1, v2, :cond_3

    :cond_2
    invoke-virtual {v0, v6, v4}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    :cond_3
    return-void
.end method

.method public static displayRoamingNetwork()Z
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/phone/operator/usa/TelephonyExtension;->getRoamPrefMenu(I)Z

    move-result v0

    return v0
.end method

.method public static enableWifiAfterEmergencyCall(Landroid/content/Context;)V
    .locals 5

    const/4 v4, 0x1

    const-string/jumbo v1, "TelephonyExtension"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "enableWifiAfterEmergencyCall, isWifiDisabledByECM : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/android/phone/operator/usa/TelephonyExtension;->isWifiDisabledByECM:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    const-string/jumbo v1, "wifi"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    sget-boolean v1, Lcom/android/phone/operator/usa/TelephonyExtension;->isWifiDisabledByECM:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v1

    if-ne v1, v4, :cond_0

    invoke-virtual {v0, v4}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/phone/operator/usa/TelephonyExtension;->isWifiDisabledByECM:Z

    :cond_0
    return-void
.end method

.method public static getDefaultRoamingMode()I
    .locals 1

    const-string/jumbo v0, "system_select_home_only"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x2

    return v0
.end method

.method private static getEmegencyCallbackModeIntent()Landroid/content/Intent;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.MAIN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string/jumbo v1, "com.android.phone"

    const-class v2, Lcom/android/phone/operator/usa/EmergencyCallbackMode;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method public static getPhone()Lcom/android/internal/telephony/Phone;
    .locals 1

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    return-object v0
.end method

.method private static getRoamPrefMenu(I)Z
    .locals 5

    const-string/jumbo v3, "roaming_with_chameleon"

    invoke-static {v3}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo v3, "persist.sys.roampref_menu"

    const-string/jumbo v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    add-int/lit8 v0, v3, -0x1

    if-lt v0, p0, :cond_0

    const-string/jumbo v3, "1"

    aget-object v4, v2, p0

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    return v3

    :cond_0
    const/4 v3, 0x0

    return v3
.end method

.method public static getRoamingIntent(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 1

    const-string/jumbo v0, "roaming_enhancement"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p0, Landroid/content/Intent;

    const-string/jumbo v0, "com.samsung.roaming.DATA_ROAMING_SETTINGS_ENHANCED"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static getSecureSettingBoolean(Ljava/lang/String;I)Z
    .locals 2

    const/4 v0, 0x1

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, p0, p1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getSecureSettingValueInt(Ljava/lang/String;I)I
    .locals 1

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p0, p1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getVmPriorityCdma(Landroid/content/Context;)I
    .locals 3

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "vm_priority_key_cdma"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public static initializeShowRoamingGuardValue()V
    .locals 3

    const/4 v1, 0x0

    const-string/jumbo v0, "show_domestic_voice_roaming_guard"

    invoke-static {v0, v1}, Lcom/android/phone/mobilenetworks/boundary/SettingProxy;->setSecureSettingBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v0, "show_international_voice_roaming_guard"

    invoke-static {v0, v1}, Lcom/android/phone/mobilenetworks/boundary/SettingProxy;->setSecureSettingBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v0, "show_domestic_data_roaming_guard"

    invoke-static {v0, v1}, Lcom/android/phone/mobilenetworks/boundary/SettingProxy;->setSecureSettingBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v0, "show_international_data_roaming_guard"

    invoke-static {v0, v1}, Lcom/android/phone/mobilenetworks/boundary/SettingProxy;->setSecureSettingBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v0, "TelephonyExtension"

    const-string/jumbo v1, "initializeShowRoamingGuardValue"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    return-void
.end method

.method public static isDomesticRoamingInService()Z
    .locals 6

    const/4 v2, 0x0

    invoke-static {}, Lcom/android/phone/mobilenetworks/boundary/PhoneProxy;->IsDomesticRoaming()Z

    move-result v0

    invoke-static {}, Lcom/android/phone/mobilenetworks/boundary/PhoneProxy;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getState()I

    move-result v3

    if-nez v3, :cond_0

    const/4 v1, 0x1

    :goto_0
    const-string/jumbo v3, "TelephonyExtension"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "StateInService : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " / isDomesticRoaming : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    if-eqz v1, :cond_1

    :goto_1
    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1
.end method

.method public static isDomesticRoamingSettingInService()Z
    .locals 6

    const/4 v5, 0x1

    const-string/jumbo v2, "roam_guard_call_domestic"

    invoke-static {v2, v5}, Lcom/android/phone/operator/usa/TelephonyExtension;->getSecureSettingBoolean(Ljava/lang/String;I)Z

    move-result v0

    invoke-static {}, Lcom/android/phone/operator/usa/TelephonyExtension;->isDomesticRoamingInService()Z

    move-result v1

    const-string/jumbo v2, "TelephonyExtension"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "DomesticCallGuardEnabled : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " / isDomesticRoamingInService : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v5}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    if-eqz v0, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isInternationalRoamingInService()Z
    .locals 6

    const/4 v2, 0x0

    invoke-static {}, Lcom/android/phone/mobilenetworks/boundary/PhoneProxy;->IsInternationalRoaming()Z

    move-result v0

    invoke-static {}, Lcom/android/phone/mobilenetworks/boundary/PhoneProxy;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getState()I

    move-result v3

    if-nez v3, :cond_0

    const/4 v1, 0x1

    :goto_0
    const-string/jumbo v3, "TelephonyExtension"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "StateInService : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " / isInternationalRoaming : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    if-eqz v1, :cond_1

    :goto_1
    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1
.end method

.method public static isInternationalRoamingSettingInService()Z
    .locals 6

    const/4 v5, 0x1

    const-string/jumbo v2, "roam_guard_call_international"

    invoke-static {v2, v5}, Lcom/android/phone/operator/usa/TelephonyExtension;->getSecureSettingBoolean(Ljava/lang/String;I)Z

    move-result v0

    invoke-static {}, Lcom/android/phone/operator/usa/TelephonyExtension;->isInternationalRoamingInService()Z

    move-result v1

    const-string/jumbo v2, "TelephonyExtension"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "InternationalCallGuardEnabled : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " / isInternationalRoamingInService : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v5}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    if-eqz v0, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isVoicemailNumberDefault(Lcom/android/internal/telephony/Phone;)Z
    .locals 5

    const/4 v4, 0x0

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "vm_number_key_cdma"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "vm_number_key_cdma"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    return v2
.end method

.method public static notifyAllowDataAccess(Landroid/content/Context;Landroid/app/NotificationManager;I)V
    .locals 10

    const v9, 0x7f0d080d

    const/4 v8, 0x0

    invoke-virtual {p0, v9}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    const-string/jumbo v6, "notification"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v6, "android.intent.action.MAIN"

    const/4 v7, 0x0

    invoke-direct {v2, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v6, 0x10000000

    invoke-virtual {v2, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string/jumbo v6, "com.android.phone"

    const-class v7, Lcom/android/phone/operator/usa/AllowDataAccess;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p0, v8, v2, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v3, v6, v8

    invoke-virtual {p0, v9, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v4, Landroid/app/Notification;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const v8, 0x108008a

    invoke-direct {v4, v8, v5, v6, v7}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    invoke-virtual {v4, p0, v5, v0, v1}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    iget v6, v4, Landroid/app/Notification;->flags:I

    or-int/lit8 v6, v6, 0x20

    iput v6, v4, Landroid/app/Notification;->flags:I

    invoke-virtual {p1, p2, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method public static notifyEmegencyCallbackMode(Landroid/content/Context;Landroid/app/NotificationManager;I)V
    .locals 9

    const/4 v7, 0x0

    const v6, 0x7f0d066a

    invoke-virtual {p0, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    const-string/jumbo v6, "notification"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {}, Lcom/android/phone/operator/usa/TelephonyExtension;->getEmegencyCallbackModeIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-static {p0, v7, v2, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v4, v6, v7

    const v7, 0x7f0d0666

    invoke-virtual {p0, v7, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f0d0665

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Landroid/app/Notification;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const v8, 0x7f020140

    invoke-direct {v3, v8, v5, v6, v7}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    invoke-virtual {v3, p0, v5, v1, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    iget v6, v3, Landroid/app/Notification;->flags:I

    or-int/lit8 v6, v6, 0x20

    iput v6, v3, Landroid/app/Notification;->flags:I

    invoke-virtual {p1, p2, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method public static onEmergencyCallbackModeChanged(Landroid/content/Context;Lcom/android/internal/telephony/Phone;Landroid/content/Intent;)V
    .locals 6

    if-eqz p1, :cond_5

    invoke-static {p1}, Lcom/android/internal/telephony/TelephonyCapabilities;->supportsEcm(Lcom/android/internal/telephony/Phone;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string/jumbo v2, "TelephonyExtension"

    const-string/jumbo v3, "Emergency Callback Mode arrived in PhoneApp."

    invoke-static {v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/PhoneGlobals;->getNotificationMgr()Lcom/android/phone/NotificationMgr;

    move-result-object v1

    const-string/jumbo v2, "phoneinECMState"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/android/phone/operator/usa/TelephonyExtension;->getEmegencyCallbackModeIntent()Landroid/content/Intent;

    move-result-object v0

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    new-instance v3, Lcom/android/phone/operator/usa/TelephonyExtension$3;

    invoke-direct {v3, p0, v0}, Lcom/android/phone/operator/usa/TelephonyExtension$3;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/phone/NotificationMgr;->notifyEmegencyCallbackMode()V

    :cond_0
    const-string/jumbo v2, "emergency_callback_mode_exit_timer_enable"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/android/phone/EmergencyCallbackModeService;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_1
    :goto_0
    return-void

    :cond_2
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/android/phone/NotificationMgr;->cancelEmegencyCallbackMode()V

    :cond_3
    const/4 p1, 0x0

    goto :goto_0

    :cond_4
    const-string/jumbo v2, "TelephonyExtension"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Got ACTION_EMERGENCY_CALLBACK_MODE_CHANGED, but ECM isn\'t supported for phone: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    goto :goto_0

    :cond_5
    const-string/jumbo v2, "TelephonyExtension"

    const-string/jumbo v3, "phoneInEcm is null."

    invoke-static {v2, v3}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static playLowBatteryTone()V
    .locals 6

    const/4 v5, 0x1

    const-string/jumbo v2, "TelephonyExtension"

    const-string/jumbo v3, "Playing low battery tone"

    invoke-static {v2, v3, v5}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    new-instance v2, Landroid/media/MediaPlayer;

    invoke-direct {v2}, Landroid/media/MediaPlayer;-><init>()V

    sput-object v2, Lcom/android/phone/operator/usa/TelephonyExtension;->mLowBatteryMediaPlayer:Landroid/media/MediaPlayer;

    sget-object v2, Lcom/android/phone/operator/usa/TelephonyExtension;->mLowBatteryMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v2, :cond_1

    :try_start_0
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/PhoneApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "low_battery_sound"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    if-nez v1, :cond_0

    const-string/jumbo v2, "TelephonyExtension"

    const-string/jumbo v3, "soundUri is null"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    return-void

    :cond_0
    sget-object v2, Lcom/android/phone/operator/usa/TelephonyExtension;->mLowBatteryMediaPlayer:Landroid/media/MediaPlayer;

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/phone/PhoneApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    sget-object v2, Lcom/android/phone/operator/usa/TelephonyExtension;->mLowBatteryMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    sget-object v2, Lcom/android/phone/operator/usa/TelephonyExtension;->mLowBatteryMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->prepare()V

    sget-object v2, Lcom/android/phone/operator/usa/TelephonyExtension;->mLowBatteryMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->start()V

    sget-object v2, Lcom/android/phone/operator/usa/TelephonyExtension;->mLowBatteryMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setLooping(Z)V

    sget-object v2, Lcom/android/phone/operator/usa/TelephonyExtension;->mLowBatteryMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v3, Lcom/android/phone/operator/usa/TelephonyExtension$2;

    invoke-direct {v3}, Lcom/android/phone/operator/usa/TelephonyExtension$2;-><init>()V

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v2, "TelephonyExtension"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mLowBatteryMediaPlayer exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v5}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    goto :goto_0
.end method

.method public static setCdmaRoaming(Lcom/android/internal/telephony/Phone;Landroid/os/Message;)V
    .locals 6

    const/4 v4, 0x1

    const-string/jumbo v3, "roam_setting_call_domestic"

    invoke-static {v3, v4}, Lcom/android/phone/operator/usa/TelephonyExtension;->getSecureSettingBoolean(Ljava/lang/String;I)Z

    move-result v0

    const-string/jumbo v3, "roam_setting_call_international"

    invoke-static {v3, v4}, Lcom/android/phone/operator/usa/TelephonyExtension;->getSecureSettingBoolean(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v0, :cond_0

    if-eqz v1, :cond_1

    :cond_0
    if-nez v0, :cond_2

    if-eqz v1, :cond_2

    const/4 v2, 0x6

    :goto_0
    const-string/jumbo v3, "TelephonyExtension"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setCdmaRoamingPreference value : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v2, p1}, Lcom/android/internal/telephony/Phone;->setCdmaRoamingPreference(ILandroid/os/Message;)V

    return-void

    :cond_1
    const/4 v2, 0x5

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    const/4 v2, 0x7

    goto :goto_0

    :cond_3
    const/16 v2, 0x8

    goto :goto_0
.end method

.method public static setLTECdmaRoaming(Lcom/android/internal/telephony/Phone;Landroid/os/Message;)V
    .locals 11

    const/4 v9, 0x0

    const-string/jumbo v8, "roam_setting_data_lte"

    invoke-static {v8, v9}, Lcom/android/phone/operator/usa/TelephonyExtension;->getSecureSettingBoolean(Ljava/lang/String;I)Z

    move-result v2

    const-string/jumbo v8, "roam_setting_data_lte_international"

    invoke-static {v8, v9}, Lcom/android/phone/operator/usa/TelephonyExtension;->getSecureSettingBoolean(Ljava/lang/String;I)Z

    move-result v5

    const-string/jumbo v8, "TelephonyExtension"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "setLTECdmaRoaming - domesticRoamLteData : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v8, "TelephonyExtension"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "setLTECdmaRoaming - internationalRoamLteData : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/phone/operator/usa/TelephonyExtension;->getDefaultRoamingMode()I

    move-result v1

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/phone/PhoneApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "roaming_settings"

    invoke-static {v8, v9, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    const-string/jumbo v8, "TelephonyExtension"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "setLTECdmaRoaming - settingsRoamingMode : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " / defaultRoamingMode : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x0

    const/4 v8, 0x2

    if-ne v6, v8, :cond_5

    if-eqz v2, :cond_0

    if-eqz v5, :cond_3

    :cond_0
    if-nez v2, :cond_4

    if-eqz v5, :cond_4

    const/4 v7, 0x2

    :cond_1
    :goto_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v3, Ljava/io/DataOutputStream;

    invoke-direct {v3, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/16 v8, 0x51

    :try_start_0
    invoke-virtual {v3, v8}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/16 v8, 0x69

    invoke-virtual {v3, v8}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/4 v8, 0x5

    invoke-virtual {v3, v8}, Ljava/io/DataOutputStream;->writeShort(I)V

    invoke-virtual {v3, v7}, Ljava/io/DataOutputStream;->writeByte(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    const-string/jumbo v8, "lte_roaming_band_control"

    invoke-static {v8}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v8

    sget-object v9, Lcom/android/phone/operator/usa/TelephonyExtension;->mHandler:Landroid/os/Handler;

    const/4 v10, 0x1

    invoke-virtual {v9, v10, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {p0, v8, v9}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    :cond_2
    const-string/jumbo v8, "TelephonyExtension"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "setLTECdmaRoaming - statusLTECdmaRoamingMode : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    const/4 v7, 0x1

    goto :goto_0

    :cond_4
    if-eqz v2, :cond_1

    if-eqz v5, :cond_1

    const/4 v7, 0x3

    goto :goto_0

    :cond_5
    const/4 v7, 0x0

    goto :goto_0

    :catch_0
    move-exception v4

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method public static setSecureSettingDataRoaming()V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-static {}, Lcom/android/phone/mobilenetworks/boundary/PhoneProxy;->getPhoneType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    const-string/jumbo v1, "TelephonyExtension"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "phoneType : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " / data_roaming - domestic_cdma_data_roaming_setting : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "roam_setting_data_domestic"

    invoke-static {v3, v4}, Lcom/android/phone/operator/usa/TelephonyExtension;->getSecureSettingBoolean(Ljava/lang/String;I)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    const-string/jumbo v1, "TelephonyExtension"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "phoneType : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " / data_roaming - international_cdma_data_roaming_setting : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "roam_setting_data_international"

    invoke-static {v3, v4}, Lcom/android/phone/operator/usa/TelephonyExtension;->getSecureSettingBoolean(Ljava/lang/String;I)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    const-string/jumbo v1, "roam_setting_data_domestic"

    invoke-static {v1, v4}, Lcom/android/phone/operator/usa/TelephonyExtension;->getSecureSettingBoolean(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "roam_setting_data_international"

    invoke-static {v1, v4}, Lcom/android/phone/operator/usa/TelephonyExtension;->getSecureSettingBoolean(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const-string/jumbo v1, "data_roaming"

    invoke-static {v1, v4}, Lcom/android/phone/operator/usa/TelephonyExtension;->setSecureSettingValue(Ljava/lang/String;I)V

    :goto_0
    const-string/jumbo v1, "TelephonyExtension"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "phoneType : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " / data_roaming : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "data_roaming"

    invoke-static {v3, v5}, Lcom/android/phone/operator/usa/TelephonyExtension;->getSecureSettingBoolean(Ljava/lang/String;I)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    return-void

    :cond_1
    const-string/jumbo v1, "data_roaming"

    invoke-static {v1, v5}, Lcom/android/phone/operator/usa/TelephonyExtension;->setSecureSettingValue(Ljava/lang/String;I)V

    goto :goto_0

    :cond_2
    if-eq v0, v4, :cond_3

    const/4 v1, 0x3

    if-ne v0, v1, :cond_5

    :cond_3
    const-string/jumbo v1, "TelephonyExtension"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "phoneType : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " / data_roaming - international_gsm_data_roaming_setting : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "sprint_gsm_data_roaming"

    invoke-static {v3, v4}, Lcom/android/phone/operator/usa/TelephonyExtension;->getSecureSettingBoolean(Ljava/lang/String;I)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    const-string/jumbo v1, "TelephonyExtension"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "phoneType : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " / data_roaming - international_cdma_data_roaming_setting : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "roam_setting_data_international"

    invoke-static {v3, v4}, Lcom/android/phone/operator/usa/TelephonyExtension;->getSecureSettingBoolean(Ljava/lang/String;I)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    const-string/jumbo v1, "sprint_gsm_data_roaming"

    invoke-static {v1, v4}, Lcom/android/phone/operator/usa/TelephonyExtension;->getSecureSettingBoolean(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_4

    const-string/jumbo v1, "roam_setting_data_international"

    invoke-static {v1, v4}, Lcom/android/phone/operator/usa/TelephonyExtension;->getSecureSettingBoolean(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_4
    const-string/jumbo v1, "data_roaming"

    invoke-static {v1, v4}, Lcom/android/phone/operator/usa/TelephonyExtension;->setSecureSettingValue(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_5
    const/4 v1, 0x5

    if-eq v0, v1, :cond_3

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unexpected phone type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_6
    const-string/jumbo v1, "data_roaming"

    invoke-static {v1, v5}, Lcom/android/phone/operator/usa/TelephonyExtension;->setSecureSettingValue(Ljava/lang/String;I)V

    goto/16 :goto_0
.end method

.method public static setSecureSettingValue(Ljava/lang/String;I)V
    .locals 1

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p0, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public static shouldGlobalNetworkDialogDisplay()Z
    .locals 14

    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/phone/PhoneApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {}, Lcom/android/phone/mobilenetworks/MobileNetworkUtils;->getGlobalType()I

    move-result v3

    const-string/jumbo v9, "device_provisioned"

    invoke-static {v0, v9, v10}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-eqz v9, :cond_1

    const/4 v1, 0x1

    :goto_0
    const-string/jumbo v9, "preferred_network_mode"

    invoke-static {v0, v9, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v3, :cond_2

    const/4 v5, 0x1

    :goto_1
    const-string/jumbo v9, "global_mode_change_do_not_show"

    invoke-static {v0, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-ne v9, v11, :cond_3

    const/4 v2, 0x1

    :goto_2
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v9

    if-eq v9, v11, :cond_4

    const/4 v8, 0x1

    :goto_3
    invoke-static {}, Lcom/android/phone/mobilenetworks/MobileNetworkUtils;->isFactoryMode()Z

    move-result v4

    const-string/jumbo v9, "TelephonyExtension"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "deviceProvisioned : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " / simInserted : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v9, v12, v11}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    const-string/jumbo v12, "TelephonyExtension"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "!isFactoryMode : "

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    if-eqz v4, :cond_5

    move v9, v10

    :goto_4
    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v13, " / !isGlobalMode : "

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    if-eqz v5, :cond_6

    move v9, v10

    :goto_5
    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v13, " / !doNotShow : "

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    if-eqz v2, :cond_7

    :goto_6
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v12, v9, v11}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    const-string/jumbo v9, "TelephonyExtension"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "networkMode : "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v11}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    if-eqz v1, :cond_0

    if-eqz v8, :cond_0

    if-eqz v4, :cond_8

    :cond_0
    const/4 v7, 0x0

    :goto_7
    const-string/jumbo v9, "TelephonyExtension"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "shouldGlobalNetworkDialogDisplay - shouldDisplay : "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v11}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    return v7

    :cond_1
    const/4 v1, 0x0

    goto/16 :goto_0

    :cond_2
    const/4 v5, 0x0

    goto/16 :goto_1

    :cond_3
    const/4 v2, 0x0

    goto/16 :goto_2

    :cond_4
    const/4 v8, 0x0

    goto/16 :goto_3

    :cond_5
    move v9, v11

    goto :goto_4

    :cond_6
    move v9, v11

    goto :goto_5

    :cond_7
    move v10, v11

    goto :goto_6

    :cond_8
    if-nez v5, :cond_0

    if-nez v2, :cond_0

    const/4 v7, 0x1

    goto :goto_7
.end method

.method public static stopLowBatteryTone()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    sget-object v0, Lcom/android/phone/operator/usa/TelephonyExtension;->mLowBatteryMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    const-string/jumbo v0, "TelephonyExtension"

    const-string/jumbo v1, "Stopping low battery tone"

    invoke-static {v0, v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    sget-object v0, Lcom/android/phone/operator/usa/TelephonyExtension;->mLowBatteryMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/phone/operator/usa/TelephonyExtension;->mLowBatteryMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    sput-object v3, Lcom/android/phone/operator/usa/TelephonyExtension;->mLowBatteryMediaPlayer:Landroid/media/MediaPlayer;

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "TelephonyExtension"

    const-string/jumbo v1, "Not stopping low battery tone"

    invoke-static {v0, v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    goto :goto_0
.end method

.method public static updateShowVoiceRoamingGuardValue()V
    .locals 5

    invoke-static {}, Lcom/android/phone/operator/usa/TelephonyExtension;->isDomesticRoamingSettingInService()Z

    move-result v0

    invoke-static {}, Lcom/android/phone/operator/usa/TelephonyExtension;->isInternationalRoamingSettingInService()Z

    move-result v1

    const-string/jumbo v2, "show_domestic_voice_roaming_guard"

    invoke-static {v2, v0}, Lcom/android/phone/mobilenetworks/boundary/SettingProxy;->setSecureSettingBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v2, "show_international_voice_roaming_guard"

    invoke-static {v2, v1}, Lcom/android/phone/mobilenetworks/boundary/SettingProxy;->setSecureSettingBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v2, "TelephonyExtension"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateShowVoiceRoamingGuardValue : domesticCallGuardEnabled = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " internationalCallGuardEnabled = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    return-void
.end method

.method public static updateSystemSelectAutomatic()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x1

    const-string/jumbo v0, "roam_setting_call_domestic"

    invoke-static {v0, v1}, Lcom/android/phone/operator/usa/TelephonyExtension;->setSecureSettingValue(Ljava/lang/String;I)V

    const-string/jumbo v0, "roam_setting_data_domestic"

    invoke-static {v0, v2}, Lcom/android/phone/operator/usa/TelephonyExtension;->setSecureSettingValue(Ljava/lang/String;I)V

    const-string/jumbo v0, "lte_roaming_enhancement"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "roam_setting_data_lte"

    invoke-static {v0, v2}, Lcom/android/phone/operator/usa/TelephonyExtension;->setSecureSettingValue(Ljava/lang/String;I)V

    :cond_0
    const-string/jumbo v0, "roam_setting_call_international"

    invoke-static {v0, v1}, Lcom/android/phone/operator/usa/TelephonyExtension;->setSecureSettingValue(Ljava/lang/String;I)V

    const-string/jumbo v0, "roam_setting_data_international"

    invoke-static {v0, v1}, Lcom/android/phone/operator/usa/TelephonyExtension;->setSecureSettingValue(Ljava/lang/String;I)V

    const-string/jumbo v0, "sprint_gsm_data_roaming"

    invoke-static {v0, v1}, Lcom/android/phone/operator/usa/TelephonyExtension;->setSecureSettingValue(Ljava/lang/String;I)V

    const-string/jumbo v0, "lte_roaming_enhancement"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "roam_setting_data_lte_international"

    invoke-static {v0, v1}, Lcom/android/phone/operator/usa/TelephonyExtension;->setSecureSettingValue(Ljava/lang/String;I)V

    :cond_1
    return-void
.end method

.method public static updateSystemSelectHomeOnly()V
    .locals 2

    const/4 v1, 0x0

    const-string/jumbo v0, "roam_setting_call_domestic"

    invoke-static {v0, v1}, Lcom/android/phone/operator/usa/TelephonyExtension;->setSecureSettingValue(Ljava/lang/String;I)V

    const-string/jumbo v0, "roam_setting_data_domestic"

    invoke-static {v0, v1}, Lcom/android/phone/operator/usa/TelephonyExtension;->setSecureSettingValue(Ljava/lang/String;I)V

    const-string/jumbo v0, "lte_roaming_enhancement"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "roam_setting_data_lte"

    invoke-static {v0, v1}, Lcom/android/phone/operator/usa/TelephonyExtension;->setSecureSettingValue(Ljava/lang/String;I)V

    :cond_0
    const-string/jumbo v0, "roam_setting_call_international"

    invoke-static {v0, v1}, Lcom/android/phone/operator/usa/TelephonyExtension;->setSecureSettingValue(Ljava/lang/String;I)V

    const-string/jumbo v0, "roam_setting_data_international"

    invoke-static {v0, v1}, Lcom/android/phone/operator/usa/TelephonyExtension;->setSecureSettingValue(Ljava/lang/String;I)V

    const-string/jumbo v0, "sprint_gsm_data_roaming"

    invoke-static {v0, v1}, Lcom/android/phone/operator/usa/TelephonyExtension;->setSecureSettingValue(Ljava/lang/String;I)V

    const-string/jumbo v0, "lte_roaming_enhancement"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "roam_setting_data_lte_international"

    invoke-static {v0, v1}, Lcom/android/phone/operator/usa/TelephonyExtension;->setSecureSettingValue(Ljava/lang/String;I)V

    :cond_1
    return-void
.end method

.method public static updateVisualVoicemailEnabled()V
    .locals 3

    const-string/jumbo v1, "com.coremobility.app.vnotes"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->isApplicationEnabled(Ljava/lang/String;)Z

    move-result v0

    const-string/jumbo v1, "remove_voicemail_category"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/TeleServiceFeature;->putFeature(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string/jumbo v1, "visual_voicemail_enable"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/TeleServiceFeature;->putFeature(Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method
