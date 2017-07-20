.class public final Lcom/android/services/telephony/CdmaConnection;
.super Lcom/android/services/telephony/TelephonyConnection;
.source "CdmaConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/services/telephony/CdmaConnection$1;
    }
.end annotation


# static fields
.field private static final synthetic -com-android-internal-telephony-Call$StateSwitchesValues:[I


# instance fields
.field private mAllowMute:Z

.field private mCdmaConferenceController:Lcom/android/services/telephony/CdmaConferenceController;

.field private mDtmfBurstConfirmationPending:Z

.field private final mDtmfQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field

.field private final mEmergencyTonePlayer:Lcom/android/services/telephony/EmergencyTonePlayer;

.field private final mHandler:Landroid/os/Handler;

.field private mIsCallWaiting:Z

.field private final mIsOutgoing:Z


# direct methods
.method private static synthetic -getcom-android-internal-telephony-Call$StateSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/android/services/telephony/CdmaConnection;->-com-android-internal-telephony-Call$StateSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/services/telephony/CdmaConnection;->-com-android-internal-telephony-Call$StateSwitchesValues:[I

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

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_7

    :goto_1
    :try_start_2
    sget-object v1, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_6

    :goto_2
    :try_start_3
    sget-object v1, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_5

    :goto_3
    :try_start_4
    sget-object v1, Lcom/android/internal/telephony/Call$State;->DISCONNECTING:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :goto_4
    :try_start_5
    sget-object v1, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_3

    :goto_5
    :try_start_6
    sget-object v1, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_2

    :goto_6
    :try_start_7
    sget-object v1, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_1

    :goto_7
    :try_start_8
    sget-object v1, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_0

    :goto_8
    sput-object v0, Lcom/android/services/telephony/CdmaConnection;->-com-android-internal-telephony-Call$StateSwitchesValues:[I

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

.method static synthetic -wrap0(Lcom/android/services/telephony/CdmaConnection;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/services/telephony/CdmaConnection;->handleBurstDtmfConfirmation()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/services/telephony/CdmaConnection;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/services/telephony/CdmaConnection;->hangupCallWaiting(I)V

    return-void
.end method

.method constructor <init>(Lcom/android/internal/telephony/Connection;Lcom/android/services/telephony/EmergencyTonePlayer;ZZLjava/lang/String;)V
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1, p5}, Lcom/android/services/telephony/TelephonyConnection;-><init>(Lcom/android/internal/telephony/Connection;Ljava/lang/String;)V

    new-instance v3, Lcom/android/services/telephony/CdmaConnection$1;

    invoke-direct {v3, p0}, Lcom/android/services/telephony/CdmaConnection$1;-><init>(Lcom/android/services/telephony/CdmaConnection;)V

    iput-object v3, p0, Lcom/android/services/telephony/CdmaConnection;->mHandler:Landroid/os/Handler;

    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    iput-object v3, p0, Lcom/android/services/telephony/CdmaConnection;->mDtmfQueue:Ljava/util/Queue;

    iput-boolean v2, p0, Lcom/android/services/telephony/CdmaConnection;->mDtmfBurstConfirmationPending:Z

    iput-object p2, p0, Lcom/android/services/telephony/CdmaConnection;->mEmergencyTonePlayer:Lcom/android/services/telephony/EmergencyTonePlayer;

    iput-boolean p3, p0, Lcom/android/services/telephony/CdmaConnection;->mAllowMute:Z

    iput-boolean p4, p0, Lcom/android/services/telephony/CdmaConnection;->mIsOutgoing:Z

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    if-eq v3, v4, :cond_0

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-ne v3, v4, :cond_3

    :cond_0
    :goto_0
    iput-boolean v1, p0, Lcom/android/services/telephony/CdmaConnection;->mIsCallWaiting:Z

    invoke-virtual {p0}, Lcom/android/services/telephony/CdmaConnection;->getOriginalConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v1

    instance-of v0, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    iget-boolean v1, p0, Lcom/android/services/telephony/CdmaConnection;->mIsCallWaiting:Z

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/android/services/telephony/CdmaConnection;->startCallWaitingTimer()V

    :cond_1
    iget-boolean v1, p0, Lcom/android/services/telephony/CdmaConnection;->mIsOutgoing:Z

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/android/services/telephony/cdma/CdmaPhoneCallStateManager;->getInstance()Lcom/android/services/telephony/cdma/CdmaPhoneCallStateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/services/telephony/cdma/CdmaPhoneCallStateManager;->outgoingCall()V

    :cond_2
    return-void

    :cond_3
    move v1, v2

    goto :goto_0
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

    const-string/jumbo v1, "wifi_disable_during_emergency_call_without_vowifi"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/services/telephony/CdmaConnection;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/services/telephony/CdmaConnection;->getAddress()Landroid/net/Uri;

    move-result-object v2

    invoke-static {v1, p1, v2}, Lcom/android/services/telephony/operator/usa/TeleServiceExtension;->disableWifiInEmergencyCall(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Call$State;Landroid/net/Uri;)V

    const-string/jumbo v1, "disableWifiInEmergencyCall - WIFI_DISABLE_DURING_EMERGENCY_CALL_WITHOUT_VOWIFI"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/services/telephony/CdmaConnection;->isDomainPS()Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/services/telephony/CdmaConnection;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/services/telephony/CdmaConnection;->getAddress()Landroid/net/Uri;

    move-result-object v2

    invoke-static {v1, p1, v2}, Lcom/android/services/telephony/operator/usa/TeleServiceExtension;->disableWifiInEmergencyCall(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Call$State;Landroid/net/Uri;)V

    const-string/jumbo v1, "disableWifiInEmergencyCall"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private handleBurstDtmfConfirmation()V
    .locals 7

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/android/services/telephony/CdmaConnection;->mDtmfQueue:Ljava/util/Queue;

    monitor-enter v3

    const/4 v2, 0x0

    :try_start_0
    iput-boolean v2, p0, Lcom/android/services/telephony/CdmaConnection;->mDtmfBurstConfirmationPending:Z

    iget-object v2, p0, Lcom/android/services/telephony/CdmaConnection;->mDtmfQueue:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/services/telephony/CdmaConnection;->mDtmfQueue:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->size()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    :goto_0
    iget-object v2, p0, Lcom/android/services/telephony/CdmaConnection;->mDtmfQueue:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/services/telephony/CdmaConnection;->mDtmfQueue:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    :cond_0
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "%d dtmf character[s] removed from the queue"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {p0, v2, v4}, Lcom/android/services/telephony/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    if-eqz v1, :cond_2

    invoke-direct {p0, v1}, Lcom/android/services/telephony/CdmaConnection;->sendBurstDtmfStringLocked(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    monitor-exit v3

    return-void
.end method

.method private hangupCallWaiting(I)V
    .locals 4

    invoke-virtual {p0}, Lcom/android/services/telephony/CdmaConnection;->getOriginalConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->hangup()V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-static {p1}, Lcom/android/services/telephony/DisconnectCauseUtil;->toTelecomDisconnectCause(I)Landroid/telecom/DisconnectCause;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/services/telephony/CdmaConnection;->setDisconnected(Landroid/telecom/DisconnectCause;)V

    :cond_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v2, "Failed to hangup call waiting call"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p0, v0, v2, v3}, Lcom/android/services/telephony/Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private isEmergency()Z
    .locals 3

    invoke-virtual {p0}, Lcom/android/services/telephony/CdmaConnection;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/services/telephony/CdmaConnection;->getAddress()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/services/telephony/CdmaConnection;->getAddress()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/PhoneNumberUtils;->isLocalEmergencyNumber(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private sendBurstDtmfStringLocked(Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/services/telephony/CdmaConnection;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iget-object v1, p0, Lcom/android/services/telephony/CdmaConnection;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, p1, v3, v3, v1}, Lcom/android/internal/telephony/Phone;->sendBurstDtmf(Ljava/lang/String;IILandroid/os/Message;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/services/telephony/CdmaConnection;->mDtmfBurstConfirmationPending:Z

    return-void
.end method

.method private sendShortDtmfToNetwork(C)V
    .locals 3

    iget-object v1, p0, Lcom/android/services/telephony/CdmaConnection;->mDtmfQueue:Ljava/util/Queue;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/android/services/telephony/CdmaConnection;->mDtmfBurstConfirmationPending:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/services/telephony/CdmaConnection;->mDtmfQueue:Ljava/util/Queue;

    new-instance v2, Ljava/lang/Character;

    invoke-direct {v2, p1}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v1

    return-void

    :cond_0
    :try_start_1
    invoke-static {p1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/services/telephony/CdmaConnection;->sendBurstDtmfStringLocked(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private startCallWaitingTimer()V
    .locals 4

    iget-object v0, p0, Lcom/android/services/telephony/CdmaConnection;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x4e20

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private updateCdmaState()V
    .locals 4

    iget-object v2, p0, Lcom/android/services/telephony/CdmaConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/services/telephony/CdmaConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/services/telephony/CdmaConnection;->disableWifiInEmergencyCall(Lcom/android/internal/telephony/Call$State;)V

    invoke-static {}, Lcom/android/services/telephony/cdma/CdmaPhoneCallStateManager;->getInstance()Lcom/android/services/telephony/cdma/CdmaPhoneCallStateManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/services/telephony/cdma/CdmaPhoneCallStateManager;->isCurrentMergeState()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/android/services/telephony/CdmaConnection;->-getcom-android-internal-telephony-Call$StateSwitchesValues()[I

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    invoke-super {p0}, Lcom/android/services/telephony/TelephonyConnection;->updateState()V

    :cond_1
    :goto_1
    return-void

    :pswitch_0
    iget-object v2, p0, Lcom/android/services/telephony/CdmaConnection;->mCdmaConferenceController:Lcom/android/services/telephony/CdmaConferenceController;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/services/telephony/CdmaConnection;->mCdmaConferenceController:Lcom/android/services/telephony/CdmaConferenceController;

    invoke-virtual {v2}, Lcom/android/services/telephony/CdmaConferenceController;->recalculate()V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/android/services/telephony/cdma/CdmaPhoneCallStateManager;->getInstance()Lcom/android/services/telephony/cdma/CdmaPhoneCallStateManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/services/telephony/cdma/CdmaPhoneCallStateManager;->isCurrentSwapState()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-super {p0}, Lcom/android/services/telephony/TelephonyConnection;->updateState()V

    invoke-static {}, Lcom/android/services/telephony/CdmaConnection;->-getcom-android-internal-telephony-Call$StateSwitchesValues()[I

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_1

    goto :goto_1

    :pswitch_1
    const/16 v0, 0x48

    invoke-virtual {p0}, Lcom/android/services/telephony/CdmaConnection;->getConnectionCapabilities()I

    move-result v2

    or-int/lit8 v2, v2, 0x48

    invoke-virtual {p0, v2}, Lcom/android/services/telephony/CdmaConnection;->setConnectionCapabilities(I)V

    goto :goto_1

    :cond_3
    invoke-super {p0}, Lcom/android/services/telephony/TelephonyConnection;->updateState()V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch
.end method

.method private updateCdmaStateForChina()V
    .locals 6

    iget-object v2, p0, Lcom/android/services/telephony/CdmaConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/services/telephony/CdmaConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    const-string/jumbo v2, "Update cdma state from %s to %s for %s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/services/telephony/CdmaConnection;->mOriginalConnectionState:Lcom/android/internal/telephony/Call$State;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v4, 0x1

    aput-object v1, v3, v4

    const/4 v4, 0x2

    aput-object p0, v3, v4

    invoke-static {p0, v2, v3}, Lcom/android/services/telephony/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/android/services/telephony/cdma/CdmaPhoneCallStateManager;->getInstance()Lcom/android/services/telephony/cdma/CdmaPhoneCallStateManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/services/telephony/cdma/CdmaPhoneCallStateManager;->isCurrentMergeState()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/android/services/telephony/CdmaConnection;->-getcom-android-internal-telephony-Call$StateSwitchesValues()[I

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    invoke-super {p0}, Lcom/android/services/telephony/TelephonyConnection;->updateState()V

    return-void

    :pswitch_0
    iget-object v2, p0, Lcom/android/services/telephony/CdmaConnection;->mCdmaConferenceController:Lcom/android/services/telephony/CdmaConferenceController;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/services/telephony/CdmaConnection;->mCdmaConferenceController:Lcom/android/services/telephony/CdmaConferenceController;

    invoke-virtual {v2}, Lcom/android/services/telephony/CdmaConferenceController;->recalculate()V

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v2, :cond_2

    invoke-virtual {p0}, Lcom/android/services/telephony/CdmaConnection;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    if-ne v2, v3, :cond_2

    invoke-virtual {p0}, Lcom/android/services/telephony/CdmaConnection;->setRinging()V

    return-void

    :cond_2
    invoke-static {}, Lcom/android/services/telephony/cdma/CdmaPhoneCallStateManager;->getInstance()Lcom/android/services/telephony/cdma/CdmaPhoneCallStateManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/services/telephony/cdma/CdmaPhoneCallStateManager;->isCurrentSwapState()Z

    move-result v2

    if-eqz v2, :cond_3

    const/16 v0, 0x48

    invoke-static {}, Lcom/android/services/telephony/CdmaConnection;->-getcom-android-internal-telephony-Call$StateSwitchesValues()[I

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_1

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/android/services/telephony/CdmaConnection;->setActive()V

    invoke-virtual {p0}, Lcom/android/services/telephony/CdmaConnection;->getConnectionCapabilities()I

    move-result v2

    or-int/lit8 v2, v2, 0x48

    invoke-virtual {p0, v2}, Lcom/android/services/telephony/CdmaConnection;->setConnectionCapabilities(I)V

    return-void

    :pswitch_2
    invoke-virtual {p0}, Lcom/android/services/telephony/CdmaConnection;->setActive()V

    invoke-virtual {p0}, Lcom/android/services/telephony/CdmaConnection;->getConnectionCapabilities()I

    move-result v2

    or-int/lit8 v2, v2, 0x48

    invoke-virtual {p0, v2}, Lcom/android/services/telephony/CdmaConnection;->setConnectionCapabilities(I)V

    return-void

    :cond_3
    invoke-static {}, Lcom/android/services/telephony/cdma/CdmaPhoneCallStateManager;->getInstance()Lcom/android/services/telephony/cdma/CdmaPhoneCallStateManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/services/telephony/cdma/CdmaPhoneCallStateManager;->isSingleActive()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-static {}, Lcom/android/services/telephony/cdma/CdmaPhoneCallStateManager;->getInstance()Lcom/android/services/telephony/cdma/CdmaPhoneCallStateManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/services/telephony/cdma/CdmaPhoneCallStateManager;->isThrwayActive()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/services/telephony/cdma/CdmaPhoneCallStateManager;->getInstance()Lcom/android/services/telephony/cdma/CdmaPhoneCallStateManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/services/telephony/cdma/CdmaPhoneCallStateManager;->isCurrentMergeCapableState()Z

    move-result v2

    if-nez v2, :cond_0

    :cond_4
    const/16 v0, 0x40

    invoke-static {}, Lcom/android/services/telephony/CdmaConnection;->-getcom-android-internal-telephony-Call$StateSwitchesValues()[I

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_2

    goto/16 :goto_0

    :pswitch_3
    invoke-virtual {p0}, Lcom/android/services/telephony/CdmaConnection;->setActive()V

    invoke-virtual {p0}, Lcom/android/services/telephony/CdmaConnection;->getConnectionCapabilities()I

    move-result v2

    or-int/lit8 v2, v2, 0x40

    invoke-virtual {p0, v2}, Lcom/android/services/telephony/CdmaConnection;->setConnectionCapabilities(I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x2
        :pswitch_3
    .end packed-switch
.end method

.method private useBurstDtmf()Z
    .locals 4

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/services/telephony/CdmaConnection;->isImsConnection()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "in ims call, return false"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {p0, v2, v3}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/services/telephony/CdmaConnection;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/services/telephony/CdmaConnection;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/services/telephony/CdmaConnection;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "dtmf_tone_type"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    :cond_1
    if-nez v0, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method


# virtual methods
.method protected buildConnectionCapabilities()I
    .locals 2

    invoke-super {p0}, Lcom/android/services/telephony/TelephonyConnection;->buildConnectionCapabilities()I

    move-result v0

    iget-boolean v1, p0, Lcom/android/services/telephony/CdmaConnection;->mAllowMute:Z

    if-eqz v1, :cond_0

    or-int/lit8 v0, v0, 0x40

    :cond_0
    const-string/jumbo v1, "china_cdma_call"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v0, 0x40

    :cond_1
    invoke-static {p0, v0}, Lcom/android/services/utils/SecCapabilitiesBuilder;->build(Lcom/android/services/telephony/TelephonyConnection;I)I

    move-result v0

    return v0
.end method

.method public cloneConnection()Lcom/android/services/telephony/TelephonyConnection;
    .locals 6

    new-instance v0, Lcom/android/services/telephony/CdmaConnection;

    invoke-virtual {p0}, Lcom/android/services/telephony/CdmaConnection;->getOriginalConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v1

    iget-object v2, p0, Lcom/android/services/telephony/CdmaConnection;->mEmergencyTonePlayer:Lcom/android/services/telephony/EmergencyTonePlayer;

    iget-boolean v3, p0, Lcom/android/services/telephony/CdmaConnection;->mAllowMute:Z

    iget-boolean v4, p0, Lcom/android/services/telephony/CdmaConnection;->mIsOutgoing:Z

    invoke-virtual {p0}, Lcom/android/services/telephony/CdmaConnection;->getTelecomCallId()Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/android/services/telephony/CdmaConnection;-><init>(Lcom/android/internal/telephony/Connection;Lcom/android/services/telephony/EmergencyTonePlayer;ZZLjava/lang/String;)V

    return-object v0
.end method

.method forceAsDialing(Z)V
    .locals 1

    if-eqz p1, :cond_0

    sget-object v0, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {p0, v0}, Lcom/android/services/telephony/CdmaConnection;->setStateOverride(Lcom/android/internal/telephony/Call$State;)V

    :goto_0
    invoke-static {}, Lcom/android/services/telephony/cdma/CdmaPhoneCallStateManager;->getInstance()Lcom/android/services/telephony/cdma/CdmaPhoneCallStateManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/services/telephony/cdma/CdmaPhoneCallStateManager;->setThreeWayCallOrigState(Z)V

    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/services/telephony/CdmaConnection;->setForceUpdate(Z)V

    invoke-virtual {p0}, Lcom/android/services/telephony/CdmaConnection;->resetStateOverride()V

    goto :goto_0
.end method

.method protected getOrigDialStringFromNumber(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2

    const/4 v1, 0x0

    if-nez p1, :cond_0

    return-object v1

    :cond_0
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "tel"

    invoke-static {v0, p1, v1}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method protected handleExitedEcmMode()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/services/telephony/CdmaConnection;->mAllowMute:Z

    invoke-super {p0}, Lcom/android/services/telephony/TelephonyConnection;->handleExitedEcmMode()V

    return-void
.end method

.method protected hasMultipleTopLevelCalls()Z
    .locals 1

    const-string/jumbo v0, "feature_cdma_us"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "feature_chn"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    invoke-static {}, Lcom/android/services/telephony/cdma/CdmaPhoneCallStateManager;->getInstance()Lcom/android/services/telephony/cdma/CdmaPhoneCallStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/services/telephony/cdma/CdmaPhoneCallStateManager;->isCurrentSwapState()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/services/telephony/cdma/CdmaPhoneCallStateManager;->getInstance()Lcom/android/services/telephony/cdma/CdmaPhoneCallStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/services/telephony/cdma/CdmaPhoneCallStateManager;->isMergeCallsCapable()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    invoke-super {p0}, Lcom/android/services/telephony/TelephonyConnection;->hasMultipleTopLevelCalls()Z

    move-result v0

    return v0

    :cond_3
    invoke-super {p0}, Lcom/android/services/telephony/TelephonyConnection;->hasMultipleTopLevelCalls()Z

    move-result v0

    return v0
.end method

.method isCallWaiting()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/services/telephony/CdmaConnection;->mIsCallWaiting:Z

    return v0
.end method

.method isOutgoing()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/services/telephony/CdmaConnection;->mIsOutgoing:Z

    return v0
.end method

.method public onAnswer()V
    .locals 2

    invoke-static {}, Lcom/android/services/telephony/cdma/CdmaPhoneCallStateManager;->getInstance()Lcom/android/services/telephony/cdma/CdmaPhoneCallStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/services/telephony/cdma/CdmaPhoneCallStateManager;->answerCall()V

    iget-object v0, p0, Lcom/android/services/telephony/CdmaConnection;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    invoke-super {p0}, Lcom/android/services/telephony/TelephonyConnection;->onAnswer()V

    return-void
.end method

.method onDisconnect(Landroid/os/AsyncResult;)V
    .locals 1

    invoke-static {}, Lcom/android/services/telephony/cdma/CdmaPhoneCallStateManager;->getInstance()Lcom/android/services/telephony/cdma/CdmaPhoneCallStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/services/telephony/cdma/CdmaPhoneCallStateManager;->resetCdmaPhoneCallState()V

    return-void
.end method

.method public onPlayDtmfTone(C)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/services/telephony/CdmaConnection;->useBurstDtmf()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "sending dtmf digit as burst"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/services/telephony/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0, p1}, Lcom/android/services/telephony/CdmaConnection;->sendShortDtmfToNetwork(C)V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "sending dtmf digit directly"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/services/telephony/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/services/telephony/CdmaConnection;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/Phone;->startDtmf(C)V

    goto :goto_0
.end method

.method public onReject()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/services/telephony/CdmaConnection;->getOriginalConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/services/telephony/CdmaConnection;->-getcom-android-internal-telephony-Call$StateSwitchesValues()[I

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    const-string/jumbo v2, "Rejecting a non-ringing call"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p0, v1, v2, v3}, Lcom/android/services/telephony/Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-super {p0}, Lcom/android/services/telephony/TelephonyConnection;->onReject()V

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    invoke-super {p0}, Lcom/android/services/telephony/TelephonyConnection;->onReject()V

    goto :goto_0

    :pswitch_1
    const/16 v1, 0x10

    invoke-direct {p0, v1}, Lcom/android/services/telephony/CdmaConnection;->hangupCallWaiting(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onStateChanged(I)V
    .locals 4

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/services/telephony/CdmaConnection;->getOriginalConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    iput-boolean v1, p0, Lcom/android/services/telephony/CdmaConnection;->mIsCallWaiting:Z

    iget-object v1, p0, Lcom/android/services/telephony/CdmaConnection;->mEmergencyTonePlayer:Lcom/android/services/telephony/EmergencyTonePlayer;

    if-eqz v1, :cond_1

    const/4 v1, 0x3

    if-ne p1, v1, :cond_2

    invoke-direct {p0}, Lcom/android/services/telephony/CdmaConnection;->isEmergency()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/services/telephony/CdmaConnection;->mEmergencyTonePlayer:Lcom/android/services/telephony/EmergencyTonePlayer;

    invoke-virtual {v1}, Lcom/android/services/telephony/EmergencyTonePlayer;->start()V

    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lcom/android/services/telephony/TelephonyConnection;->onStateChanged(I)V

    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/services/telephony/CdmaConnection;->mEmergencyTonePlayer:Lcom/android/services/telephony/EmergencyTonePlayer;

    invoke-virtual {v1}, Lcom/android/services/telephony/EmergencyTonePlayer;->stop()V

    goto :goto_0
.end method

.method public onStopDtmfTone()V
    .locals 1

    invoke-direct {p0}, Lcom/android/services/telephony/CdmaConnection;->useBurstDtmf()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/services/telephony/CdmaConnection;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->stopDtmf()V

    :cond_0
    return-void
.end method

.method public performConference(Lcom/android/services/telephony/TelephonyConnection;)V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/services/telephony/CdmaConnection;->isImsConnection()Z

    move-result v1

    if-eqz v1, :cond_1

    :goto_0
    const-string/jumbo v1, "performConference - %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v3

    invoke-static {p0, v1, v2}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/services/telephony/CdmaConnection;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-static {}, Lcom/android/services/telephony/cdma/CdmaPhoneCallStateManager;->getInstance()Lcom/android/services/telephony/cdma/CdmaPhoneCallStateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/services/telephony/cdma/CdmaPhoneCallStateManager;->mergeCalls()V

    invoke-virtual {p0}, Lcom/android/services/telephony/CdmaConnection;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->conference()V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    return-void

    :cond_1
    const-string/jumbo v1, "Non-IMS CDMA Connection attempted to call performConference."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/android/services/telephony/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "Failed to conference call."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p0, v0, v1, v2}, Lcom/android/services/telephony/Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public performHold()V
    .locals 5

    const/4 v4, 0x0

    const-string/jumbo v1, "performHold"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/android/services/telephony/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/services/telephony/CdmaConnection;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-static {}, Lcom/android/services/telephony/cdma/CdmaPhoneCallStateManager;->getInstance()Lcom/android/services/telephony/cdma/CdmaPhoneCallStateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/services/telephony/cdma/CdmaPhoneCallStateManager;->isMergeCallsCapable()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/android/services/telephony/CdmaConnection;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->switchHoldingAndActive()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v1, "Skipping performHold command for %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-static {p0, v1, v2}, Lcom/android/services/telephony/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "Failed to hold call."

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {p0, v0, v1, v2}, Lcom/android/services/telephony/Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public setCdmaConferenceController(Lcom/android/services/telephony/CdmaConferenceController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/services/telephony/CdmaConnection;->mCdmaConferenceController:Lcom/android/services/telephony/CdmaConferenceController;

    return-void
.end method

.method updateState()V
    .locals 1

    const-string/jumbo v0, "china_cdma_call"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/services/telephony/CdmaConnection;->updateCdmaStateForChina()V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/services/telephony/CdmaConnection;->updateCdmaState()V

    goto :goto_0
.end method
