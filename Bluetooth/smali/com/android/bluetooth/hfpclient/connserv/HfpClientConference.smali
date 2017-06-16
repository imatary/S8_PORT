.class public Lcom/android/bluetooth/hfpclient/connserv/HfpClientConference;
.super Landroid/telecom/Conference;
.source "HfpClientConference.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "HfpClientConference"


# instance fields
.field private mDevice:Landroid/bluetooth/BluetoothDevice;

.field private mHeadsetProfile:Landroid/bluetooth/BluetoothHeadsetClient;


# direct methods
.method public constructor <init>(Landroid/telecom/PhoneAccountHandle;Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothHeadsetClient;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/telecom/Conference;-><init>(Landroid/telecom/PhoneAccountHandle;)V

    iput-object p2, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConference;->mDevice:Landroid/bluetooth/BluetoothDevice;

    iput-object p3, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConference;->mHeadsetProfile:Landroid/bluetooth/BluetoothHeadsetClient;

    invoke-static {p3, p2}, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;->hasHfpClientEcc(Landroid/bluetooth/BluetoothHeadsetClient;Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v1, 0x80

    :goto_0
    or-int/lit8 v1, v1, 0x3

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConference;->setConnectionCapabilities(I)V

    invoke-virtual {p0}, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConference;->setActive()V

    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onConnectionAdded(Landroid/telecom/Connection;)V
    .locals 5

    const/4 v4, 0x5

    const/4 v3, 0x4

    const-string/jumbo v0, "HfpClientConference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onConnectionAdded "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/telecom/Connection;->getState()I

    move-result v0

    if-ne v0, v4, :cond_1

    invoke-virtual {p0}, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConference;->getState()I

    move-result v0

    if-ne v0, v3, :cond_1

    invoke-virtual {p1}, Landroid/telecom/Connection;->onAnswer()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/telecom/Connection;->getState()I

    move-result v0

    if-ne v0, v3, :cond_0

    invoke-virtual {p0}, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConference;->getState()I

    move-result v0

    if-ne v0, v4, :cond_0

    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConference;->mHeadsetProfile:Landroid/bluetooth/BluetoothHeadsetClient;

    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConference;->mDevice:Landroid/bluetooth/BluetoothDevice;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/BluetoothHeadsetClient;->acceptCall(Landroid/bluetooth/BluetoothDevice;I)Z

    goto :goto_0
.end method

.method public onDisconnect()V
    .locals 3

    const-string/jumbo v0, "HfpClientConference"

    const-string/jumbo v1, "onDisconnect"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConference;->mHeadsetProfile:Landroid/bluetooth/BluetoothHeadsetClient;

    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConference;->mDevice:Landroid/bluetooth/BluetoothDevice;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/BluetoothHeadsetClient;->terminateCall(Landroid/bluetooth/BluetoothDevice;I)Z

    new-instance v0, Landroid/telecom/DisconnectCause;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/telecom/DisconnectCause;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConference;->setDisconnected(Landroid/telecom/DisconnectCause;)V

    return-void
.end method

.method public onHold()V
    .locals 2

    const-string/jumbo v0, "HfpClientConference"

    const-string/jumbo v1, "onHold"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConference;->mHeadsetProfile:Landroid/bluetooth/BluetoothHeadsetClient;

    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConference;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothHeadsetClient;->holdCall(Landroid/bluetooth/BluetoothDevice;)Z

    return-void
.end method

.method public onMerge(Landroid/telecom/Connection;)V
    .locals 3

    const-string/jumbo v0, "HfpClientConference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onMerge "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConference;->addConnection(Landroid/telecom/Connection;)Z

    return-void
.end method

.method public onPlayDtmfTone(C)V
    .locals 3

    const-string/jumbo v0, "HfpClientConference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onPlayDtmfTone "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConference;->mHeadsetProfile:Landroid/bluetooth/BluetoothHeadsetClient;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConference;->mHeadsetProfile:Landroid/bluetooth/BluetoothHeadsetClient;

    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConference;->mDevice:Landroid/bluetooth/BluetoothDevice;

    int-to-byte v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/BluetoothHeadsetClient;->sendDTMF(Landroid/bluetooth/BluetoothDevice;B)Z

    :cond_0
    return-void
.end method

.method public onSeparate(Landroid/telecom/Connection;)V
    .locals 3

    const-string/jumbo v0, "HfpClientConference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onSeparate "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, p1

    check-cast v0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnection;

    invoke-virtual {v0}, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnection;->enterPrivateMode()V

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConference;->removeConnection(Landroid/telecom/Connection;)V

    return-void
.end method

.method public onUnhold()V
    .locals 3

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConference;->getPrimaryConnection()Landroid/telecom/Connection;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/Connection;->getConnectionService()Landroid/telecom/ConnectionService;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/ConnectionService;->getAllConnections()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    if-le v0, v2, :cond_0

    const-string/jumbo v0, "HfpClientConference"

    const-string/jumbo v1, "Ignoring unhold; call hold on the foreground call"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string/jumbo v0, "HfpClientConference"

    const-string/jumbo v1, "onUnhold"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConference;->mHeadsetProfile:Landroid/bluetooth/BluetoothHeadsetClient;

    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConference;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/BluetoothHeadsetClient;->acceptCall(Landroid/bluetooth/BluetoothDevice;I)Z

    return-void
.end method
