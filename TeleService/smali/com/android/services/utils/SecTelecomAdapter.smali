.class public Lcom/android/services/utils/SecTelecomAdapter;
.super Ljava/lang/Object;
.source "SecTelecomAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/services/utils/SecTelecomAdapter$1;
    }
.end annotation


# static fields
.field private static final synthetic -com-android-internal-telephony-Connection$PostDialStateSwitchesValues:[I

.field private static sInstance:Lcom/android/services/utils/SecTelecomAdapter;


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private mSecConnectionServiceAdapter:Lcom/android/services/telephony/common/ISecConnectionServiceAdapter;


# direct methods
.method private static synthetic -getcom-android-internal-telephony-Connection$PostDialStateSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/android/services/utils/SecTelecomAdapter;->-com-android-internal-telephony-Connection$PostDialStateSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/services/utils/SecTelecomAdapter;->-com-android-internal-telephony-Connection$PostDialStateSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/Connection$PostDialState;->values()[Lcom/android/internal/telephony/Connection$PostDialState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->CANCELLED:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection$PostDialState;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_6

    :goto_0
    :try_start_1
    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->COMPLETE:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection$PostDialState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_5

    :goto_1
    :try_start_2
    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->NOT_STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection$PostDialState;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_4

    :goto_2
    :try_start_3
    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->PAUSE:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection$PostDialState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :goto_3
    :try_start_4
    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection$PostDialState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_2

    :goto_4
    :try_start_5
    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->WAIT:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection$PostDialState;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_1

    :goto_5
    :try_start_6
    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->WILD:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection$PostDialState;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_0

    :goto_6
    sput-object v0, Lcom/android/services/utils/SecTelecomAdapter;->-com-android-internal-telephony-Connection$PostDialStateSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_6

    :catch_1
    move-exception v1

    goto :goto_5

    :catch_2
    move-exception v1

    goto :goto_4

    :catch_3
    move-exception v1

    goto :goto_3

    :catch_4
    move-exception v1

    goto :goto_2

    :catch_5
    move-exception v1

    goto :goto_1

    :catch_6
    move-exception v1

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/services/utils/SecTelecomAdapter;->mSecConnectionServiceAdapter:Lcom/android/services/telephony/common/ISecConnectionServiceAdapter;

    new-instance v0, Lcom/android/services/utils/SecTelecomAdapter$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/services/utils/SecTelecomAdapter$1;-><init>(Lcom/android/services/utils/SecTelecomAdapter;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/services/utils/SecTelecomAdapter;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public static getInstance()Lcom/android/services/utils/SecTelecomAdapter;
    .locals 1

    sget-object v0, Lcom/android/services/utils/SecTelecomAdapter;->sInstance:Lcom/android/services/utils/SecTelecomAdapter;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/services/utils/SecTelecomAdapter;

    invoke-direct {v0}, Lcom/android/services/utils/SecTelecomAdapter;-><init>()V

    sput-object v0, Lcom/android/services/utils/SecTelecomAdapter;->sInstance:Lcom/android/services/utils/SecTelecomAdapter;

    :cond_0
    sget-object v0, Lcom/android/services/utils/SecTelecomAdapter;->sInstance:Lcom/android/services/utils/SecTelecomAdapter;

    return-object v0
.end method

.method private sendUpdateEvent(Ljava/lang/String;Z)V
    .locals 3

    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/services/utils/SecTelecomAdapter;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method


# virtual methods
.method public acceptCall()V
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/services/utils/SecTelecomAdapter;->mSecConnectionServiceAdapter:Lcom/android/services/telephony/common/ISecConnectionServiceAdapter;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/services/utils/SecTelecomAdapter;->mSecConnectionServiceAdapter:Lcom/android/services/telephony/common/ISecConnectionServiceAdapter;

    invoke-interface {v1}, Lcom/android/services/telephony/common/ISecConnectionServiceAdapter;->acceptCall()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "Failed to acceptCall"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1, v2}, Lcom/android/services/telephony/Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string/jumbo v1, "Failed to acceptCall : mSecConnectionServiceAdapter is null"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/android/services/telephony/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->answerCall(Lcom/android/internal/telephony/Call;)Z

    goto :goto_0
.end method

.method public answerRingingCallInUI()V
    .locals 2

    iget-object v1, p0, Lcom/android/services/utils/SecTelecomAdapter;->mSecConnectionServiceAdapter:Lcom/android/services/telephony/common/ISecConnectionServiceAdapter;

    if-nez v1, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/services/utils/SecTelecomAdapter;->mSecConnectionServiceAdapter:Lcom/android/services/telephony/common/ISecConnectionServiceAdapter;

    invoke-interface {v1}, Lcom/android/services/telephony/common/ISecConnectionServiceAdapter;->answerRingingCallInUI()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public clearSecConnectionServiceAdapter()V
    .locals 3

    const/4 v2, 0x5

    const/4 v1, 0x3

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/services/utils/SecTelecomAdapter;->mSecConnectionServiceAdapter:Lcom/android/services/telephony/common/ISecConnectionServiceAdapter;

    iget-object v0, p0, Lcom/android/services/utils/SecTelecomAdapter;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/services/utils/SecTelecomAdapter;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/services/utils/SecTelecomAdapter;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/services/utils/SecTelecomAdapter;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    return-void
.end method

.method public emergencyCallWithMessage(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4

    const/4 v3, 0x0

    const-string/jumbo v1, "emergencyCallWithMessage"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/android/services/telephony/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/services/utils/SecTelecomAdapter;->mSecConnectionServiceAdapter:Lcom/android/services/telephony/common/ISecConnectionServiceAdapter;

    if-eqz v1, :cond_0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "emergencyCallWithMessage, textMessage : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/android/services/telephony/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/services/utils/SecTelecomAdapter;->mSecConnectionServiceAdapter:Lcom/android/services/telephony/common/ISecConnectionServiceAdapter;

    invoke-interface {v1, p1, p2, p3}, Lcom/android/services/telephony/common/ISecConnectionServiceAdapter;->emergencyCallWithMessage(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "Failed to emergencyCallWithMessage"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p0, v0, v1, v2}, Lcom/android/services/telephony/Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string/jumbo v1, "Failed to emergencyCallWithMessage : mSecConnectionServiceAdapter is null"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/android/services/telephony/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public getMute()Z
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/services/utils/SecTelecomAdapter;->mSecConnectionServiceAdapter:Lcom/android/services/telephony/common/ISecConnectionServiceAdapter;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/services/utils/SecTelecomAdapter;->mSecConnectionServiceAdapter:Lcom/android/services/telephony/common/ISecConnectionServiceAdapter;

    invoke-interface {v1}, Lcom/android/services/telephony/common/ISecConnectionServiceAdapter;->getMute()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    return v2

    :cond_0
    return v2
.end method

.method public getNameFromFDN(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string/jumbo v0, "getNameFromFDN"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/services/telephony/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p1}, Lcom/android/services/utils/SecTelephonyUtil;->getNameFromFDN(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNameFromSDN(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string/jumbo v0, "getNameFromSDN"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/services/telephony/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p1}, Lcom/android/services/utils/SecTelephonyUtil;->getNameFromSDN(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getParticipantsCount()I
    .locals 4

    const/4 v3, 0x0

    const-string/jumbo v1, "ims_voice_conference"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    return v3

    :cond_0
    const-string/jumbo v1, "getParticipantsCount"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/android/services/telephony/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/android/phone/ims/IMSConferenceCallMgr;->getInstance()Lcom/android/phone/ims/IMSConferenceCallMgr;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/phone/ims/IMSConferenceCallMgr;->getParticipantsCount()I

    move-result v1

    return v1

    :cond_1
    return v3
.end method

.method public getSecCallExtra(Ljava/lang/String;)Lcom/android/services/telephony/common/SecCallExtra;
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/android/services/utils/SecTelecomAdapter;->mSecConnectionServiceAdapter:Lcom/android/services/telephony/common/ISecConnectionServiceAdapter;

    if-nez v2, :cond_0

    const-string/jumbo v2, "SecTelecomAdapter"

    const-string/jumbo v3, "getSecCallExtra() - mSecConnectionServiceAdapter = null"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/android/services/telephony/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v5

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/services/utils/SecTelecomAdapter;->mSecConnectionServiceAdapter:Lcom/android/services/telephony/common/ISecConnectionServiceAdapter;

    invoke-interface {v2, p1}, Lcom/android/services/telephony/common/ISecConnectionServiceAdapter;->getSecCallExtra(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    if-nez v1, :cond_1

    const-string/jumbo v2, "SecTelecomAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getSecCallExtra() - map = null, callId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/android/services/telephony/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v5

    :cond_1
    new-instance v2, Lcom/android/services/telephony/common/SecCallExtra;

    invoke-direct {v2, v1}, Lcom/android/services/telephony/common/SecCallExtra;-><init>(Ljava/util/HashMap;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception v0

    return-object v5
.end method

.method public handleCallSessionMessage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    iget-object v1, p0, Lcom/android/services/utils/SecTelecomAdapter;->mSecConnectionServiceAdapter:Lcom/android/services/telephony/common/ISecConnectionServiceAdapter;

    if-nez v1, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/services/utils/SecTelecomAdapter;->mSecConnectionServiceAdapter:Lcom/android/services/telephony/common/ISecConnectionServiceAdapter;

    invoke-interface {v1, p1, p2}, Lcom/android/services/telephony/common/ISecConnectionServiceAdapter;->handleCallSessionMessage(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "Failed to handleCallSessionMessage"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1, v2}, Lcom/android/services/telephony/Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public hangupBgCall()V
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/services/utils/SecTelecomAdapter;->mSecConnectionServiceAdapter:Lcom/android/services/telephony/common/ISecConnectionServiceAdapter;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/services/utils/SecTelecomAdapter;->mSecConnectionServiceAdapter:Lcom/android/services/telephony/common/ISecConnectionServiceAdapter;

    invoke-interface {v1}, Lcom/android/services/telephony/common/ISecConnectionServiceAdapter;->hangupBgCall()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "Failed to hangupBgCall"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1, v2}, Lcom/android/services/telephony/Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string/jumbo v1, "Failed to hangupBgCall : mSecConnectionServiceAdapter is null"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/android/services/telephony/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/Call;)Z

    goto :goto_0
.end method

.method public hangupFgCall()V
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/services/utils/SecTelecomAdapter;->mSecConnectionServiceAdapter:Lcom/android/services/telephony/common/ISecConnectionServiceAdapter;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/services/utils/SecTelecomAdapter;->mSecConnectionServiceAdapter:Lcom/android/services/telephony/common/ISecConnectionServiceAdapter;

    invoke-interface {v1}, Lcom/android/services/telephony/common/ISecConnectionServiceAdapter;->hangupFgCall()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "Failed to hangupFgCall"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1, v2}, Lcom/android/services/telephony/Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string/jumbo v1, "Failed to hangupFgCall : mSecConnectionServiceAdapter is null"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/android/services/telephony/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/Call;)Z

    goto :goto_0
.end method

.method public holdCalls(Z)V
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/services/utils/SecTelecomAdapter;->mSecConnectionServiceAdapter:Lcom/android/services/telephony/common/ISecConnectionServiceAdapter;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/services/utils/SecTelecomAdapter;->mSecConnectionServiceAdapter:Lcom/android/services/telephony/common/ISecConnectionServiceAdapter;

    invoke-interface {v1, p1}, Lcom/android/services/telephony/common/ISecConnectionServiceAdapter;->holdCalls(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "Failed to holdCalls"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1, v2}, Lcom/android/services/telephony/Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string/jumbo v1, "Failed to holdCalls : mSecConnectionServiceAdapter is null"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/android/services/telephony/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public isLowBatt()Z
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/services/utils/SecTelecomAdapter;->mSecConnectionServiceAdapter:Lcom/android/services/telephony/common/ISecConnectionServiceAdapter;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/services/utils/SecTelecomAdapter;->mSecConnectionServiceAdapter:Lcom/android/services/telephony/common/ISecConnectionServiceAdapter;

    invoke-interface {v1}, Lcom/android/services/telephony/common/ISecConnectionServiceAdapter;->isLowBatt()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "Failed to isLowBatt"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p0, v0, v1, v2}, Lcom/android/services/telephony/Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return v3

    :cond_0
    const-string/jumbo v1, "Failed to isLowBatt : mSecConnectionServiceAdapter is null"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/android/services/telephony/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    return v3
.end method

.method public isSpeakerOn()Z
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/services/utils/SecTelecomAdapter;->mSecConnectionServiceAdapter:Lcom/android/services/telephony/common/ISecConnectionServiceAdapter;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/services/utils/SecTelecomAdapter;->mSecConnectionServiceAdapter:Lcom/android/services/telephony/common/ISecConnectionServiceAdapter;

    invoke-interface {v1}, Lcom/android/services/telephony/common/ISecConnectionServiceAdapter;->isSpeakerOn()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    return v2

    :cond_0
    return v2
.end method

.method public onLineCtrlEvent(Lcom/android/services/telephony/TelephonyConnection;Lcom/android/services/telephony/common/SecCallExtra;)V
    .locals 4

    iget-object v1, p0, Lcom/android/services/utils/SecTelecomAdapter;->mSecConnectionServiceAdapter:Lcom/android/services/telephony/common/ISecConnectionServiceAdapter;

    if-nez v1, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/services/utils/SecTelecomAdapter;->mSecConnectionServiceAdapter:Lcom/android/services/telephony/common/ISecConnectionServiceAdapter;

    invoke-virtual {p1}, Lcom/android/services/telephony/TelephonyConnection;->getCallId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/android/services/telephony/common/SecCallExtra;->getMap()Ljava/util/HashMap;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/android/services/telephony/common/ISecConnectionServiceAdapter;->onLineCtrlEvent(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onPostDialAction(Lcom/android/internal/telephony/Connection$PostDialState;Ljava/lang/String;CZ)V
    .locals 3

    iget-object v1, p0, Lcom/android/services/utils/SecTelecomAdapter;->mSecConnectionServiceAdapter:Lcom/android/services/telephony/common/ISecConnectionServiceAdapter;

    if-nez v1, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/android/services/utils/SecTelecomAdapter;->-getcom-android-internal-telephony-Connection$PostDialStateSwitchesValues()[I

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection$PostDialState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/android/services/utils/SecTelecomAdapter;->mSecConnectionServiceAdapter:Lcom/android/services/telephony/common/ISecConnectionServiceAdapter;

    invoke-interface {v1, p2, p3, p4}, Lcom/android/services/telephony/common/ISecConnectionServiceAdapter;->onPostDialPause(Ljava/lang/String;CZ)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/android/services/utils/SecTelecomAdapter;->mSecConnectionServiceAdapter:Lcom/android/services/telephony/common/ISecConnectionServiceAdapter;

    invoke-interface {v1, p2, p3}, Lcom/android/services/telephony/common/ISecConnectionServiceAdapter;->onPostDialPauseComplete(Ljava/lang/String;C)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public rejectCall()V
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/services/utils/SecTelecomAdapter;->mSecConnectionServiceAdapter:Lcom/android/services/telephony/common/ISecConnectionServiceAdapter;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/services/utils/SecTelecomAdapter;->mSecConnectionServiceAdapter:Lcom/android/services/telephony/common/ISecConnectionServiceAdapter;

    invoke-interface {v1}, Lcom/android/services/telephony/common/ISecConnectionServiceAdapter;->rejectCall()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "Failed to rejectCall"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1, v2}, Lcom/android/services/telephony/Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string/jumbo v1, "Failed to rejectCall : mSecConnectionServiceAdapter is null"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/android/services/telephony/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/Call;)Z

    goto :goto_0
.end method

.method public requestJanskyTransfer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const/4 v6, 0x0

    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    iput-object p3, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    invoke-static {p1}, Lcom/android/services/telephony/TelephonyConnectionUtils;->getTelephonyConnection(Ljava/lang/String;)Lcom/android/services/telephony/TelephonyConnection;

    move-result-object v1

    iget-object v4, p0, Lcom/android/services/utils/SecTelecomAdapter;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/services/telephony/TelephonyConnection;->getOriginalConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v3

    invoke-virtual {v3, v2, p2, p3}, Lcom/android/internal/telephony/Connection;->transferCall(Landroid/os/Message;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "SecTelecomAdapter"

    const-string/jumbo v5, "transferCall"

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/android/services/telephony/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v1}, Lcom/android/phone/utils/SoftPhoneUtils;->makeDialog(Lcom/android/services/telephony/TelephonyConnection;)V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v4, "SecTelecomAdapter"

    const-string/jumbo v5, "conn = null"

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/android/services/telephony/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public requestOfSecVideoProvider(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Lcom/android/services/telephony/TelephonyConnectionUtils;->getTelephonyConnection(Ljava/lang/String;)Lcom/android/services/telephony/TelephonyConnection;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Lcom/android/services/telephony/TelephonyConnection;->requestOfSecVideoProvider(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public requestRingtoneUri()Ljava/lang/String;
    .locals 2

    const-string/jumbo v0, "requestRingtoneUri"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/services/telephony/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/android/phone/TPhoneManager;->getInstance()Lcom/android/phone/TPhoneManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/TPhoneManager;->getRingtoneUri()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public requestTPhoneStart(I)V
    .locals 2

    const-string/jumbo v0, "requestTPhoneStart"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/services/telephony/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/android/phone/TPhoneManager;->getInstance()Lcom/android/phone/TPhoneManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/phone/TPhoneManager;->displayTPhone(I)V

    return-void
.end method

.method public restartRingingOrCallWaiting()V
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/services/utils/SecTelecomAdapter;->mSecConnectionServiceAdapter:Lcom/android/services/telephony/common/ISecConnectionServiceAdapter;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/services/utils/SecTelecomAdapter;->mSecConnectionServiceAdapter:Lcom/android/services/telephony/common/ISecConnectionServiceAdapter;

    invoke-interface {v1}, Lcom/android/services/telephony/common/ISecConnectionServiceAdapter;->restartRingingOrCallWaiting()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "Failed to restartRingingOrCallWaiting"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1, v2}, Lcom/android/services/telephony/Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string/jumbo v1, "Failed to restartRingingOrCallWaiting : mSecConnectionServiceAdapter is null"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/android/services/telephony/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public saveModifiedCallLog(Ljava/lang/String;)V
    .locals 2

    iget-object v1, p0, Lcom/android/services/utils/SecTelecomAdapter;->mSecConnectionServiceAdapter:Lcom/android/services/telephony/common/ISecConnectionServiceAdapter;

    if-nez v1, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/services/utils/SecTelecomAdapter;->mSecConnectionServiceAdapter:Lcom/android/services/telephony/common/ISecConnectionServiceAdapter;

    invoke-interface {v1, p1}, Lcom/android/services/telephony/common/ISecConnectionServiceAdapter;->saveModifiedCallLog(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public saveParticipantLog(Ljava/lang/String;JJ)V
    .locals 8

    iget-object v0, p0, Lcom/android/services/utils/SecTelecomAdapter;->mSecConnectionServiceAdapter:Lcom/android/services/telephony/common/ISecConnectionServiceAdapter;

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/services/utils/SecTelecomAdapter;->mSecConnectionServiceAdapter:Lcom/android/services/telephony/common/ISecConnectionServiceAdapter;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/android/services/telephony/common/ISecConnectionServiceAdapter;->saveParticipantLog(Ljava/lang/String;JJ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v6

    goto :goto_0
.end method

.method public sendRequestVideoCallForTPhone(Ljava/lang/String;I)V
    .locals 3

    const-string/jumbo v1, "support_tphone"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/phone/TeleServiceSystemDB;->isTPhoneMode()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    if-ne p2, v1, :cond_0

    invoke-static {p1}, Lcom/android/services/telephony/TelephonyConnectionUtils;->getTelephonyConnection(Ljava/lang/String;)Lcom/android/services/telephony/TelephonyConnection;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/phone/TPhoneManager;->getInstance()Lcom/android/phone/TPhoneManager;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/services/telephony/TelephonyConnection;->getOriginalConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/phone/TPhoneManager;->onIncomingModifyCall(Lcom/android/internal/telephony/Connection;)V

    :cond_0
    return-void
.end method

.method public sendSessionModificationState(Ljava/lang/String;I)V
    .locals 1

    invoke-static {p1}, Lcom/android/services/telephony/TelephonyConnectionUtils;->getTelephonyConnection(Ljava/lang/String;)Lcom/android/services/telephony/TelephonyConnection;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Lcom/android/services/telephony/TelephonyConnection;->sendSessionModificationState(I)V

    :cond_0
    return-void
.end method

.method public sendSessionModifyRequestForTPhone(Ljava/lang/String;I)V
    .locals 3

    const/4 v2, 0x0

    const-string/jumbo v1, "support_tphone"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/phone/TeleServiceSystemDB;->isTPhoneMode()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/services/utils/SecTelecomAdapter;->mSecConnectionServiceAdapter:Lcom/android/services/telephony/common/ISecConnectionServiceAdapter;

    if-nez v1, :cond_0

    const-string/jumbo v1, "sendSessionModifyRequestForTPhone-Adapter is null"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/android/services/telephony/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/services/utils/SecTelecomAdapter;->mSecConnectionServiceAdapter:Lcom/android/services/telephony/common/ISecConnectionServiceAdapter;

    invoke-interface {v1, p1, p2}, Lcom/android/services/telephony/common/ISecConnectionServiceAdapter;->sendSessionModifyRequestForTPhone(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "Failed to sendSessionModifyRequestForTPhone"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1, v2}, Lcom/android/services/telephony/Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public sendSessionModifyRequestForUWA(Ljava/lang/String;I)V
    .locals 3

    const/4 v2, 0x0

    const-string/jumbo v1, "support_uwa"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/phone/PhoneUtilsCommon;->isGuestMode()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/services/utils/SecTelecomAdapter;->mSecConnectionServiceAdapter:Lcom/android/services/telephony/common/ISecConnectionServiceAdapter;

    if-nez v1, :cond_2

    const-string/jumbo v1, "sendSessionModifyRequestForUWA-Adapter is null"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/android/services/telephony/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_2
    :try_start_0
    iget-object v1, p0, Lcom/android/services/utils/SecTelecomAdapter;->mSecConnectionServiceAdapter:Lcom/android/services/telephony/common/ISecConnectionServiceAdapter;

    invoke-interface {v1, p1, p2}, Lcom/android/services/telephony/common/ISecConnectionServiceAdapter;->sendSessionModifyRequestForUWA(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "Failed to sendSessionModifyRequestForUWA"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1, v2}, Lcom/android/services/telephony/Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public sendSessionModifyResponseForTPhone(Ljava/lang/String;I)V
    .locals 3

    const/4 v2, 0x0

    const-string/jumbo v1, "support_tphone"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/phone/TeleServiceSystemDB;->isTPhoneMode()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/services/utils/SecTelecomAdapter;->mSecConnectionServiceAdapter:Lcom/android/services/telephony/common/ISecConnectionServiceAdapter;

    if-nez v1, :cond_0

    const-string/jumbo v1, "sendSessionModifyResponseForTPhone-Adapter is null"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/android/services/telephony/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/services/utils/SecTelecomAdapter;->mSecConnectionServiceAdapter:Lcom/android/services/telephony/common/ISecConnectionServiceAdapter;

    invoke-interface {v1, p1, p2}, Lcom/android/services/telephony/common/ISecConnectionServiceAdapter;->sendSessionModifyResponseForTPhone(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "Failed to sendSessionModifyResponseForTPhone"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1, v2}, Lcom/android/services/telephony/Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public sendVideoCallResultForTPhone(Ljava/lang/String;II)V
    .locals 2

    const/4 v1, 0x3

    const-string/jumbo v0, "support_tphone"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/phone/TeleServiceSystemDB;->isTPhoneMode()Z

    move-result v0

    if-eqz v0, :cond_0

    if-ne p2, v1, :cond_0

    if-ne p3, v1, :cond_1

    invoke-static {}, Lcom/android/phone/TPhoneService;->getInstance()Lcom/android/phone/TPhoneService;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/phone/TPhoneService;->sendVideoCallResult(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez p3, :cond_0

    invoke-static {}, Lcom/android/phone/TPhoneService;->getInstance()Lcom/android/phone/TPhoneService;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/phone/TPhoneService;->sendVideoCallResult(I)V

    goto :goto_0
.end method

.method public setAlerting()V
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/services/utils/SecTelecomAdapter;->mSecConnectionServiceAdapter:Lcom/android/services/telephony/common/ISecConnectionServiceAdapter;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/services/utils/SecTelecomAdapter;->mSecConnectionServiceAdapter:Lcom/android/services/telephony/common/ISecConnectionServiceAdapter;

    invoke-interface {v1}, Lcom/android/services/telephony/common/ISecConnectionServiceAdapter;->setAlerting()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "Failed to setAlerting"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1, v2}, Lcom/android/services/telephony/Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string/jumbo v1, "Failed to setAlerting : mSecConnectionServiceAdapter is null"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/android/services/telephony/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public setDisconnectVolteGroupCall(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/android/phone/ims/IMSConferenceCallMgr;->getInstance()Lcom/android/phone/ims/IMSConferenceCallMgr;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/phone/ims/IMSConferenceCallMgr;->setDisconnectVolteGroupCall(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setEcholocateCallState(ILandroid/net/Uri;ILjava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/services/utils/SecTelecomAdapter;->mSecConnectionServiceAdapter:Lcom/android/services/telephony/common/ISecConnectionServiceAdapter;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/services/utils/SecTelecomAdapter;->mSecConnectionServiceAdapter:Lcom/android/services/telephony/common/ISecConnectionServiceAdapter;

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/android/services/telephony/common/ISecConnectionServiceAdapter;->setEcholocateCallState(ILandroid/net/Uri;ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "Failed to setEcholocateCallState"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1, v2}, Lcom/android/services/telephony/Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string/jumbo v1, "Failed to setEcholocateCallState : mSecConnectionServiceAdapter is null"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/android/services/telephony/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public setMute(Z)V
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/services/utils/SecTelecomAdapter;->mSecConnectionServiceAdapter:Lcom/android/services/telephony/common/ISecConnectionServiceAdapter;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/services/utils/SecTelecomAdapter;->mSecConnectionServiceAdapter:Lcom/android/services/telephony/common/ISecConnectionServiceAdapter;

    invoke-interface {v1, p1}, Lcom/android/services/telephony/common/ISecConnectionServiceAdapter;->setMute(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "Failed to setMute"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1, v2}, Lcom/android/services/telephony/Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string/jumbo v1, "Failed to setMute : mSecConnectionServiceAdapter is null"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/android/services/telephony/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public setSecCallExtra(Lcom/android/services/telephony/TelephonyConnection;Lcom/android/services/telephony/common/SecCallExtra;)V
    .locals 3

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/services/telephony/TelephonyConnection;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/android/services/telephony/common/SecCallExtra;->setSecCallExtraToBundle(Landroid/os/Bundle;Lcom/android/services/telephony/common/SecCallExtra;)Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "doNotUpdate"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {p1, v0}, Lcom/android/services/telephony/TelephonyConnection;->setExtras(Landroid/os/Bundle;)V

    invoke-virtual {p1}, Lcom/android/services/telephony/TelephonyConnection;->getCallId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/android/services/telephony/TelephonyConnection;->getCallId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/services/utils/SecTelecomAdapter;->sendUpdateEvent(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public setSecConnectionServiceAdapter(Lcom/android/services/telephony/common/ISecConnectionServiceAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/services/utils/SecTelecomAdapter;->mSecConnectionServiceAdapter:Lcom/android/services/telephony/common/ISecConnectionServiceAdapter;

    return-void
.end method

.method public swapCalls()V
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/services/utils/SecTelecomAdapter;->mSecConnectionServiceAdapter:Lcom/android/services/telephony/common/ISecConnectionServiceAdapter;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/services/utils/SecTelecomAdapter;->mSecConnectionServiceAdapter:Lcom/android/services/telephony/common/ISecConnectionServiceAdapter;

    invoke-interface {v1}, Lcom/android/services/telephony/common/ISecConnectionServiceAdapter;->swapCalls()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "Failed to swapCalls"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1, v2}, Lcom/android/services/telephony/Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string/jumbo v1, "Failed to swapCalls : mSecConnectionServiceAdapter is null"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/android/services/telephony/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public turnOnBluetooth(Z)V
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/services/utils/SecTelecomAdapter;->mSecConnectionServiceAdapter:Lcom/android/services/telephony/common/ISecConnectionServiceAdapter;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/services/utils/SecTelecomAdapter;->mSecConnectionServiceAdapter:Lcom/android/services/telephony/common/ISecConnectionServiceAdapter;

    invoke-interface {v1, p1}, Lcom/android/services/telephony/common/ISecConnectionServiceAdapter;->turnOnBluetooth(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "Failed to turnOnBluetooth"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1, v2}, Lcom/android/services/telephony/Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string/jumbo v1, "Failed to turnOnBluetooth : mSecConnectionServiceAdapter is null"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/android/services/telephony/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public turnOnSpeaker(Z)V
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/services/utils/SecTelecomAdapter;->mSecConnectionServiceAdapter:Lcom/android/services/telephony/common/ISecConnectionServiceAdapter;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/services/utils/SecTelecomAdapter;->mSecConnectionServiceAdapter:Lcom/android/services/telephony/common/ISecConnectionServiceAdapter;

    invoke-interface {v1, p1}, Lcom/android/services/telephony/common/ISecConnectionServiceAdapter;->turnOnSpeaker(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "Failed to turnOnSpeaker"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1, v2}, Lcom/android/services/telephony/Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string/jumbo v1, "Failed to turnOnSpeaker : mSecConnectionServiceAdapter is null"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/android/services/telephony/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public updateParentCallExtras(Ljava/lang/String;Z)V
    .locals 4

    iget-object v1, p0, Lcom/android/services/utils/SecTelecomAdapter;->mSecConnectionServiceAdapter:Lcom/android/services/telephony/common/ISecConnectionServiceAdapter;

    if-eqz v1, :cond_0

    :try_start_0
    const-string/jumbo v1, "SecTelecomAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateParentCallExtras update : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/services/utils/SecTelecomAdapter;->mSecConnectionServiceAdapter:Lcom/android/services/telephony/common/ISecConnectionServiceAdapter;

    invoke-interface {v1, p1, p2}, Lcom/android/services/telephony/common/ISecConnectionServiceAdapter;->updateParentCallExtras(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public updateSecCallExtra(Lcom/android/services/telephony/TelephonyConnection;Lcom/android/services/telephony/common/SecCallExtra;)V
    .locals 3

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/services/telephony/TelephonyConnection;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/android/services/telephony/common/SecCallExtra;->setSecCallExtraToBundle(Landroid/os/Bundle;Lcom/android/services/telephony/common/SecCallExtra;)Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "doNotUpdate"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {p1, v0}, Lcom/android/services/telephony/TelephonyConnection;->setExtras(Landroid/os/Bundle;)V

    invoke-virtual {p1}, Lcom/android/services/telephony/TelephonyConnection;->getCallId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/android/services/telephony/TelephonyConnection;->getCallId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/android/services/utils/SecTelecomAdapter;->sendUpdateEvent(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method
