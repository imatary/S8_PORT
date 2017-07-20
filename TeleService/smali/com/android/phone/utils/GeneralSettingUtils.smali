.class public Lcom/android/phone/utils/GeneralSettingUtils;
.super Ljava/lang/Object;
.source "GeneralSettingUtils.java"


# static fields
.field private static final MCCMNC_TMO:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "310210"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "310260"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "310310"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string/jumbo v1, "310800"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/phone/utils/GeneralSettingUtils;->MCCMNC_TMO:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getVoiceCallTypeValue()I
    .locals 5

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {}, Lcom/android/phone/PhoneUtilsCommon;->isSupportVoLTE()Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v0, 0x1

    const-string/jumbo v4, "us_volte_ui"

    invoke-static {v4}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v0, 0x0

    :goto_0
    const-string/jumbo v4, "voicecall_type"

    invoke-static {v4, v0}, Lcom/android/phone/TeleServiceSystemDB;->getSettingDB(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_1

    move v1, v2

    :goto_1
    return v1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v1, v3

    goto :goto_1

    :cond_2
    return v3
.end method

.method public static initMcidSetting(Landroid/content/Context;Landroid/preference/PreferenceScreen;)V
    .locals 1

    const-string/jumbo v0, "feature_ktt"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0d0a03

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->setTitle(I)V

    :cond_0
    return-void
.end method

.method public static initVoLTESetting(Landroid/content/Context;Landroid/preference/ListPreference;)V
    .locals 7

    const v6, 0x7f0d0890

    const v5, 0x7f0d088f

    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_1

    const-string/jumbo v1, "feature_skt"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "feature_kor_open"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    const v1, 0x7f0d08a3

    invoke-virtual {p1, v1}, Landroid/preference/ListPreference;->setTitle(I)V

    const v1, 0x7f0d08a3

    invoke-virtual {p1, v1}, Landroid/preference/ListPreference;->setDialogTitle(I)V

    const v1, 0x7f0d08a4

    invoke-virtual {p1, v1}, Landroid/preference/ListPreference;->setSummary(I)V

    new-array v0, v2, [Ljava/lang/String;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d08a5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d08a6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string/jumbo v1, "feature_ktt"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const v1, 0x7f0d089b

    invoke-virtual {p1, v1}, Landroid/preference/ListPreference;->setTitle(I)V

    const v1, 0x7f0d089b

    invoke-virtual {p1, v1}, Landroid/preference/ListPreference;->setDialogTitle(I)V

    new-array v0, v2, [Ljava/lang/String;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d089d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d089f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    const-string/jumbo v1, "feature_lgt"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p1, v6}, Landroid/preference/ListPreference;->setTitle(I)V

    invoke-virtual {p1, v6}, Landroid/preference/ListPreference;->setDialogTitle(I)V

    new-array v0, v2, [Ljava/lang/String;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d08a7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d08a8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_4
    const-string/jumbo v1, "feature_dcm"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string/jumbo v1, "feature_sbm"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_5
    const v1, 0x7f0d08f3

    invoke-virtual {p1, v1}, Landroid/preference/ListPreference;->setTitle(I)V

    const v1, 0x7f0d08f3

    invoke-virtual {p1, v1}, Landroid/preference/ListPreference;->setDialogTitle(I)V

    const v1, 0x7f0d08f4

    invoke-virtual {p1, v1}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_0

    :cond_6
    const-string/jumbo v1, "tmo_volte_ui"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string/jumbo v1, "mpcs_volte_ui"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_7
    const v1, 0x7f0d0891

    invoke-virtual {p1, v1}, Landroid/preference/ListPreference;->setTitle(I)V

    const v1, 0x7f0d0891

    invoke-virtual {p1, v1}, Landroid/preference/ListPreference;->setDialogTitle(I)V

    new-array v0, v2, [Ljava/lang/String;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0893

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0895

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_8
    const-string/jumbo v1, "canada_volte_ims_register_deregister"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {p1, v5}, Landroid/preference/ListPreference;->setTitle(I)V

    invoke-virtual {p1, v5}, Landroid/preference/ListPreference;->setDialogTitle(I)V

    goto/16 :goto_0

    :cond_9
    const/16 v1, 0xc8

    invoke-static {v1}, Lcom/android/phone/TelephonyConfig;->hasFeature(I)Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x7f09009a

    invoke-virtual {p1, v1}, Landroid/preference/ListPreference;->setEntries(I)V

    goto/16 :goto_0
.end method

.method public static isMobileDataOn(Landroid/content/Context;)Z
    .locals 2

    const-string/jumbo v1, "connectivity"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v1

    return v1
.end method

.method public static isTMOWFCActivated(Landroid/content/Context;)Z
    .locals 1

    const-string/jumbo v0, "support_sec_wfc"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/android/phone/utils/GeneralSettingUtils;->isValidSimTmoWfc(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isTMOWfcEnabled(Landroid/content/Context;)Z
    .locals 11

    const/4 v10, 0x1

    const/4 v6, 0x0

    const-string/jumbo v1, "com.samsung.tmowfc.wfcpref"

    const-string/jumbo v0, "com.samsung.tmowfc.wfcpref.WfcPrefActivity"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    if-eqz v5, :cond_0

    :try_start_0
    invoke-virtual {v5, v1}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v3

    const/4 v7, 0x2

    if-eq v3, v7, :cond_0

    new-instance v7, Landroid/content/ComponentName;

    invoke-direct {v7, v1, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v7}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-ne v2, v10, :cond_1

    const/4 v6, 0x1

    :cond_0
    :goto_0
    const-string/jumbo v7, "GeneralSettingUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "isTMOWfcEnabled - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v10}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    return v6

    :cond_1
    const/4 v6, 0x0

    goto :goto_0

    :catch_0
    move-exception v4

    const-string/jumbo v7, "GeneralSettingUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "isActivityEnabled, IllegalArgumentException : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v10}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    goto :goto_0
.end method

.method private static isValidSimTmoWfc(Landroid/content/Context;)Z
    .locals 10

    const/4 v9, 0x1

    const/4 v5, 0x0

    const-string/jumbo v4, "GeneralSettingUtils"

    const-string/jumbo v6, "isValidSimTmoWfc()"

    invoke-static {v4, v6}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v4, "phone"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v2

    const-string/jumbo v4, "GeneralSettingUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "readSimState(): simstate= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v4, "GeneralSettingUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "MCCMNC : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v6, Lcom/android/phone/utils/GeneralSettingUtils;->MCCMNC_TMO:[Ljava/lang/String;

    array-length v7, v6

    move v4, v5

    :goto_0
    if-ge v4, v7, :cond_1

    aget-object v0, v6, v4

    invoke-virtual {v1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_0

    const-string/jumbo v4, "GeneralSettingUtils"

    const-string/jumbo v5, "TMO MCCMNC detected"

    invoke-static {v4, v5}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v9

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    const-string/jumbo v4, "00101"

    invoke-virtual {v1, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_2

    const-string/jumbo v4, "45001"

    invoke-virtual {v1, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_3

    :cond_2
    const-string/jumbo v4, "GeneralSettingUtils"

    const-string/jumbo v5, "Factory or Suwon SIM detected"

    invoke-static {v4, v5}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v9

    :cond_3
    const-string/jumbo v4, "GeneralSettingUtils"

    const-string/jumbo v6, "No valid MCCMNC detected"

    invoke-static {v4, v6}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v5
.end method

.method public static setMobileDataEnabled(Landroid/content/Context;Z)V
    .locals 2

    const-string/jumbo v1, "connectivity"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    return-void
.end method

.method public static updateVoLTESetting(Landroid/content/Context;Landroid/preference/ListPreference;)V
    .locals 8

    const/4 v7, 0x1

    if-eqz p1, :cond_b

    invoke-static {}, Lcom/android/phone/PhoneUtilsCommon;->isSupportVoLTE()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-static {}, Lcom/android/phone/utils/GeneralSettingUtils;->getVoiceCallTypeValue()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    const/4 v0, 0x0

    const-string/jumbo v4, "feature_lgt"

    invoke-static {v4}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string/jumbo v4, "feature_ktt"

    invoke-static {v4}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    :cond_0
    const/4 v1, 0x0

    invoke-static {}, Lcom/android/phone/PhoneUtilsCommon;->isSupportVoLTE()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {}, Lcom/android/phone/PhoneUtilsIMS;->isRegistered()Z

    move-result v1

    :cond_1
    const-string/jumbo v4, "GeneralSettingUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateVoLTESetting isVolteSupported = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    const-string/jumbo v4, "feature_ktt"

    invoke-static {v4}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    if-nez v1, :cond_2

    invoke-static {}, Lcom/android/phone/utils/GeneralSettingUtils;->getVoiceCallTypeValue()I

    move-result v4

    if-nez v4, :cond_2

    const-string/jumbo v4, "voicecall_type"

    invoke-static {v4, v7}, Lcom/android/phone/TeleServiceSystemDB;->setSettingDB(Ljava/lang/String;I)V

    invoke-static {}, Lcom/android/phone/utils/GeneralSettingUtils;->getVoiceCallTypeValue()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    :cond_2
    const/4 v0, 0x1

    :cond_3
    :goto_0
    const-string/jumbo v4, "feature_skt"

    invoke-static {v4}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string/jumbo v4, "feature_jpn"

    invoke-static {v4}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_14

    :cond_4
    :goto_1
    const-string/jumbo v4, "feature_ktt"

    invoke-static {v4}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v4

    if-ne v4, v7, :cond_6

    :cond_5
    const/4 v0, 0x0

    :cond_6
    const-string/jumbo v4, "feature_lgt"

    invoke-static {v4}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_7

    const-string/jumbo v4, "feature_skt"

    invoke-static {v4}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_7

    const-string/jumbo v4, "feature_kor_open"

    invoke-static {v4}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    :cond_7
    invoke-static {}, Lcom/android/phone/PhoneUtils;->isRoamingArea()Z

    move-result v4

    if-eqz v4, :cond_8

    const/4 v0, 0x0

    :cond_8
    const-string/jumbo v4, "feature_dcm"

    invoke-static {v4}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_9

    const-string/jumbo v4, "feature_sbm"

    invoke-static {v4}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    :cond_9
    const/4 v0, 0x1

    :cond_a
    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setEnabled(Z)V

    invoke-virtual {p1, v7}, Landroid/preference/ListPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    :cond_b
    return-void

    :cond_c
    const-string/jumbo v4, "feature_skt"

    invoke-static {v4}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_f

    const/4 v3, 0x0

    invoke-static {}, Lcom/android/phone/PhoneUtilsCommon;->isSupportVoLTE()Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-static {}, Lcom/android/phone/PhoneUtilsIMS;->isRegistered()Z

    move-result v3

    :cond_d
    const-string/jumbo v4, "GeneralSettingUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateVoLTESetting volteServiceStatus = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v4, "support_uicc_mobility"

    invoke-static {v4}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-static {}, Lcom/android/phone/PhoneUtils;->isLGTSIM()Z

    move-result v4

    if-eqz v4, :cond_e

    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_e
    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_f
    const-string/jumbo v4, "tmo_volte_ui"

    invoke-static {v4}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_10

    const-string/jumbo v4, "mpcs_volte_ui"

    invoke-static {v4}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_12

    :cond_10
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v4

    iget-object v4, v4, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v4}, Lcom/android/phone/PhoneUtilsCommon;->isOnVoLTECall(Lcom/android/internal/telephony/CallManager;)Z

    move-result v4

    if-eqz v4, :cond_11

    const/4 v0, 0x0

    :goto_2
    const-string/jumbo v4, "GeneralSettingUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateVoLTESetting enableVolteMenu = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_11
    const/4 v0, 0x1

    goto :goto_2

    :cond_12
    invoke-static {}, Lcom/android/phone/PhoneUtils;->isAirplaneModeOn()Z

    move-result v4

    if-eqz v4, :cond_13

    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_13
    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_14
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_1
.end method
