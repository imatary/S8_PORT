.class public Lcom/android/phone/mobilenetworks/PhoneOptionUtils;
.super Ljava/lang/Object;
.source "PhoneOptionUtils.java"


# static fields
.field private static chinaCdmaMccList:[I

.field private static chinaGsmMccList:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v2, 0x1cc

    const/16 v1, 0x1c7

    const/4 v0, 0x0

    filled-new-array {v2, v1, v0}, [I

    move-result-object v0

    sput-object v0, Lcom/android/phone/mobilenetworks/PhoneOptionUtils;->chinaCdmaMccList:[I

    filled-new-array {v2, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/android/phone/mobilenetworks/PhoneOptionUtils;->chinaGsmMccList:[I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkChinaMcc(Ljava/lang/Object;Landroid/content/Context;)Z
    .locals 1

    instance-of v0, p0, Lcom/android/phone/CdmaOptions;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/phone/mobilenetworks/PhoneOptionUtils;->chinaCdmaMccList:[I

    invoke-static {p0, p1, v0}, Lcom/android/phone/mobilenetworks/PhoneOptionUtils;->checkCurrentMcc(Ljava/lang/Object;Landroid/content/Context;[I)Z

    move-result v0

    return v0

    :cond_0
    instance-of v0, p0, Lcom/android/phone/GsmUmtsOptions;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/phone/mobilenetworks/PhoneOptionUtils;->chinaGsmMccList:[I

    invoke-static {p0, p1, v0}, Lcom/android/phone/mobilenetworks/PhoneOptionUtils;->checkCurrentMcc(Ljava/lang/Object;Landroid/content/Context;[I)Z

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static checkCurrentMcc(Ljava/lang/Object;Landroid/content/Context;[I)Z
    .locals 8

    const/4 v6, 0x0

    const/4 v4, 0x0

    const-string/jumbo v5, "gsm.operator.numeric"

    const-string/jumbo v7, ""

    invoke-static {p0, v6, v5, v7}, Lcom/android/phone/mobilenetworks/PhoneOptionUtils;->getTelephonyProperty(Ljava/lang/Object;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v7, 0x5

    if-lt v5, v7, :cond_0

    const/4 v5, 0x3

    invoke-virtual {v3, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    array-length v7, p2

    move v5, v6

    :goto_0
    if-ge v5, v7, :cond_0

    aget v1, p2, v5

    if-ne v2, v1, :cond_2

    const/4 v4, 0x1

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v7, "ForceRoamingArea"

    invoke-static {v5, v7, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v5, 0x1

    if-ne v0, v5, :cond_1

    const/4 v4, 0x0

    :cond_1
    const-string/jumbo v5, "PhoneOptionUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "checkCurrentMcc - value : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0
.end method

.method public static getIrNetworkSettingIntent(Ljava/lang/Object;Landroid/content/Context;I)Landroid/content/Intent;
    .locals 3

    const/4 v2, 0x1

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "whichslot"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v1, "nettype"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-static {p0, p1}, Lcom/android/phone/mobilenetworks/PhoneOptionUtils;->checkChinaMcc(Ljava/lang/Object;Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "nettype"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_0
    const-string/jumbo v1, "com.sec.android.app.irsettings"

    const-string/jumbo v2, "com.sec.android.app.irsettings.NetworkSetting"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    instance-of v1, p0, Lcom/android/phone/GsmUmtsOptions;

    if-eqz v1, :cond_1

    const-string/jumbo v1, "sim_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_1
    return-object v0
.end method

.method public static getOperatorSelectionExpandEnabled(Ljava/lang/Object;Landroid/content/Context;)Z
    .locals 8

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string/jumbo v3, "ril.IsCSIM"

    const-string/jumbo v4, "0"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const-string/jumbo v3, "gsm.sim.cardnoti"

    const-string/jumbo v4, "0"

    invoke-static {p0, v5, v3, v4}, Lcom/android/phone/mobilenetworks/PhoneOptionUtils;->getTelephonyProperty(Ljava/lang/Object;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const-string/jumbo v3, "ril.ICC_TYPE"

    const-string/jumbo v4, "0"

    invoke-static {p0, v5, v3, v4}, Lcom/android/phone/mobilenetworks/PhoneOptionUtils;->getTelephonyProperty(Ljava/lang/Object;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const-string/jumbo v3, "support_safetycare"

    invoke-static {v3}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/android/phone/TeleServiceSystemDB;->isEmergencyMode()Z

    move-result v3

    if-eqz v3, :cond_0

    return v5

    :cond_0
    if-eq v0, v6, :cond_2

    if-ne v2, v7, :cond_2

    if-eq v1, v7, :cond_2

    :cond_1
    return v5

    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "lte_mode_switch"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_1

    return v6
.end method

.method private static getTelephonyProperty(Ljava/lang/Object;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v1

    const/4 v2, 0x0

    aget v2, v1, v2

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    instance-of v2, p0, Lcom/android/phone/GsmUmtsOptions;

    if-eqz v2, :cond_0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x0

    :cond_0
    invoke-static {v0, p2, p3}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
