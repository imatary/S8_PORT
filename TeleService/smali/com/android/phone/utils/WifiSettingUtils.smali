.class public Lcom/android/phone/utils/WifiSettingUtils;
.super Ljava/lang/Object;
.source "WifiSettingUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getWiFiCallingSummaryText(Landroid/content/Context;Z)Ljava/lang/String;
    .locals 4

    const/4 v3, 0x2

    const v1, 0x7f0d050f

    if-eqz p1, :cond_0

    const-string/jumbo v2, "wifi_call_preferred"

    invoke-static {p0, v2, v3}, Lcom/android/phone/VoWifiSettingsDataBaseManager;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    const v1, 0x7f0d0513

    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_1
    if-ne v0, v3, :cond_2

    const v1, 0x7f0d0514

    const-string/jumbo v2, "vowifi_in_can"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const v1, 0x7f0d0d11

    goto :goto_0

    :cond_2
    const v1, 0x7f0d0515

    goto :goto_0
.end method

.method public static getWiFiCallingTitle()Ljava/lang/String;
    .locals 4

    const-string/jumbo v1, "get_wfc_title_from_csc"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    return-object v1

    :cond_0
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v1

    const-string/jumbo v2, "CscFeature_Common_ConfigOpBrandingForWFC"

    const-string/jumbo v3, ""

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "WifiSettingUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getWfcTitleFromCsc - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method private static isActivityEnabled(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10

    const/4 v9, 0x1

    const/4 v5, 0x0

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/phone/PhoneGlobals;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    if-eqz v4, :cond_0

    :try_start_0
    invoke-virtual {v4, p0}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v1

    const/4 v6, 0x2

    if-eq v1, v6, :cond_0

    new-instance v6, Landroid/content/ComponentName;

    invoke-direct {v6, p0, p1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-ne v0, v9, :cond_1

    const/4 v5, 0x1

    :cond_0
    :goto_0
    const-string/jumbo v6, "WifiSettingUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "isActivityEnabled["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "] - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v9}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    return v5

    :cond_1
    const/4 v5, 0x0

    goto :goto_0

    :catch_0
    move-exception v3

    const-string/jumbo v6, "WifiSettingUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "isActivityEnabled, IllegalArgumentException : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v9}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    goto :goto_0
.end method

.method public static isUnifiedDevice()Z
    .locals 3

    const-string/jumbo v0, "WifiSettingUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isUnifiedDevice, salesCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/android/phone/TeleServiceFeature;->getSalesCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    const-string/jumbo v0, "com.sec.unifiedwfc"

    const-string/jumbo v1, "com.sec.unifiedwfc.LaunchUnifiedActivity"

    invoke-static {v0, v1}, Lcom/android/phone/utils/WifiSettingUtils;->isActivityEnabled(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isWFCSettingSupported()Z
    .locals 3

    const/4 v0, 0x0

    const-string/jumbo v1, "support_vowifi_spr"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "support_sec_wfc"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_0
    invoke-static {}, Lcom/android/phone/utils/WifiSettingUtils;->isUnifiedDevice()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0

    :cond_2
    const-string/jumbo v1, "com.sec.sprint.wfc"

    const-string/jumbo v2, "com.sec.sprint.wfc.ui.WfcSettings"

    invoke-static {v1, v2}, Lcom/android/phone/utils/WifiSettingUtils;->isActivityEnabled(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :cond_3
    const-string/jumbo v1, "support_vowifi_att_wave2"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string/jumbo v1, "com.samsung.android.nsdsvowifi"

    const-string/jumbo v2, "com.samsung.android.nsdsvowifi.VoWifiCheckActivity"

    invoke-static {v1, v2}, Lcom/android/phone/utils/WifiSettingUtils;->isActivityEnabled(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :cond_4
    const-string/jumbo v1, "support_wfc"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "com.android.phone"

    const-string/jumbo v2, "com.android.phone.callsettings.WifiCallActivity"

    invoke-static {v1, v2}, Lcom/android/phone/utils/WifiSettingUtils;->isActivityEnabled(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public static isWiFiNetworkConnected(Landroid/content/Context;)Z
    .locals 5

    const/4 v4, 0x1

    const-string/jumbo v2, "connectivity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "WifiSettingUtils"

    const-string/jumbo v3, "isWiFiNetworkConnected - true"

    invoke-static {v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_0
    const-string/jumbo v2, "WifiSettingUtils"

    const-string/jumbo v3, "isWiFiNetworkConnected - false"

    invoke-static {v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    return v2
.end method

.method public static showWifiCategory()Z
    .locals 5

    const/4 v4, 0x1

    const/4 v0, 0x0

    invoke-static {v4}, Lcom/android/phone/TelephonyConfig;->hasFeature(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/phone/utils/WifiSettingUtils;->isWFCSettingSupported()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    invoke-static {}, Lcom/android/phone/TelephonyConfig;->isCellC()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    const-string/jumbo v1, "WifiSettingUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "showWifiCategory - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    return v0
.end method

.method public static showWifiPreference()Z
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/phone/TelephonyConfig;->hasFeature(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    const/4 v1, 0x2

    invoke-static {v1}, Lcom/android/phone/TelephonyConfig;->hasFeature(I)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneUtilsCommon;->isInternationalRoaming(Lcom/android/internal/telephony/Phone;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/PhoneGlobals;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/TeleServiceSystemDB;->isAirplainModeOn(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const/4 v0, 0x0

    :cond_2
    return v0
.end method
