.class public Lcom/android/phone/mobilenetworks/MobileNetworkUtils;
.super Ljava/lang/Object;
.source "MobileNetworkUtils.java"


# static fields
.field private static isMultiIMSI:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string/jumbo v1, "CscFeature_RIL_MultiIMSI"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/phone/mobilenetworks/MobileNetworkUtils;->isMultiIMSI:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkDisableNetworkSelection()Z
    .locals 13

    const/4 v12, 0x6

    const/4 v11, 0x3

    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x2

    const-string/jumbo v6, "ril.skt.network_regist"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string/jumbo v6, "Idle"

    invoke-virtual {v0, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-gez v6, :cond_1

    :cond_0
    return v10

    :cond_1
    const-string/jumbo v6, ";"

    const/4 v7, 0x4

    invoke-virtual {v0, v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v5

    aget-object v6, v5, v10

    invoke-virtual {v6, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aget-object v6, v5, v9

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aget-object v6, v5, v8

    invoke-virtual {v6, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aget-object v6, v5, v11

    invoke-virtual {v6, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eq v2, v11, :cond_2

    if-ne v2, v12, :cond_3

    :cond_2
    return v9

    :cond_3
    const/16 v6, 0x8

    if-eq v2, v6, :cond_2

    if-eq v3, v11, :cond_4

    if-ne v3, v12, :cond_5

    :cond_4
    return v9

    :cond_5
    const/16 v6, 0x8

    if-eq v3, v6, :cond_4

    if-ne v2, v8, :cond_8

    if-eq v4, v8, :cond_6

    if-ne v4, v11, :cond_7

    :cond_6
    return v9

    :cond_7
    const/16 v6, 0xc

    if-eq v4, v6, :cond_6

    const/16 v6, 0xd

    if-eq v4, v6, :cond_6

    :cond_8
    if-ne v1, v8, :cond_9

    return v9

    :cond_9
    return v10
.end method

.method public static convertOperatorRat(Ljava/lang/String;Ljava/lang/String;Ljava/util/Comparator;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Comparator",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string/jumbo v2, "LTE"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo p0, "L"

    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    return-object p0

    :cond_0
    const-string/jumbo v2, "UMTS"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo p0, "W"

    goto :goto_0

    :cond_1
    const-string/jumbo v2, "GERAN"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo p0, "G"

    goto :goto_0

    :cond_2
    const-string/jumbo p0, "?"

    goto :goto_0

    :cond_3
    const-string/jumbo v2, "/"

    invoke-virtual {p1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v2, "/"

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    const/4 v2, 0x0

    aget-object p0, v1, v2

    const/4 v0, 0x1

    :goto_1
    array-length v2, v1

    if-ge v0, v2, :cond_4

    const-string/jumbo v2, "/"

    invoke-virtual {p0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aget-object v3, v1, v0

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    return-object p0
.end method

.method public static findPreference(Landroid/preference/PreferenceScreen;Ljava/lang/String;)Landroid/preference/Preference;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/phone/mobilenetworks/MobileNetworkUtils;->findPreference(Landroid/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    return-object v0
.end method

.method public static findPreference(Landroid/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/String;)Landroid/preference/Preference;
    .locals 1

    if-nez p2, :cond_0

    invoke-virtual {p0, p1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-static {p0, p1, p2}, Lcom/android/phone/mobilenetworks/MobileNetworkUtils;->getPreference(Landroid/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    return-object v0
.end method

.method public static getGlobalDataRoamingAccessMode()I
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/phone/PhoneApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v4, "data_roaming"

    invoke-static {v0, v4, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const-string/jumbo v4, "data_roaming_onetime"

    invoke-static {v0, v4, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x0

    if-ne v2, v6, :cond_0

    if-ne v1, v6, :cond_1

    const/4 v3, 0x1

    :cond_0
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x2

    goto :goto_0
.end method

.method public static getGlobalType()I
    .locals 2

    const-string/jumbo v1, "network_mode_global_lte_cdma_gsm_umts"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "network_mode_automatic_cdma_lte_gsm"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    invoke-static {}, Lcom/android/phone/mobilenetworks/MobileNetworkUtils;->isSupportTdscdma()Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v0, 0x16

    :goto_0
    return v0

    :cond_1
    const/16 v0, 0xa

    goto :goto_0

    :cond_2
    const-string/jumbo v1, "network_mode_global_lte_gsm"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v0, 0x9

    goto :goto_0

    :cond_3
    const-string/jumbo v1, "network_mode_global_lte_wcdma"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v0, 0xc

    goto :goto_0

    :cond_4
    const/4 v0, 0x7

    goto :goto_0
.end method

.method public static getNetworkModePreferenceTitle(Landroid/content/Context;I)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d03b8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/android/phone/PhoneUtilsMultiSIM;->getSimName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getNetworkTitle(Lcom/android/internal/telephony/OperatorInfo;)Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "mobile_newtork_style_for_ktt"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaShort()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaShort()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaShort()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaShort()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPlmnNumeric()Ljava/lang/String;
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x3

    const/4 v4, 0x0

    const-string/jumbo v2, "gsm.operator.numeric"

    const-string/jumbo v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    return-object v6

    :cond_0
    if-ge v0, v5, :cond_1

    return-object v6

    :cond_1
    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static getPreference(Landroid/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/String;)Landroid/preference/Preference;
    .locals 4

    invoke-virtual {p0}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_2

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v1

    sget-object v3, Lcom/android/phone/mobilenetworks/MobileNetworksConstants;->CheckBoxPreference:Ljava/lang/String;

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    instance-of v3, v1, Landroid/preference/CheckBoxPreference;

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v1

    :cond_0
    sget-object v3, Lcom/android/phone/mobilenetworks/MobileNetworksConstants;->SwitchPreference:Ljava/lang/String;

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    instance-of v3, v1, Landroid/preference/SwitchPreference;

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    return-object v3
.end method

.method public static getRejectCauseLocationRegFail(I)I
    .locals 1

    const v0, 0x7f0d08aa

    sparse-switch p0, :sswitch_data_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :sswitch_0
    const v0, 0x7f0d08a9

    goto :goto_0

    :sswitch_1
    const v0, 0x7f0d08b0

    goto :goto_0

    :sswitch_2
    const v0, 0x7f0d08b1

    goto :goto_0

    :sswitch_3
    const v0, 0x7f0d08aa

    goto :goto_0

    :sswitch_4
    const v0, 0x7f0d08ad

    goto :goto_0

    :sswitch_5
    const v0, 0x7f0d08ab

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x3 -> :sswitch_1
        0x6 -> :sswitch_2
        0x7 -> :sswitch_4
        0x8 -> :sswitch_3
        0xb -> :sswitch_3
        0xc -> :sswitch_3
        0xd -> :sswitch_3
        0xe -> :sswitch_4
        0xf -> :sswitch_3
        0x10 -> :sswitch_5
        0x11 -> :sswitch_5
        0x16 -> :sswitch_5
        0xfe -> :sswitch_5
    .end sparse-switch
.end method

.method public static getSimNumeric(Z)Ljava/lang/String;
    .locals 7

    const/4 v6, 0x3

    const/4 v5, 0x0

    const/4 v4, 0x0

    const-string/jumbo v2, "gsm.sim.operator.numeric"

    const-string/jumbo v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    return-object v4

    :cond_0
    if-ge v0, v6, :cond_1

    return-object v4

    :cond_1
    if-eqz p0, :cond_2

    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_2
    const/4 v2, 0x5

    if-ge v0, v2, :cond_3

    return-object v4

    :cond_3
    return-object v1
.end method

.method public static isAirplaneModeOn(Landroid/content/Context;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "airplane_mode_on"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static isAttMvnoSim()Z
    .locals 2

    const-string/jumbo v1, "gsm.sim.operator.numeric"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "310410"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public static isCdmaIncluded(I)Z
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x4

    if-eq v1, p0, :cond_0

    const/16 v1, 0x8

    if-ne v1, p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/16 v1, 0xa

    if-eq v1, p0, :cond_0

    const/16 v1, 0x16

    if-eq v1, p0, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isCmccSimAnd2gSim(I)Z
    .locals 2

    const-string/jumbo v0, "1"

    invoke-static {p0}, Lcom/android/phone/PhoneUtilsMultiSIM;->getMultiSimIccType(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/android/phone/PhoneUtilsCHN;->isCMCCSIM(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isDataNetworkModeVisible()Z
    .locals 1

    const-string/jumbo v0, "mobile_newtork_style_for_kor"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/phone/mobilenetworks/MobileNetworkUtils;->isSktSim()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/phone/mobilenetworks/MobileNetworkUtils;->isKtSim()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isDataRoamingEnabledBySoftSim(Landroid/content/Context;)Z
    .locals 3

    const/4 v2, 0x0

    const-string/jumbo v1, "dataRoamingPreferences"

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "enabledBySoftSim"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1

    :cond_0
    return v2
.end method

.method public static isDefaultImei(Landroid/content/Context;)Z
    .locals 3

    const-string/jumbo v2, "phone"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "357858010034783"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "000000000000000"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "004400152020002"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "100000000000116"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    return v2

    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method public static isDisableNetwork()Z
    .locals 10

    const/16 v9, 0xb

    const/4 v8, 0x4

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string/jumbo v4, "ril.skt.network_regist"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string/jumbo v4, "Idle"

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-gez v4, :cond_1

    :cond_0
    return v5

    :cond_1
    const-string/jumbo v4, ";"

    invoke-virtual {v0, v4, v8}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    aget-object v4, v3, v6

    invoke-virtual {v4, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aget-object v4, v3, v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v9, :cond_2

    return v6

    :cond_2
    const-string/jumbo v4, "feature_lgt"

    invoke-static {v4}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    if-ne v2, v9, :cond_3

    return v6

    :cond_3
    return v5
.end method

.method public static isEnhancedVideoCallSupported()Z
    .locals 1

    const-string/jumbo v0, "support_enhanced_4glte_setting_video_call"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isExceptionalUSIM(Z)Z
    .locals 5

    const-string/jumbo v2, "gsm.sim.operator.numeric"

    const-string/jumbo v3, "none"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz p0, :cond_0

    const-string/jumbo v2, "LGT"

    invoke-static {}, Lcom/android/phone/TeleServiceFeature;->getSalesCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "3"

    const-string/jumbo v3, "ril.simtype"

    const-string/jumbo v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v0, "45006"

    :cond_0
    const-string/jumbo v1, ""

    const-string/jumbo v2, "45005"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v2, "mobile_newtork_style_for_skt"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    :cond_1
    const-string/jumbo v2, "45006"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo v2, "mobile_newtork_style_for_lgt"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    :cond_2
    const-string/jumbo v2, "45008"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string/jumbo v2, "mobile_newtork_style_for_ktt"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    :cond_3
    const-string/jumbo v2, "45006"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string/jumbo v2, "45007"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string/jumbo v2, "45008"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_4
    const-string/jumbo v2, "mobile_newtork_style_for_kor_open"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_5
    const/4 v2, 0x0

    return v2

    :cond_6
    const/4 v2, 0x1

    return v2
.end method

.method public static isFactoryMode()Z
    .locals 9

    invoke-static {}, Lcom/android/phone/mobilenetworks/boundary/SettingProxy;->getInstance()Lcom/android/phone/mobilenetworks/boundary/SettingProxy;

    invoke-static {}, Lcom/android/phone/mobilenetworks/boundary/SettingProxy;->shouldShutDown()Z

    move-result v5

    const-string/jumbo v6, "999999999999999"

    invoke-static {}, Lcom/android/phone/mobilenetworks/boundary/NetworkProxy;->getInstance()Lcom/android/phone/mobilenetworks/boundary/NetworkProxy;

    invoke-static {}, Lcom/android/phone/mobilenetworks/boundary/NetworkProxy;->getSubscriberId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v2, 0x0

    :try_start_0
    new-instance v6, Ljava/io/File;

    const-string/jumbo v7, "/efs/FactoryApp/factorymode"

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v7, 0x20

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :goto_0
    if-eqz v2, :cond_0

    const-string/jumbo v6, "ON"

    invoke-virtual {v2, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v1, 0x0

    :goto_1
    if-nez v5, :cond_1

    if-nez v3, :cond_1

    move v4, v1

    :goto_2
    const-string/jumbo v6, "MobileNetworkUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "isFactoryMode() "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :catch_0
    move-exception v0

    const-string/jumbo v2, "OFF"

    const-string/jumbo v6, "MobileNetworkUtils"

    const-string/jumbo v7, "cannot open file : /efs/FactoryApp/factorymode"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x1

    goto :goto_2
.end method

.method public static isGlobalMode()Z
    .locals 5

    invoke-static {}, Lcom/android/phone/mobilenetworks/MobileNetworkUtils;->getGlobalType()I

    move-result v0

    invoke-static {}, Lcom/android/phone/mobilenetworks/boundary/SettingProxy;->getPreferredNetworkMode()I

    move-result v1

    const-string/jumbo v2, "MobileNetworkUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "globalModeType : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " networkMode"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-ne v1, v0, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isGsmIncluded(I)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-eq v2, p0, :cond_0

    const/4 v2, 0x2

    if-ne v2, p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string/jumbo v2, "network_mode_global_lte_cdma_gsm_umts"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0x9

    if-eq v2, p0, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public static isGuestMode()Z
    .locals 7

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v4

    const-string/jumbo v5, "activity"

    invoke-virtual {v4, v5}, Lcom/android/phone/PhoneApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    invoke-static {}, Lcom/android/phone/mobilenetworks/MobileNetworkUtils;->isNoPhoneGlobalsHere()Z

    move-result v4

    if-eqz v4, :cond_0

    return v2

    :cond_0
    const-string/jumbo v4, "MobileNetworkUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getCurrentUser = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_1

    :goto_0
    return v2

    :cond_1
    move v2, v3

    goto :goto_0
.end method

.method public static isKtSim()Z
    .locals 3

    const-string/jumbo v1, "ril.simtype"

    const/4 v2, -0x1

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    const/4 v1, 0x0

    return v1

    :sswitch_0
    const/4 v1, 0x1

    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x14 -> :sswitch_0
    .end sparse-switch
.end method

.method public static isLTESupportSim(I)Z
    .locals 2

    const-string/jumbo v0, "2"

    invoke-static {p0}, Lcom/android/phone/PhoneUtilsMultiSIM;->getMultiSimIccType(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "4"

    invoke-static {p0}, Lcom/android/phone/PhoneUtilsMultiSIM;->getMultiSimIccType(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "1"

    invoke-static {p0}, Lcom/android/phone/PhoneUtilsMultiSIM;->getMultiSimCsim(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static isLgtSim()Z
    .locals 3

    const-string/jumbo v1, "ril.simtype"

    const/4 v2, -0x1

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    const/4 v1, 0x0

    return v1

    :sswitch_0
    const/4 v1, 0x1

    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x12 -> :sswitch_0
    .end sparse-switch
.end method

.method public static isMonkeyRunning()Z
    .locals 1

    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result v0

    return v0
.end method

.method public static isNoPhoneGlobalsHere()Z
    .locals 4

    const/4 v3, 0x1

    :try_start_0
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    if-nez v1, :cond_0

    return v3

    :catch_0
    move-exception v0

    const-string/jumbo v1, "MobileNetworkUtils"

    const-string/jumbo v2, "isNoPhoneGlobalsHere - No PhoneGlobals here!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public static isOtaRegistering(Landroid/content/Context;)Z
    .locals 7

    const/4 v6, 0x0

    const-string/jumbo v4, "mobile_newtork_style_for_kor"

    invoke-static {v4}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    const-string/jumbo v4, "ril.simtype"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "UsimDownload"

    invoke-virtual {p0, v4, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string/jumbo v4, "Download"

    invoke-interface {v1, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    if-eqz v0, :cond_0

    const-string/jumbo v4, " - isOTADownload= true"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    const-string/jumbo v4, "true"

    const-string/jumbo v5, "ril.domesticOtaStart"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string/jumbo v4, " - domesticOtaStart= true"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    const-string/jumbo v4, "KtfNumberReg"

    const-string/jumbo v5, "ril.domesticOta"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string/jumbo v4, " - domesticOta= KtfNumberReg"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    const-string/jumbo v4, "RefreshReset"

    const-string/jumbo v5, "ril.domesticOta"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string/jumbo v4, " - domesticOta= RefreshReset"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_3
    const-string/jumbo v4, "LGTGlobalOTA"

    const-string/jumbo v5, "ril.domesticOta"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string/jumbo v4, " - domesticOta= LGTGlobalOTA"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_4
    const-string/jumbo v4, "mobile_newtork_style_for_skt"

    invoke-static {v4}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    const-string/jumbo v4, "19"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    const-string/jumbo v4, " - SKT simType= 19"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_5
    const-string/jumbo v4, "mobile_newtork_style_for_lgt"

    invoke-static {v4}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    const-string/jumbo v4, "18"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    const-string/jumbo v4, " - LGT simType= 18"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_6
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    if-eqz v4, :cond_7

    const-string/jumbo v4, "MobileNetworkUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isOtaRegistering is false due to"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x1

    return v4

    :cond_7
    return v6

    :cond_8
    return v6
.end method

.method public static isRegisteredOnNetwork()Z
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string/jumbo v3, "ril.skt.network_regist"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    return v5

    :cond_0
    const-string/jumbo v3, ";"

    const/4 v4, 0x4

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    aget-object v3, v2, v5

    const/4 v4, 0x6

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v1, v6, :cond_1

    const/4 v3, 0x5

    if-ne v1, v3, :cond_2

    :cond_1
    return v6

    :cond_2
    return v5
.end method

.method public static isRestrictedNetworkPolicy(Landroid/content/Context;)Z
    .locals 4

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "dataUsageReachToLimit"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string/jumbo v1, "MobileNetworkUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "DATAUSAGE_REACH_TO_LIMIT : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isRoamingArea(Landroid/content/Context;)Z
    .locals 7

    const/4 v3, 0x0

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    const-string/jumbo v4, "MobileNetworkUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "ServiceState : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v2, :cond_0

    const-string/jumbo v3, "phone"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v3

    return v3

    :cond_0
    const-string/jumbo v4, "domestic"

    const-string/jumbo v5, "ril.currentplmn"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public static isSetupWizardFinished(Landroid/content/Context;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "device_provisioned"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static isShouldDimNetworkMode(I)Z
    .locals 3

    const-string/jumbo v0, "MobileNetworkUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "simSlot = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/android/phone/PhoneUtilsMultiSIM;->isBoltSIM(I)Z

    move-result v0

    if-nez v0, :cond_0

    xor-int/lit8 v0, p0, 0x1

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsMultiSIM;->isBoltSIM(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isSktSim()Z
    .locals 3

    const-string/jumbo v1, "ril.simtype"

    const/4 v2, -0x1

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    const/4 v1, 0x0

    return v1

    :sswitch_0
    const/4 v1, 0x1

    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x13 -> :sswitch_0
    .end sparse-switch
.end method

.method public static isSupportENSFeature()Z
    .locals 1

    const-string/jumbo v0, "support_ens_network_setting"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "support_ens_network_setting_for_mvno"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/phone/mobilenetworks/MobileNetworkUtils;->isAttMvnoSim()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static isSupportTdscdma()Z
    .locals 2

    const/4 v1, 0x0

    const-string/jumbo v0, "persist.ril.radiocapa.tdscdma"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1
.end method

.method public static needToRunLteRoaming()Z
    .locals 2

    invoke-static {}, Lcom/android/phone/mobilenetworks/boundary/SettingProxy;->getSimType()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "mobile_newtork_style_for_kor_open"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "2"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "3"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "4"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    return v1

    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public static removePreferenceActivityPadding(Landroid/preference/PreferenceActivity;)V
    .locals 3

    const/4 v2, 0x0

    if-nez p0, :cond_0

    return-void

    :cond_0
    const v1, 0x102000a

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/ListView;->setPadding(IIII)V

    return-void
.end method

.method public static setDataRoamingEnabledBySoftSim(Landroid/content/Context;Z)V
    .locals 3

    const-string/jumbo v1, "dataRoamingPreferences"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "enabledBySoftSim"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    return-void
.end method

.method public static setInternalMobileDataEnabled(Z)V
    .locals 4

    invoke-static {}, Lcom/android/phone/PhoneUtilsMultiSIM;->getDefaultDataSlotId()I

    move-result v0

    const-string/jumbo v1, "MobileNetworkUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setInternalMobileDataEnabled : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " dataSlotID"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/ProxyController;->getInstance()Lcom/android/internal/telephony/ProxyController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/ProxyController;->enableDataConnectivity(I)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/ProxyController;->getInstance()Lcom/android/internal/telephony/ProxyController;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/android/internal/telephony/ProxyController;->disableDataConnectivity(ILandroid/os/Message;)V

    goto :goto_0
.end method

.method public static setMobileDataEnabled(Z)V
    .locals 4

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v0

    const-string/jumbo v1, "MobileNetworkUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setMobileDataEnabled : enabled = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " subId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/telephony/TelephonyManager;->setDataEnabled(Z)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v0

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1, v0, p0}, Landroid/telephony/TelephonyManager;->setDataEnabled(IZ)V

    goto :goto_0
.end method

.method public static shouldRemoveGSMOnlyForLTN()Z
    .locals 7

    const/4 v6, 0x3

    const/4 v5, 0x0

    invoke-static {}, Lcom/android/phone/TeleServiceFeature;->getSalesCode()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "IUS"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string/jumbo v4, "MNX"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v4, 0x5

    invoke-virtual {v3, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    :cond_1
    const/16 v4, 0x14e

    if-ne v0, v4, :cond_2

    const/16 v4, 0x9

    if-ne v1, v4, :cond_2

    const/4 v4, 0x1

    return v4

    :cond_2
    return v5
.end method

.method public static updatePreferenceToSpecificActivity(Landroid/content/Context;Landroid/preference/Preference;Landroid/content/Intent;I)Z
    .locals 9

    const/4 v8, 0x0

    const/4 v6, 0x0

    if-nez p1, :cond_0

    return v6

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, p2, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_3

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_2

    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    iget-object v6, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v7, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    and-int/lit8 v5, p3, 0x1

    if-eqz v5, :cond_1

    invoke-virtual {v4, v3}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p1, v8}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_1
    const/4 v5, 0x1

    return v5

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return v6
.end method
