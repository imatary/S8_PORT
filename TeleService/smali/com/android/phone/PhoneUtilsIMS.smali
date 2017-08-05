.class public Lcom/android/phone/PhoneUtilsIMS;
.super Ljava/lang/Object;
.source "PhoneUtilsIMS.java"


# static fields
.field private static mImsManager:Lcom/sec/ims/ImsManager;

.field private static mIsVopsSupported:Z

.field private static mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static synthetic -set0(Lcom/sec/ims/ImsManager;)Lcom/sec/ims/ImsManager;
    .locals 0

    sput-object p0, Lcom/android/phone/PhoneUtilsIMS;->mImsManager:Lcom/sec/ims/ImsManager;

    return-object p0
.end method

.method static synthetic -set1(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/phone/PhoneUtilsIMS;->mIsVopsSupported:Z

    return p0
.end method

.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/phone/PhoneUtilsIMS;->mImsManager:Lcom/sec/ims/ImsManager;

    sput-object v0, Lcom/android/phone/PhoneUtilsIMS;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/phone/PhoneUtilsIMS;->mIsVopsSupported:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getIMSSettingValues([Ljava/lang/String;)Landroid/content/ContentValues;
    .locals 2

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/phone/PhoneUtilsIMS;->getImsManager()Lcom/sec/ims/ImsManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/sec/ims/ImsManager;->getConfigValues([Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method public static getImsManager()Lcom/sec/ims/ImsManager;
    .locals 3

    sget-object v0, Lcom/android/phone/PhoneUtilsIMS;->mImsManager:Lcom/sec/ims/ImsManager;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/phone/PhoneUtilsIMS;->mImsManager:Lcom/sec/ims/ImsManager;

    return-object v0

    :cond_0
    new-instance v0, Lcom/sec/ims/ImsManager;

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/android/phone/PhoneUtilsIMS$1;

    invoke-direct {v2}, Lcom/android/phone/PhoneUtilsIMS$1;-><init>()V

    invoke-direct {v0, v1, v2}, Lcom/sec/ims/ImsManager;-><init>(Landroid/content/Context;Lcom/sec/ims/ImsManager$ConnectionListener;)V

    sput-object v0, Lcom/android/phone/PhoneUtilsIMS;->mImsManager:Lcom/sec/ims/ImsManager;

    sget-object v0, Lcom/android/phone/PhoneUtilsIMS;->mImsManager:Lcom/sec/ims/ImsManager;

    invoke-virtual {v0}, Lcom/sec/ims/ImsManager;->connectService()V

    sget-object v0, Lcom/android/phone/PhoneUtilsIMS;->mImsManager:Lcom/sec/ims/ImsManager;

    return-object v0
.end method

.method public static getPAssociatedUri2nd()Ljava/lang/String;
    .locals 8

    const/4 v7, 0x0

    invoke-static {}, Lcom/android/phone/PhoneUtilsIMS;->getImsManager()Lcom/sec/ims/ImsManager;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/sec/ims/ImsManager;->getRegistrationInfo()[Lcom/sec/ims/ImsRegistration;

    move-result-object v2

    if-eqz v2, :cond_1

    const/4 v4, 0x0

    array-length v5, v2

    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v1, v2, v4

    invoke-virtual {v1}, Lcom/sec/ims/ImsRegistration;->getPAssociatedUri2nd()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return-object v7
.end method

.method public static isAvailableVoWIFI()Z
    .locals 7

    const/4 v6, 0x1

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/phone/PhoneUtilsIMS;->getImsManager()Lcom/sec/ims/ImsManager;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string/jumbo v3, "volte"

    invoke-virtual {v0, v3}, Lcom/sec/ims/ImsManager;->getRegistrationInfoByServiceType(Ljava/lang/String;)Lcom/sec/ims/ImsRegistration;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/sec/ims/ImsRegistration;->getEpdgStatus()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Lcom/sec/ims/ImsRegistration;->getNetworkType()I

    move-result v3

    if-ne v3, v6, :cond_2

    :cond_0
    const/4 v1, 0x1

    :goto_0
    const-string/jumbo v3, "PhoneUtilsIMS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isAvailableVoWIFI : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v6}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    :cond_1
    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isLTEVideoCallEnabled()Z
    .locals 4

    const/4 v2, 0x0

    const/4 v0, 0x0

    const-string/jumbo v1, "videocall_type"

    invoke-static {v1, v2}, Lcom/android/phone/TeleServiceSystemDB;->getSettingDB(Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string/jumbo v1, "PhoneUtilsIMS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isLTEVideoCallEnabled :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isLTEVideoCallMenuShow()Z
    .locals 11

    const/4 v10, 0x1

    const/4 v6, 0x0

    invoke-static {}, Lcom/android/phone/PhoneUtilsIMS;->getImsManager()Lcom/sec/ims/ImsManager;

    move-result-object v5

    const/4 v8, 0x3

    new-array v0, v8, [Ljava/lang/String;

    const-string/jumbo v8, "93"

    const/4 v9, 0x0

    aput-object v8, v0, v9

    const-string/jumbo v8, "94"

    aput-object v8, v0, v10

    const-string/jumbo v8, "31"

    const/4 v9, 0x2

    aput-object v8, v0, v9

    sget-object v8, Lcom/android/phone/PhoneUtilsIMS;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v8, :cond_0

    invoke-static {}, Lcom/android/phone/PhoneUtilsIMS;->registerPhoneStateListener()V

    :cond_0
    if-eqz v5, :cond_1

    invoke-virtual {v5, v0}, Lcom/sec/ims/ImsManager;->getConfigValues([Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v7

    if-eqz v7, :cond_1

    const-string/jumbo v9, "1"

    const-string/jumbo v8, "93"

    invoke-virtual {v7, v8}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string/jumbo v9, "1"

    const-string/jumbo v8, "94"

    invoke-virtual {v7, v8}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string/jumbo v9, "1"

    const-string/jumbo v8, "31"

    invoke-virtual {v7, v8}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v5}, Lcom/sec/ims/ImsManager;->isForbidden()Z

    move-result v2

    if-eqz v4, :cond_1

    if-eqz v3, :cond_1

    if-eqz v1, :cond_1

    if-eqz v2, :cond_2

    :cond_1
    return v6

    :cond_2
    sget-object v8, Lcom/android/phone/PhoneUtilsIMS;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getDataNetworkType()I

    move-result v8

    const/16 v9, 0xd

    if-ne v8, v9, :cond_3

    sget-boolean v6, Lcom/android/phone/PhoneUtilsIMS;->mIsVopsSupported:Z

    return v6

    :cond_3
    const/4 v6, 0x1

    return v10
.end method

.method public static isLocationMenuNeed(Landroid/content/Context;)Z
    .locals 5

    const/4 v1, 0x0

    invoke-static {p0}, Lcom/sec/ims/settings/GlobalSettingsLoader;->loadGlobalSettings(Landroid/content/Context;)Lcom/sec/ims/settings/GlobalSettings;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/ims/settings/GlobalSettings;->getVowifiNeedLocationMenu()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :goto_0
    const-string/jumbo v2, "PhoneUtilsIMS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isLocationMenuNeed - retVal : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isNetworkVoLTESupported()Z
    .locals 7

    const/4 v2, 0x0

    invoke-static {}, Lcom/android/phone/PhoneUtilsIMS;->getImsManager()Lcom/sec/ims/ImsManager;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string/jumbo v4, "mmtel"

    const/16 v5, 0xd

    invoke-virtual {v1, v4, v5}, Lcom/sec/ims/ImsManager;->isServiceAvailable(Ljava/lang/String;I)Z

    move-result v3

    invoke-virtual {v1}, Lcom/sec/ims/ImsManager;->hasVoLteSim()Z

    move-result v0

    if-eqz v3, :cond_1

    move v2, v0

    :goto_0
    const-string/jumbo v4, "PhoneUtilsIMS"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isNetworkVoLTESupported : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    :cond_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isRegistered()Z
    .locals 6

    const/4 v2, 0x0

    invoke-static {}, Lcom/android/phone/PhoneUtilsIMS;->getImsManager()Lcom/sec/ims/ImsManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/ims/ImsManager;->getRegistrationInfo()[Lcom/sec/ims/ImsRegistration;

    move-result-object v1

    if-eqz v1, :cond_1

    array-length v3, v1

    if-lez v3, :cond_1

    const/4 v2, 0x1

    :goto_0
    const-string/jumbo v3, "PhoneUtilsIMS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isRegistered : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    :cond_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isRegisteredToEpdg()Z
    .locals 3

    sget-object v1, Lcom/android/phone/PhoneUtilsIMS;->mImsManager:Lcom/sec/ims/ImsManager;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/phone/PhoneUtilsIMS;->mImsManager:Lcom/sec/ims/ImsManager;

    const-string/jumbo v2, "volte"

    invoke-virtual {v1, v2}, Lcom/sec/ims/ImsManager;->getRegistrationInfoByServiceType(Ljava/lang/String;)Lcom/sec/ims/ImsRegistration;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/ims/ImsRegistration;->getEpdgStatus()Z

    move-result v1

    return v1

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public static isServiceAvailable(Ljava/lang/String;)Z
    .locals 5

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/phone/PhoneUtilsIMS;->getImsManager()Lcom/sec/ims/ImsManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/sec/ims/ImsManager;->isServiceAvailable(Ljava/lang/String;)Z

    move-result v1

    const-string/jumbo v2, "PhoneUtilsIMS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isServiceAvailable - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    :cond_0
    return v1
.end method

.method public static isServiceRegistered(Ljava/lang/String;Z)Z
    .locals 6

    const/4 v0, 0x0

    const-string/jumbo v3, "enabled"

    invoke-static {v3}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/android/phone/PhoneUtilsIMS;->getImsManager()Lcom/sec/ims/ImsManager;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string/jumbo v3, "volte"

    invoke-virtual {v1, v3}, Lcom/sec/ims/ImsManager;->getRegistrationInfoByServiceType(Ljava/lang/String;)Lcom/sec/ims/ImsRegistration;

    move-result-object v2

    if-eqz v2, :cond_0

    if-eqz p1, :cond_2

    invoke-virtual {v2}, Lcom/sec/ims/ImsRegistration;->getEpdgStatus()Z

    move-result v3

    if-eqz v3, :cond_0

    if-eqz p0, :cond_1

    invoke-virtual {v2, p0}, Lcom/sec/ims/ImsRegistration;->hasService(Ljava/lang/String;)Z

    move-result v0

    :cond_0
    :goto_0
    const-string/jumbo v3, "PhoneUtilsIMS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isServiceRegistered is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v2, p0}, Lcom/sec/ims/ImsRegistration;->hasService(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public static isSessionModifyPossible(Lcom/android/internal/telephony/Connection;)Z
    .locals 14

    const/4 v10, 0x0

    const/4 v8, 0x0

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/PhoneGlobals;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v0, "mtconference"

    const-string/jumbo v11, "mt_conference_pref"

    const/4 v12, 0x4

    invoke-virtual {v3, v11, v12}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v9

    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-static {}, Lcom/android/phone/TeleServiceSystemDB;->isEmergencyMode()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-static {}, Lcom/android/phone/TeleServiceSystemDB;->isUltraPowerSavingMode()Z

    move-result v11

    if-eqz v11, :cond_7

    :cond_0
    const/4 v7, 0x0

    :goto_0
    if-eqz p0, :cond_6

    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getCallDetails()Lcom/android/internal/telephony/CallDetails;

    move-result-object v2

    if-eqz v2, :cond_6

    const-string/jumbo v11, "modifiable"

    invoke-virtual {v2, v11}, Lcom/android/internal/telephony/CallDetails;->getExtraValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v11, "mtconference"

    invoke-virtual {v2, v11}, Lcom/android/internal/telephony/CallDetails;->getExtraValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v6, :cond_1

    const-string/jumbo v11, "true"

    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    const/4 v10, 0x1

    :cond_1
    if-eqz v5, :cond_2

    const-string/jumbo v11, "true"

    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    const/4 v8, 0x1

    :cond_2
    const-string/jumbo v11, "att_volte_ui"

    invoke-static {v11}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_3

    if-eqz v10, :cond_3

    if-eqz v8, :cond_3

    const/4 v10, 0x0

    :cond_3
    if-nez v7, :cond_4

    invoke-static {}, Lcom/android/phone/TeleServiceSystemDB;->isConnectedMirrorLink()Z

    move-result v11

    if-eqz v11, :cond_5

    :cond_4
    const/4 v10, 0x0

    :cond_5
    invoke-interface {v4, v0, v8}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_6
    const-string/jumbo v11, "PhoneUtilsIMS"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "isSessionModifyPossible supported :"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v10

    :cond_7
    const/4 v7, 0x1

    goto :goto_0
.end method

.method public static isSessionModifyPossible(Lcom/android/services/telephony/TelephonyConnection;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->getOriginalConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsIMS;->isSessionModifyPossible(Lcom/android/internal/telephony/Connection;)Z

    move-result v1

    return v1
.end method

.method public static isVoLTEFeatureEnabled()Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string/jumbo v2, "voicecall_type"

    invoke-static {v2, v0}, Lcom/android/phone/TeleServiceSystemDB;->getSettingDB(Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static isVoLTEMenuShow()Z
    .locals 10

    const/4 v9, 0x1

    const/4 v4, 0x0

    invoke-static {}, Lcom/android/phone/PhoneUtilsIMS;->getImsManager()Lcom/sec/ims/ImsManager;

    move-result-object v3

    new-array v0, v9, [Ljava/lang/String;

    const-string/jumbo v6, "93"

    const/4 v7, 0x0

    aput-object v6, v0, v7

    if-eqz v3, :cond_1

    invoke-virtual {v3, v0}, Lcom/sec/ims/ImsManager;->getConfigValues([Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v5

    if-eqz v5, :cond_1

    const-string/jumbo v7, "1"

    const-string/jumbo v6, "93"

    invoke-virtual {v5, v6}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v3}, Lcom/sec/ims/ImsManager;->isForbidden()Z

    move-result v1

    if-eqz v2, :cond_0

    if-eqz v1, :cond_2

    :cond_0
    const/4 v4, 0x0

    :goto_0
    const-string/jumbo v6, "PhoneUtilsIMS"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "isVoLTEMenuShow VolteEnabled : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", isForbidden : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v9}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    :cond_1
    return v4

    :cond_2
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public static isVoLTESupported()Z
    .locals 5

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/phone/PhoneUtilsIMS;->getImsManager()Lcom/sec/ims/ImsManager;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v2, "mmtel"

    const/16 v3, 0xd

    invoke-virtual {v0, v2, v3}, Lcom/sec/ims/ImsManager;->isServiceAvailable(Ljava/lang/String;I)Z

    move-result v1

    const-string/jumbo v2, "PhoneUtilsIMS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isVoLTESupported : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    :cond_0
    return v1
.end method

.method public static isVoWifiSupported()Z
    .locals 11

    const/4 v10, 0x1

    const/4 v6, 0x0

    invoke-static {}, Lcom/android/phone/PhoneUtilsIMS;->getImsManager()Lcom/sec/ims/ImsManager;

    move-result-object v5

    new-instance v4, Ljava/lang/StringBuffer;

    const-string/jumbo v8, "isVoWifiSupported - "

    invoke-direct {v4, v8}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    if-eqz v5, :cond_0

    const-string/jumbo v8, "mmtel"

    const/16 v9, 0x12

    invoke-virtual {v5, v8, v9}, Lcom/sec/ims/ImsManager;->isServiceAvailable(Ljava/lang/String;I)Z

    move-result v3

    const/4 v2, 0x0

    const-string/jumbo v8, "support_wfc"

    invoke-static {v8}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    const-string/jumbo v8, "isVoWiFiSupported : "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    new-array v1, v10, [Ljava/lang/String;

    const-string/jumbo v8, "903"

    const/4 v9, 0x0

    aput-object v8, v1, v9

    invoke-virtual {v5, v1}, Lcom/sec/ims/ImsManager;->getConfigValues([Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v7

    if-eqz v7, :cond_1

    const-string/jumbo v9, "1"

    const-string/jumbo v8, "903"

    invoke-virtual {v7, v8}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    :goto_0
    const-string/jumbo v8, ", DM :"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string/jumbo v9, ", csc : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    if-eqz v3, :cond_2

    if-eqz v2, :cond_2

    move v6, v0

    :goto_1
    const-string/jumbo v8, "PhoneUtilsIMS"

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v10}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    :cond_0
    return v6

    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    const/4 v6, 0x0

    goto :goto_1
.end method

.method public static isVolteEnabledFromNetwork()Z
    .locals 5

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/phone/PhoneUtilsIMS;->getImsManager()Lcom/sec/ims/ImsManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/ims/ImsManager;->isVolteEnabledFromNetwork()Z

    move-result v1

    const-string/jumbo v2, "PhoneUtilsIMS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isVolteEnabledFromNetwork : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    :cond_0
    return v1
.end method

.method private static registerPhoneStateListener()V
    .locals 3

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    sput-object v0, Lcom/android/phone/PhoneUtilsIMS;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    sget-object v0, Lcom/android/phone/PhoneUtilsIMS;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    new-instance v1, Lcom/android/phone/PhoneUtilsIMS$2;

    invoke-direct {v1}, Lcom/android/phone/PhoneUtilsIMS$2;-><init>()V

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    return-void
.end method

.method public static setLTEVideoCallDisable()V
    .locals 2

    const-string/jumbo v0, "videocall_type"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/phone/TeleServiceSystemDB;->setSettingDB(Ljava/lang/String;I)V

    return-void
.end method

.method public static setLTEVideoCallEnable()V
    .locals 2

    const-string/jumbo v0, "videocall_type"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/phone/TeleServiceSystemDB;->setSettingDB(Ljava/lang/String;I)V

    return-void
.end method

.method public static setVoLTEFeatureDisable()V
    .locals 2

    const-string/jumbo v0, "voicecall_type"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/phone/TeleServiceSystemDB;->setSettingDB(Ljava/lang/String;I)V

    return-void
.end method

.method public static setVoLTEFeatureEnable()V
    .locals 2

    const-string/jumbo v0, "voicecall_type"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/phone/TeleServiceSystemDB;->setSettingDB(Ljava/lang/String;I)V

    return-void
.end method

.method public static setVolteVTDisable()V
    .locals 2

    const-string/jumbo v0, "volteVTEnabled"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/phone/TeleServiceSystemDB;->setSettingDB(Ljava/lang/String;I)V

    return-void
.end method

.method public static setVolteVTEnable()V
    .locals 2

    const-string/jumbo v0, "volteVTEnabled"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/phone/TeleServiceSystemDB;->setSettingDB(Ljava/lang/String;I)V

    return-void
.end method
