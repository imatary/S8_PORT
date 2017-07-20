.class final Lcom/android/services/telephony/PstnIncomingCallNotifier;
.super Ljava/lang/Object;
.source "PstnIncomingCallNotifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/services/telephony/PstnIncomingCallNotifier$1;
    }
.end annotation


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private final mPhone:Lcom/android/internal/telephony/Phone;


# direct methods
.method static synthetic -wrap0(Lcom/android/services/telephony/PstnIncomingCallNotifier;Landroid/os/AsyncResult;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/services/telephony/PstnIncomingCallNotifier;->handleCdmaCallWaiting(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/services/telephony/PstnIncomingCallNotifier;Landroid/os/AsyncResult;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/services/telephony/PstnIncomingCallNotifier;->handleNewRingingConnection(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/services/telephony/PstnIncomingCallNotifier;Landroid/os/AsyncResult;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/services/telephony/PstnIncomingCallNotifier;->handleNewUnknownConnection(Landroid/os/AsyncResult;)V

    return-void
.end method

.method constructor <init>(Lcom/android/internal/telephony/Phone;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/services/telephony/PstnIncomingCallNotifier$1;

    invoke-direct {v0, p0}, Lcom/android/services/telephony/PstnIncomingCallNotifier$1;-><init>(Lcom/android/services/telephony/PstnIncomingCallNotifier;)V

    iput-object v0, p0, Lcom/android/services/telephony/PstnIncomingCallNotifier;->mHandler:Landroid/os/Handler;

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/services/telephony/PstnIncomingCallNotifier;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-direct {p0}, Lcom/android/services/telephony/PstnIncomingCallNotifier;->registerForNotifications()V

    return-void
.end method

.method private addNewUnknownCall(Lcom/android/internal/telephony/Connection;)V
    .locals 10

    const/4 v9, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x1

    const-string/jumbo v5, "addNewUnknownCall, connection is: %s"

    new-array v6, v7, [Ljava/lang/Object;

    aput-object p1, v6, v8

    invoke-static {p0, v5, v6}, Lcom/android/services/telephony/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0, p1}, Lcom/android/services/telephony/PstnIncomingCallNotifier;->maybeSwapAnyWithUnknownConnection(Lcom/android/internal/telephony/Connection;)Z

    move-result v5

    if-nez v5, :cond_5

    const-string/jumbo v5, "determined new connection is: %s"

    new-array v6, v7, [Ljava/lang/Object;

    aput-object p1, v6, v8

    invoke-static {p0, v5, v6}, Lcom/android/services/telephony/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v5

    if-ne v5, v7, :cond_0

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_0
    :goto_0
    instance-of v5, p1, Lcom/android/internal/telephony/imsphone/ImsExternalConnection;

    if-eqz v5, :cond_1

    move-object v1, p1

    check-cast v1, Lcom/android/internal/telephony/imsphone/ImsExternalConnection;

    const-string/jumbo v5, "android.telephony.ImsExternalCallTracker.extra.EXTERNAL_CALL_ID"

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsExternalConnection;->getCallId()I

    move-result v6

    invoke-virtual {v2, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_1
    const-string/jumbo v5, "android.telecom.extra.CALL_CREATED_TIME_MILLIS"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    invoke-virtual {v2, v5, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string/jumbo v5, "otasp_in_call_disable"

    invoke-static {v5}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {p1}, Lcom/android/services/telephony/operator/usa/TeleServiceExtension;->otaspInCall(Lcom/android/internal/telephony/Connection;)Z

    move-result v5

    if-eqz v5, :cond_3

    return-void

    :cond_2
    const-string/jumbo v5, "tel"

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v9}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const-string/jumbo v5, "android.telecom.extra.UNKNOWN_CALL_HANDLE"

    invoke-virtual {v2, v5, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/android/services/telephony/PstnIncomingCallNotifier;->findCorrectPhoneAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v3

    if-nez v3, :cond_4

    :try_start_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->hangup()V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_4
    iget-object v5, p0, Lcom/android/services/telephony/PstnIncomingCallNotifier;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/telecom/TelecomManager;->from(Landroid/content/Context;)Landroid/telecom/TelecomManager;

    move-result-object v5

    invoke-virtual {v5, v3, v2}, Landroid/telecom/TelecomManager;->addNewUnknownCall(Landroid/telecom/PhoneAccountHandle;Landroid/os/Bundle;)V

    goto :goto_1

    :cond_5
    const-string/jumbo v5, "swapped an old connection, new one is: %s"

    new-array v6, v7, [Ljava/lang/Object;

    aput-object p1, v6, v8

    invoke-static {p0, v5, v6}, Lcom/android/services/telephony/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private checkMCID(Lcom/android/internal/telephony/Connection;Landroid/os/Bundle;)V
    .locals 3

    const/4 v1, 0x0

    invoke-static {p2}, Lcom/android/services/telephony/common/SecCallExtra;->getSecCallExtra(Landroid/os/Bundle;)Lcom/android/services/telephony/common/SecCallExtra;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/services/telephony/common/SecCallExtra;->getType()I

    move-result v1

    :cond_0
    if-nez v1, :cond_1

    invoke-static {}, Lcom/android/phone/photoring/PhotoRingMgr;->getInstance()Lcom/android/phone/photoring/PhotoRingMgr;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/phone/photoring/PhotoRingMgr;->checkMCID(Lcom/android/internal/telephony/Connection;)V

    :cond_1
    return-void
.end method

.method private findCorrectPhoneAccountHandle()Landroid/telecom/PhoneAccountHandle;
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x0

    invoke-static {v7}, Lcom/android/services/telephony/TelecomAccountRegistry;->getInstance(Landroid/content/Context;)Lcom/android/services/telephony/TelecomAccountRegistry;

    move-result-object v2

    iget-object v3, p0, Lcom/android/services/telephony/PstnIncomingCallNotifier;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->makePstnPhoneAccountHandle(Lcom/android/internal/telephony/Phone;)Landroid/telecom/PhoneAccountHandle;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/android/services/telephony/TelecomAccountRegistry;->hasAccountEntryForPhoneAccount(Landroid/telecom/PhoneAccountHandle;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v1

    :cond_0
    iget-object v3, p0, Lcom/android/services/telephony/PstnIncomingCallNotifier;->mPhone:Lcom/android/internal/telephony/Phone;

    const-string/jumbo v4, ""

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Lcom/android/phone/PhoneUtils;->makePstnPhoneAccountHandleWithPrefix(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Z)Landroid/telecom/PhoneAccountHandle;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/android/services/telephony/TelecomAccountRegistry;->hasAccountEntryForPhoneAccount(Landroid/telecom/PhoneAccountHandle;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string/jumbo v3, "Receiving MT call in ECM. Using Emergency PhoneAccount Instead."

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {p0, v3, v4}, Lcom/android/services/telephony/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    :cond_1
    const-string/jumbo v3, "PhoneAccount not found."

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {p0, v3, v4}, Lcom/android/services/telephony/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v7
.end method

.method private handleCdmaCallWaiting(Landroid/os/AsyncResult;)V
    .locals 6

    const-string/jumbo v4, "cdma call waiting"

    const v5, 0x1129c

    invoke-static {v5, v4}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    const-string/jumbo v4, "handleCdmaCallWaiting"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {p0, v4, v5}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;

    iget-object v4, p0, Lcom/android/services/telephony/PstnIncomingCallNotifier;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    if-ne v4, v5, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v4, v1, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;->number:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-direct {p0, v2}, Lcom/android/services/telephony/PstnIncomingCallNotifier;->sendIncomingCallIntent(Lcom/android/internal/telephony/Connection;)V

    :cond_0
    return-void
.end method

.method private handleNewRingingConnection(Landroid/os/AsyncResult;)V
    .locals 4

    const-string/jumbo v2, "new ringing connection"

    const v3, 0x1129c

    invoke-static {v3, v2}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    const-string/jumbo v2, "handleNewRingingConnection"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p0, v2, v3}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/Connection;

    invoke-direct {p0, v1}, Lcom/android/services/telephony/PstnIncomingCallNotifier;->setCallFilterType(Lcom/android/internal/telephony/Connection;)V

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call$State;->isRinging()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/phone/PhoneUtils;->hideMmiDialog()V

    invoke-direct {p0, v1}, Lcom/android/services/telephony/PstnIncomingCallNotifier;->sendIncomingCallIntent(Lcom/android/internal/telephony/Connection;)V

    :cond_0
    invoke-static {v0}, Lcom/android/services/telephony/TelephonyConnectionUtils;->ttyNotification(Lcom/android/internal/telephony/Call;)Z

    :cond_1
    return-void
.end method

.method private handleNewUnknownConnection(Landroid/os/AsyncResult;)V
    .locals 6

    const/4 v5, 0x0

    const-string/jumbo v3, "new unknown connection"

    const v4, 0x1129c

    invoke-static {v4, v3}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    const-string/jumbo v3, "handleNewUnknownConnection"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {p0, v3, v4}, Lcom/android/services/telephony/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v3, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    instance-of v3, v3, Lcom/android/internal/telephony/Connection;

    if-nez v3, :cond_0

    const-string/jumbo v3, "handleNewUnknownConnection called with non-Connection object"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {p0, v3, v4}, Lcom/android/services/telephony/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/Connection;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    if-eq v2, v3, :cond_1

    sget-object v3, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-ne v2, v3, :cond_2

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Skipping new unknown connection because it is idle. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {p0, v3, v4}, Lcom/android/services/telephony/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_2
    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-direct {p0, v1}, Lcom/android/services/telephony/PstnIncomingCallNotifier;->addNewUnknownCall(Lcom/android/internal/telephony/Connection;)V

    :cond_3
    return-void
.end method

.method private maybeSwapAnyWithUnknownConnection(Lcom/android/internal/telephony/Connection;)Z
    .locals 6

    const/4 v5, 0x0

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static {v5}, Lcom/android/services/telephony/TelecomAccountRegistry;->getInstance(Landroid/content/Context;)Lcom/android/services/telephony/TelecomAccountRegistry;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/services/telephony/TelecomAccountRegistry;->getTelephonyConnectionService()Lcom/android/services/telephony/TelephonyConnectionService;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/services/telephony/TelephonyConnectionService;->getAllConnections()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/Connection;

    instance-of v4, v2, Lcom/android/services/telephony/TelephonyConnection;

    if-eqz v4, :cond_0

    check-cast v2, Lcom/android/services/telephony/TelephonyConnection;

    invoke-direct {p0, v2, p1}, Lcom/android/services/telephony/PstnIncomingCallNotifier;->maybeSwapWithUnknownConnection(Lcom/android/services/telephony/TelephonyConnection;Lcom/android/internal/telephony/Connection;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    return v4

    :cond_1
    const/4 v4, 0x0

    return v4
.end method

.method private maybeSwapWithUnknownConnection(Lcom/android/services/telephony/TelephonyConnection;Lcom/android/internal/telephony/Connection;)Z
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/android/services/telephony/TelephonyConnection;->getOriginalConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    return v3

    :cond_1
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    instance-of v1, p2, Lcom/android/internal/telephony/imsphone/ImsExternalConnection;

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/android/services/telephony/TelephonyConnection;->getOriginalConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v1

    instance-of v1, v1, Lcom/android/internal/telephony/imsphone/ImsExternalConnection;

    if-eqz v1, :cond_3

    :cond_2
    invoke-virtual {p1, p2}, Lcom/android/services/telephony/TelephonyConnection;->setOriginalConnection(Lcom/android/internal/telephony/Connection;)V

    const/4 v1, 0x1

    return v1

    :cond_3
    const-string/jumbo v1, "maybeSwapWithUnknownConnection - not swapping regular connection with external connection."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/android/services/telephony/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    return v3
.end method

.method private registerForNotifications()V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/android/services/telephony/PstnIncomingCallNotifier;->mPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "Registering: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/services/telephony/PstnIncomingCallNotifier;->mPhone:Lcom/android/internal/telephony/Phone;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p0, v0, v1}, Lcom/android/services/telephony/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/services/telephony/PstnIncomingCallNotifier;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/services/telephony/PstnIncomingCallNotifier;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v4}, Lcom/android/internal/telephony/Phone;->registerForNewRingingConnection(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/services/telephony/PstnIncomingCallNotifier;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/services/telephony/PstnIncomingCallNotifier;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x65

    invoke-virtual {v0, v1, v2, v4}, Lcom/android/internal/telephony/Phone;->registerForCallWaiting(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/services/telephony/PstnIncomingCallNotifier;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/services/telephony/PstnIncomingCallNotifier;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x66

    invoke-virtual {v0, v1, v2, v4}, Lcom/android/internal/telephony/Phone;->registerForUnknownConnection(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/services/telephony/PstnIncomingCallNotifier;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/services/telephony/PstnIncomingCallNotifier;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v4}, Lcom/android/internal/telephony/Phone;->registerForSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private sendIncomingCallIntent(Lcom/android/internal/telephony/Connection;)V
    .locals 8

    const/4 v6, 0x0

    iget-object v4, p0, Lcom/android/services/telephony/PstnIncomingCallNotifier;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, p1}, Lcom/android/services/telephony/TelephonyConnectionUtils;->makeIncomingSecCallExtra(Landroid/content/Context;Lcom/android/internal/telephony/Connection;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    :goto_0
    const-string/jumbo v4, "android.telecom.extra.CALL_CREATED_TIME_MILLIS"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    invoke-virtual {v1, v4, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    invoke-direct {p0, p1, v1}, Lcom/android/services/telephony/PstnIncomingCallNotifier;->checkMCID(Lcom/android/internal/telephony/Connection;Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/android/services/telephony/PstnIncomingCallNotifier;->findCorrectPhoneAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v2

    if-nez v2, :cond_2

    :try_start_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->hangup()V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :cond_1
    const-string/jumbo v4, "tel"

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v6}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const-string/jumbo v4, "android.telecom.extra.INCOMING_CALL_ADDRESS"

    invoke-virtual {v1, v4, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_2
    iget-object v4, p0, Lcom/android/services/telephony/PstnIncomingCallNotifier;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/telecom/TelecomManager;->from(Landroid/content/Context;)Landroid/telecom/TelecomManager;

    move-result-object v4

    invoke-virtual {v4, v2, v1}, Landroid/telecom/TelecomManager;->addNewIncomingCall(Landroid/telecom/PhoneAccountHandle;Landroid/os/Bundle;)V

    goto :goto_1
.end method

.method private setCallFilterType(Lcom/android/internal/telephony/Connection;)V
    .locals 2

    const-string/jumbo v1, "support_tphone"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/phone/TeleServiceSystemDB;->isTPhoneEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-static {}, Lcom/android/phone/TPhoneManager;->getInstance()Lcom/android/phone/TPhoneManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/phone/TPhoneManager;->setCallFilterType(Lcom/android/internal/telephony/Connection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private unregisterForNotifications()V
    .locals 4

    iget-object v0, p0, Lcom/android/services/telephony/PstnIncomingCallNotifier;->mPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "Unregistering: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/services/telephony/PstnIncomingCallNotifier;->mPhone:Lcom/android/internal/telephony/Phone;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p0, v0, v1}, Lcom/android/services/telephony/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/services/telephony/PstnIncomingCallNotifier;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/services/telephony/PstnIncomingCallNotifier;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/Phone;->unregisterForNewRingingConnection(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/android/services/telephony/PstnIncomingCallNotifier;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/services/telephony/PstnIncomingCallNotifier;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/Phone;->unregisterForCallWaiting(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/android/services/telephony/PstnIncomingCallNotifier;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/services/telephony/PstnIncomingCallNotifier;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/Phone;->unregisterForUnknownConnection(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/android/services/telephony/PstnIncomingCallNotifier;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/services/telephony/PstnIncomingCallNotifier;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/Phone;->unregisterForSuppServiceNotification(Landroid/os/Handler;)V

    :cond_0
    return-void
.end method


# virtual methods
.method teardown()V
    .locals 0

    invoke-direct {p0}, Lcom/android/services/telephony/PstnIncomingCallNotifier;->unregisterForNotifications()V

    return-void
.end method
