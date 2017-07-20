.class public Lcom/android/services/telephony/operator/usa/TeleServiceExtension;
.super Ljava/lang/Object;
.source "TeleServiceExtension.java"


# static fields
.field private static isEpdgCall:Z

.field private static mSilence:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkForOtaspCall(Lcom/android/internal/telephony/Phone;Landroid/net/Uri;Z)Z
    .locals 1

    const-string/jumbo v0, "activate_your_phone"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    invoke-static {p0, p1}, Lcom/android/phone/OtaUtils;->checkForOtaspCall(Lcom/android/internal/telephony/Phone;Landroid/net/Uri;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static disableWifiInEmergencyCall(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Call$State;Landroid/net/Uri;)V
    .locals 6

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v3, "feature_vzw"

    invoke-static {v3}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string/jumbo v3, "feature_spr"

    invoke-static {v3}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_1
    const-string/jumbo v3, "wifi_call_enable"

    const/4 v4, 0x0

    invoke-static {v0, v3, v4}, Lcom/android/phone/VoWifiSettingsDataBaseManager;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    const-string/jumbo v3, "wifi_call_enable"

    invoke-static {v0, v3, v1}, Lcom/android/phone/VoWifiSettingsDataBaseManager;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    const/4 v2, 0x1

    :goto_0
    const-string/jumbo v3, "TeleServiceExtension"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "disableWifiInEmergencyCall - wifiCallEnable : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " / state : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_3

    return-void

    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    :cond_3
    sget-object v3, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-eq p1, v3, :cond_4

    sget-object v3, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-ne p1, v3, :cond_5

    :cond_4
    invoke-static {p0, p2}, Lcom/android/services/telephony/operator/usa/TeleServiceExtension;->isEmergency(Lcom/android/internal/telephony/Phone;Landroid/net/Uri;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-static {v0}, Lcom/android/phone/operator/usa/TelephonyExtension;->disableWifiInEmergencyCall(Landroid/content/Context;)V

    const-string/jumbo v3, "TeleServiceExtension"

    const-string/jumbo v4, "TelephonyExtension.disableWifiInEmergencyCall"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return-void
.end method

.method public static getOriginalConnectionFromNumber(Landroid/net/Uri;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/android/services/telephony/operator/usa/TeleServiceExtension;->getOriginalConnectionFromNumber(Landroid/net/Uri;Landroid/net/Uri;Z)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getOriginalConnectionFromNumber(Landroid/net/Uri;Landroid/net/Uri;Z)Landroid/net/Uri;
    .locals 1

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    if-eqz p2, :cond_1

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return-object p1

    :cond_1
    return-object p0
.end method

.method public static getSilence()Z
    .locals 1

    sget-boolean v0, Lcom/android/services/telephony/operator/usa/TeleServiceExtension;->mSilence:Z

    return v0
.end method

.method public static ignoreSignalForTFN(Landroid/content/Context;III)Z
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string/jumbo v3, "TFN"

    invoke-static {}, Lcom/android/phone/TeleServiceFeature;->getSalesCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    return v6

    :cond_0
    const/4 v2, 0x0

    if-eqz p0, :cond_2

    const-string/jumbo v3, "audio"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    if-eq v7, v1, :cond_1

    if-nez v1, :cond_3

    :cond_1
    const/4 v2, 0x1

    :goto_0
    const-string/jumbo v3, "TeleServiceExtension"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "ignoreSignalForTFN : shouldMute = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    if-eqz v2, :cond_4

    if-ne p1, v7, :cond_4

    if-nez p2, :cond_4

    const/4 v3, 0x4

    if-ne p3, v3, :cond_4

    return v7

    :cond_3
    const/4 v2, 0x0

    goto :goto_0

    :cond_4
    return v6
.end method

.method public static isCdmaSilenceSignal(III)Z
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1
.end method

.method public static isCdmaStandardSignal(III)Z
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    if-nez p1, :cond_0

    if-ne p2, v2, :cond_0

    return v2

    :cond_0
    return v1
.end method

.method private static isEmergency(Lcom/android/internal/telephony/Phone;Landroid/net/Uri;)Z
    .locals 2

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/PhoneNumberUtils;->isLocalEmergencyNumber(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isImsRegistrationTrial(Lcom/android/internal/telephony/Phone;)Z
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/services/telephony/operator/usa/TeleServiceExtension;->isImsRegistrationTrial(Lcom/android/internal/telephony/Phone;Z)Z

    move-result v0

    return v0
.end method

.method public static isImsRegistrationTrial(Lcom/android/internal/telephony/Phone;Landroid/telecom/ConnectionRequest;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/telecom/ConnectionRequest;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-static {v2}, Lcom/android/services/telephony/common/SecCallExtra;->getSecCallExtra(Landroid/os/Bundle;)Lcom/android/services/telephony/common/SecCallExtra;

    move-result-object v1

    const/4 v0, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/services/telephony/common/SecCallExtra;->getType()I

    move-result v2

    if-nez v2, :cond_1

    const/4 v0, 0x1

    :cond_0
    :goto_0
    invoke-static {p0, v0}, Lcom/android/services/telephony/operator/usa/TeleServiceExtension;->isImsRegistrationTrial(Lcom/android/internal/telephony/Phone;Z)Z

    move-result v2

    return v2

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isImsRegistrationTrial(Lcom/android/internal/telephony/Phone;Z)Z
    .locals 8

    const/16 v7, 0xe

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v0

    const-string/jumbo v5, "TeleServiceExtension"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isImsRegistrationTrial isVoice("

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v6, "), LTE n/w("

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-ne v0, v7, :cond_1

    move v2, v3

    :goto_0
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v6, "), serviceState("

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v6, "), imsRegi("

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/android/phone/PhoneUtilsCommon;->isIMSRegistered()Z

    move-result v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v6, ")"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    if-ne v0, v7, :cond_0

    if-ne v1, v3, :cond_0

    invoke-static {}, Lcom/android/phone/PhoneUtilsCommon;->isIMSRegistered()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    return v4

    :cond_1
    move v2, v4

    goto :goto_0

    :cond_2
    return v3
.end method

.method private static isOtaSpNumberNonInteractive(Lcom/android/internal/telephony/Phone;Ljava/lang/String;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const-string/jumbo v0, "*22899"

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static otaspInCall(Lcom/android/internal/telephony/Connection;)Z
    .locals 3

    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/services/telephony/operator/usa/TeleServiceExtension;->isOtaSpNumberNonInteractive(Lcom/android/internal/telephony/Phone;Ljava/lang/String;)Z

    move-result v2

    return v2
.end method

.method public static setEpdgCall(Z)V
    .locals 0

    sput-boolean p0, Lcom/android/services/telephony/operator/usa/TeleServiceExtension;->isEpdgCall:Z

    return-void
.end method

.method public static setSilence(Z)V
    .locals 0

    sput-boolean p0, Lcom/android/services/telephony/operator/usa/TeleServiceExtension;->mSilence:Z

    return-void
.end method

.method public static toTelecomDisconnectCauseDescription(ILjava/lang/Integer;Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1

    sparse-switch p0, :sswitch_data_0

    :cond_0
    :goto_0
    return-object p1

    :sswitch_0
    const v0, 0x7f0d0a64

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    :sswitch_1
    const v0, 0x7f0d0a65

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    :sswitch_2
    sget-boolean v0, Lcom/android/services/telephony/operator/usa/TeleServiceExtension;->isEpdgCall:Z

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    const-string/jumbo v0, "1101"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0d0a66

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1b -> :sswitch_0
        0x1d -> :sswitch_1
        0x65 -> :sswitch_2
    .end sparse-switch
.end method
