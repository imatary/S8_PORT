.class public Lcom/android/services/telephony/retrydial/ConnectionRetryDial;
.super Ljava/lang/Object;
.source "ConnectionRetryDial.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isPhoneTypeChanged(Landroid/telecom/ConnectionRequest;)Z
    .locals 7

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-nez p0, :cond_0

    return v6

    :cond_0
    invoke-virtual {p0}, Landroid/telecom/ConnectionRequest;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-static {v2}, Lcom/android/services/telephony/common/SecCallExtra;->getSecCallExtra(Landroid/os/Bundle;)Lcom/android/services/telephony/common/SecCallExtra;

    move-result-object v1

    invoke-static {v1}, Lcom/android/services/telephony/retrydial/ConnectionRetryDial;->isPhoneTypeChanged(Lcom/android/services/telephony/common/SecCallExtra;)Z

    move-result v0

    const-string/jumbo v2, "ConnectionRetryDial"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isPhoneTypeChanged - isPhoneTypeChanged : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " / ConnectionRequest : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v2, v3, v4}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v0
.end method

.method public static isPhoneTypeChanged(Lcom/android/services/telephony/TelephonyConnection;Lcom/android/internal/telephony/Call$State;Lcom/android/internal/telephony/Call$State;)Z
    .locals 11

    const/4 v10, 0x0

    const/4 v9, 0x1

    const-string/jumbo v4, "silent_redial"

    invoke-static {v4}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    return v10

    :cond_0
    const-string/jumbo v4, "ConnectionRetryDial"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isPhoneTypeChanged - newState : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " State from %s to %s"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p1, v6, v10

    aput-object p2, v6, v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    const/4 v8, 0x2

    aput-object v7, v6, v8

    invoke-static {v4, v5, v6}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v4, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-eq p2, v4, :cond_1

    sget-object v4, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-ne p1, v4, :cond_2

    sget-object v4, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne p2, v4, :cond_2

    :cond_1
    instance-of v4, p0, Lcom/android/services/telephony/GsmConnection;

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    if-eq v2, v9, :cond_2

    invoke-static {}, Lcom/android/services/utils/SecTelecomAdapter;->getInstance()Lcom/android/services/utils/SecTelecomAdapter;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->getCallId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/services/utils/SecTelecomAdapter;->getSecCallExtra(Ljava/lang/String;)Lcom/android/services/telephony/common/SecCallExtra;

    move-result-object v3

    invoke-static {v3}, Lcom/android/services/telephony/TelephonyConnectionUtils;->isImsCall(Lcom/android/services/telephony/common/SecCallExtra;)Z

    move-result v1

    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->getOriginalConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->isImsCall()Z

    move-result v0

    const-string/jumbo v4, "ConnectionRetryDial"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isPhoneTypeChanged - isImsCallExtra : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " / isImsCall : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-static {v4, v5, v6}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez v0, :cond_2

    const-string/jumbo v4, "ConnectionRetryDial"

    const-string/jumbo v5, "isPhoneTypeChanged : GSM -> CDMA"

    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-static {v4, v5, v6}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string/jumbo v4, "ConnectionRetryDial"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isPhoneTypeChanged : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " -> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-static {v4, v5, v6}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p0, v9}, Lcom/android/services/telephony/retrydial/ConnectionRetryDial;->setPhoneTypeChanged(Lcom/android/services/telephony/TelephonyConnection;Z)V

    return v9

    :cond_2
    return v10
.end method

.method public static isPhoneTypeChanged(Lcom/android/services/telephony/TelephonyConnection;Z)Z
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x1

    if-nez p0, :cond_0

    return v7

    :cond_0
    const-string/jumbo v2, "ConnectionRetryDial"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isPhoneTypeChanged - extra : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v2, v3, v4}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-static {v2}, Lcom/android/services/telephony/common/SecCallExtra;->getSecCallExtra(Landroid/os/Bundle;)Lcom/android/services/telephony/common/SecCallExtra;

    move-result-object v1

    :goto_0
    invoke-static {v1}, Lcom/android/services/telephony/retrydial/ConnectionRetryDial;->isPhoneTypeChanged(Lcom/android/services/telephony/common/SecCallExtra;)Z

    move-result v0

    const-string/jumbo v2, "ConnectionRetryDial"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isPhoneTypeChanged - isPhoneTypeChanged : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " / extra : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v2, v3, v4}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v0

    :cond_1
    invoke-static {}, Lcom/android/services/utils/SecTelecomAdapter;->getInstance()Lcom/android/services/utils/SecTelecomAdapter;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->getCallId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/services/utils/SecTelecomAdapter;->getSecCallExtra(Ljava/lang/String;)Lcom/android/services/telephony/common/SecCallExtra;

    move-result-object v1

    goto :goto_0
.end method

.method private static isPhoneTypeChanged(Lcom/android/services/telephony/common/SecCallExtra;)Z
    .locals 6

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/services/telephony/common/SecCallExtra;->getPhoneTypeChanged()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    const-string/jumbo v1, "ConnectionRetryDial"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isPhoneTypeChanged - isPhoneTypeChanged : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v1, v2, v3}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v0
.end method

.method public static requestOriginalConnection(Lcom/android/services/telephony/TelephonyConnection;Lcom/android/internal/telephony/Call;)V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x1

    const-string/jumbo v1, "ConnectionRetryDial"

    const-string/jumbo v2, "requestOriginalConnection isPhoneTypeChanged start"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v1, v2, v3}, Lcom/android/services/telephony/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/services/telephony/TelephonyConnection;->sendPreciseCallStateChanged(Lcom/android/internal/telephony/Connection;)V

    const-string/jumbo v1, "ConnectionRetryDial"

    const-string/jumbo v2, "requestOriginalConnection isPhoneTypeChanged end"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v1, v2, v3}, Lcom/android/services/telephony/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static setPhoneTypeChanged(Lcom/android/services/telephony/TelephonyConnection;Z)V
    .locals 7

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-static {}, Lcom/android/services/utils/SecTelecomAdapter;->getInstance()Lcom/android/services/utils/SecTelecomAdapter;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->getCallId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/android/services/utils/SecTelecomAdapter;->getSecCallExtra(Ljava/lang/String;)Lcom/android/services/telephony/common/SecCallExtra;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string/jumbo v1, "ConnectionRetryDial"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setPhoneTypeChanged not null "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-static {v1, v4, v5}, Lcom/android/services/telephony/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p1, :cond_2

    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/services/telephony/common/SecCallExtra;->setPhoneTypeChanged(I)V

    if-eqz p1, :cond_0

    invoke-virtual {v0, v2}, Lcom/android/services/telephony/common/SecCallExtra;->setDomain(I)V

    invoke-virtual {v0, v3}, Lcom/android/services/telephony/common/SecCallExtra;->setType(I)V

    invoke-virtual {v0, v3}, Lcom/android/services/telephony/common/SecCallExtra;->setEpdgCall(Z)V

    :cond_0
    invoke-static {}, Lcom/android/services/utils/SecTelecomAdapter;->getInstance()Lcom/android/services/utils/SecTelecomAdapter;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/android/services/utils/SecTelecomAdapter;->setSecCallExtra(Lcom/android/services/telephony/TelephonyConnection;Lcom/android/services/telephony/common/SecCallExtra;)V

    invoke-static {}, Lcom/android/services/utils/SecTelecomAdapter;->getInstance()Lcom/android/services/utils/SecTelecomAdapter;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/android/services/utils/SecTelecomAdapter;->updateSecCallExtra(Lcom/android/services/telephony/TelephonyConnection;Lcom/android/services/telephony/common/SecCallExtra;)V

    const-string/jumbo v1, "ConnectionRetryDial"

    const-string/jumbo v4, "setPhoneTypeChanged"

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v5, v3

    invoke-static {v1, v4, v5}, Lcom/android/services/telephony/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    return-void

    :cond_2
    move v1, v3

    goto :goto_0
.end method
