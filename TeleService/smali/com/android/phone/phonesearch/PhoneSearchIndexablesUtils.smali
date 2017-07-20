.class public Lcom/android/phone/phonesearch/PhoneSearchIndexablesUtils;
.super Ljava/lang/Object;
.source "PhoneSearchIndexablesUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isAirplainModeOn()Z
    .locals 4

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/PhoneGlobals;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "airplane_mode_on"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isAirplainModeOn -  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/phonesearch/PhoneSearchIndexablesUtils;->log(Ljava/lang/String;)V

    if-lez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private static isCDMA(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x1

    invoke-static {p0}, Lcom/android/phone/phonesearch/PhoneSearchIndexablesUtils;->isWorldPhone(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    const-string/jumbo v1, "global_network_cdma_gsm_enable"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    const-string/jumbo v1, "roaming_enhancement"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v0, "cdma_apn_enable"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    :cond_1
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNoPhoneGlobalsHere()Z
    .locals 4

    const/4 v3, 0x1

    :try_start_0
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x0

    return v1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "PhoneSearchIndexablesUtils"

    const-string/jumbo v2, "isNoPhoneGlobalsHere - No PhoneGlobals here!"

    invoke-static {v1, v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    return v3
.end method

.method public static isOwnerMode()Z
    .locals 3

    const/4 v2, 0x0

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "PhoneSearchIndexablesUtils"

    const-string/jumbo v1, "The device isn\'t owner mode"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public static isWifiOnly(Landroid/content/Context;)Z
    .locals 3

    const/4 v1, 0x0

    const-string/jumbo v2, "connectivity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private static isWorldPhone(Landroid/content/Context;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0005

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "PhoneSearchIndexablesUtils"

    invoke-static {v0, p0}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static updateIndexableRes(Landroid/content/Context;)[Landroid/provider/SearchIndexableResource;
    .locals 7

    const v3, 0x7f070046

    const/4 v2, 0x2

    const/4 v6, 0x0

    const v5, 0x7f030001

    const/4 v4, 0x1

    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->isAbsentSimState(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    return-object v1

    :cond_0
    const-string/jumbo v1, "feature_kor"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-array v0, v4, [Landroid/provider/SearchIndexableResource;

    new-instance v1, Landroid/provider/SearchIndexableResource;

    const-class v2, Lcom/android/phone/MobileNetworkSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f070047

    invoke-direct {v1, v4, v3, v2, v5}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    aput-object v1, v0, v6

    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0}, Lcom/android/phone/phonesearch/PhoneSearchIndexablesUtils;->isCDMA(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-array v0, v2, [Landroid/provider/SearchIndexableResource;

    new-instance v1, Landroid/provider/SearchIndexableResource;

    const-class v2, Lcom/android/phone/MobileNetworkSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v4, v3, v2, v5}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    aput-object v1, v0, v6

    new-instance v1, Landroid/provider/SearchIndexableResource;

    const-class v2, Lcom/android/phone/MobileNetworkSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f070024

    invoke-direct {v1, v4, v3, v2, v5}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    aput-object v1, v0, v4

    goto :goto_0

    :cond_2
    new-array v0, v2, [Landroid/provider/SearchIndexableResource;

    new-instance v1, Landroid/provider/SearchIndexableResource;

    const-class v2, Lcom/android/phone/MobileNetworkSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v4, v3, v2, v5}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    aput-object v1, v0, v6

    new-instance v1, Landroid/provider/SearchIndexableResource;

    const-class v2, Lcom/android/phone/MobileNetworkSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f070032

    invoke-direct {v1, v4, v3, v2, v5}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    aput-object v1, v0, v4

    goto :goto_0
.end method
