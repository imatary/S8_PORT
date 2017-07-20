.class final Lcom/android/services/telephony/sip/SipConnection;
.super Landroid/telecom/Connection;
.source "SipConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/services/telephony/sip/SipConnection$1;
    }
.end annotation


# static fields
.field private static final synthetic -com-android-internal-telephony-Call$StateSwitchesValues:[I


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private mOriginalConnection:Lcom/android/internal/telephony/Connection;

.field private mOriginalConnectionState:Lcom/android/internal/telephony/Call$State;


# direct methods
.method private static synthetic -getcom-android-internal-telephony-Call$StateSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/android/services/telephony/sip/SipConnection;->-com-android-internal-telephony-Call$StateSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/services/telephony/sip/SipConnection;->-com-android-internal-telephony-Call$StateSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/Call$State;->values()[Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_8

    :goto_0
    :try_start_1
    sget-object v1, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_7

    :goto_1
    :try_start_2
    sget-object v1, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_6

    :goto_2
    :try_start_3
    sget-object v1, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_5

    :goto_3
    :try_start_4
    sget-object v1, Lcom/android/internal/telephony/Call$State;->DISCONNECTING:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :goto_4
    :try_start_5
    sget-object v1, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_3

    :goto_5
    :try_start_6
    sget-object v1, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_2

    :goto_6
    :try_start_7
    sget-object v1, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_1

    :goto_7
    :try_start_8
    sget-object v1, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_0

    :goto_8
    sput-object v0, Lcom/android/services/telephony/sip/SipConnection;->-com-android-internal-telephony-Call$StateSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_8

    :catch_1
    move-exception v1

    goto :goto_7

    :catch_2
    move-exception v1

    goto :goto_6

    :catch_3
    move-exception v1

    goto :goto_5

    :catch_4
    move-exception v1

    goto :goto_4

    :catch_5
    move-exception v1

    goto :goto_3

    :catch_6
    move-exception v1

    goto :goto_2

    :catch_7
    move-exception v1

    goto :goto_1

    :catch_8
    move-exception v1

    goto :goto_0
.end method

.method static synthetic -wrap0(Lcom/android/services/telephony/sip/SipConnection;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/services/telephony/sip/SipConnection;->updateState(Z)V

    return-void
.end method

.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/telecom/Connection;-><init>()V

    new-instance v0, Lcom/android/services/telephony/sip/SipConnection$1;

    invoke-direct {v0, p0}, Lcom/android/services/telephony/sip/SipConnection$1;-><init>(Lcom/android/services/telephony/sip/SipConnection;)V

    iput-object v0, p0, Lcom/android/services/telephony/sip/SipConnection;->mHandler:Landroid/os/Handler;

    sget-object v0, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    iput-object v0, p0, Lcom/android/services/telephony/sip/SipConnection;->mOriginalConnectionState:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {p0}, Lcom/android/services/telephony/sip/SipConnection;->setInitializing()V

    return-void
.end method

.method private buildCallCapabilities()I
    .locals 3

    const/16 v0, 0x42

    invoke-virtual {p0}, Lcom/android/services/telephony/sip/SipConnection;->getState()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/android/services/telephony/sip/SipConnection;->getState()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    :cond_0
    const/16 v0, 0x43

    :cond_1
    return v0
.end method

.method private close()V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/services/telephony/sip/SipConnection;->getPhone()Lcom/android/internal/telephony/sip/SipPhone;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/services/telephony/sip/SipConnection;->getPhone()Lcom/android/internal/telephony/sip/SipPhone;

    move-result-object v0

    iget-object v1, p0, Lcom/android/services/telephony/sip/SipConnection;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/sip/SipPhone;->unregisterForPreciseCallStateChanged(Landroid/os/Handler;)V

    :cond_0
    iput-object v2, p0, Lcom/android/services/telephony/sip/SipConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    invoke-virtual {p0}, Lcom/android/services/telephony/sip/SipConnection;->destroy()V

    return-void
.end method

.method private static getAddressFromNumber(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2

    const/4 v1, 0x0

    if-nez p0, :cond_0

    const-string/jumbo p0, ""

    :cond_0
    const-string/jumbo v0, "sip"

    invoke-static {v0, p0, v1}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private getCall()Lcom/android/internal/telephony/Call;
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/services/telephony/sip/SipConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/services/telephony/sip/SipConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    return-object v0

    :cond_0
    return-object v1
.end method

.method private isValidRingingCall()Z
    .locals 4

    invoke-direct {p0}, Lcom/android/services/telephony/sip/SipConnection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call$State;->isRinging()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v2

    iget-object v3, p0, Lcom/android/services/telephony/sip/SipConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isValidRingingCall "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/services/telephony/sip/SipConnection;->log(Ljava/lang/String;)V

    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 3

    const-string/jumbo v0, "SIP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[SipConnection] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private setTechnologyTypeExtra()V
    .locals 4

    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/android/services/telephony/sip/SipConnection;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    if-nez v2, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "android.telecom.extra.CALL_TECHNOLOGY_TYPE"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcom/android/services/telephony/sip/SipConnection;->setExtras(Landroid/os/Bundle;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/services/telephony/sip/SipConnection;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "android.telecom.extra.CALL_TECHNOLOGY_TYPE"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private updateAddress()V
    .locals 7

    const/4 v6, 0x0

    iget-object v4, p0, Lcom/android/services/telephony/sip/SipConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/services/telephony/sip/SipConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    invoke-virtual {v4}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/services/telephony/sip/SipConnection;->getAddressFromNumber(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v4, p0, Lcom/android/services/telephony/sip/SipConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    invoke-virtual {v4}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/services/telephony/sip/SipConnection;->getAddress()Landroid/net/Uri;

    move-result-object v4

    invoke-static {v0, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/android/services/telephony/sip/SipConnection;->getAddressPresentation()I

    move-result v4

    if-eq v3, v4, :cond_1

    :cond_0
    const-string/jumbo v4, "updateAddress, address changed"

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {p0, v4, v5}, Lcom/android/services/telephony/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, v0, v3}, Lcom/android/services/telephony/sip/SipConnection;->setAddress(Landroid/net/Uri;I)V

    :cond_1
    iget-object v4, p0, Lcom/android/services/telephony/sip/SipConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    invoke-virtual {v4}, Lcom/android/internal/telephony/Connection;->getCnapName()Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/android/services/telephony/sip/SipConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    invoke-virtual {v4}, Lcom/android/internal/telephony/Connection;->getCnapNamePresentation()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/services/telephony/sip/SipConnection;->getCallerDisplayName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Lcom/android/services/telephony/sip/SipConnection;->getCallerDisplayNamePresentation()I

    move-result v4

    if-eq v2, v4, :cond_3

    :cond_2
    const-string/jumbo v4, "updateAddress, caller display name changed"

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {p0, v4, v5}, Lcom/android/services/telephony/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, v1, v2}, Lcom/android/services/telephony/sip/SipConnection;->setCallerDisplayName(Ljava/lang/String;I)V

    :cond_3
    return-void
.end method

.method private updateState(Z)V
    .locals 3

    iget-object v1, p0, Lcom/android/services/telephony/sip/SipConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/services/telephony/sip/SipConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    if-nez p1, :cond_1

    iget-object v1, p0, Lcom/android/services/telephony/sip/SipConnection;->mOriginalConnectionState:Lcom/android/internal/telephony/Call$State;

    if-eq v1, v0, :cond_2

    :cond_1
    iput-object v0, p0, Lcom/android/services/telephony/sip/SipConnection;->mOriginalConnectionState:Lcom/android/internal/telephony/Call$State;

    invoke-static {}, Lcom/android/services/telephony/sip/SipConnection;->-getcom-android-internal-telephony-Call$StateSwitchesValues()[I

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :goto_0
    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/android/services/telephony/sip/SipConnection;->updateCallCapabilities(Z)V

    :cond_2
    return-void

    :pswitch_1
    invoke-virtual {p0}, Lcom/android/services/telephony/sip/SipConnection;->setActive()V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lcom/android/services/telephony/sip/SipConnection;->setOnHold()V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0}, Lcom/android/services/telephony/sip/SipConnection;->setDialing()V

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/services/telephony/sip/SipConnection;->setRingbackRequested(Z)V

    goto :goto_0

    :pswitch_4
    invoke-virtual {p0}, Lcom/android/services/telephony/sip/SipConnection;->setRinging()V

    goto :goto_0

    :pswitch_5
    iget-object v1, p0, Lcom/android/services/telephony/sip/SipConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getDisconnectCause()I

    move-result v1

    invoke-static {v1}, Lcom/android/services/telephony/DisconnectCauseUtil;->toTelecomDisconnectCause(I)Landroid/telecom/DisconnectCause;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/services/telephony/sip/SipConnection;->setDisconnected(Landroid/telecom/DisconnectCause;)V

    invoke-direct {p0}, Lcom/android/services/telephony/sip/SipConnection;->close()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_3
        :pswitch_5
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method getPhone()Lcom/android/internal/telephony/sip/SipPhone;
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/services/telephony/sip/SipConnection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/sip/SipPhone;

    return-object v1

    :cond_0
    return-object v1
.end method

.method initialize(Lcom/android/internal/telephony/Connection;)V
    .locals 4

    const/4 v3, 0x0

    iput-object p1, p0, Lcom/android/services/telephony/sip/SipConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    invoke-virtual {p0}, Lcom/android/services/telephony/sip/SipConnection;->getPhone()Lcom/android/internal/telephony/sip/SipPhone;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/services/telephony/sip/SipConnection;->getPhone()Lcom/android/internal/telephony/sip/SipPhone;

    move-result-object v0

    iget-object v1, p0, Lcom/android/services/telephony/sip/SipConnection;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/sip/SipPhone;->registerForPreciseCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Lcom/android/services/telephony/sip/SipConnection;->updateAddress()V

    invoke-direct {p0}, Lcom/android/services/telephony/sip/SipConnection;->setTechnologyTypeExtra()V

    invoke-virtual {p0}, Lcom/android/services/telephony/sip/SipConnection;->setInitialized()V

    return-void
.end method

.method public onAbort()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/services/telephony/sip/SipConnection;->onDisconnect()V

    return-void
.end method

.method onAddedToCallService()V
    .locals 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/services/telephony/sip/SipConnection;->updateState(Z)V

    invoke-virtual {p0, v0}, Lcom/android/services/telephony/sip/SipConnection;->updateCallCapabilities(Z)V

    invoke-virtual {p0, v0}, Lcom/android/services/telephony/sip/SipConnection;->setAudioModeIsVoip(Z)V

    iget-object v0, p0, Lcom/android/services/telephony/sip/SipConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/services/telephony/sip/SipConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getCnapName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/services/telephony/sip/SipConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getCnapNamePresentation()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/services/telephony/sip/SipConnection;->setCallerDisplayName(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public onAnswer(I)V
    .locals 10

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, -0x1

    :try_start_0
    invoke-direct {p0}, Lcom/android/services/telephony/sip/SipConnection;->isValidRingingCall()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/android/services/telephony/sip/SipConnection;->getPhone()Lcom/android/internal/telephony/sip/SipPhone;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/android/services/telephony/sip/SipConnection;->getPhone()Lcom/android/internal/telephony/sip/SipPhone;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/internal/telephony/sip/SipPhone;->acceptCall(I)V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onAnswer, IllegalArgumentException: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/services/telephony/sip/SipConnection;->log(Ljava/lang/String;)V

    new-array v3, v9, [Ljava/lang/Object;

    const-string/jumbo v4, "31752213"

    aput-object v4, v3, v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    const-string/jumbo v4, "Invalid SDP."

    aput-object v4, v3, v8

    const v4, 0x534e4554

    invoke-static {v4, v3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    invoke-virtual {p0}, Lcom/android/services/telephony/sip/SipConnection;->onReject()V

    goto :goto_0

    :catch_1
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onAnswer, IllegalStateException: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/services/telephony/sip/SipConnection;->log(Ljava/lang/String;)V

    new-array v3, v9, [Ljava/lang/Object;

    const-string/jumbo v4, "31752213"

    aput-object v4, v3, v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    const-string/jumbo v4, "Invalid codec."

    aput-object v4, v3, v8

    const v4, 0x534e4554

    invoke-static {v4, v3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    invoke-virtual {p0}, Lcom/android/services/telephony/sip/SipConnection;->onReject()V

    goto :goto_0

    :catch_2
    move-exception v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onAnswer, exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/services/telephony/sip/SipConnection;->log(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public onAudioStateChanged(Landroid/telecom/AudioState;)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/services/telephony/sip/SipConnection;->getPhone()Lcom/android/internal/telephony/sip/SipPhone;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/services/telephony/sip/SipConnection;->getPhone()Lcom/android/internal/telephony/sip/SipPhone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/sip/SipPhone;->setEchoSuppressionEnabled()V

    :cond_0
    return-void
.end method

.method public onDisconnect()V
    .locals 3

    :try_start_0
    invoke-direct {p0}, Lcom/android/services/telephony/sip/SipConnection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/services/telephony/sip/SipConnection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->isMultiparty()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    iget-object v1, p0, Lcom/android/services/telephony/sip/SipConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/services/telephony/sip/SipConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->hangup()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-direct {p0}, Lcom/android/services/telephony/sip/SipConnection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->hangup()V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onDisconnect, exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/services/telephony/sip/SipConnection;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onHold()V
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lcom/android/services/telephony/sip/SipConnection;->getPhone()Lcom/android/internal/telephony/sip/SipPhone;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/services/telephony/sip/SipConnection;->getState()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/android/services/telephony/sip/SipConnection;->getPhone()Lcom/android/internal/telephony/sip/SipPhone;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/sip/SipPhone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    if-eq v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/android/services/telephony/sip/SipConnection;->getPhone()Lcom/android/internal/telephony/sip/SipPhone;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/sip/SipPhone;->switchHoldingAndActive()V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onHold, exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/services/telephony/sip/SipConnection;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onPlayDtmfTone(C)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/services/telephony/sip/SipConnection;->getPhone()Lcom/android/internal/telephony/sip/SipPhone;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/services/telephony/sip/SipConnection;->getPhone()Lcom/android/internal/telephony/sip/SipPhone;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/sip/SipPhone;->startDtmf(C)V

    :cond_0
    return-void
.end method

.method public onPostDialContinue(Z)V
    .locals 0

    return-void
.end method

.method public onReject()V
    .locals 3

    :try_start_0
    invoke-direct {p0}, Lcom/android/services/telephony/sip/SipConnection;->isValidRingingCall()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/services/telephony/sip/SipConnection;->getPhone()Lcom/android/internal/telephony/sip/SipPhone;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/services/telephony/sip/SipConnection;->getPhone()Lcom/android/internal/telephony/sip/SipPhone;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/sip/SipPhone;->rejectCall()V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onReject, exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/services/telephony/sip/SipConnection;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onSeparate()V
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/android/services/telephony/sip/SipConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/services/telephony/sip/SipConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->separate()V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onSeparate, exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/services/telephony/sip/SipConnection;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onStopDtmfTone()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/services/telephony/sip/SipConnection;->getPhone()Lcom/android/internal/telephony/sip/SipPhone;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/services/telephony/sip/SipConnection;->getPhone()Lcom/android/internal/telephony/sip/SipPhone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/sip/SipPhone;->stopDtmf()V

    :cond_0
    return-void
.end method

.method public onUnhold()V
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lcom/android/services/telephony/sip/SipConnection;->getPhone()Lcom/android/internal/telephony/sip/SipPhone;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/services/telephony/sip/SipConnection;->getState()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/android/services/telephony/sip/SipConnection;->getPhone()Lcom/android/internal/telephony/sip/SipPhone;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/sip/SipPhone;->switchHoldingAndActive()V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onUnhold, exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/services/telephony/sip/SipConnection;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method updateCallCapabilities(Z)V
    .locals 2

    invoke-direct {p0}, Lcom/android/services/telephony/sip/SipConnection;->buildCallCapabilities()I

    move-result v0

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/android/services/telephony/sip/SipConnection;->getConnectionCapabilities()I

    move-result v1

    if-eq v1, v0, :cond_1

    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/services/telephony/sip/SipConnection;->setConnectionCapabilities(I)V

    :cond_1
    return-void
.end method
