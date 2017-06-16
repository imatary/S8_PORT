.class public Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnection;
.super Landroid/telecom/Connection;
.source "HfpClientConnection.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "HfpClientConnection"


# instance fields
.field private mAdded:Z

.field private mClientHasEcc:Z

.field private mClosed:Z

.field private final mContext:Landroid/content/Context;

.field private mCurrentCall:Landroid/bluetooth/BluetoothHeadsetClientCall;

.field private final mDevice:Landroid/bluetooth/BluetoothDevice;

.field private mHeadsetProfile:Landroid/bluetooth/BluetoothHeadsetClient;

.field private mLocalDisconnect:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothHeadsetClient;Landroid/bluetooth/BluetoothHeadsetClientCall;Landroid/net/Uri;)V
    .locals 2

    invoke-direct {p0}, Landroid/telecom/Connection;-><init>()V

    iput-object p2, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnection;->mDevice:Landroid/bluetooth/BluetoothDevice;

    iput-object p1, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnection;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnection;->mHeadsetProfile:Landroid/bluetooth/BluetoothHeadsetClient;

    iput-object p4, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnection;->mCurrentCall:Landroid/bluetooth/BluetoothHeadsetClientCall;

    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnection;->mHeadsetProfile:Landroid/bluetooth/BluetoothHeadsetClient;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnection;->mHeadsetProfile:Landroid/bluetooth/BluetoothHeadsetClient;

    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnection;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-static {v0, v1}, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;->hasHfpClientEcc(Landroid/bluetooth/BluetoothHeadsetClient;Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnection;->mClientHasEcc:Z

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnection;->setAudioModeIsVoip(Z)V

    const/4 v0, 0x1

    invoke-virtual {p0, p5, v0}, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnection;->setAddress(Landroid/net/Uri;I)V

    invoke-virtual {p0}, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnection;->setInitialized()V

    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnection;->mHeadsetProfile:Landroid/bluetooth/BluetoothHeadsetClient;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnection;->finishInitializing()V

    :cond_1
    return-void
.end method

.method private close(I)V
    .locals 3

    const-string/jumbo v0, "HfpClientConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Closing "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnection;->mClosed:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnection;->mClosed:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/telecom/DisconnectCause;

    invoke-direct {v0, p1}, Landroid/telecom/DisconnectCause;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnection;->setDisconnected(Landroid/telecom/DisconnectCause;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnection;->mClosed:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnection;->mCurrentCall:Landroid/bluetooth/BluetoothHeadsetClientCall;

    invoke-virtual {p0}, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnection;->destroy()V

    return-void
.end method

.method private finishInitializing()V
    .locals 4

    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnection;->mCurrentCall:Landroid/bluetooth/BluetoothHeadsetClientCall;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnection;->getAddress()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "HfpClientConnection"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Dialing "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnection;->mHeadsetProfile:Landroid/bluetooth/BluetoothHeadsetClient;

    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnection;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, v2, v0}, Landroid/bluetooth/BluetoothHeadsetClient;->dial(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)Z

    invoke-virtual {p0}, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnection;->setDialing()V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnection;->mCurrentCall:Landroid/bluetooth/BluetoothHeadsetClientCall;

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnection;->handleCallChanged(Landroid/bluetooth/BluetoothHeadsetClientCall;)V

    goto :goto_0
.end method


# virtual methods
.method public enterPrivateMode()V
    .locals 3

    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnection;->mHeadsetProfile:Landroid/bluetooth/BluetoothHeadsetClient;

    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnection;->mDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnection;->mCurrentCall:Landroid/bluetooth/BluetoothHeadsetClientCall;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothHeadsetClientCall;->getId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/BluetoothHeadsetClient;->enterPrivateMode(Landroid/bluetooth/BluetoothDevice;I)Z

    invoke-virtual {p0}, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnection;->setActive()V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v1, 0x0

    instance-of v2, p1, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnection;

    if-nez v2, :cond_0

    return v1

    :cond_0
    check-cast p1, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnection;

    invoke-virtual {p1}, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnection;->getAddress()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnection;->getAddress()Landroid/net/Uri;

    move-result-object v2

    if-eq v2, v0, :cond_2

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnection;->getAddress()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    :cond_1
    :goto_0
    return v1

    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getCall()Landroid/bluetooth/BluetoothHeadsetClientCall;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnection;->mCurrentCall:Landroid/bluetooth/BluetoothHeadsetClientCall;

    return-object v0
.end method

.method public handleCallChanged(Landroid/bluetooth/BluetoothHeadsetClientCall;)V
    .locals 5

    invoke-virtual {p0}, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnection;->getConference()Landroid/telecom/Conference;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConference;

    iput-object p1, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnection;->mCurrentCall:Landroid/bluetooth/BluetoothHeadsetClientCall;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothHeadsetClientCall;->getState()I

    move-result v1

    const-string/jumbo v2, "HfpClientConnection"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Got call state change to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch v1, :pswitch_data_0

    const-string/jumbo v2, "HfpClientConnection"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unexpected phone state "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnection;->getState()I

    move-result v2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_1

    invoke-virtual {p0}, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnection;->getState()I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_3

    :cond_1
    const/4 v2, 0x1

    :goto_1
    or-int/lit16 v2, v2, 0x3042

    invoke-virtual {p0, v2}, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnection;->setConnectionCapabilities(I)V

    return-void

    :pswitch_0
    invoke-virtual {p0}, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnection;->setActive()V

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConference;->setActive()V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnection;->setOnHold()V

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConference;->setOnHold()V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnection;->setDialing()V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0}, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnection;->setRinging()V

    goto :goto_0

    :pswitch_4
    iget-boolean v2, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnection;->mLocalDisconnect:Z

    if-eqz v2, :cond_2

    const/4 v2, 0x2

    :goto_2
    invoke-direct {p0, v2}, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnection;->close(I)V

    goto :goto_0

    :cond_2
    const/4 v2, 0x3

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_1
        :pswitch_4
    .end packed-switch
.end method

.method public hashCode()I
    .locals 1

    invoke-virtual {p0}, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnection;->getAddress()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnection;->getAddress()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public inConference()Z
    .locals 3

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnection;->mAdded:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnection;->mCurrentCall:Landroid/bluetooth/BluetoothHeadsetClientCall;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnection;->mCurrentCall:Landroid/bluetooth/BluetoothHeadsetClientCall;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothHeadsetClientCall;->isMultiParty()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnection;->getState()I

    move-result v1

    const/4 v2, 0x6

    if-eq v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public onAbort()V
    .locals 3

    const-string/jumbo v0, "HfpClientConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onAbort "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnection;->mCurrentCall:Landroid/bluetooth/BluetoothHeadsetClientCall;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnection;->onDisconnect()V

    return-void
.end method

.method public onAdded()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnection;->mAdded:Z

    return-void
.end method

.method public onAnswer()V
    .locals 3

    const-string/jumbo v0, "HfpClientConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onAnswer "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnection;->mCurrentCall:Landroid/bluetooth/BluetoothHeadsetClientCall;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnection;->mClosed:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnection;->mHeadsetProfile:Landroid/bluetooth/BluetoothHeadsetClient;

    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnection;->mDevice:Landroid/bluetooth/BluetoothDevice;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/BluetoothHeadsetClient;->acceptCall(Landroid/bluetooth/BluetoothDevice;I)Z

    :cond_0
    return-void
.end method

.method public onDisconnect()V
    .locals 3

    const-string/jumbo v0, "HfpClientConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onDisconnect "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnection;->mCurrentCall:Landroid/bluetooth/BluetoothHeadsetClientCall;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnection;->mClosed:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnection;->mHeadsetProfile:Landroid/bluetooth/BluetoothHeadsetClient;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnection;->mCurrentCall:Landroid/bluetooth/BluetoothHeadsetClientCall;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnection;->mHeadsetProfile:Landroid/bluetooth/BluetoothHeadsetClient;

    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnection;->mDevice:Landroid/bluetooth/BluetoothDevice;

    iget-boolean v0, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnection;->mClientHasEcc:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnection;->mCurrentCall:Landroid/bluetooth/BluetoothHeadsetClientCall;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothHeadsetClientCall;->getId()I

    move-result v0

    :goto_0
    invoke-virtual {v1, v2, v0}, Landroid/bluetooth/BluetoothHeadsetClient;->terminateCall(Landroid/bluetooth/BluetoothDevice;I)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnection;->mLocalDisconnect:Z

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnection;->close(I)V

    goto :goto_1
.end method

.method public onHfpConnected(Landroid/bluetooth/BluetoothHeadsetClient;)V
    .locals 2

    iput-object p1, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnection;->mHeadsetProfile:Landroid/bluetooth/BluetoothHeadsetClient;

    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnection;->mHeadsetProfile:Landroid/bluetooth/BluetoothHeadsetClient;

    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnection;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-static {v0, v1}, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;->hasHfpClientEcc(Landroid/bluetooth/BluetoothHeadsetClient;Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnection;->mClientHasEcc:Z

    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnection;->finishInitializing()V

    return-void
.end method

.method public onHfpDisconnected()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnection;->mHeadsetProfile:Landroid/bluetooth/BluetoothHeadsetClient;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnection;->close(I)V

    return-void
.end method

.method public onHold()V
    .locals 3

    const-string/jumbo v0, "HfpClientConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onHold "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnection;->mCurrentCall:Landroid/bluetooth/BluetoothHeadsetClientCall;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnection;->mClosed:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnection;->mHeadsetProfile:Landroid/bluetooth/BluetoothHeadsetClient;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnection;->mHeadsetProfile:Landroid/bluetooth/BluetoothHeadsetClient;

    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnection;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothHeadsetClient;->holdCall(Landroid/bluetooth/BluetoothDevice;)Z

    :cond_0
    return-void
.end method

.method public onPlayDtmfTone(C)V
    .locals 3

    const-string/jumbo v0, "HfpClientConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onPlayDtmfTone "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnection;->mCurrentCall:Landroid/bluetooth/BluetoothHeadsetClientCall;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnection;->mClosed:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnection;->mHeadsetProfile:Landroid/bluetooth/BluetoothHeadsetClient;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnection;->mHeadsetProfile:Landroid/bluetooth/BluetoothHeadsetClient;

    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnection;->mDevice:Landroid/bluetooth/BluetoothDevice;

    int-to-byte v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/BluetoothHeadsetClient;->sendDTMF(Landroid/bluetooth/BluetoothDevice;B)Z

    :cond_0
    return-void
.end method

.method public onReject()V
    .locals 3

    const-string/jumbo v0, "HfpClientConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onReject "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnection;->mCurrentCall:Landroid/bluetooth/BluetoothHeadsetClientCall;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnection;->mClosed:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnection;->mHeadsetProfile:Landroid/bluetooth/BluetoothHeadsetClient;

    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnection;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothHeadsetClient;->rejectCall(Landroid/bluetooth/BluetoothDevice;)Z

    :cond_0
    return-void
.end method

.method public onUnhold()V
    .locals 4

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnection;->getConnectionService()Landroid/telecom/ConnectionService;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/ConnectionService;->getAllConnections()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    if-le v0, v3, :cond_0

    const-string/jumbo v0, "HfpClientConnection"

    const-string/jumbo v1, "Ignoring unhold; call hold on the foreground call"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string/jumbo v0, "HfpClientConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onUnhold "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnection;->mCurrentCall:Landroid/bluetooth/BluetoothHeadsetClientCall;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnection;->mClosed:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnection;->mHeadsetProfile:Landroid/bluetooth/BluetoothHeadsetClient;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnection;->mHeadsetProfile:Landroid/bluetooth/BluetoothHeadsetClient;

    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnection;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1, v3}, Landroid/bluetooth/BluetoothHeadsetClient;->acceptCall(Landroid/bluetooth/BluetoothDevice;I)Z

    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "HfpClientConnection{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnection;->getAddress()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnection;->getState()I

    move-result v1

    invoke-static {v1}, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnection;->stateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnection;->mCurrentCall:Landroid/bluetooth/BluetoothHeadsetClientCall;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
