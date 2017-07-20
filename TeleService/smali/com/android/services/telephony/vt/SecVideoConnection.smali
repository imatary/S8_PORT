.class public Lcom/android/services/telephony/vt/SecVideoConnection;
.super Ljava/lang/Object;
.source "SecVideoConnection.java"

# interfaces
.implements Lcom/android/services/telephony/vt/SecVideoProviderManager$SecVideoProviderCallbackListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/services/telephony/vt/SecVideoConnection$1;
    }
.end annotation


# instance fields
.field mCallState:Lcom/android/internal/telephony/Call$State;

.field private mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mIsVideoPaused:Z

.field private mOriginalConnection:Lcom/android/internal/telephony/Connection;

.field private mOriginalConnectionListener:Lcom/android/internal/telephony/Connection$Listener;

.field private mSecVideoProvider:Lcom/android/services/telephony/vt/SecVideoProvider;

.field private mSecVideoProviderManager:Lcom/android/services/telephony/vt/SecVideoProviderManager;

.field private mSessionId:I

.field private mTelephonyConnection:Lcom/android/services/telephony/TelephonyConnection;

.field private mVideoState:I


# direct methods
.method static synthetic -get0(Lcom/android/services/telephony/vt/SecVideoConnection;)Lcom/android/services/telephony/vt/SecVideoProvider;
    .locals 1

    iget-object v0, p0, Lcom/android/services/telephony/vt/SecVideoConnection;->mSecVideoProvider:Lcom/android/services/telephony/vt/SecVideoProvider;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/services/telephony/vt/SecVideoConnection;)I
    .locals 1

    iget v0, p0, Lcom/android/services/telephony/vt/SecVideoConnection;->mVideoState:I

    return v0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/services/telephony/TelephonyConnection;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/services/telephony/vt/SecVideoConnection;->mSecVideoProvider:Lcom/android/services/telephony/vt/SecVideoProvider;

    iput-object v0, p0, Lcom/android/services/telephony/vt/SecVideoConnection;->mTelephonyConnection:Lcom/android/services/telephony/TelephonyConnection;

    iput-object v0, p0, Lcom/android/services/telephony/vt/SecVideoConnection;->mOriginalConnectionListener:Lcom/android/internal/telephony/Connection$Listener;

    iput-object v0, p0, Lcom/android/services/telephony/vt/SecVideoConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    iput v1, p0, Lcom/android/services/telephony/vt/SecVideoConnection;->mSessionId:I

    iput-object v0, p0, Lcom/android/services/telephony/vt/SecVideoConnection;->mSecVideoProviderManager:Lcom/android/services/telephony/vt/SecVideoProviderManager;

    sget-object v0, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    iput-object v0, p0, Lcom/android/services/telephony/vt/SecVideoConnection;->mCallState:Lcom/android/internal/telephony/Call$State;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/services/telephony/vt/SecVideoConnection;->mVideoState:I

    iput-boolean v1, p0, Lcom/android/services/telephony/vt/SecVideoConnection;->mIsVideoPaused:Z

    new-instance v0, Lcom/android/services/telephony/vt/SecVideoConnection$1;

    invoke-direct {v0, p0}, Lcom/android/services/telephony/vt/SecVideoConnection$1;-><init>(Lcom/android/services/telephony/vt/SecVideoConnection;)V

    iput-object v0, p0, Lcom/android/services/telephony/vt/SecVideoConnection;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/services/telephony/vt/SecVideoConnection;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/services/telephony/vt/SecVideoProviderManager;->create(Landroid/content/Context;)V

    invoke-static {}, Lcom/android/services/telephony/vt/SecVideoProviderManager;->getInstance()Lcom/android/services/telephony/vt/SecVideoProviderManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/services/telephony/vt/SecVideoConnection;->mSecVideoProviderManager:Lcom/android/services/telephony/vt/SecVideoProviderManager;

    iget-object v0, p0, Lcom/android/services/telephony/vt/SecVideoConnection;->mSecVideoProviderManager:Lcom/android/services/telephony/vt/SecVideoProviderManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/services/telephony/vt/SecVideoConnection;->mSecVideoProviderManager:Lcom/android/services/telephony/vt/SecVideoProviderManager;

    invoke-virtual {v0}, Lcom/android/services/telephony/vt/SecVideoProviderManager;->getSecVideoProvider()Lcom/android/services/telephony/vt/SecVideoProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/services/telephony/vt/SecVideoConnection;->mSecVideoProvider:Lcom/android/services/telephony/vt/SecVideoProvider;

    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/services/telephony/vt/SecVideoConnection;->updateConnection(Lcom/android/services/telephony/TelephonyConnection;)V

    return-void
.end method

.method private changeRotation(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/services/telephony/vt/SecVideoConnection;->mSecVideoProviderManager:Lcom/android/services/telephony/vt/SecVideoProviderManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/services/telephony/vt/SecVideoConnection;->mSecVideoProviderManager:Lcom/android/services/telephony/vt/SecVideoProviderManager;

    invoke-virtual {v0, p1}, Lcom/android/services/telephony/vt/SecVideoProviderManager;->changeRotation(I)V

    :cond_0
    return-void
.end method

.method private sendDTMF(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/services/telephony/vt/SecVideoConnection;->mSecVideoProviderManager:Lcom/android/services/telephony/vt/SecVideoProviderManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/services/telephony/vt/SecVideoConnection;->mSecVideoProviderManager:Lcom/android/services/telephony/vt/SecVideoProviderManager;

    invoke-virtual {v0, p1}, Lcom/android/services/telephony/vt/SecVideoProviderManager;->sendDTMF(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private startRecord(Ljava/lang/String;Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/services/telephony/vt/SecVideoConnection;->mSecVideoProviderManager:Lcom/android/services/telephony/vt/SecVideoProviderManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/services/telephony/vt/SecVideoConnection;->mSecVideoProviderManager:Lcom/android/services/telephony/vt/SecVideoProviderManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/services/telephony/vt/SecVideoProviderManager;->startRecord(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method private stopRecord()V
    .locals 1

    iget-object v0, p0, Lcom/android/services/telephony/vt/SecVideoConnection;->mSecVideoProviderManager:Lcom/android/services/telephony/vt/SecVideoProviderManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/services/telephony/vt/SecVideoConnection;->mSecVideoProviderManager:Lcom/android/services/telephony/vt/SecVideoProviderManager;

    invoke-virtual {v0}, Lcom/android/services/telephony/vt/SecVideoProviderManager;->stopRecord()V

    :cond_0
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    invoke-static {}, Lcom/android/services/telephony/vt/SecVideoProviderManager;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/services/telephony/vt/SecVideoConnection;->mSecVideoProviderManager:Lcom/android/services/telephony/vt/SecVideoProviderManager;

    return-void
.end method

.method public getFrameSize(Lcom/android/internal/telephony/CallDetails;)Ljava/lang/String;
    .locals 3

    const-string/jumbo v0, "VGA"

    invoke-static {p1}, Lcom/android/services/telephony/TelephonyConnectionUtils;->getSecVideoResolution(Lcom/android/internal/telephony/CallDetails;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    const-string/jumbo v0, "QCIF"

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    const-string/jumbo v0, "QVGA"

    goto :goto_0

    :cond_2
    const/4 v2, 0x7

    if-ne v1, v2, :cond_3

    const-string/jumbo v0, "QVGALAND"

    goto :goto_0

    :cond_3
    const/4 v2, 0x4

    if-ne v1, v2, :cond_4

    const-string/jumbo v0, "VGALAND"

    goto :goto_0

    :cond_4
    const/4 v2, 0x6

    if-ne v1, v2, :cond_0

    const-string/jumbo v0, "HD720"

    goto :goto_0
.end method

.method public getSecVideoProvider()Lcom/android/services/telephony/vt/SecVideoProvider;
    .locals 1

    iget-object v0, p0, Lcom/android/services/telephony/vt/SecVideoConnection;->mSecVideoProvider:Lcom/android/services/telephony/vt/SecVideoProvider;

    return-object v0
.end method

.method public isValidSession(Landroid/os/Bundle;)Z
    .locals 7

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/android/services/telephony/vt/SecVideoConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/services/telephony/vt/SecVideoConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    invoke-virtual {v4}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getCallDetails()Lcom/android/internal/telephony/CallDetails;

    move-result-object v1

    if-eqz v1, :cond_0

    iget v4, v1, Lcom/android/internal/telephony/CallDetails;->call_domain:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    const-string/jumbo v4, "session_id"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v1}, Lcom/android/services/telephony/TelephonyConnectionUtils;->getSessionId(Lcom/android/internal/telephony/CallDetails;)I

    move-result v4

    if-ne v4, v3, :cond_1

    const/4 v2, 0x1

    :cond_0
    :goto_0
    const-string/jumbo v4, "PSTNVT-SecVideoConnection"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isValidSession : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public makeMediaSessionMessage(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 5

    const-string/jumbo v2, "event"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    :goto_0
    const-string/jumbo v2, "PSTNVT-SecVideoConnection"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getMediaSessionMessage : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    return-object v1

    :pswitch_0
    const-string/jumbo v1, "video_held"

    goto :goto_0

    :pswitch_1
    const-string/jumbo v1, "video_resumed"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0xca
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public notifyVideoProviderChanged()V
    .locals 2

    iget-object v0, p0, Lcom/android/services/telephony/vt/SecVideoConnection;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public notifyVideoStateChanged()V
    .locals 2

    iget-object v0, p0, Lcom/android/services/telephony/vt/SecVideoConnection;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onVideoProviderCallbackReceived(Landroid/os/Bundle;)V
    .locals 5

    const-string/jumbo v3, "event"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string/jumbo v3, "session_id"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    if-lez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/services/telephony/vt/SecVideoConnection;->makeMediaSessionMessage(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v3, p0, Lcom/android/services/telephony/vt/SecVideoConnection;->mCallState:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/services/telephony/vt/SecVideoConnection;->isValidSession(Landroid/os/Bundle;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/services/telephony/vt/SecVideoConnection;->mSecVideoProvider:Lcom/android/services/telephony/vt/SecVideoProvider;

    iget-object v4, p0, Lcom/android/services/telephony/vt/SecVideoConnection;->mTelephonyConnection:Lcom/android/services/telephony/TelephonyConnection;

    invoke-virtual {v4}, Lcom/android/services/telephony/TelephonyConnection;->getCallId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Lcom/android/services/telephony/vt/SecVideoProvider;->handleCallSessionMessage(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/android/services/telephony/vt/SecVideoConnection;->mCallState:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/services/telephony/vt/SecVideoConnection;->mCallState:Lcom/android/internal/telephony/Call$State;

    sget-object v4, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/android/services/telephony/vt/SecVideoConnection;->mSecVideoProvider:Lcom/android/services/telephony/vt/SecVideoProvider;

    invoke-virtual {v3, v0}, Lcom/android/services/telephony/vt/SecVideoProvider;->handleCallSessionEvent(I)V

    goto :goto_0
.end method

.method public onVideoProviderChanged(Landroid/telecom/Connection$VideoProvider;)V
    .locals 1

    iget-object v0, p0, Lcom/android/services/telephony/vt/SecVideoConnection;->mOriginalConnectionListener:Lcom/android/internal/telephony/Connection$Listener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/services/telephony/vt/SecVideoConnection;->mOriginalConnectionListener:Lcom/android/internal/telephony/Connection$Listener;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Connection$Listener;->onVideoProviderChanged(Landroid/telecom/Connection$VideoProvider;)V

    :cond_0
    return-void
.end method

.method public onVideoStateChanged(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/services/telephony/vt/SecVideoConnection;->mOriginalConnectionListener:Lcom/android/internal/telephony/Connection$Listener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/services/telephony/vt/SecVideoConnection;->mOriginalConnectionListener:Lcom/android/internal/telephony/Connection$Listener;

    iget v1, p0, Lcom/android/services/telephony/vt/SecVideoConnection;->mVideoState:I

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Connection$Listener;->onVideoStateChanged(I)V

    :cond_0
    return-void
.end method

.method public registerOriginalConnectionListener(Lcom/android/internal/telephony/Connection$Listener;)V
    .locals 3

    iget-object v0, p0, Lcom/android/services/telephony/vt/SecVideoConnection;->mOriginalConnectionListener:Lcom/android/internal/telephony/Connection$Listener;

    if-eq v0, p1, :cond_0

    const-string/jumbo v0, "PSTNVT-SecVideoConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "registerOriginalConnectionListener mOriginalConnectionListener : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/services/telephony/vt/SecVideoConnection;->mOriginalConnectionListener:Lcom/android/internal/telephony/Connection$Listener;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " listener : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    iput-object p1, p0, Lcom/android/services/telephony/vt/SecVideoConnection;->mOriginalConnectionListener:Lcom/android/internal/telephony/Connection$Listener;

    invoke-virtual {p0}, Lcom/android/services/telephony/vt/SecVideoConnection;->notifyVideoProviderChanged()V

    :cond_0
    return-void
.end method

.method public requestOfSecVideoProvider(Ljava/lang/String;)V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "set_camera_effect"

    aget-object v2, v0, v3

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v1, "startRecord"

    aget-object v2, v0, v3

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    aget-object v1, v0, v4

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    aget-object v1, v0, v5

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    aget-object v1, v0, v4

    aget-object v2, v0, v5

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/android/services/telephony/vt/SecVideoConnection;->startRecord(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_2
    const-string/jumbo v1, "stopRecord"

    aget-object v2, v0, v3

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0}, Lcom/android/services/telephony/vt/SecVideoConnection;->stopRecord()V

    goto :goto_0

    :cond_3
    const-string/jumbo v1, "changeRotation"

    aget-object v2, v0, v3

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    aget-object v1, v0, v4

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    aget-object v1, v0, v4

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/services/telephony/vt/SecVideoConnection;->changeRotation(I)V

    goto :goto_0

    :cond_4
    const-string/jumbo v1, "sendDTMF"

    aget-object v2, v0, v3

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    aget-object v1, v0, v4

    invoke-direct {p0, v1}, Lcom/android/services/telephony/vt/SecVideoConnection;->sendDTMF(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public updateConnection(Lcom/android/services/telephony/TelephonyConnection;)V
    .locals 9

    const/4 v8, 0x2

    const/4 v7, 0x1

    iput-object p1, p0, Lcom/android/services/telephony/vt/SecVideoConnection;->mTelephonyConnection:Lcom/android/services/telephony/TelephonyConnection;

    invoke-virtual {p1}, Lcom/android/services/telephony/TelephonyConnection;->getOriginalConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v4

    iput-object v4, p0, Lcom/android/services/telephony/vt/SecVideoConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    iget-object v4, p0, Lcom/android/services/telephony/vt/SecVideoConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/services/telephony/vt/SecVideoConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    invoke-virtual {v4}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    if-nez v4, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/services/telephony/vt/SecVideoConnection;->destroy()V

    return-void

    :cond_1
    iget-object v4, p0, Lcom/android/services/telephony/vt/SecVideoConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    invoke-virtual {v4}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getCallDetails()Lcom/android/internal/telephony/CallDetails;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/services/telephony/vt/SecVideoConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    invoke-virtual {v4}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    iget-object v4, p0, Lcom/android/services/telephony/vt/SecVideoConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    invoke-virtual {v4}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getCallDetails()Lcom/android/internal/telephony/CallDetails;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object v4, p0, Lcom/android/services/telephony/vt/SecVideoConnection;->mSecVideoProvider:Lcom/android/services/telephony/vt/SecVideoProvider;

    invoke-virtual {p0, v1}, Lcom/android/services/telephony/vt/SecVideoConnection;->getFrameSize(Lcom/android/internal/telephony/CallDetails;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/services/telephony/vt/SecVideoProvider;->setResolution(Ljava/lang/String;)V

    const-string/jumbo v4, "PSTNVT-SecVideoConnection"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateConnection - call_domain:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v1, Lcom/android/internal/telephony/CallDetails;->call_domain:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", call_type:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v1, Lcom/android/internal/telephony/CallDetails;->call_type:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v7}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    iget v4, v1, Lcom/android/internal/telephony/CallDetails;->call_domain:I

    if-ne v4, v8, :cond_2

    iget-object v4, p0, Lcom/android/services/telephony/vt/SecVideoConnection;->mSecVideoProviderManager:Lcom/android/services/telephony/vt/SecVideoProviderManager;

    invoke-virtual {v4, v8}, Lcom/android/services/telephony/vt/SecVideoProviderManager;->createBaseVideoProvider(I)V

    :goto_0
    const-string/jumbo v4, "callmodifystatus"

    invoke-virtual {v1, v4}, Lcom/android/internal/telephony/CallDetails;->getExtraValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    iget v4, v1, Lcom/android/internal/telephony/CallDetails;->call_type:I

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/android/services/telephony/vt/SecVideoConnection;->mSecVideoProviderManager:Lcom/android/services/telephony/vt/SecVideoProviderManager;

    invoke-virtual {v4, p0}, Lcom/android/services/telephony/vt/SecVideoProviderManager;->disconnectBaseVideoProvider(Lcom/android/services/telephony/vt/SecVideoProviderManager$SecVideoProviderCallbackListener;)V

    return-void

    :cond_2
    iget-object v4, p0, Lcom/android/services/telephony/vt/SecVideoConnection;->mSecVideoProviderManager:Lcom/android/services/telephony/vt/SecVideoProviderManager;

    invoke-virtual {v4, v7}, Lcom/android/services/telephony/vt/SecVideoProviderManager;->createBaseVideoProvider(I)V

    goto :goto_0

    :cond_3
    iget-object v4, p0, Lcom/android/services/telephony/vt/SecVideoConnection;->mCallState:Lcom/android/internal/telephony/Call$State;

    if-eq v4, v3, :cond_4

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/services/telephony/vt/SecVideoConnection;->mSecVideoProviderManager:Lcom/android/services/telephony/vt/SecVideoProviderManager;

    invoke-virtual {v4, p0}, Lcom/android/services/telephony/vt/SecVideoProviderManager;->connectBaseVideoProvider(Lcom/android/services/telephony/vt/SecVideoProviderManager$SecVideoProviderCallbackListener;)V

    iget v4, v1, Lcom/android/internal/telephony/CallDetails;->call_domain:I

    if-ne v4, v7, :cond_4

    sget-object v4, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v3, v4, :cond_4

    iget-object v4, p0, Lcom/android/services/telephony/vt/SecVideoConnection;->mSecVideoProviderManager:Lcom/android/services/telephony/vt/SecVideoProviderManager;

    invoke-virtual {v4}, Lcom/android/services/telephony/vt/SecVideoProviderManager;->startVideoService()V

    :cond_4
    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/services/telephony/vt/SecVideoConnection;->updateVideoState(Lcom/android/internal/telephony/Call;)V

    :cond_5
    iput-object v3, p0, Lcom/android/services/telephony/vt/SecVideoConnection;->mCallState:Lcom/android/internal/telephony/Call$State;

    return-void

    :cond_6
    iget-object v4, p0, Lcom/android/services/telephony/vt/SecVideoConnection;->mSecVideoProviderManager:Lcom/android/services/telephony/vt/SecVideoProviderManager;

    invoke-virtual {v4, p0}, Lcom/android/services/telephony/vt/SecVideoProviderManager;->disconnectBaseVideoProvider(Lcom/android/services/telephony/vt/SecVideoProviderManager$SecVideoProviderCallbackListener;)V

    iget v4, v1, Lcom/android/internal/telephony/CallDetails;->call_domain:I

    if-ne v4, v7, :cond_4

    iget-object v4, p0, Lcom/android/services/telephony/vt/SecVideoConnection;->mSecVideoProviderManager:Lcom/android/services/telephony/vt/SecVideoProviderManager;

    invoke-virtual {v4}, Lcom/android/services/telephony/vt/SecVideoProviderManager;->stopVideoService()V

    goto :goto_1
.end method

.method public updateVideoState(Lcom/android/internal/telephony/Call;)V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget v1, p0, Lcom/android/services/telephony/vt/SecVideoConnection;->mVideoState:I

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getCallDetails()Lcom/android/internal/telephony/CallDetails;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v2, v0, Lcom/android/internal/telephony/CallDetails;->call_type:I

    if-nez v2, :cond_2

    iput v3, p0, Lcom/android/services/telephony/vt/SecVideoConnection;->mVideoState:I

    :goto_0
    iget v2, p0, Lcom/android/services/telephony/vt/SecVideoConnection;->mVideoState:I

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/services/telephony/vt/SecVideoConnection;->mIsVideoPaused:Z

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/android/services/telephony/vt/SecVideoConnection;->mVideoState:I

    or-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/android/services/telephony/vt/SecVideoConnection;->mVideoState:I

    :cond_0
    iget v2, p0, Lcom/android/services/telephony/vt/SecVideoConnection;->mVideoState:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    iget v2, p0, Lcom/android/services/telephony/vt/SecVideoConnection;->mVideoState:I

    if-eq v2, v1, :cond_1

    invoke-virtual {p0}, Lcom/android/services/telephony/vt/SecVideoConnection;->notifyVideoStateChanged()V

    :cond_1
    return-void

    :cond_2
    iget v2, v0, Lcom/android/internal/telephony/CallDetails;->call_type:I

    if-ne v2, v4, :cond_3

    iput v4, p0, Lcom/android/services/telephony/vt/SecVideoConnection;->mVideoState:I

    goto :goto_0

    :cond_3
    iget v2, v0, Lcom/android/internal/telephony/CallDetails;->call_type:I

    if-ne v2, v5, :cond_4

    iput v5, p0, Lcom/android/services/telephony/vt/SecVideoConnection;->mVideoState:I

    goto :goto_0

    :cond_4
    const/4 v2, 0x3

    iput v2, p0, Lcom/android/services/telephony/vt/SecVideoConnection;->mVideoState:I

    goto :goto_0
.end method
