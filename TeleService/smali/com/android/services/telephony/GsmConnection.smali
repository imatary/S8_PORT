.class public final Lcom/android/services/telephony/GsmConnection;
.super Lcom/android/services/telephony/TelephonyConnection;
.source "GsmConnection.java"


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/Connection;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/services/telephony/TelephonyConnection;-><init>(Lcom/android/internal/telephony/Connection;Ljava/lang/String;)V

    return-void
.end method

.method private disableWifiInEmergencyCall(Lcom/android/internal/telephony/Call$State;)V
    .locals 4

    const/4 v3, 0x0

    const-string/jumbo v1, "wifi_disable_during_emergency_call"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Lcom/android/services/telephony/TelephonyConnectionUtils;->isNetworkRadioTech(Lcom/android/services/telephony/TelephonyConnection;)Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "disableWifiInEmergencyCall - isNetworkRadioTech : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/services/telephony/GsmConnection;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/services/telephony/GsmConnection;->getAddress()Landroid/net/Uri;

    move-result-object v2

    invoke-static {v1, p1, v2}, Lcom/android/services/telephony/operator/usa/TeleServiceExtension;->disableWifiInEmergencyCall(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Call$State;Landroid/net/Uri;)V

    const-string/jumbo v1, "disableWifiInEmergencyCall"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected buildConnectionCapabilities()I
    .locals 3

    invoke-super {p0}, Lcom/android/services/telephony/TelephonyConnection;->buildConnectionCapabilities()I

    move-result v0

    or-int/lit8 v0, v0, 0x40

    invoke-virtual {p0}, Lcom/android/services/telephony/GsmConnection;->shouldTreatAsEmergencyCall()Z

    move-result v1

    if-nez v1, :cond_1

    or-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Lcom/android/services/telephony/GsmConnection;->getState()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/android/services/telephony/GsmConnection;->getState()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    :cond_0
    or-int/lit8 v0, v0, 0x1

    :cond_1
    invoke-static {p0, v0}, Lcom/android/services/utils/SecCapabilitiesBuilder;->build(Lcom/android/services/telephony/TelephonyConnection;I)I

    move-result v0

    return v0
.end method

.method public cloneConnection()Lcom/android/services/telephony/TelephonyConnection;
    .locals 3

    new-instance v0, Lcom/android/services/telephony/GsmConnection;

    invoke-virtual {p0}, Lcom/android/services/telephony/GsmConnection;->getOriginalConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/services/telephony/GsmConnection;->getTelecomCallId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/services/telephony/GsmConnection;-><init>(Lcom/android/internal/telephony/Connection;Ljava/lang/String;)V

    return-object v0
.end method

.method public onPlayDtmfTone(C)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/services/telephony/GsmConnection;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/services/telephony/GsmConnection;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/Phone;->startDtmf(C)V

    :cond_0
    return-void
.end method

.method public onStopDtmfTone()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/services/telephony/GsmConnection;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/services/telephony/GsmConnection;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->stopDtmf()V

    :cond_0
    return-void
.end method

.method public performConference(Lcom/android/services/telephony/TelephonyConnection;)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/services/telephony/GsmConnection;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/services/telephony/GsmConnection;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->conference()V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "Failed to conference call."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1, v2}, Lcom/android/services/telephony/Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method updateState()V
    .locals 2

    iget-object v1, p0, Lcom/android/services/telephony/GsmConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/services/telephony/GsmConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/services/telephony/GsmConnection;->disableWifiInEmergencyCall(Lcom/android/internal/telephony/Call$State;)V

    invoke-super {p0}, Lcom/android/services/telephony/TelephonyConnection;->updateState()V

    :cond_0
    return-void
.end method
